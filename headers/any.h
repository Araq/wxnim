/////////////////////////////////////////////////////////////////////////////
// Name:        wx/any.h
// Purpose:     wxAny class
// Author:      Jaakko Salli
// Modified by:
// Created:     07/05/2009
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_ANY_H_
#define _WX_ANY_H_

#include "wx/defs.h"

#include <new> // for placement new
#include "wx/string.h"
#include "wx/meta/if.h"
#include "wx/typeinfo.h"
#include "wx/list.h"

// Size of the wxAny value buffer.
#def WX_ANY_VALUE_BUFFER_SIZE  16

union wxAnyValueBuffer
{
    union Alignment
    {
        wxInt64 m_int64;
        long double m_longDouble;
        void ( *m_funcPtr )(void);
        //void ( wxAnyValueBuffer::*m_mFuncPtr )(void);
    } m_alignment;

    void*   m_ptr;
    wxByte  m_buffer[WX_ANY_VALUE_BUFFER_SIZE];
};

//
// wxAnyValueType is base class for value type functionality for C++ data
// types used with wxAny. Usually the default template (wxAnyValueTypeImpl<>)
// will create a satisfactory wxAnyValueType implementation for a data type.
//
#inheritable wxAnyValueType
class WXDLLIMPEXP_BASE wxAnyValueType
{
    WX_DECLARE_ABSTRACT_TYPEINFO(wxAnyValueType)
public:
    /**
        Default constructor.
    */
    wxAnyValueType()
    {
    }

    /**
        Destructor.
    */
    virtual ~wxAnyValueType()
    {
    }

    /**
        This function is used for internal type matching.
    */
    virtual bool IsSameType(const wxAnyValueType* otherType) const = 0;

    /**
        This function is called every time the data in wxAny
        buffer needs to be freed.
    */
    virtual void DeleteValue(wxAnyValueBuffer& buf) const = 0;

    /**
        Implement this for buffer-to-buffer copy.

        @param src
            This is the source data buffer.

        @param dst
            This is the destination data buffer that is in either
            uninitialized or freed state.
    */
    virtual void CopyBuffer(const wxAnyValueBuffer& src,
                            wxAnyValueBuffer& dst) const = 0;

    /**
        Convert value into buffer of different type. Return false if
        not possible.
    */
    virtual bool ConvertValue(const wxAnyValueBuffer& src,
                              wxAnyValueType* dstType,
                              wxAnyValueBuffer& dst) const = 0;

    /**
        Use this template function for checking if wxAnyValueType represents
        a specific C++ data type.

        @remarks This template function does not work on some older compilers
                (such as Visual C++ 6.0). For full compiler compatibility
                please use wxANY_VALUE_TYPE_CHECK_TYPE(valueTypePtr, T) macro
                instead.

        @see wxAny::CheckType()
    */
    // FIXME-VC6: remove this hack when VC6 is no longer supported
    template <typename T>
    bool CheckType(T* reserved = NULL) const;
};


//
// We need to allocate wxAnyValueType instances in heap, and need to use
// scoped ptr to properly deallocate them in dynamic library use cases.
// Here we have a minimal specialized scoped ptr implementation to deal
// with various compiler-specific problems with template class' static
// member variable of template type with explicit constructor which
// is initialized in global scope.
//
class wxAnyValueTypeScopedPtr
{
public:
    wxAnyValueTypeScopedPtr(wxAnyValueType* ptr) : m_ptr(ptr) { }
    ~wxAnyValueTypeScopedPtr() { delete m_ptr; }
    wxAnyValueType* get() const { return m_ptr; }
private:
    wxAnyValueType* m_ptr;
};


//
// This method of checking the type is compatible with VC6
#define wxANY_VALUE_TYPE_CHECK_TYPE(valueTypePtr, T) \
    wxAnyValueTypeImpl<T>::IsSameClass(valueTypePtr)


/**
    Helper macro for defining user value types.

    Even though C++ RTTI would be fully available to use, we'd have to to
    facilitate sub-type system which allows, for instance, wxAny with
    signed short '15' to be treated equal to wxAny with signed long long '15'.
    Having sm_instance is important here.

    NB: We really need to have wxAnyValueType instances allocated
        in heap. They are stored as static template member variables,
        and with them we just can't be too careful (eg. not allocating
        them in heap broke the type identification in GCC).
*/
#define WX_DECLARE_ANY_VALUE_TYPE(CLS) \
    friend class wxAny; \
    WX_DECLARE_TYPEINFO_INLINE(CLS) \
