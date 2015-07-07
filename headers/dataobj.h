///////////////////////////////////////////////////////////////////////////////
// Name:        wx/dataobj.h
// Purpose:     common data object classes
// Author:      Vadim Zeitlin, Robert Roebling
// Modified by:
// Created:     26.05.99
// Copyright:   (c) wxWidgets Team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_DATAOBJ_H_BASE_
#define _WX_DATAOBJ_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------
#include "wx/defs.h"

#if wxUSE_DATAOBJ

#include "wx/string.h"
#include "wx/bitmap.h"
#include "wx/list.h"
#include "wx/arrstr.h"

// ============================================================================
/*
   Generic data transfer related classes. The class hierarchy is as follows:

                                - wxDataObject-
                               /               \
                              /                 \
            wxDataObjectSimple                  wxDataObjectComposite
           /           |      \
          /            |       \
   wxTextDataObject    |     wxBitmapDataObject
                       |
               wxCustomDataObject

*/
// ============================================================================

// ----------------------------------------------------------------------------
// wxDataFormat class is declared in platform-specific headers: it represents
// a format for data which may be either one of the standard ones (text,
// bitmap, ...) or a custom one which is then identified by a unique string.
// ----------------------------------------------------------------------------

/* the class interface looks like this (pseudo code):

class wxDataFormat
{
public:
    typedef <integral type> NativeFormat;

    wxDataFormat(NativeFormat format = wxDF_INVALID);
    wxDataFormat(const wxString& format);

    wxDataFormat& operator=(NativeFormat format);
    wxDataFormat& operator=(const wxDataFormat& format);

    bool operator==(NativeFormat format) const;
    bool operator!=(NativeFormat format) const;

    void SetType(NativeFormat format);
    NativeFormat GetType() const;

    wxString GetId() const;
    void SetId(const wxString& format);
};

*/
typedef unsigned short NativeFormat;

class WXDLLIMPEXP_CORE wxDataFormat
{
public:
    // the clipboard formats under Win32 are WORD's

    wxDataFormat(NativeFormat format = #@ NativeFormat(wxDF_INVALID)
                                       @#
      ) { m_format = format; }

    // we need constructors from all string types as implicit conversions to
    // wxString don't apply when we already rely on implicit conversion of a,
    // for example, "char *" string to wxDataFormat, and existing code does it
    wxDataFormat(const wxString& format) { SetId(format); }
    wxDataFormat(const char *format) { SetId(format); }
    wxDataFormat(const wxCStrData& format) { SetId(format); }

    wxDataFormat& operator=(NativeFormat format)
        { m_format = format; return *this; }
    wxDataFormat& operator=(const wxDataFormat& format)
        { m_format = format.m_format; return *this; }

    // default copy ctor/assignment operators ok

    // comparison (must have both versions)
    bool operator==(wxDataFormatId format) const;
    bool operator!=(wxDataFormatId format) const;
    bool operator==(const wxDataFormat& format) const;
    bool operator!=(const wxDataFormat& format) const;

    // explicit and implicit conversions to NativeFormat which is one of
    // standard data types (implicit conversion is useful for preserving the
    // compatibility with old code)
    NativeFormat GetFormatId() const { return m_format; }

    // this works with standard as well as custom ids
    void SetType(NativeFormat format) { m_format = format; }
    NativeFormat GetType() const { return m_format; }

    // string ids are used for custom types - this SetId() must be used for
    // application-specific formats
    wxString GetId() const;
    void SetId(const wxString& format);

    // returns true if the format is one of those defined in wxDataFormatId
    bool IsStandard() const { return m_format > 0 && m_format < wxDF_PRIVATE; }
};

// the value for default argument to some functions (corresponds to
// wxDF_INVALID)
extern WXDLLIMPEXP_CORE const wxDataFormat wxFormatInvalid;

