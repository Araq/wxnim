///////////////////////////////////////////////////////////////////////////////
// Name:        wx/string.h
// Purpose:     wxString class
// Author:      Vadim Zeitlin
// Modified by:
// Created:     29/01/98
// Copyright:   (c) 1998 Vadim Zeitlin <zeitlin@dptmaths.ens-cachan.fr>
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

/*
    Efficient string class [more or less] compatible with MFC CString,
    wxWidgets version 1 wxString and std::string and some handy functions
    missing from string.h.
*/

#ifndef _WX_WXSTRING_H__
#define _WX_WXSTRING_H__

class wxUniChar {};
class wxCStrData {};

class WXDLLIMPEXP_BASE wxString
{
  // NB: special care was taken in arranging the member functions in such order
  //     that all inline functions can be effectively inlined, verify that all
  //     performance critical functions are still inlined if you change order!
public:
  // an 'invalid' value for string index, moved to this place due to a CW bug
  static const size_t npos;

  // constructors and destructor
    // ctor for an empty string
  wxString() {}

    // copy ctor
  wxString(const wxString& stringSrc) : m_impl(stringSrc.m_impl) { }

    // ctors from char* strings:
  wxString(const char *psz)
    : m_impl(ImplStr(psz)) {}
  wxString(const char *psz, size_t nLength)
    { assign(psz, nLength); }

  wxString Clone() const
  {
  }

  size_t length() const
  {
  }

  bool empty() const { return m_impl.empty(); }

  wxString substr(size_t nStart = 0, size_t nLen) const
  {
    size_t pos, len;
    PosLenToImpl(nStart, nLen, &pos, &len);
    return FromImpl(m_impl.substr(pos, len));
  }

  // generic attributes & operations
    // as standard strlen()
  size_t Len() const { return length(); }
    // string contains any characters?
  bool IsEmpty() const { return empty(); }
    // truncate the string to given length
  wxString& Truncate(size_t uiLen);
    // empty the string and free memory
  void Clear() { clear(); }

  // contents test
    // Is an ascii value
  bool IsAscii() const;
    // Is a number
  bool IsNumber() const;
    // Is a word
  bool IsWord() const;

  // data access (all indexes are 0 based)
    // read access
    wxUniChar at(size_t n) const
      { return wxStringOperations::DecodeChar(m_impl.begin() + PosToImpl(n)); }
    wxUniChar GetChar(size_t n) const
      { return at(n); }
    // read/write access

    // write access
    void SetChar(size_t n, wxUniChar ch)
      { at(n) = ch; }

    // get last character
    wxUniChar Last() const
    {
      wxASSERT_MSG( !empty(), wxT("wxString: index out of bounds") );
      return *rbegin();
    }

    /*
       Note that we we must define all of the overloads below to avoid
       ambiguity when using str[0].
     */
    wxUniChar operator[](int n) const
      { return at(n); }

    /*
        Overview of wxString conversions, implicit and explicit:

        - wxString has a std::[w]string-like c_str() method, however it does
          not return a C-style string directly but instead returns wxCStrData
          helper object which is convertible to either "char *" narrow string
          or "wchar_t *" wide string. Usually the correct conversion will be
          applied by the compiler automatically but if this doesn't happen you
          need to explicitly choose one using wxCStrData::AsChar() or AsWChar()
          methods or another wxString conversion function.

        - One of the places where the conversion does *NOT* happen correctly is
          when c_str() is passed to a vararg function such as printf() so you
          must *NOT* use c_str() with them. Either use wxPrintf() (all wx
          functions do handle c_str() correctly, even if they appear to be
          vararg (but they're not, really)) or add an explicit AsChar() or, if
          compatibility with previous wxWidgets versions is important, add a
          cast to "const char *".

        - In non-STL mode only, wxString is also implicitly convertible to
          wxCStrData. The same warning as above applies.

        - c_str() is polymorphic as it can be converted to either narrow or
          wide string. If you explicitly need one or the other, choose to use
          mb_str() (for narrow) or wc_str() (for wide) instead. Notice that
          these functions can return either the pointer to string directly (if
          this is what the string uses internally) or a temporary buffer
          containing the string and convertible to it. Again, conversion will
          usually be done automatically by the compiler but beware of the
          vararg functions: you need an explicit cast when using them.

        - There are also non-const versions of mb_str() and wc_str() called
          char_str() and wchar_str(). They are only meant to be used with
          non-const-correct functions and they always return buffers.

        - Finally wx_str() returns whatever string representation is used by
          wxString internally. It may be either a narrow or wide string
          depending on wxWidgets build mode but it will always be a raw pointer
          (and not a buffer).
     */