public: \
    virtual bool IsSameType(const wxAnyValueType* otherType) const \
    { \
        return IsSameClass(otherType); \
    }


#define WX_IMPLEMENT_ANY_VALUE_TYPE(CLS) \
wxAnyValueTypeScopedPtr CLS::sm_instance(new CLS());

/**
    Intermediate template for the generic value type implementation.
    We can derive from this same value type for multiple actual types
    (for instance, we can have wxAnyValueTypeImplInt for all signed
    integer types), and also easily implement specialized templates
    with specific dynamic type conversion.
*/
template<typename T>
class wxAnyValueTypeImplBase : public wxAnyValueType
{

public:
    wxAnyValueTypeImplBase() : wxAnyValueType() { }
    virtual ~wxAnyValueTypeImplBase() { }

    virtual void DeleteValue(wxAnyValueBuffer& buf) const
    {
        Ops::DeleteValue(buf);
    }

    virtual void CopyBuffer(const wxAnyValueBuffer& src,
                            wxAnyValueBuffer& dst) const
    {
        Ops::SetValue(Ops::GetValue(src), dst);
    }

    /**
        It is important to reimplement this in any specialized template
        classes that inherit from wxAnyValueTypeImplBase.
    */
    static void SetValue(const T& value,
                         wxAnyValueBuffer& buf)
    {
        Ops::SetValue(value, buf);
    }

    /**
        It is important to reimplement this in any specialized template
        classes that inherit from wxAnyValueTypeImplBase.
    */
    static const T& GetValue(const wxAnyValueBuffer& buf)
    {
        return Ops::GetValue(buf);
    }

};


/*
    Generic value type template. Note that bulk of the implementation
    resides in wxAnyValueTypeImplBase.
*/
template<typename T>
class wxAnyValueTypeImpl : public wxAnyValueTypeImplBase<T>
{
    WX_DECLARE_ANY_VALUE_TYPE(wxAnyValueTypeImpl<T>)
public:
    wxAnyValueTypeImpl() : wxAnyValueTypeImplBase<T>() { }
    virtual ~wxAnyValueTypeImpl() { }

    virtual bool ConvertValue(const wxAnyValueBuffer& src,
                              wxAnyValueType* dstType,
                              wxAnyValueBuffer& dst) const
    {
        wxUnusedVar(src);
        wxUnusedVar(dstType);
        wxUnusedVar(dst);
        return false;
    }
};


//
// Helper macro for using same base value type implementation for multiple
// actual C++ data types.
//
#define _WX_ANY_DEFINE_SUB_TYPE(T, CLSTYPE)

#define WX_ANY_DEFINE_SUB_TYPE(T, CLSTYPE) \
  _WX_ANY_DEFINE_SUB_TYPE(T, CLSTYPE)

//
//  Integer value types
//
#@
type
  WxAnyBaseIntType* = int64
  WxAnyBaseUintType* = uint64
@#

class WXDLLIMPEXP_BASE wxAnyValueTypeImplInt :
    public wxAnyValueTypeImplBase<wxAnyBaseIntType>
{
    WX_DECLARE_ANY_VALUE_TYPE(wxAnyValueTypeImplInt)
public:
    wxAnyValueTypeImplInt() :
        wxAnyValueTypeImplBase<wxAnyBaseIntType>() { }
    virtual ~wxAnyValueTypeImplInt() { }

    virtual bool ConvertValue(const wxAnyValueBuffer& src,
                              wxAnyValueType* dstType,
                              wxAnyValueBuffer& dst) const;
};


class WXDLLIMPEXP_BASE wxAnyValueTypeImplUint :
    public wxAnyValueTypeImplBase<wxAnyBaseUintType>
{
    WX_DECLARE_ANY_VALUE_TYPE(wxAnyValueTypeImplUint)
public:
    wxAnyValueTypeImplUint() :
        wxAnyValueTypeImplBase<wxAnyBaseUintType>() { }
    virtual ~wxAnyValueTypeImplUint() { }

    virtual bool ConvertValue(const wxAnyValueBuffer& src,
                              wxAnyValueType* dstType,
                              wxAnyValueBuffer& dst) const;
};


WX_ANY_DEFINE_SUB_TYPE(signed long, Int)
WX_ANY_DEFINE_SUB_TYPE(signed int, Int)
WX_ANY_DEFINE_SUB_TYPE(signed short, Int)
WX_ANY_DEFINE_SUB_TYPE(signed char, Int)