// ----------------------------------------------------------------------------
// wxDataObject represents a piece of data which knows which formats it
// supports and knows how to render itself in each of them - GetDataHere(),
// and how to restore data from the buffer (SetData()).
//
// Although this class may be used directly (i.e. custom classes may be
// derived from it), in many cases it might be simpler to use either
// wxDataObjectSimple or wxDataObjectComposite classes.
//
// A data object may be "read only", i.e. support only GetData() functions or
// "read-write", i.e. support both GetData() and SetData() (in principle, it
// might be "write only" too, but this is rare). Moreover, it doesn't have to
// support the same formats in Get() and Set() directions: for example, a data
// object containing JPEG image might accept BMPs in GetData() because JPEG
// image may be easily transformed into BMP but not in SetData(). Accordingly,
// all methods dealing with formats take an additional "direction" argument
// which is either SET or GET and which tells the function if the format needs
// to be supported by SetData() or GetDataHere().
// ----------------------------------------------------------------------------

#inheritable wxDataObjectBase
#pure Direction
#def GetX #@ Direction.Get
@#

class WXDLLIMPEXP_CORE wxDataObjectBase
{
public:
    enum Direction
    {
        Get  = 0x01,    // format is supported by GetDataHere()
        Set  = 0x02,    // format is supported by SetData()
        Both = 0x03     // format is supported by both (unused currently)
    };

    // this class is polymorphic, hence it needs a virtual dtor
    virtual ~wxDataObjectBase();

    // get the best suited format for rendering our data
    virtual wxDataFormat GetPreferredFormat(Direction dir = GetX) const = 0;

    // get the number of formats we support
    virtual size_t GetFormatCount(Direction dir = GetX) const = 0;

    // return all formats in the provided array (of size GetFormatCount())
    virtual void GetAllFormats(wxDataFormat *formats,
                               Direction dir = GetX) const = 0;

    // get the (total) size of data for the given format
    virtual size_t GetDataSize(const wxDataFormat& format) const = 0;

    // copy raw data (in the specified format) to the provided buffer, return
    // true if data copied successfully, false otherwise
    virtual bool GetDataHere(const wxDataFormat& format, void *buf) const = 0;

    // get data from the buffer of specified length (in the given format),
    // return true if the data was read successfully, false otherwise
    virtual bool SetData(const wxDataFormat& WXUNUSED(format),
                         size_t WXUNUSED(len), const void * WXUNUSED(buf))
    {
        return false;
    }

    // returns true if this format is supported
    bool IsSupported(const wxDataFormat& format, Direction dir = GetX) const;
};

// ----------------------------------------------------------------------------
// include the platform-specific declarations of wxDataObject
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// wxDataObject is a "smart" and polymorphic piece of data.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxDataObject : public wxDataObjectBase
{
public:
    // ctor & dtor
    wxDataObject();
    virtual ~wxDataObject();

    // tell the object that it should be now owned by IDataObject - i.e. when
    // it is deleted, it should delete us as well
    void SetAutoDelete();

    // return true if we support this format in "Get" direction
    bool IsSupportedFormat(const wxDataFormat& format) const
        { return wxDataObjectBase::IsSupported(format, Get); }

    // if this method returns false, this wxDataObject will be copied to
    // the clipboard with its size prepended to it, which is compatible with
    // older wx versions
    //
    // if returns true, then this wxDataObject will be copied to the clipboard
    // without any additional information and ::HeapSize() function will be used
    // to get the size of that data
    virtual bool NeedsVerbatimData(const wxDataFormat& WXUNUSED(format)) const
    {
        // return false from here only for compatibility with earlier wx versions
        return true;
    }
    // they need to be accessed from wxIDataObject, so made them public,
    // or wxIDataObject friend
public:
    virtual const void* GetSizeFromBuffer( const void* buffer, size_t* size,
                                           const wxDataFormat& format );
    virtual void* SetSizeInBuffer( void* buffer, size_t size,
                                   const wxDataFormat& format );
    virtual size_t GetBufferOffset( const wxDataFormat& format );
};