    // explicit conversion to wxCStrData
    wxCStrData c_str() const { return wxCStrData(this); }
    wxCStrData data() const { return c_str(); }

    // the first two operators conflict with operators for conversion to
    // std::string and they must be disabled if those conversions are enabled;
    // the next one only makes sense if conversions to char* are also defined
    // and not defining it in STL build also helps us to get more clear error
    // messages for the code which relies on implicit conversion to char* in
    // STL build

    // identical to c_str(), for MFC compatibility
    const wxCStrData GetData() const { return c_str(); }


    // also provide unsigned char overloads as signed/unsigned doesn't matter
    // for 7 bit ASCII characters
    static wxString FromAscii(const unsigned char *ascii)
        { return FromAscii((const char *)ascii); }
    static wxString FromAscii(const unsigned char *ascii, size_t len)
        { return FromAscii((const char *)ascii, len); }

    // conversion to/from UTF-8:

    static wxString FromUTF8Unchecked(const char *utf8)
    {
      if ( !utf8 )
          return wxEmptyString;

      wxASSERT( wxStringOperations::IsValidUtf8String(utf8) );
      return FromImpl(wxStringImpl(utf8));
    }
    static wxString FromUTF8Unchecked(const char *utf8, size_t len)
    {
      if ( !utf8 )
          return wxEmptyString;
      if ( len == npos )
          return FromUTF8Unchecked(utf8);

      wxASSERT( wxStringOperations::IsValidUtf8String(utf8, len) );
      return FromImpl(wxStringImpl(utf8, len));
    }

    static wxString FromUTF8(const char *utf8)
    {
        if ( !utf8 || !wxStringOperations::IsValidUtf8String(utf8) )
            return "";

        return FromImpl(wxStringImpl(utf8));
    }
    static wxString FromUTF8(const char *utf8, size_t len)
    {
        if ( len == npos )
            return FromUTF8(utf8);

        if ( !utf8 || !wxStringOperations::IsValidUtf8String(utf8, len) )
            return "";

        return FromImpl(wxStringImpl(utf8, len));
    }

    // this function exists in UTF-8 build only and returns the length of the
    // internal UTF-8 representation
    size_t utf8_length() const { return m_impl.length(); }

    // functions for storing binary data in wxString:

    static wxString From8BitData(const char *data, size_t len)
      { return wxString(data, wxConvISO8859_1, len); }
    // version for NUL-terminated data:
    static wxString From8BitData(const char *data)
      { return wxString(data, wxConvISO8859_1); }

    // conversions with (possible) format conversions: have to return a
    // buffer with temporary data
    //
    // the functions defined (in either Unicode or ANSI) mode are mb_str() to
    // return an ANSI (multibyte) string, wc_str() to return a wide string and
    // fn_str() to return a string which should be used with the OS APIs
    // accepting the file names. The return value is always the same, but the
    // type differs because a function may either return pointer to the buffer
    // directly or have to use intermediate buffer for translation.
};

// AsChar() and AsWChar() implementations simply forward to wxString methods

#mangle AsChar asCString
const char* wxCStrData::AsChar() const;

#endif  // _WX_WXSTRING_H_
