/////////////////////////////////////////////////////////////////////////////
// Name:        wx/object.h
// Purpose:     wxObject class, plus run-time type information macros
// Author:      Julian Smart
// Modified by: Ron Lee
// Created:     01/02/97
// Copyright:   (c) 1997 Julian Smart
//              (c) 2001 Ron Lee <ron@debian.org>
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_OBJECTH__
#define _WX_OBJECTH__

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/memory.h"

#def wxDECLARE_CLASS_INFO_ITERATORS()                                     \
class WXDLLIMPEXP_BASE const_iterator                                    \
    {                                                                        \
    typedef wxHashTable_Node Node;                                       \
    public:                                                                  \
    typedef const wxClassInfo* value_type;                               \
    typedef const value_type& const_reference;                           \
    typedef const_iterator itor;                                         \
    typedef value_type* ptr_type;                                        \
    \
    Node* m_node;                                                        \
    wxHashTable* m_table;                                                \
    public:                                                                  \
    typedef const_reference reference_type;                              \
    typedef ptr_type pointer_type;                                       \
    \
    const_iterator(Node* node, wxHashTable* table)                       \
    : m_node(node), m_table(table) { }                               \
    const_iterator() : m_node(NULL), m_table(NULL) { }                   \
    value_type operator*() const;                                        \
    itor& operator++();                                                  \
    const itor operator++(int);                                          \
    bool operator!=(const itor& it) const                                \
            { return it.m_node != m_node; }                                  \
            bool operator==(const itor& it) const                                \
            { return it.m_node == m_node; }                                  \
    };                                                                       \
    \
    static const_iterator begin_classinfo();                                 \
    static const_iterator end_classinfo()

// based on the value of wxUSE_EXTENDED_RTTI symbol,
// only one of the RTTI system will be compiled:
// - the "old" one (defined by rtti.h) or
// - the "new" one (defined by xti.h)
#include "wx/xti.h"
#include "wx/rtti.h"

#def wxIMPLEMENT_CLASS(name, basename)                                     \
    wxIMPLEMENT_ABSTRACT_CLASS(name, basename)

#def wxIMPLEMENT_CLASS2(name, basename1, basename2)                        \
    wxIMPLEMENT_ABSTRACT_CLASS2(name, basename1, basename2)

// -----------------------------------
// for pluggable classes
// -----------------------------------

    // NOTE: this should probably be the very first statement
    //       in the class declaration so wxPluginSentinel is
    //       the first member initialised and the last destroyed.

// _DECLARE_DL_SENTINEL(name) wxPluginSentinel m_pluginsentinel;

#def _DECLARE_DL_SENTINEL(name)
#def _IMPLEMENT_DL_SENTINEL(name)

#def wxDECLARE_PLUGGABLE_CLASS(name) \
 wxDECLARE_DYNAMIC_CLASS(name); _DECLARE_DL_SENTINEL(name, WXDLLIMPEXP_CORE)
#def wxDECLARE_ABSTRACT_PLUGGABLE_CLASS(name)  \
 wxDECLARE_ABSTRACT_CLASS(name); _DECLARE_DL_SENTINEL(name, WXDLLIMPEXP_CORE)

#def wxDECLARE_USER_EXPORTED_PLUGGABLE_CLASS(name, usergoo) \
 wxDECLARE_DYNAMIC_CLASS(name); _DECLARE_DL_SENTINEL(name, usergoo)
#def wxDECLARE_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(name, usergoo)  \
 wxDECLARE_ABSTRACT_CLASS(name); _DECLARE_DL_SENTINEL(name, usergoo)

#def wxIMPLEMENT_PLUGGABLE_CLASS(name, basename) \
 wxIMPLEMENT_DYNAMIC_CLASS(name, basename) _IMPLEMENT_DL_SENTINEL(name)
#def wxIMPLEMENT_PLUGGABLE_CLASS2(name, basename1, basename2)  \
 wxIMPLEMENT_DYNAMIC_CLASS2(name, basename1, basename2) _IMPLEMENT_DL_SENTINEL(name)
#def wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS(name, basename) \
 wxIMPLEMENT_ABSTRACT_CLASS(name, basename) _IMPLEMENT_DL_SENTINEL(name)
#def wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS2(name, basename1, basename2)  \
 wxIMPLEMENT_ABSTRACT_CLASS2(name, basename1, basename2) _IMPLEMENT_DL_SENTINEL(name)

#def wxIMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS(name, basename) \
 wxIMPLEMENT_PLUGGABLE_CLASS(name, basename)
#def wxIMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS2(name, basename1, basename2)  \
 wxIMPLEMENT_PLUGGABLE_CLASS2(name, basename1, basename2)
#def wxIMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(name, basename) \
 wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS(name, basename)
#def wxIMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS2(name, basename1, basename2)  \
 wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS2(name, basename1, basename2)

#def wxCLASSINFO(name) (&name::ms_classInfo)

#define wxIS_KIND_OF(obj, className) obj->IsKindOf(&className::ms_classInfo)

// Just seems a bit nicer-looking (pretend it's not a macro)
#define wxIsKindOf(obj, className) obj->IsKindOf(&className::ms_classInfo)

