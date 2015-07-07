/////////////////////////////////////////////////////////////////////////////
// Name:        wx/list.h
// Purpose:     wxList, wxStringList classes
// Author:      Julian Smart
// Modified by: VZ at 16/11/98: WX_DECLARE_LIST() and typesafe lists added
// Created:     29/01/98
// Copyright:   (c) 1998 Julian Smart
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

/*
  All this is quite ugly but serves two purposes:
    1. Be almost 100% compatible with old, untyped, wxList class
    2. Ensure compile-time type checking for the linked lists

  The idea is to have one base class (wxListBase) working with "void *" data,
  but to hide these untyped functions - i.e. make them protected, so they
  can only be used from derived classes which have inline member functions
  working with right types. This achieves the 2nd goal. As for the first one,
  we provide a special derivation of wxListBase called wxList which looks just
  like the old class.
*/

#ifndef _WX_LIST_H_
#define _WX_LIST_H_

// ----------------------------------------------------------------------------
// types
// ----------------------------------------------------------------------------

#inheritable wxObjectList
class WXDLLIMPEXP_FWD_BASE wxObjectListNode;
typedef struct {} wxNode;

#if wxUSE_STD_CONTAINERS

#def wxLIST_COMPATIBILITY

#def WX_DECLARE_LIST_3(elT, dummy1, liT, dummy2, decl) \
    WX_DECLARE_LIST_WITH_DECL(elT, liT, decl)
#def WX_DECLARE_LIST_PTR_3(elT, dummy1, liT, dummy2, decl) \
    WX_DECLARE_LIST_3(elT, dummy1, liT, dummy2, decl)

#def WX_DECLARE_LIST_2(elT, liT, dummy, decl) \
    WX_DECLARE_LIST_WITH_DECL(elT, liT, decl)
#def WX_DECLARE_LIST_PTR_2(elT, liT, dummy, decl) \
    WX_DECLARE_LIST_2(elT, liT, dummy, decl) \

#def WX_DECLARE_LIST_WITH_DECL(elT, liT, decl) \
    WX_DECLARE_LIST_XO(elT*, liT, decl)

template<class T>
class wxList_SortFunction
{
public:
    wxList_SortFunction(wxSortCompareFunction f) : m_f(f) { }
    bool operator()(const T& i1, const T& i2)
      { return m_f((T*)&i1, (T*)&i2) < 0; }
private:
    wxSortCompareFunction m_f;
};

#def WX_LIST_SORTFUNCTION( elT, f ) wxList_SortFunction<elT>(f)
#def WX_LIST_VC6_WORKAROUND(elT, liT, decl)


/*
    Note 1: the outer helper class _WX_LIST_HELPER_##liT below is a workaround
    for mingw 3.2.3 compiler bug that prevents a static function of liT class
    from being exported into dll. A minimal code snippet reproducing the bug:

         struct WXDLLIMPEXP_CORE Foo
         {
            static void Bar();
            struct SomeInnerClass
            {
              friend class Foo; // comment this out to make it link
            };
            ~Foo()
            {
                Bar();
            }
         };

    The program does not link under mingw_gcc 3.2.3 producing undefined
    reference to Foo::Bar() function


    Note 2: the EmptyList is needed to allow having a NULL pointer-like
    invalid iterator. We used to use just an uninitialized iterator object
    instead but this fails with some debug/checked versions of STL, notably the
    glibc version activated with _GLIBCXX_DEBUG, so we need to have a separate
    invalid iterator.
 */