// ----------------------------------------------------------------------------
// wxDataObjectSimple is a wxDataObject which only supports one format (in
// both Get and Set directions, but you may return false from GetDataHere() or
// SetData() if one of them is not supported). This is the simplest possible
// wxDataObject implementation.
//
// This is still an "abstract base class" (although it doesn't have any pure
// virtual functions), to use it you should derive from it and implement
// GetDataSize(), GetDataHere() and SetData() functions because the base class
// versions don't do anything - they just return "not implemented".
//
// This class should be used when you provide data in only one format (no
// conversion to/from other formats), either a standard or a custom one.
// Otherwise, you should use wxDataObjectComposite or wxDataObject directly.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxDataObjectSimple : public wxDataObject
{
public:
    // ctor takes the format we support, but it can also be set later with
    // SetFormat()
    wxDataObjectSimple(const wxDataFormat& format = wxFormatInvalid)
        : m_format(format)
        {
        }

    // get/set the format we support
    const wxDataFormat& GetFormat() const { return m_format; }
    void SetFormat(const wxDataFormat& format) { m_format = format; }

    // virtual functions to override in derived class (the base class versions
    // just return "not implemented")
    // -----------------------------------------------------------------------

    // get the size of our data
    virtual size_t GetDataSize() const
        { return 0; }

    // copy our data to the buffer
    virtual bool GetDataHere(void *WXUNUSED(buf)) const
        { return false; }

    // copy data from buffer to our data
    virtual bool SetData(size_t WXUNUSED(len), const void *WXUNUSED(buf))
        { return false; }

    // implement base class pure virtuals
    // ----------------------------------
    virtual wxDataFormat GetPreferredFormat(wxDataObjectBase::Direction WXUNUSED(dir) = GetX) const
        { return m_format; }
    virtual size_t GetFormatCount(wxDataObjectBase::Direction WXUNUSED(dir) = GetX) const
        { return 1; }
    virtual void GetAllFormats(wxDataFormat *formats,
                               wxDataObjectBase::Direction WXUNUSED(dir) = GetX) const
        { *formats = m_format; }
    virtual size_t GetDataSize(const wxDataFormat& WXUNUSED(format)) const
        { return GetDataSize(); }
    virtual bool GetDataHere(const wxDataFormat& WXUNUSED(format),
                             void *buf) const
        { return GetDataHere(buf); }
    virtual bool SetData(const wxDataFormat& WXUNUSED(format),
                         size_t len, const void *buf)
        { return SetData(len, buf); }

private:
    // the one and only format we support
    wxDataFormat m_format;

    wxDECLARE_NO_COPY_CLASS(wxDataObjectSimple);
};

// ----------------------------------------------------------------------------
// wxDataObjectComposite is the simplest way to implement wxDataObject
// supporting multiple formats. It contains several wxDataObjectSimple and
// supports all formats supported by any of them.
//
// This class shouldn't be (normally) derived from, but may be used directly.
// If you need more flexibility than what it provides, you should probably use
// wxDataObject directly.
// ----------------------------------------------------------------------------

//WX_DECLARE_EXPORTED_LIST(wxDataObjectSimple, wxSimpleDataObjectList);

class WXDLLIMPEXP_CORE wxDataObjectComposite : public wxDataObject
{
public:
    // ctor
    wxDataObjectComposite();
    virtual ~wxDataObjectComposite();

    // add data object (it will be deleted by wxDataObjectComposite, hence it
    // must be allocated on the heap) whose format will become the preferred
    // one if preferred == true
    void Add(wxDataObjectSimple *dataObject, bool preferred = false);

    // Report the format passed to the SetData method.  This should be the
    // format of the data object within the composite that received data from
    // the clipboard or the DnD operation.  You can use this method to find
    // out what kind of data object was received.
    wxDataFormat GetReceivedFormat() const;

    // Returns the pointer to the object which supports this format or NULL.
    // The returned pointer is owned by wxDataObjectComposite and must
    // therefore not be destroyed by the caller.
    wxDataObjectSimple *GetObject(const wxDataFormat& format,
                                  wxDataObjectBase::Direction dir = GetX) const;