WX_ANY_DEFINE_SUB_TYPE(wxLongLong_t, Int)


WX_ANY_DEFINE_SUB_TYPE(unsigned long, Uint)
WX_ANY_DEFINE_SUB_TYPE(unsigned int, Uint)
WX_ANY_DEFINE_SUB_TYPE(unsigned short, Uint)
WX_ANY_DEFINE_SUB_TYPE(unsigned char, Uint)

WX_ANY_DEFINE_SUB_TYPE(wxULongLong_t, Uint)




#define WX_ANY_DEFINE_CONVERTIBLE_TYPE(T, TYPENAME, CONVFUNC, BT)
#define WX_ANY_DEFINE_CONVERTIBLE_TYPE_BASE(T, TYPENAME, CONVFUNC)

//
// String value type
//

// Convert wxString to destination wxAny value type
extern WXDLLIMPEXP_BASE bool wxAnyConvertString(const wxString& value,
                                                wxAnyValueType* dstType,
                                                wxAnyValueBuffer& dst);

WX_ANY_DEFINE_CONVERTIBLE_TYPE_BASE(wxString, wxString, wxAnyConvertString)
WX_ANY_DEFINE_CONVERTIBLE_TYPE(const char*, ConstCharPtr,
                               wxAnyConvertString, wxString)


// WX_ANY_DEFINE_SUB_TYPE requires this
typedef double wxAnyBaseDoubleType;

WX_ANY_DEFINE_SUB_TYPE(float, Double)
WX_ANY_DEFINE_SUB_TYPE(double, Double)


//
// We need to implement custom signed/unsigned int equals operators
// for signed/unsigned (eg. wxAny(128UL) == 128L) comparisons to work.
#def WXANY_IMPLEMENT_INT_EQ_OP(TS, TUS) \
bool operator==(TS value) const \
{ \
    if ( wxAnyValueTypeImpl<TS>::IsSameClass(m_type) ) \
        return (value == static_cast<TS> \
                (wxAnyValueTypeImpl<TS>::GetValue(m_buffer))); \
    if ( wxAnyValueTypeImpl<TUS>::IsSameClass(m_type) ) \
        return (value == static_cast<TS> \
                (wxAnyValueTypeImpl<TUS>::GetValue(m_buffer))); \
    return false; \
} \
bool operator==(TUS value) const \
{ \
    if ( wxAnyValueTypeImpl<TUS>::IsSameClass(m_type) ) \
        return (value == static_cast<TUS> \
                (wxAnyValueTypeImpl<TUS>::GetValue(m_buffer))); \
    if ( wxAnyValueTypeImpl<TS>::IsSameClass(m_type) ) \
        return (value == static_cast<TUS> \
                (wxAnyValueTypeImpl<TS>::GetValue(m_buffer))); \
    return false; \
}


//
// The wxAny class represents a container for any type. A variant's value
// can be changed at run time, possibly to a different type of value.
//
// As standard, wxAny can store value of almost any type, in a fairly
// optimal manner even.
//
class wxAny
{
public:
    /**
        Default constructor.
    */
    wxAny()
    {
        m_type = wxAnyNullValueType;
    }

    /**
        Destructor.
    */
    ~wxAny()
    {
        m_type->DeleteValue(m_buffer);
    }

    //@{
    /**
        Various constructors.
    */
    template<typename T>
    wxAny(const T& value)
    {
    }

    // These two constructors are needed to deal with string literals
    wxAny(const char* value)
    {
    }

    wxAny(const wxAny& any)
    {
    }

    //@}


    /**
        Returns the value type as wxAnyValueType instance.

        @remarks You cannot reliably test whether two wxAnys are of
                 same value type by simply comparing return values
                 of wxAny::GetType(). Instead, use wxAny::HasSameType().

        @see HasSameType()
    */
    const wxAnyValueType* GetType() const
    {
        return m_type;
    }

    /**
        Returns @true if this and another wxAny have the same
        value type.
    */
    bool HasSameType(const wxAny& other) const
    {
    }

    /**
        Tests if wxAny is null (that is, whether there is no data).
    */
    bool IsNull() const
    {
    }

    /**
        Makes wxAny null (that is, clears it).
    */
    void MakeNull()
    {
    }

    //@{
    /**
        Assignment operators.
    */
    template<typename T>
    wxAny& operator=(const T &value)
    {
    }

    wxAny& operator=(const wxAny &any)
    {
        if (this != &any)
            AssignAny(any);
        return *this;
    }

