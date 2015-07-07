///////////////////////////////////////////////////////////////////////////////
// Name:        wx/bitmap.h
// Purpose:     wxBitmap class interface
// Author:      Vaclav Slavik
// Modified by:
// Created:     22.04.01
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_BITMAP_H_BASE_
#define _WX_BITMAP_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/string.h"
#include "wx/gdicmn.h"  // for wxBitmapType
#include "wx/colour.h"
#include "wx/image.h"

class WXDLLIMPEXP_FWD_CORE wxBitmap;
class WXDLLIMPEXP_FWD_CORE wxBitmapHandler;
class WXDLLIMPEXP_FWD_CORE wxIcon;
class WXDLLIMPEXP_FWD_CORE wxMask;
class WXDLLIMPEXP_FWD_CORE wxPalette;
class WXDLLIMPEXP_FWD_CORE wxDC;

// ----------------------------------------------------------------------------
// wxMask represents the transparent area of the bitmap
// ----------------------------------------------------------------------------

// TODO: all implementation of wxMask, except the generic one,
//       do not derive from wxMaskBase,,, they should
class WXDLLIMPEXP_CORE wxMaskBase : public wxObject
{
public:
    // create the mask from bitmap pixels of the given colour
    bool Create(const wxBitmap& bitmap, const wxColour& colour);

    // create the mask from the given mono bitmap
    bool Create(const wxBitmap& bitmap);

protected:
    // this function is called from Create() to free the existing mask data
    virtual void FreeData() = 0;

    // these functions must be overridden to implement the corresponding public
    // Create() methods, they shouldn't call FreeData() as it's already called
    // by the public wrappers
    virtual bool InitFromColour(const wxBitmap& bitmap,
                                const wxColour& colour) = 0;
    virtual bool InitFromMonoBitmap(const wxBitmap& bitmap) = 0;
};

#if defined(__WXDFB__) || \
    defined(__WXMAC__) || \
    defined(__WXGTK__) || \
    defined(__WXCOCOA__) || \
    defined(__WXMOTIF__) || \
    defined(__WXX11__)
    #define wxUSE_BITMAP_BASE 1
#else
    #define wxUSE_BITMAP_BASE 0
#endif

// a more readable way to tell
#define wxBITMAP_SCREEN_DEPTH       (-1)


// ----------------------------------------------------------------------------
// wxBitmapHelpers: container for various bitmap methods common to all ports.
// ----------------------------------------------------------------------------

// Unfortunately, currently wxBitmap does not inherit from wxBitmapBase on all
// platforms and this is not easy to fix. So we extract at least some common
// methods into this class from which both wxBitmapBase (and hence wxBitmap on
// all platforms where it does inherit from it) and wxBitmap in wxMSW and other
// exceptional ports (only wxPM and old wxCocoa) inherit.
class WXDLLIMPEXP_CORE wxBitmapHelpers
{
public:
    // Create a new wxBitmap from the PNG data in the given buffer.
    static wxBitmap NewFromPNGData(const void* data, size_t size);
};


// All ports except wxMSW and wxOS2 use wxBitmapHandler and wxBitmapBase as
// base class for wxBitmapHandler; wxMSW and wxOS2 use wxGDIImageHandler as
// base class since it allows some code reuse there.
#if wxUSE_BITMAP_BASE

// ----------------------------------------------------------------------------
// wxBitmapHandler: class which knows how to create/load/save bitmaps in
// different formats
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmapHandler : public wxObject
{
public:
    wxBitmapHandler() { m_type = wxBITMAP_TYPE_INVALID; }
    virtual ~wxBitmapHandler() { }

    // NOTE: the following functions should be pure virtuals, but they aren't
    //       because otherwise almost all ports would have to implement
    //       them as "return false"...

    virtual bool Create(wxBitmap *WXUNUSED(bitmap), const void* WXUNUSED(data),
                         wxBitmapType WXUNUSED(type), int WXUNUSED(width), int WXUNUSED(height),
                         int WXUNUSED(depth) = 1)
        { return false; }

    virtual bool LoadFile(wxBitmap *WXUNUSED(bitmap), const wxString& WXUNUSED(name),
                           wxBitmapType WXUNUSED(type), int WXUNUSED(desiredWidth),
                           int WXUNUSED(desiredHeight))
        { return false; }

    virtual bool SaveFile(const wxBitmap *WXUNUSED(bitmap), const wxString& WXUNUSED(name),
                           wxBitmapType WXUNUSED(type), const wxPalette *WXUNUSED(palette) = NULL) const
        { return false; }

    void SetName(const wxString& name)      { m_name = name; }
    void SetExtension(const wxString& ext)  { m_extension = ext; }
    void SetType(wxBitmapType type)         { m_type = type; }
    const wxString& GetName() const         { return m_name; }
    const wxString& GetExtension() const    { return m_extension; }
    wxBitmapType GetType() const            { return m_type; }

private:
    wxString      m_name;
    wxString      m_extension;
    wxBitmapType  m_type;

    DECLARE_ABSTRACT_CLASS(wxBitmapHandler)
};