    // implement base class pure virtuals
    // ----------------------------------
    virtual wxDataFormat GetPreferredFormat(wxDataObjectBase::Direction dir = GetX) const;
    virtual size_t GetFormatCount(wxDataObjectBase::Direction dir = GetX) const;
    virtual void GetAllFormats(wxDataFormat *formats, wxDataObjectBase::Direction dir = GetX) const;
    virtual size_t GetDataSize(const wxDataFormat& format) const;
    virtual bool GetDataHere(const wxDataFormat& format, void *buf) const;
    virtual bool SetData(const wxDataFormat& format, size_t len, const void *buf);

};

// ============================================================================
// Standard implementations of wxDataObjectSimple which can be used directly
// (i.e. without having to derive from them) for standard data type transfers.
//
// Note that although all of them can work with provided data, you can also
// override their virtual GetXXX() functions to only provide data on demand.
// ============================================================================

class WXDLLIMPEXP_CORE wxHTMLDataObject : public wxDataObjectSimple
{
public:
    // ctor: you can specify the text here or in SetText(), or override
    // GetText()
    wxHTMLDataObject(const wxString& html = wxEmptyString)
        : wxDataObjectSimple(wxDF_HTML),
          m_html(html)
        {
        }

    // virtual functions which you may override if you want to provide text on
    // demand only - otherwise, the trivial default versions will be used
    virtual size_t GetLength() const { return m_html.Len() + 1; }
    virtual wxString GetHTML() const { return m_html; }
    virtual void SetHTML(const wxString& html) { m_html = html; }

    virtual size_t GetDataSize() const;
    virtual bool GetDataHere(void *buf) const;
    virtual bool SetData(size_t len, const void *buf);

    // Must provide overloads to avoid hiding them (and warnings about it)
    virtual size_t GetDataSize(const wxDataFormat&) const
    {
        return GetDataSize();
    }
    virtual bool GetDataHere(const wxDataFormat&, void *buf) const
    {
        return GetDataHere(buf);
    }
    virtual bool SetData(const wxDataFormat&, size_t len, const void *buf)
    {
        return SetData(len, buf);
    }

private:
    wxString m_html;
};

class WXDLLIMPEXP_CORE wxTextDataObject : public wxDataObjectSimple
{
public:
    // ctor: you can specify the text here or in SetText(), or override
    // GetText()
    wxTextDataObject(const wxString& text = wxEmptyString)
        : wxDataObjectSimple(
                             wxDF_TEXT
                            ),
          m_text(text)
        {
        }

    // virtual functions which you may override if you want to provide text on
    // demand only - otherwise, the trivial default versions will be used
    virtual size_t GetTextLength() const { return m_text.Len() + 1; }
    virtual wxString GetText() const { return m_text; }
    virtual void SetText(const wxString& text) { m_text = text; }

    // implement base class pure virtuals
    // ----------------------------------

    // some platforms have 2 and not 1 format for text data
    virtual size_t GetFormatCount(Direction WXUNUSED(dir) = GetX) const { return 2; }
    virtual void GetAllFormats(wxDataFormat *formats,
                               wxDataObjectBase::Direction WXUNUSED(dir) = GetX) const;

    virtual size_t GetDataSize() const { return GetDataSize(GetPreferredFormat()); }
    virtual bool GetDataHere(void *buf) const { return GetDataHere(GetPreferredFormat(), buf); }
    virtual bool SetData(size_t len, const void *buf) { return SetData(GetPreferredFormat(), len, buf); }

    size_t GetDataSize(const wxDataFormat& format) const;
    bool GetDataHere(const wxDataFormat& format, void *pBuf) const;
    bool SetData(const wxDataFormat& format, size_t nLen, const void* pBuf);

private:
    wxString m_text;

    wxDECLARE_NO_COPY_CLASS(wxTextDataObject);
};

