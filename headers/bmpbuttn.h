/////////////////////////////////////////////////////////////////////////////
// Name:        wx/bmpbuttn.h
// Purpose:     wxBitmapButton class interface
// Author:      Vadim Zeitlin
// Modified by:
// Created:     25.08.00
// Copyright:   (c) 2000 Vadim Zeitlin
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_BMPBUTTON_H_BASE_
#define _WX_BMPBUTTON_H_BASE_

#include "wx/defs.h"

#if wxUSE_BMPBUTTON

#include "wx/button.h"

// FIXME: right now only wxMSW, wxGTK and wxOSX implement bitmap support in wxButton
//        itself, this shouldn't be used for the other platforms neither
//        when all of them do it
#if (defined(__WXMSW__) || defined(__WXGTK20__) || defined(__WXOSX__)) && !defined(__WXUNIVERSAL__)
    #define wxHAS_BUTTON_BITMAP
#endif

class WXDLLIMPEXP_FWD_CORE wxBitmapButton {};

// ----------------------------------------------------------------------------
// wxBitmapButton: a button which shows bitmaps instead of the usual string.
// It has different bitmaps for different states (focused/disabled/pressed)
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxBitmapButtonBase : public wxButton
{
public:
    wxBitmapButtonBase()
    {
    }

    bool Create(wxWindow *parent,
                wxWindowID winid,
                const wxPoint& pos,
                const wxSize& size,
                long style,
                const wxValidator& validator,
                const wxString& name)
    {
        // We use wxBU_NOTEXT to let the base class Create() know that we are
        // not going to show the label: this is a hack needed for wxGTK where
        // we can show both label and bitmap only with GTK 2.6+ but we always
        // can show just one of them and this style allows us to choose which
        // one we need.
        //
        // And we also use wxBU_EXACTFIT to avoid being resized up to the
        // standard button size as this doesn't make sense for bitmap buttons
        // which are not standard anyhow and should fit their bitmap size.
        return wxButton::Create(parent, winid, "",
                                pos, size,
                                style | wxBU_NOTEXT | wxBU_EXACTFIT,
                                validator, name);
    }

    // Special creation function for a standard "Close" bitmap. It allows to
    // simply create a close button with the image appropriate for the common
    // platform.
    static wxBitmapButton* NewCloseButton(wxWindow* parent, wxWindowID winid);


    // set/get the margins around the button
    virtual void SetMargins(int x, int y)
    {
        DoSetBitmapMargins(x, y);
    }

    int GetMarginX() const { return DoGetBitmapMargins().x; }
    int GetMarginY() const { return DoGetBitmapMargins().y; }

    wxDECLARE_NO_COPY_CLASS(wxBitmapButtonBase);
};

#endif // wxUSE_BMPBUTTON

#endif // _WX_BMPBUTTON_H_BASE_