// ----------------------------------------------------------------------------
// wxBitmap: class which represents platform-dependent bitmap (unlike wxImage)
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmapBase : public wxGDIObject,
                                      public wxBitmapHelpers
{
public:
    /*
    Derived class must implement these:

    wxBitmap();
    wxBitmap(const wxBitmap& bmp);
    wxBitmap(const char bits[], int width, int height, int depth = 1);
    wxBitmap(int width, int height, int depth = wxBITMAP_SCREEN_DEPTH);
    wxBitmap(const wxSize& sz, int depth = wxBITMAP_SCREEN_DEPTH);
    wxBitmap(const char* const* bits);
    wxBitmap(const wxString &filename, wxBitmapType type = wxBITMAP_TYPE_XPM);
    wxBitmap(const wxImage& image, int depth = wxBITMAP_SCREEN_DEPTH);

    static void InitStandardHandlers();
    */

    virtual bool Create(int width, int height, int depth = wxBITMAP_SCREEN_DEPTH) = 0;
    virtual bool Create(const wxSize& sz, int depth = wxBITMAP_SCREEN_DEPTH) = 0;
    virtual bool CreateScaled(int w, int h, int d, double logicalScale)
        { return Create(w*logicalScale,h*logicalScale,d); }

    virtual int GetHeight() const = 0;
    virtual int GetWidth() const = 0;
    virtual int GetDepth() const = 0;

    wxSize GetSize() const
        { return wxSize(GetWidth(), GetHeight()); }

    // support for scaled bitmaps
    virtual double GetScaleFactor() const { return 1.0; }
    virtual double GetScaledWidth() const { return GetWidth() / GetScaleFactor(); }
    virtual double GetScaledHeight() const { return GetHeight() / GetScaleFactor(); }
    virtual wxSize GetScaledSize() const
    { return wxSize(GetScaledWidth(), GetScaledHeight()); }

    virtual wxImage ConvertToImage() const = 0;

    // Convert to disabled (dimmed) bitmap.
    wxBitmap ConvertToDisabled(unsigned char brightness = 255) const;

    virtual wxMask *GetMask() const = 0;
    virtual void SetMask(wxMask *mask) = 0;

    virtual wxBitmap GetSubBitmap(const wxRect& rect) const = 0;

    virtual bool SaveFile(const wxString &name, wxBitmapType type,
                          const wxPalette *palette = NULL) const = 0;
    virtual bool LoadFile(const wxString &name, wxBitmapType type) = 0;


    // copies the contents and mask of the given (colour) icon to the bitmap
    virtual bool CopyFromIcon(const wxIcon& icon) = 0;

    // implementation:
    virtual void SetHeight(int height) = 0;
    virtual void SetWidth(int width) = 0;
    virtual void SetDepth(int depth) = 0;

    // Format handling
    static inline wxList& GetHandlers() { return sm_handlers; }
    static void AddHandler(wxBitmapHandler *handler);
    static void InsertHandler(wxBitmapHandler *handler);
    static bool RemoveHandler(const wxString& name);
    static wxBitmapHandler *FindHandler(const wxString& name);
    static wxBitmapHandler *FindHandler(const wxString& extension, wxBitmapType bitmapType);
    static wxBitmapHandler *FindHandler(wxBitmapType bitmapType);

    //static void InitStandardHandlers();
    //  (wxBitmap must implement this one)

    static void CleanUpHandlers();

    // this method is only used by the generic implementation of wxMask
    // currently but could be useful elsewhere in the future: it can be
    // overridden to quantize the colour to correspond to bitmap colour depth
    // if necessary; default implementation simply returns the colour as is
    virtual wxColour QuantizeColour(const wxColour& colour) const
    {
        return colour;
    }

protected:
    static wxList sm_handlers;

    DECLARE_ABSTRACT_CLASS(wxBitmapBase)
};

#endif // wxUSE_BITMAP_BASE