// the real wxList-class declaration
#def WX_DECLARE_LIST_XO(elT, liT, decl)                                    \
                                                                              \
    class liT                                           \
    {                                                                         \
    public:                                                                   \
        liT() : m_destroy( false ) {}                                         \
                                                                              \
        bool IsEmpty() const                                                  \
            { return empty(); }                                               \
        size_t GetCount() const                                               \
            { return size(); }                                                \
        int Number() const                                                    \
            { return static_cast< int >( GetCount() ); }                      \
                                                                              \
        elT operator[](size_t idx) const                                      \
        {                                                                     \
            return Item(idx).GetData();                                       \
        }                                                                     \
                                                                              \
        bool Member( elT e ) const                                            \
            { return Find( e ); }                                             \
        int IndexOf( elT e ) const                                            \
            { return Find( e ).IndexOf(); }                                   \
                                                                              \
                                                                              \
        void DeleteContents( bool destroy )                                   \
            { m_destroy = destroy; }                                          \
        bool GetDeleteContents() const                                        \
            { return m_destroy; }                                             \
        bool DeleteObject( elT e )                                            \
        {                                                                     \
            return DeleteNode( Find( e ) );                                   \
        }                                                                     \
        void Clear()                                                          \
        {                                                                     \
        }                                                                     \
        /* Workaround for broken VC6 std::list::sort() see above */           \
        void Sort( wxSortCompareFunction compfunc )                           \
            {  }                \
        ~liT() { Clear(); }                                                   \
                                                                              \
    }

#def WX_DECLARE_LIST(elementtype, listname)                              \
    WX_DECLARE_LIST_WITH_DECL(elementtype, listname, class)
#def WX_DECLARE_LIST_PTR(elementtype, listname)                          \
    WX_DECLARE_LIST(elementtype, listname)

#def WX_DECLARE_EXPORTED_LIST(elementtype, listname)                     \
    WX_DECLARE_LIST_WITH_DECL(elementtype, listname, class WXDLLIMPEXP_CORE)
#def WX_DECLARE_EXPORTED_LIST_PTR(elementtype, listname)                 \
    WX_DECLARE_EXPORTED_LIST(elementtype, listname)

#def WX_DECLARE_USER_EXPORTED_LIST(elementtype, listname, usergoo)       \
    WX_DECLARE_LIST_WITH_DECL(elementtype, listname, class usergoo)
#def WX_DECLARE_USER_EXPORTED_LIST_PTR(elementtype, listname, usergoo)   \
    WX_DECLARE_USER_EXPORTED_LIST(elementtype, listname, usergoo)

// this macro must be inserted in your program after
//      #include "wx/listimpl.cpp"
#def WX_DEFINE_LIST(name)    "don't forget to include listimpl.cpp!"

#def WX_DEFINE_EXPORTED_LIST(name)      WX_DEFINE_LIST(name)
#def WX_DEFINE_USER_EXPORTED_LIST(name) WX_DEFINE_LIST(name)

#else // if !wxUSE_STD_CONTAINERS

// -----------------------------------------------------------------------------
// key stuff: a list may be optionally keyed on integer or string key
// -----------------------------------------------------------------------------

union wxListKeyValue
{
    long integer;
    wxString *string;
};

// a struct which may contain both types of keys
//
// implementation note: on one hand, this class allows to have only one function
// for any keyed operation instead of 2 almost equivalent. OTOH, it's needed to
// resolve ambiguity which we would otherwise have with wxStringList::Find() and
// wxList::Find(const char *).
class WXDLLIMPEXP_BASE wxListKey
{
public:
    // implicit ctors
    wxListKey() : m_keyType(wxKEY_NONE)
        { }
    wxListKey(long i) : m_keyType(wxKEY_INTEGER)
        { m_key.integer = i; }
    wxListKey(const wxString& s) : m_keyType(wxKEY_STRING)
        { m_key.string = new wxString(s); }
    wxListKey(const char *s) : m_keyType(wxKEY_STRING)
        { m_key.string = new wxString(s); }
    wxListKey(const wchar_t *s) : m_keyType(wxKEY_STRING)
        { m_key.string = new wxString(s); }

    // accessors
    wxKeyType GetKeyType() const { return m_keyType; }
    const wxString GetString() const
        { wxASSERT( m_keyType == wxKEY_STRING ); return *m_key.string; }
    long GetNumber() const
        { wxASSERT( m_keyType == wxKEY_INTEGER ); return m_key.integer; }

    // comparison
    // Note: implementation moved to list.cpp to prevent BC++ inline
    // expansion warning.
    bool operator==(wxListKeyValue value) const ;

