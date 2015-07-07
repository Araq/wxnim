/////////////////////////////////////////////////////////////////////////////
// Name:        wx/dirdlg.h
// Purpose:     wxDirDialog base class
// Author:      Robert Roebling
// Modified by:
// Created:
// Copyright:   (c) Robert Roebling
// Licence:     wxWindows Licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_DIRDLG_H_BASE_
#define _WX_DIRDLG_H_BASE_

#if wxUSE_DIRDLG

#include "wx/dialog.h"

// ----------------------------------------------------------------------------
// constants
// ----------------------------------------------------------------------------

#define wxDD_CHANGE_DIR         0x0100
#define wxDD_DIR_MUST_EXIST     0x0200

// deprecated, on by default now, use wxDD_DIR_MUST_EXIST to disable it
#define wxDD_NEW_DIR_BUTTON     0

extern long wxDD_DEFAULT_STYLE;

//-------------------------------------------------------------------------
// wxDirDialogBase
//-------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxDirDialogBase : public wxDialog
{
public:
    wxDirDialogBase() {}
    wxDirDialogBase(wxWindow *parent,
                    const wxString& title = wxDirSelectorPromptStr,
                    const wxString& defaultPath = wxEmptyString,
                    long style = wxDD_DEFAULT_STYLE,
                    const wxPoint& pos = wxDefaultPosition,
                    const wxSize& sz = wxDefaultSize,
                    const wxString& name = wxDirDialogNameStr)
    {
        Create(parent, title, defaultPath, style, pos, sz, name);
    }

    virtual ~wxDirDialogBase() {}


    bool Create(wxWindow *parent,
                const wxString& title = wxDirSelectorPromptStr,
                const wxString& defaultPath = wxEmptyString,
                long style = wxDD_DEFAULT_STYLE,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& sz = wxDefaultSize,
                const wxString& name = wxDirDialogNameStr)
    {
        if (!wxDialog::Create(parent, wxID_ANY, title, pos, sz, style, name))
            return false;
        m_path = defaultPath;
        m_message = title;
        return true;
    }

    virtual void SetMessage(const wxString& message) { m_message = message; }
    virtual void SetPath(const wxString& path) { m_path = path; }

    virtual wxString GetMessage() const { return m_message; }
    virtual wxString GetPath() const { return m_path; }

protected:
    wxString m_message;
    wxString m_path;
};


// ----------------------------------------------------------------------------
// common ::wxDirSelector() function
// ----------------------------------------------------------------------------

WXDLLIMPEXP_CORE wxString
wxDirSelector(const wxString& message = wxDirSelectorPromptStr,
              const wxString& defaultPath = wxEmptyString,
              long style = wxDD_DEFAULT_STYLE,
              const wxPoint& pos = wxDefaultPosition,
              wxWindow *parent = NULL);

#endif // wxUSE_DIRDLG

#endif
    // _WX_DIRDLG_H_BASE_