class WXDLLIMPEXP_FWD_CORE wxBitmap;
class WXDLLIMPEXP_FWD_CORE wxBitmapHandler;
class WXDLLIMPEXP_FWD_CORE wxBitmapRefData;
class WXDLLIMPEXP_FWD_CORE wxControl;
class WXDLLIMPEXP_FWD_CORE wxCursor;
class WXDLLIMPEXP_FWD_CORE wxDC;
class WXDLLIMPEXP_FWD_CORE wxIcon;
class WXDLLIMPEXP_FWD_CORE wxMask;
class WXDLLIMPEXP_FWD_CORE wxPalette;
class WXDLLIMPEXP_FWD_CORE wxPixelDataBase;

// What kind of transparency should a bitmap copied from an icon or cursor
// have?
enum wxBitmapTransparency
{
  wxBitmapTransparency_Auto,    // default: copy alpha if the source has it
  wxBitmapTransparency_None,    // never create alpha
  wxBitmapTransparency_Always   // always use alpha
};

// ----------------------------------------------------------------------------
// wxBitmap: a mono or colour bitmap
// NOTE: for wxMSW we don't use the wxBitmapBase base class declared in bitmap.h!
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmap : public wxGDIImage,
                                  public wxBitmapHelpers
{
public:
    // default ctor creates an invalid bitmap, you must Create() it later
    wxBitmap() { }

    // Initialize with raw data
    wxBitmap(const char bits[], int width, int height, int depth = 1);

    // Initialize with XPM data
    wxBitmap(const char* const* data);

    // Load a file or resource
    wxBitmap(const wxString& name, wxBitmapType type = wxBITMAP_DEFAULT_TYPE);

    // New constructor for generalised creation from data
    wxBitmap(const void* data, wxBitmapType type, int width, int height, int depth = 1);

    // Create a new, uninitialized bitmap of the given size and depth (if it
    // is omitted, will create a bitmap compatible with the display)
    //
    // NB: this ctor will create a DIB for 24 and 32bpp bitmaps, use ctor
    //     taking a DC argument if you want to force using DDB in this case
    wxBitmap(int width, int height, int depth = -1) { (void)Create(width, height, depth); }
    wxBitmap(const wxSize& sz, int depth = -1) { (void)Create(sz, depth); }

    // Create a bitmap compatible with the given DC
    wxBitmap(int width, int height, const wxDC& dc);


    // we must have this, otherwise icons are silently copied into bitmaps using
    // the copy ctor but the resulting bitmap is invalid!
    wxBitmap(const wxIcon& icon,
             wxBitmapTransparency transp = wxBitmapTransparency_Auto)
    {
        CopyFromIcon(icon, transp);
    }

    wxBitmap& operator=(const wxIcon& icon)
    {
        (void)CopyFromIcon(icon);

        return *this;
    }

    wxBitmap& operator=(const wxCursor& cursor)
    {
        (void)CopyFromCursor(cursor);

        return *this;
    }

    virtual ~wxBitmap();

    // get the given part of bitmap
    wxBitmap GetSubBitmap( const wxRect& rect ) const;

    // NB: This should not be called from user code. It is for wx internal
    // use only.
    wxBitmap GetSubBitmapOfHDC( const wxRect& rect, WXHDC hdc ) const;

    // copies the contents and mask of the given (colour) icon to the bitmap
    bool CopyFromIcon(const wxIcon& icon,
                      wxBitmapTransparency transp = wxBitmapTransparency_Auto);

    // copies the contents and mask of the given cursor to the bitmap
    bool CopyFromCursor(const wxCursor& cursor,
                        wxBitmapTransparency transp = wxBitmapTransparency_Auto);

    virtual bool Create(int width, int height, int depth = wxBITMAP_SCREEN_DEPTH);
    virtual bool Create(const wxSize& sz, int depth = wxBITMAP_SCREEN_DEPTH)
        { return Create(sz.GetWidth(), sz.GetHeight(), depth); }

    virtual bool Create(int width, int height, const wxDC& dc);
    virtual bool Create(const void* data, wxBitmapType type, int width, int height, int depth = 1);
    virtual bool CreateScaled(int w, int h, int d, double logicalScale)
        { return Create(wxRound(w*logicalScale), wxRound(h*logicalScale), d); }

    virtual bool LoadFile(const wxString& name, wxBitmapType type = wxBITMAP_DEFAULT_TYPE);
    virtual bool SaveFile(const wxString& name, wxBitmapType type, const wxPalette *cmap = NULL) const;

    wxBitmapRefData *GetBitmapData() const
        { return (wxBitmapRefData *)m_refData; }

    // raw bitmap access support functions
    void *GetRawData(wxPixelDataBase& data, int bpp);
    void UngetRawData(wxPixelDataBase& data);

    wxMask *GetMask() const;
    void SetMask(wxMask *mask);

    // these functions are internal and shouldn't be used, they risk to
    // disappear in the future
    bool HasAlpha() const;
    void UseAlpha();
    void ResetAlpha();

    // support for scaled bitmaps
    virtual double GetScaleFactor() const { return 1.0; }
    virtual double GetScaledWidth() const { return GetWidth() / GetScaleFactor(); }
    virtual double GetScaledHeight() const { return GetHeight() / GetScaleFactor(); }
    virtual wxSize GetScaledSize() const
        { return wxSize(wxRound(GetScaledWidth()), wxRound(GetScaledHeight())); }

    // implementation only from now on
    // -------------------------------

    // Set alpha flag to true if this is a 32bpp bitmap which has any non-0
    // values in its alpha channel.
    void MSWUpdateAlpha();

public:
    void SetHBITMAP(WXHBITMAP bmp) { SetHandle((WXHANDLE)bmp); }
    WXHBITMAP GetHBITMAP() const { return (WXHBITMAP)GetHandle(); }

    void SetSelectedInto(wxDC *dc);
    wxDC *GetSelectedInto() const;
};