    // dtor
    ~wxListKey()
    {
    }

private:
    wxKeyType m_keyType;
    wxListKeyValue m_key;
};

// -----------------------------------------------------------------------------
// wxNodeBase class is a (base for) node in a double linked list
// -----------------------------------------------------------------------------

extern wxListKey wxDefaultListKey;

class WXDLLIMPEXP_FWD_BASE wxListBase;

class WXDLLIMPEXP_BASE wxNodeBase
{
friend class wxListBase;
public:
    // ctor
    wxNodeBase(wxListBase *list = NULL,
               wxNodeBase *previous = NULL,
               wxNodeBase *next = NULL,
               void *data = NULL,
               const wxListKey& key = wxDefaultListKey);

    virtual ~wxNodeBase();

    // FIXME no check is done that the list is really keyed on strings
    wxString GetKeyString() const { return *m_key.string; }
    long GetKeyInteger() const { return m_key.integer; }

    // Necessary for some existing code
    void SetKeyString(const wxString& s) { m_key.string = new wxString(s); }
    void SetKeyInteger(long i) { m_key.integer = i; }

protected:
    // all these are going to be "overloaded" in the derived classes
    wxNodeBase *GetNext() const { return m_next; }
    wxNodeBase *GetPrevious() const { return m_previous; }

    void *GetData() const { return m_data; }
    void SetData(void *data) { m_data = data; }

    // get 0-based index of this node within the list or wxNOT_FOUND
    int IndexOf() const;

    virtual void DeleteData() { }
public:
    // for wxList::iterator
    void** GetDataPtr() const { return &(const_cast<wxNodeBase*>(this)->m_data); }
private:
    // optional key stuff
    wxListKeyValue m_key;

    void        *m_data;        // user data
    wxNodeBase  *m_next,        // next and previous nodes in the list
                *m_previous;

    wxListBase  *m_list;        // list we belong to

    wxDECLARE_NO_COPY_CLASS(wxNodeBase);
};

// -----------------------------------------------------------------------------
// a double-linked list class
// -----------------------------------------------------------------------------

class WXDLLIMPEXP_FWD_BASE wxList;

class WXDLLIMPEXP_BASE wxListBase
{
friend class wxNodeBase; // should be able to call DetachNode()
friend class wxHashTableBase;   // should be able to call untyped Find()

public:
    // default ctor & dtor
    wxListBase(wxKeyType keyType = wxKEY_NONE)
        { Init(keyType); }
    virtual ~wxListBase();

    // accessors
        // count of items in the list
    size_t GetCount() const { return m_count; }

        // return true if this list is empty
    bool IsEmpty() const { return m_count == 0; }

    // operations

        // delete all nodes
    void Clear();

        // instruct it to destroy user data when deleting nodes
    void DeleteContents(bool destroy) { m_destroy = destroy; }

       // query if to delete
    bool GetDeleteContents() const
        { return m_destroy; }

      // get the keytype
    wxKeyType GetKeyType() const
        { return m_keyType; }

      // set the keytype (required by the serial code)
    void SetKeyType(wxKeyType keyType)
        { wxASSERT( m_count==0 ); m_keyType = keyType; }

protected:

    // all methods here are "overloaded" in derived classes to provide compile
    // time type checking

    // create a node for the list of this type
    virtual wxNodeBase *CreateNode(wxNodeBase *prev, wxNodeBase *next,
                                   void *data,
                                   const wxListKey& key = wxDefaultListKey) = 0;


    // ctors
        // from an array
    wxListBase(size_t count, void *elements[]);
        // from a sequence of objects
    wxListBase(void *object, ... /* terminate with NULL */);

protected:
    void Assign(const wxListBase& list)
        { Clear(); DoCopy(list); }

        // get list head/tail
    wxNodeBase *GetFirst() const { return m_nodeFirst; }
    wxNodeBase *GetLast() const { return m_nodeLast; }

        // by (0-based) index
    wxNodeBase *Item(size_t index) const;

