/////////////////////////////////////////////////////////////////////////////
// Name:        wx/panel.h
// Purpose:     Base header for wxPanel
// Author:      Julian Smart
// Modified by:
// Created:
// Copyright:   (c) Julian Smart
//              (c) 2011 Vadim Zeitlin <vadim@wxwidgets.org>
// Licence:     wxWindows Licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_PANEL_H_BASE_
#define _WX_PANEL_H_BASE_

// ----------------------------------------------------------------------------
// headers and forward declarations
// ----------------------------------------------------------------------------

#include "wx/window.h"
#include "wx/containr.h"

class WXDLLIMPEXP_FWD_CORE wxControlContainer;

// ----------------------------------------------------------------------------
// wxPanel contains other controls and implements TAB traversal between them
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxPanelBase : public wxWindow
{
public:
    wxPanelBase() { }

    // Derived classes should also provide this constructor:
    /*
    wxPanelBase(wxWindow *parent,
                wxWindowID winid = wxID_ANY,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxTAB_TRAVERSAL | wxNO_BORDER,
                const wxString& name = wxPanelNameStr);
    */

    // Pseudo ctor
    bool Create(wxWindow *parent,
                wxWindowID winid = #@ WxWindowID(wxID_ANY)
                                   @#,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = int(wxTAB_TRAVERSAL) | int(wxNO_BORDER),
                const wxString& name = wxPanelNameStr);


    // implementation from now on
    // --------------------------

    virtual void InitDialog();

private:
    wxDECLARE_NO_COPY_CLASS(wxPanelBase);
};


class WXDLLIMPEXP_CORE wxPanel : public wxPanelBase
{
public:
    wxPanel() { }

    wxPanel(wxWindow *parent,
            wxWindowID winid = #@ WxWindowID(wxID_ANY)
                               @#,
            const wxPoint& pos = wxDefaultPosition,
            const wxSize& size = wxDefaultSize,
            long style = int(wxTAB_TRAVERSAL) | int(wxNO_BORDER),
            const wxString& name = wxPanelNameStr)
    {
        Create(parent, winid, pos, size, style, name);
    }

    // This is overridden for MSW to return true for all panels that are child
    // of a window with themed background (such as wxNotebook) which should
    // show through the child panels.
    virtual bool HasTransparentBackground();

private:
    wxDECLARE_DYNAMIC_CLASS_NO_COPY(wxPanel);
};

#endif // _WX_PANELH_BASE_