// ----------------------------------------------------------------------------
// wxMask: a mono bitmap used for drawing bitmaps transparently.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxMask : public wxObject
{
public:
    wxMask();

    // Copy constructor
    wxMask(const wxMask &mask);

    // Construct a mask from a bitmap and a colour indicating the transparent
    // area
    wxMask(const wxBitmap& bitmap, const wxColour& colour);

    // Construct a mask from a bitmap and a palette index indicating the
    // transparent area
    wxMask(const wxBitmap& bitmap, int paletteIndex);

    // Construct a mask from a mono bitmap (copies the bitmap).
    wxMask(const wxBitmap& bitmap);

    // construct a mask from the givne bitmap handle
    wxMask(WXHBITMAP hbmp) { m_maskBitmap = hbmp; }

    virtual ~wxMask();

    bool Create(const wxBitmap& bitmap, const wxColour& colour);
    bool Create(const wxBitmap& bitmap, int paletteIndex);
    bool Create(const wxBitmap& bitmap);

    wxBitmap GetBitmap() const;

    // Implementation
    WXHBITMAP GetMaskBitmap() const { return m_maskBitmap; }
    void SetMaskBitmap(WXHBITMAP bmp) { m_maskBitmap = bmp; }

protected:
    WXHBITMAP m_maskBitmap;

    DECLARE_DYNAMIC_CLASS(wxMask)
};


// ----------------------------------------------------------------------------
// wxBitmapHandler is a class which knows how to load/save bitmaps to/from file
// NOTE: for wxMSW we don't use the wxBitmapHandler class declared in bitmap.h!
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmapHandler : public wxGDIImageHandler
{
public:
    wxBitmapHandler() { }
    wxBitmapHandler(const wxString& name, const wxString& ext, wxBitmapType type)
        : wxGDIImageHandler(name, ext, type) { }

    // implement wxGDIImageHandler's pure virtuals:

    virtual bool Create(wxGDIImage *image,
                        const void* data,
                        wxBitmapType type,
                        int width, int height, int depth = 1);
    virtual bool Load(wxGDIImage *image,
                      const wxString& name,
                      wxBitmapType type,
                      int desiredWidth, int desiredHeight);
    virtual bool Save(const wxGDIImage *image,
                      const wxString& name,
                      wxBitmapType type) const;


    // make wxBitmapHandler compatible with the wxBitmapHandler interface
    // declared in bitmap.h, even if it's derived from wxGDIImageHandler:

    virtual bool Create(wxBitmap *bitmap,
                        const void* data,
                        wxBitmapType type,
                        int width, int height, int depth = 1);
    virtual bool LoadFile(wxBitmap *bitmap,
                          const wxString& name,
                          wxBitmapType type,
                          int desiredWidth, int desiredHeight);
    virtual bool SaveFile(const wxBitmap *bitmap,
                          const wxString& name,
                          wxBitmapType type,
                          const wxPalette *palette = NULL) const;

private:
    DECLARE_DYNAMIC_CLASS(wxBitmapHandler)
};



#endif // _WX_BITMAP_H_BASE_