        // get the list item's data
    void *operator[](size_t n) const
    {
        wxNodeBase *node = Item(n);

        return node ? node->GetData() : NULL;
    }

    // operations
        // append to end of list
    wxNodeBase *Prepend(void *object)
        { return (wxNodeBase *)wxListBase::Insert(object); }
        // append to beginning of list
    wxNodeBase *Append(void *object);
        // insert a new item at the beginning of the list
    wxNodeBase *Insert(void *object)
        { return Insert(static_cast<wxNodeBase *>(NULL), object); }
        // insert a new item at the given position
    wxNodeBase *Insert(size_t pos, void *object)
        { return pos == GetCount() ? Append(object)
                                   : Insert(Item(pos), object); }
        // insert before given node or at front of list if prev == NULL
    wxNodeBase *Insert(wxNodeBase *prev, void *object);

        // keyed append
    wxNodeBase *Append(long key, void *object);
    wxNodeBase *Append(const wxString& key, void *object);

        // removes node from the list but doesn't delete it (returns pointer
        // to the node or NULL if it wasn't found in the list)
    wxNodeBase *DetachNode(wxNodeBase *node);
        // delete element from list, returns false if node not found
    bool DeleteNode(wxNodeBase *node);
        // finds object pointer and deletes node (and object if DeleteContents
        // is on), returns false if object not found
    bool DeleteObject(void *object);

    // search (all return NULL if item not found)
        // by data
    wxNodeBase *Find(const void *object) const;

        // by key
    wxNodeBase *Find(const wxListKey& key) const;

    // get 0-based index of object or wxNOT_FOUND
    int IndexOf( void *object ) const;

    // this function allows the sorting of arbitrary lists by giving
    // a function to compare two list elements. The list is sorted in place.
    void Sort(const wxSortCompareFunction compfunc);

    // functions for iterating over the list
    void *FirstThat(wxListIterateFunction func);
    void ForEach(wxListIterateFunction func);
    void *LastThat(wxListIterateFunction func);

    // for STL interface, "last" points to one after the last node
    // of the controlled sequence (NULL for the end of the list)
    void Reverse();
    void DeleteNodes(wxNodeBase* first, wxNodeBase* last);
private:

        // common part of all ctors
    void Init(wxKeyType keyType = wxKEY_NONE);

    // helpers
        // common part of copy ctor and assignment operator
    void DoCopy(const wxListBase& list);
        // common part of all Append()s
    wxNodeBase *AppendCommon(wxNodeBase *node);
        // free node's data and node itself
    void DoDeleteNode(wxNodeBase *node);

    size_t m_count;             // number of elements in the list
    bool m_destroy;             // destroy user data when deleting list items?
    wxNodeBase *m_nodeFirst,    // pointers to the head and tail of the list
               *m_nodeLast;

    wxKeyType m_keyType;        // type of our keys (may be wxKEY_NONE)
};

// -----------------------------------------------------------------------------
// macros for definition of "template" list type
// -----------------------------------------------------------------------------

// and now some heavy magic...

// declare a list type named 'name' and containing elements of type 'T *'
// (as a by product of macro expansion you also get wx##name##Node
// wxNode-derived type)
//
// implementation details:
//  1. We define _WX_LIST_ITEM_TYPE_##name typedef to save in it the item type
//     for the list of given type - this allows us to pass only the list name
//     to WX_DEFINE_LIST() even if it needs both the name and the type
//
//  2. We redefine all non-type-safe wxList functions with type-safe versions
//     which don't take any space (everything is inline), but bring compile
//     time error checking.
//
//  3. The macro which is usually used (WX_DECLARE_LIST) is defined in terms of
//     a more generic WX_DECLARE_LIST_2 macro which, in turn, uses the most
//     generic WX_DECLARE_LIST_3 one. The last macro adds a sometimes
//     interesting capability to store polymorphic objects in the list and is
//     particularly useful with, for example, "wxWindow *" list where the
//     wxWindowBase pointers are put into the list, but wxWindow pointers are
//     retrieved from it.
//
//  4. final hack is that WX_DECLARE_LIST_3 is defined in terms of
//     WX_DECLARE_LIST_4 to allow defining classes without operator->() as
//     it results in compiler warnings when this operator doesn't make sense
//     (i.e. stored elements are not pointers)