    // These two operators are needed to deal with string literals
    wxAny& operator=(const char* value)
    {
        Assign(value);
        return *this;
    }

    //@{
    /**
        Equality operators.
    */
    bool operator==(const wxString& value) const
    {
        wxString value2;
        if ( !GetAs(&value2) )
            return false;
        return value == value2;
    }

    bool operator==(const char* value) const
        { return (*this) == wxString(value); }

    //
    // We need to implement custom signed/unsigned int equals operators
    // for signed/unsigned (eg. wxAny(128UL) == 128L) comparisons to work.
    WXANY_IMPLEMENT_INT_EQ_OP(signed short, unsigned short)
    WXANY_IMPLEMENT_INT_EQ_OP(signed int, unsigned int)

    wxGCC_WARNING_SUPPRESS(float-equal)

    bool operator==(float value) const
    {
        if ( !wxAnyValueTypeImpl<float>::IsSameClass(m_type) )
            return false;

        return value ==
            static_cast<float>
                (wxAnyValueTypeImpl<float>::GetValue(m_buffer));
    }

    bool operator==(double value) const
    {
        if ( !wxAnyValueTypeImpl<double>::IsSameClass(m_type) )
            return false;

        return value ==
            static_cast<double>
                (wxAnyValueTypeImpl<double>::GetValue(m_buffer));
    }

    wxGCC_WARNING_RESTORE(float-equal)

    bool operator==(bool value) const
    {
        if ( !wxAnyValueTypeImpl<bool>::IsSameClass(m_type) )
            return false;

        return value == (wxAnyValueTypeImpl<bool>::GetValue(m_buffer));
    }

    //@}

    //@{
    /**
        Inequality operators (implement as template).
    */
    template<typename T>
    bool operator!=(const T& value) const
        { return !((*this) == value); }
    //@}

    /**
        This template function converts wxAny into given type. In most cases
        no type conversion is performed, so if the type is incorrect an
        assertion failure will occur.

        @remarks For convenience, conversion is done when T is wxString. This
                 is useful when a string literal (which are treated as
                 const char* and const wchar_t*) has been assigned to wxAny.

                 This template function may not work properly with Visual C++
                 6. For full compiler compatibility, please use
                 wxANY_AS(any, T) macro instead.
    */
    // FIXME-VC6: remove this hack when VC6 is no longer supported
    template<typename T>
    T As(T* = NULL) const
    {
        if ( !wxAnyValueTypeImpl<T>::IsSameClass(m_type) )
        {
            wxFAIL_MSG("Incorrect or non-convertible data type");
        }

        return static_cast<T>(wxAnyValueTypeImpl<T>::GetValue(m_buffer));
    }

    // Allow easy conversion from 'const char *' etc. to wxString
    // FIXME-VC6: remove this hack when VC6 is no longer supported
    //template<>
    wxString As(wxString*) const
    {
        wxString value;
        if ( !GetAs(&value) )
        {
            wxFAIL_MSG("Incorrect or non-convertible data type");
        }
        return value;
    }

    /**
        Template function that retrieves and converts the value of this
        variant to the type that T* value is.

        @return Returns @true if conversion was successful.
    */
    template<typename T>
    bool GetAs(T* value) const
    {
        if ( !wxAnyValueTypeImpl<T>::IsSameClass(m_type) )
        {
            wxAnyValueType* otherType =
                wxAnyValueTypeImpl<T>::sm_instance.get();
            wxAnyValueBuffer temp_buf;

            if ( !m_type->ConvertValue(m_buffer, otherType, temp_buf) )
                return false;

            *value =
                static_cast<T>(wxAnyValueTypeImpl<T>::GetValue(temp_buf));
            otherType->DeleteValue(temp_buf);

            return true;
        }
        *value = static_cast<T>(wxAnyValueTypeImpl<T>::GetValue(m_buffer));
        return true;
    }

private:
    // Assignment functions
    void AssignAny(const wxAny& any)
    {
        // Must delete value - CopyBuffer() never does that
        m_type->DeleteValue(m_buffer);

        wxAnyValueType* newType = any.m_type;

        if ( !newType->IsSameType(m_type) )
            m_type = newType;

        newType->CopyBuffer(any.m_buffer, m_buffer);
    }


    template<typename T>
    void Assign(const T &value)
    {
    }

    // Data
    wxAnyValueBuffer    m_buffer;
    wxAnyValueType*     m_type;
};

#endif // _WX_ANY_H_
