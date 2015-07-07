///////////////////////////////////////////////////////////////////////////////
// Name:        wx/fontdlg.h
// Purpose:     common interface for different wxFontDialog classes
// Author:      Vadim Zeitlin
// Modified by:
// Created:     12.05.02
// Copyright:   (c) 1997-2002 wxWidgets team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_FONTDLG_H_BASE_
#define _WX_FONTDLG_H_BASE_

#include "wx/defs.h"            // for wxUSE_FONTDLG

#if wxUSE_FONTDLG

#include "wx/dialog.h"          // the base class
#include "wx/fontdata.h"

// ----------------------------------------------------------------------------
// wxFontDialog interface
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxFontDialogBase : public wxDialog
{
public:
    // create the font dialog
    wxFontDialogBase() { }
    wxFontDialogBase(wxWindow *parent) { m_parent = parent; }
    wxFontDialogBase(wxWindow *parent, const wxFontData& data)
        { m_parent = parent; InitFontData(&data); }

    bool Create(wxWindow *parent)
        { return DoCreate(parent); }
    bool Create(wxWindow *parent, const wxFontData& data)
        { InitFontData(&data); return Create(parent); }

    // retrieve the font data
    const wxFontData& GetFontData() const { return m_fontData; }
    wxFontData& GetFontData() { return m_fontData; }


protected:
    virtual bool DoCreate(wxWindow *parent) { m_parent = parent; return true; }

    void InitFontData(const wxFontData *data = NULL)
        { if ( data ) m_fontData = *data; }

    wxFontData m_fontData;

    wxDECLARE_NO_COPY_CLASS(wxFontDialogBase);
};


// get the font from user and return it, returns wxNullFont if the dialog was
// cancelled
WXDLLIMPEXP_CORE wxFont wxGetFontFromUser(wxWindow *parent = NULL,
                                          const wxFont& fontInit = wxNullFont,
                                          const wxString& caption = wxEmptyString);

#endif // wxUSE_FONTDLG

#endif
    // _WX_FONTDLG_H_BASE_