// common part of WX_DECLARE_LIST_3 and WX_DECLARE_LIST_PTR_3
#def WX_DECLARE_LIST_4(T, Tbase, name, nodetype, classexp, ptrop)        \
    typedef int (*wxSortFuncFor_##name)(const T **, const T **);            \
                                                                            \
    classexp nodetype : public wxNodeBase                                   \
    {                                                                       \
    public:                                                                 \
        nodetype(wxListBase *list = NULL,                                   \
                 nodetype *previous = NULL,                                 \
                 nodetype *next = NULL,                                     \
                 T *data = NULL,                                            \
                 const wxListKey& key = wxDefaultListKey)                   \
            : wxNodeBase(list, previous, next, data, key) { }               \
                                                                            \
        nodetype *GetNext() const                                           \
            { return (nodetype *)wxNodeBase::GetNext(); }                   \
        nodetype *GetPrevious() const                                       \
            { return (nodetype *)wxNodeBase::GetPrevious(); }               \
                                                                            \
        T *GetData() const                                                  \
            { return (T *)wxNodeBase::GetData(); }                          \
        void SetData(T *data)                                               \
            { wxNodeBase::SetData(data); }                                  \
                                                                            \
    protected:                                                              \
        virtual void DeleteData();                                          \
                                                                            \
        DECLARE_NO_COPY_CLASS(nodetype)                                     \
    };                                                                      \
                                                                            \
    classexp name : public wxListBase                                       \
    {                                                                       \
    public:                                                                 \
                                                                            \
        name(wxKeyType keyType = wxKEY_NONE) : wxListBase(keyType)          \
            { }                                                             \
        name(const name& list) : wxListBase(list.GetKeyType())              \
            { Assign(list); }                                               \
        name(size_t count, T *elements[])                                   \
            : wxListBase(count, (void **)elements) { }                      \
                                                                            \
        name& operator=(const name& list)                                   \
            { if (&list != this) Assign(list); return *this; }              \
                                                                            \
        nodetype *GetFirst() const                                          \
            { return (nodetype *)wxListBase::GetFirst(); }                  \
        nodetype *GetLast() const                                           \
            { return (nodetype *)wxListBase::GetLast(); }                   \
                                                                            \
        nodetype *Item(size_t index) const                                  \
            { return (nodetype *)wxListBase::Item(index); }                 \
                                                                            \
        T *operator[](size_t index) const                                   \
        {                                                                   \
            nodetype *node = Item(index);                                   \
            return node ? (T*)(node->GetData()) : NULL;                     \
        }                                                                   \
                                                                            \
        nodetype *Append(Tbase *object)                                     \
            { return (nodetype *)wxListBase::Append(object); }              \
        nodetype *Insert(Tbase *object)                                     \
            { return (nodetype *)Insert(static_cast<nodetype *>(NULL),      \
                                        object); }                          \
        nodetype *Insert(size_t pos, Tbase *object)                         \
            { return (nodetype *)wxListBase::Insert(pos, object); }         \
        nodetype *Insert(nodetype *prev, Tbase *object)                     \
            { return (nodetype *)wxListBase::Insert(prev, object); }        \
                                                                            \
        nodetype *Append(long key, void *object)                            \
            { return (nodetype *)wxListBase::Append(key, object); }         \
        nodetype *Append(const wxChar *key, void *object)                   \
            { return (nodetype *)wxListBase::Append(key, object); }         \
                                                                            \
        nodetype *DetachNode(nodetype *node)                                \
            { return (nodetype *)wxListBase::DetachNode(node); }            \
        bool DeleteNode(nodetype *node)                                     \
            { return wxListBase::DeleteNode(node); }                        \
        bool DeleteObject(Tbase *object)                                    \
            { return wxListBase::DeleteObject(object); }                    \
        void Erase(nodetype *it)                                            \
            { DeleteNode(it); }                                             \
                                                                            \
        nodetype *Find(const Tbase *object) const                           \
            { return (nodetype *)wxListBase::Find(object); }                \
                                                                            \
        virtual nodetype *Find(const wxListKey& key) const                  \
            { return (nodetype *)wxListBase::Find(key); }                   \
                                                                            \
        bool Member(const Tbase *object) const                              \
            { return Find(object) != NULL; }                                \
                                                                            \
        int IndexOf(Tbase *object) const                                    \
            { return wxListBase::IndexOf(object); }                         \
                                                                            \
        void Sort(wxSortCompareFunction func)                               \
            { wxListBase::Sort(func); }                                     \
        void Sort(wxSortFuncFor_##name func)                                \
            { Sort((wxSortCompareFunction)func); }                          \
                                                                            \
    protected:                                                              \
        virtual wxNodeBase *CreateNode(wxNodeBase *prev, wxNodeBase *next,  \
                               void *data,                                  \
                               const wxListKey& key = wxDefaultListKey)     \
            {                                                               \
                return new nodetype(this,                                   \
                                    (nodetype *)prev, (nodetype *)next,     \
                                    (T *)data, key);                        \
            }                                                               \
        /* STL interface */                                                 \
    public:                                                                 \
        wxEXPLICIT name(size_type n, const_reference v = value_type())      \
            { assign(n, v); }                                               \
        name(const const_iterator& first, const const_iterator& last)       \
            { assign(first, last); }                                        \
        void resize(size_type n, value_type v = value_type())               \
        {                                                                   \
            while (n < size())                                              \
                pop_back();                                                 \
            while (n > size())                                              \
                push_back(v);                                                \
        }                                                                   \
        size_type size() const { return GetCount(); }                       \
        size_type max_size() const { return INT_MAX; }                      \
        bool empty() const { return IsEmpty(); }                            \
        reference front() { return *begin(); }                              \
        const_reference front() const { return *begin(); }                  \
        reference back() { iterator tmp = end(); return *--tmp; }           \
        const_reference back() const { const_iterator tmp = end(); return *--tmp; }\
        void push_front(const_reference v = value_type())                   \
            { Insert(GetFirst(), (const_base_reference)v); }                \
        void pop_front() { DeleteNode(GetFirst()); }                        \
        void push_back(const_reference v = value_type())                    \
            { Append((const_base_reference)v); }                            \
        void pop_back() { DeleteNode(GetLast()); }                          \
        void assign(const_iterator first, const const_iterator& last)       \
        {                                                                   \
            clear();                                                        \
            for(; first != last; ++first)                                   \
                Append((const_base_reference)*first);                       \
        }                                                                   \
        void assign(size_type n, const_reference v = value_type())          \
        {                                                                   \
            clear();                                                        \
            for(size_type i = 0; i < n; ++i)                                \
                Append((const_base_reference)v);                            \
        }                                                                   \
        void clear() { Clear(); }                                           \
        void splice(const iterator& it, name& l, const iterator& first, const iterator& last)\
            { insert(it, first, last); l.erase(first, last); }              \
        void splice(const iterator& it, name& l)                            \
            { splice(it, l, l.begin(), l.end() ); }                         \
        void splice(const iterator& it, name& l, const iterator& first)     \
        {                                                                   \
            if ( it != first )                                              \
            {                                                               \
                insert(it, *first);                                         \
                l.erase(first);                                             \
            }                                                               \
        }                                                                   \
        void remove(const_reference v)                                      \
            { DeleteObject((const_base_reference)v); }                      \
        void reverse()                                                      \
            { Reverse(); }                                                  \
    }

#def WX_LIST_PTROP                                                       \
            pointer_type operator->() const                                 \
                { return (pointer_type)m_node->GetDataPtr(); }
#def WX_LIST_PTROP_NONE

#def WX_DECLARE_LIST_3(T, Tbase, name, nodetype, classexp)               \
    WX_DECLARE_LIST_4(T, Tbase, name, nodetype, classexp, WX_LIST_PTROP_NONE)
#def WX_DECLARE_LIST_PTR_3(T, Tbase, name, nodetype, classexp)        \
    WX_DECLARE_LIST_4(T, Tbase, name, nodetype, classexp, WX_LIST_PTROP)

#def WX_DECLARE_LIST_2(elementtype, listname, nodename, classexp)        \
    WX_DECLARE_LIST_3(elementtype, elementtype, listname, nodename, classexp)
#def WX_DECLARE_LIST_PTR_2(elementtype, listname, nodename, classexp)        \
    WX_DECLARE_LIST_PTR_3(elementtype, elementtype, listname, nodename, classexp)

#def WX_DECLARE_LIST(elementtype, listname)                              \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_2(elementtype, listname, wx##listname##Node, class)
#def WX_DECLARE_LIST_PTR(elementtype, listname)                              \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_PTR_2(elementtype, listname, wx##listname##Node, class)

#def WX_DECLARE_LIST_WITH_DECL(elementtype, listname, decl) \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_2(elementtype, listname, wx##listname##Node, decl)

#def WX_DECLARE_EXPORTED_LIST(elementtype, listname)                     \
    WX_DECLARE_LIST_WITH_DECL(elementtype, listname, class WXDLLIMPEXP_CORE)

#def WX_DECLARE_EXPORTED_LIST_PTR(elementtype, listname)                     \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_PTR_2(elementtype, listname, wx##listname##Node, class WXDLLIMPEXP_CORE)

#def WX_DECLARE_USER_EXPORTED_LIST(elementtype, listname, usergoo)       \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_2(elementtype, listname, wx##listname##Node, class usergoo)
#def WX_DECLARE_USER_EXPORTED_LIST_PTR(elementtype, listname, usergoo)       \
    typedef elementtype _WX_LIST_ITEM_TYPE_##listname;                      \
    WX_DECLARE_LIST_PTR_2(elementtype, listname, wx##listname##Node, class usergoo)

// this macro must be inserted in your program after
//      #include "wx/listimpl.cpp"
#def WX_DEFINE_LIST(name)    "don't forget to include listimpl.cpp!"

#def WX_DEFINE_EXPORTED_LIST(name)      WX_DEFINE_LIST(name)
#def WX_DEFINE_USER_EXPORTED_LIST(name) WX_DEFINE_LIST(name)

#endif // !wxUSE_STD_CONTAINERS

// ============================================================================
// now we can define classes 100% compatible with the old ones
// ============================================================================

// delete all list elements
//
// NB: the class declaration of the list elements must be visible from the
//     place where you use this macro, otherwise the proper destructor may not
//     be called (a decent compiler should give a warning about it, but don't
//     count on it)!
#def WX_CLEAR_LIST(type, list)                                            \
    {                                                                        \
        type::iterator it, en;                                               \
        for( it = (list).begin(), en = (list).end(); it != en; ++it )        \
            delete *it;                                                      \
        (list).clear();                                                      \
    }

// append all element of one list to another one
#def WX_APPEND_LIST(list, other)                                           \
    {                                                                         \
        wxList::compatibility_iterator node = other->GetFirst();              \
        while ( node )                                                        \
        {                                                                     \
            (list)->push_back(node->GetData());                               \
            node = node->GetNext();                                           \
        }                                                                     \
    }

// define this to make a lot of noise about use of the old wxList classes.
//#define wxWARN_COMPAT_LIST_USE

// ----------------------------------------------------------------------------
// wxList compatibility class: in fact, it's a list of wxObjects
// ----------------------------------------------------------------------------

WX_DECLARE_LIST_2(wxObject, wxObjectList, wxObjectListNode,
                        class WXDLLIMPEXP_BASE);

class WXDLLIMPEXP_BASE wxList : public wxObjectList
{
public:
    wxList(auto key_type = wxKEY_NONE);

    // this destructor is required for Darwin
   ~wxList() { }

};

#endif // _WX_LISTH__