// this cast does some more checks at compile time as it uses static_cast
// internally
//
// note that it still has different semantics from dynamic_cast<> and so can't
// be replaced by it as long as there are any compilers not supporting it

// The 'this' pointer is always true, so use this version
// to cast the this pointer and avoid compiler warnings.

template <class T>
T *wxCheckCast(const void *ptr, T * = NULL);

#define wxStaticCast(obj, className) wxCheckCast((obj), (className *)NULL)

// ----------------------------------------------------------------------------
// set up memory debugging macros
// ----------------------------------------------------------------------------

/*
    Which new/delete operator variants do we want?

    _WX_WANT_NEW_SIZET_WXCHAR_INT             = void *operator new (size_t size, wxChar *fileName = 0, int lineNum = 0)
    _WX_WANT_DELETE_VOID                      = void operator delete (void * buf)
    _WX_WANT_DELETE_VOID_CONSTCHAR_SIZET      = void operator delete (void *buf, const char *_fname, size_t _line)
    _WX_WANT_DELETE_VOID_WXCHAR_INT           = void operator delete(void *buf, wxChar*, int)
    _WX_WANT_ARRAY_NEW_SIZET_WXCHAR_INT       = void *operator new[] (size_t size, wxChar *fileName , int lineNum = 0)
    _WX_WANT_ARRAY_DELETE_VOID                = void operator delete[] (void *buf)
    _WX_WANT_ARRAY_DELETE_VOID_WXCHAR_INT     = void operator delete[] (void* buf, wxChar*, int )
*/

// ----------------------------------------------------------------------------
// Compatibility macro aliases DECLARE group
// ----------------------------------------------------------------------------
// deprecated variants _not_ requiring a semicolon after them and without wx prefix.
// (note that also some wx-prefixed macro do _not_ require a semicolon because
//  it's not always possible to force the compire to require it)

#def DECLARE_CLASS_INFO_ITERATORS()                              wxDECLARE_CLASS_INFO_ITERATORS();
#def DECLARE_ABSTRACT_CLASS(n)                                   wxDECLARE_ABSTRACT_CLASS(n);
#def DECLARE_DYNAMIC_CLASS_NO_ASSIGN(n)                          wxDECLARE_DYNAMIC_CLASS_NO_ASSIGN(n);
#def DECLARE_DYNAMIC_CLASS_NO_COPY(n)                            wxDECLARE_DYNAMIC_CLASS_NO_COPY(n);
#def DECLARE_DYNAMIC_CLASS(n)                                    wxDECLARE_DYNAMIC_CLASS(n);
#def DECLARE_CLASS(n)                                            wxDECLARE_CLASS(n);

#def DECLARE_PLUGGABLE_CLASS(n)                                  wxDECLARE_PLUGGABLE_CLASS(n);
#def DECLARE_ABSTRACT_PLUGGABLE_CLASS(n)                         wxDECLARE_ABSTRACT_PLUGGABLE_CLASS(n);
#def DECLARE_USER_EXPORTED_PLUGGABLE_CLASS(n,u)                  wxDECLARE_USER_EXPORTED_PLUGGABLE_CLASS(n,u);
#def DECLARE_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(n,u)         wxDECLARE_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(n,u);

// ----------------------------------------------------------------------------
// wxRefCounter: ref counted data "manager"
// ----------------------------------------------------------------------------

#inheritable wxRefCounter
class WXDLLIMPEXP_BASE wxRefCounter
{
public:
    wxRefCounter() { m_count = 1; }

    int GetRefCount() const { return m_count; }

    void IncRef() { m_count++; }
    void DecRef();

protected:
    // this object should never be destroyed directly but only as a
    // result of a DecRef() call:
    virtual ~wxRefCounter() { }

private:
    // our refcount:
    int m_count;

    // It doesn't make sense to copy the reference counted objects, a new ref
    // counter should be created for a new object instead and compilation
    // errors in the code using wxRefCounter due to the lack of copy ctor often
    // indicate a problem, e.g. a forgotten copy ctor implementation somewhere.
    wxDECLARE_NO_COPY_CLASS(wxRefCounter);
};

// ----------------------------------------------------------------------------
// wxObjectRefData: ref counted data meant to be stored in wxObject
// ----------------------------------------------------------------------------

typedef wxRefCounter wxObjectRefData;

// ----------------------------------------------------------------------------
// wxObjectDataPtr: helper class to avoid memleaks because of missing calls
//                  to wxObjectRefData::DecRef
// ----------------------------------------------------------------------------

#inheritable wxObjectDataPtr
template <class T>
class wxObjectDataPtr
{
public:
    wxEXPLICIT wxObjectDataPtr(T *ptr = NULL) : m_ptr(ptr) {}

    // copy ctor
    wxObjectDataPtr(const wxObjectDataPtr<T> &tocopy)
        : m_ptr(tocopy.m_ptr)
    {
        if (m_ptr)
            m_ptr->IncRef();
    }

    ~wxObjectDataPtr()
    {
        if (m_ptr)
            m_ptr->DecRef();
    }

    T *get() const { return m_ptr; }