// ----------------------------------------------------------------------------
// wxBitmapDataObject contains a bitmap
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmapDataObjectBase : public wxDataObjectSimple
{
public:
    // ctor: you can specify the bitmap here or in SetBitmap(), or override
    // GetBitmap()
    wxBitmapDataObjectBase(const wxBitmap& bitmap = wxNullBitmap)
        : wxDataObjectSimple(wxDF_BITMAP), m_bitmap(bitmap)
        {
        }

    // virtual functions which you may override if you want to provide data on
    // demand only - otherwise, the trivial default versions will be used
    virtual wxBitmap GetBitmap() const { return m_bitmap; }
    virtual void SetBitmap(const wxBitmap& bitmap) { m_bitmap = bitmap; }

protected:
    wxBitmap m_bitmap;

    wxDECLARE_NO_COPY_CLASS(wxBitmapDataObjectBase);
};

// ----------------------------------------------------------------------------
// wxFileDataObject contains a list of filenames
//
// NB: notice that this is a "write only" object, it can only be filled with
//     data from drag and drop operation.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxFileDataObjectBase : public wxDataObjectSimple
{
public:
    // ctor: use AddFile() later to fill the array
    wxFileDataObjectBase() : wxDataObjectSimple(wxDF_FILENAME) { }

    // get a reference to our array
    const wxArrayString& GetFilenames() const { return m_filenames; }

protected:
    wxArrayString m_filenames;

    wxDECLARE_NO_COPY_CLASS(wxFileDataObjectBase);
};

// ----------------------------------------------------------------------------
// wxCustomDataObject contains arbitrary untyped user data.
//
// It is understood that this data can be copied bitwise.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxCustomDataObject : public wxDataObjectSimple
{
public:
    // if you don't specify the format in the ctor, you can still use
    // SetFormat() later
    wxCustomDataObject(const wxDataFormat& format = wxFormatInvalid);

    // the dtor calls Free()
    virtual ~wxCustomDataObject();

    // you can call SetData() to set m_data: it will make a copy of the data
    // you pass - or you can use TakeData() which won't copy anything, but
    // will take ownership of data (i.e. will call Free() on it later)
    void TakeData(size_t size, void *data);

    // this function is called to allocate "size" bytes of memory from
    // SetData(). The default version uses operator new[].
    virtual void *Alloc(size_t size);

    // this function is called when the data is freed, you may override it to
    // anything you want (or may be nothing at all). The default version calls
    // operator delete[] on m_data
    virtual void Free();

    // get data: you may override these functions if you wish to provide data
    // only when it's requested
    virtual size_t GetSize() const { return m_size; }
    virtual void *GetData() const { return m_data; }

    // implement base class pure virtuals
    // ----------------------------------
    virtual size_t GetDataSize() const;
    virtual bool GetDataHere(void *buf) const;
    virtual bool SetData(size_t size, const void *buf);
    // Must provide overloads to avoid hiding them (and warnings about it)
    virtual size_t GetDataSize(const wxDataFormat&) const
    {
        return GetDataSize();
    }
    virtual bool GetDataHere(const wxDataFormat&, void *buf) const
    {
        return GetDataHere(buf);
    }
    virtual bool SetData(const wxDataFormat&, size_t len, const void *buf)
    {
        return SetData(len, buf);
    }

private:
    size_t m_size;
    void  *m_data;

    wxDECLARE_NO_COPY_CLASS(wxCustomDataObject);
};

    // wxURLDataObject is simply wxTextDataObject with a different name
    class WXDLLIMPEXP_CORE wxURLDataObject : public wxTextDataObject
    {
    public:
        wxURLDataObject(const wxString& url = wxEmptyString)
            : wxTextDataObject(url)
        {
        }

        wxString GetURL() const { return GetText(); }
        void SetURL(const wxString& url) { SetText(url); }
    };

#endif // wxUSE_DATAOBJ

#endif // _WX_DATAOBJ_H_BASE_