    T& operator*() const
    {
        wxASSERT(m_ptr != NULL);
        return *(m_ptr);
    }

    T *operator->() const
    {
        wxASSERT(m_ptr != NULL);
        return get();
    }

    void reset(T *ptr)
    {
        if (m_ptr)
            m_ptr->DecRef();
        m_ptr = ptr;
    }

    wxObjectDataPtr& operator=(const wxObjectDataPtr &tocopy)
    {
        if (m_ptr)
            m_ptr->DecRef();
        m_ptr = tocopy.m_ptr;
        if (m_ptr)
            m_ptr->IncRef();
        return *this;
    }

    wxObjectDataPtr& operator=(T *ptr)
    {
        if (m_ptr)
            m_ptr->DecRef();
        m_ptr = ptr;
        return *this;
    }

private:
    T *m_ptr;
};

// ----------------------------------------------------------------------------
// wxObject: the root class of wxWidgets object hierarchy
// ----------------------------------------------------------------------------

#inheritable wxObject
class WXDLLIMPEXP_BASE wxObject
{
public:
    wxObject() { m_refData = NULL; }
    virtual ~wxObject() { UnRef(); }

    wxObject(const wxObject& other)
    {
         m_refData = other.m_refData;
         if (m_refData)
             m_refData->IncRef();
    }

    wxObject& operator=(const wxObject& other)
    {
        if ( this != &other )
        {
            Ref(other);
        }
        return *this;
    }

    bool IsKindOf(const wxClassInfo *info) const;



    // ref counted data handling methods

    // get/set
    wxObjectRefData *GetRefData() const { return m_refData; }
    void SetRefData(wxObjectRefData *data) { m_refData = data; }

    // make a 'clone' of the object
    void Ref(const wxObject& clone);

    // destroy a reference
    void UnRef();

    // Make sure this object has only one reference
    void UnShare() { AllocExclusive(); }

    // check if this object references the same data as the other one
    bool IsSameAs(const wxObject& o) const { return m_refData == o.m_refData; }

protected:
    // ensure that our data is not shared with anybody else: if we have no
    // data, it is created using CreateRefData() below, if we have shared data
    // it is copied using CloneRefData(), otherwise nothing is done
    void AllocExclusive();

    // both methods must be implemented if AllocExclusive() is used, not pure
    // virtual only because of the backwards compatibility reasons

    // create a new m_refData
    virtual wxObjectRefData *CreateRefData() const;

    // create a new m_refData initialized with the given one
    virtual wxObjectRefData *CloneRefData(const wxObjectRefData *data) const;

    wxObjectRefData *m_refData;
};

wxObject *wxCheckDynamicCast(wxObject *obj, wxClassInfo *classInfo);

#include "wx/xti2.h"

// ----------------------------------------------------------------------------
// Compatibility macro aliases IMPLEMENT group
// ----------------------------------------------------------------------------

// deprecated variants _not_ requiring a semicolon after them and without wx prefix.
// (note that also some wx-prefixed macro do _not_ require a semicolon because
//  it's not always possible to force the compire to require it)

#define IMPLEMENT_DYNAMIC_CLASS(n,b)                                wxIMPLEMENT_DYNAMIC_CLASS(n,b)
#define IMPLEMENT_DYNAMIC_CLASS2(n,b1,b2)                           wxIMPLEMENT_DYNAMIC_CLASS2(n,b1,b2)
#define IMPLEMENT_ABSTRACT_CLASS(n,b)                               wxIMPLEMENT_ABSTRACT_CLASS(n,b)
#define IMPLEMENT_ABSTRACT_CLASS2(n,b1,b2)                          wxIMPLEMENT_ABSTRACT_CLASS2(n,b1,b2)
#define IMPLEMENT_CLASS(n,b)                                        wxIMPLEMENT_CLASS(n,b)
#define IMPLEMENT_CLASS2(n,b1,b2)                                   wxIMPLEMENT_CLASS2(n,b1,b2)

#define IMPLEMENT_PLUGGABLE_CLASS(n,b)                              wxIMPLEMENT_PLUGGABLE_CLASS(n,b)
#define IMPLEMENT_PLUGGABLE_CLASS2(n,b,b2)                          wxIMPLEMENT_PLUGGABLE_CLASS2(n,b,b2)
#define IMPLEMENT_ABSTRACT_PLUGGABLE_CLASS(n,b)                     wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS(n,b)
#define IMPLEMENT_ABSTRACT_PLUGGABLE_CLASS2(n,b,b2)                 wxIMPLEMENT_ABSTRACT_PLUGGABLE_CLASS2(n,b,b2)
#define IMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS(n,b)                wxIMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS(n,b)
#define IMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS2(n,b,b2)            wxIMPLEMENT_USER_EXPORTED_PLUGGABLE_CLASS2(n,b,b2)
#define IMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(n,b)       wxIMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS(n,b)
#define IMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS2(n,b,b2)   wxIMPLEMENT_USER_EXPORTED_ABSTRACT_PLUGGABLE_CLASS2(n,b,b2)

#define CLASSINFO(n)                                wxCLASSINFO(n)

#endif // _WX_OBJECTH__
