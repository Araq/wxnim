/////////////////////////////////////////////////////////////////////////////
// Name:        wx/frame.h
// Purpose:     wxFrame class interface
// Author:      Vadim Zeitlin
// Modified by:
// Created:     15.11.99
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_FRAME_H_BASE_
#define _WX_FRAME_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/toplevel.h"      // the base class
#include "wx/statusbr.h"

// the default names for various classs

class WXDLLIMPEXP_FWD_CORE wxFrame;
class WXDLLIMPEXP_FWD_CORE wxMenuBar;
class WXDLLIMPEXP_FWD_CORE wxMenuItem;
class WXDLLIMPEXP_FWD_CORE wxStatusBar;
class WXDLLIMPEXP_FWD_CORE wxToolBar;

// ----------------------------------------------------------------------------
// constants
// ----------------------------------------------------------------------------

// wxFrame-specific (i.e. not for wxDialog) styles
//
// Also see the bit summary table in wx/toplevel.h.
#define wxFRAME_NO_TASKBAR      0x0002  // No taskbar button (MSW only)
#define wxFRAME_TOOL_WINDOW     0x0004  // No taskbar button, no system menu
#define wxFRAME_FLOAT_ON_PARENT 0x0008  // Always above its parent

// ----------------------------------------------------------------------------
// wxFrame is a top-level window with optional menubar, statusbar and toolbar
//
// For each of *bars, a frame may have several of them, but only one is
// managed by the frame, i.e. resized/moved when the frame is and whose size
// is accounted for in client size calculations - all others should be taken
// care of manually. The CreateXXXBar() functions create this, main, XXXBar,
// but the actual creation is done in OnCreateXXXBar() functions which may be
// overridden to create custom objects instead of standard ones when
// CreateXXXBar() is called.
// ----------------------------------------------------------------------------

class wxTopLevelWindow: public wxWindow {};

extern long wxDEFAULT_FRAME_STYLE;
extern long wxFULLSCREEN_ALL;

#define wxSTB_SIZEGRIP         0x0010
#define wxSTB_SHOW_TIPS        0x0020

#define wxSTB_ELLIPSIZE_START   0x0040
#define wxSTB_ELLIPSIZE_MIDDLE  0x0080
#define wxSTB_ELLIPSIZE_END     0x0100

#define wxSTB_DEFAULT_STYLE    (wxSTB_SIZEGRIP|wxSTB_ELLIPSIZE_END|wxSTB_SHOW_TIPS|wxFULL_REPAINT_ON_RESIZE)


// old compat style name:
#define wxST_SIZEGRIP    wxSTB_SIZEGRIP


// style flags for wxStatusBar fields
#define wxSB_NORMAL    0x0000
#define wxSB_FLAT      0x0001
#define wxSB_RAISED    0x0002
#define wxSB_SUNKEN    0x0003

class WXDLLIMPEXP_CORE wxFrameBase : public wxTopLevelWindow
{
public:
    // construction
    wxFrameBase();
    virtual ~wxFrameBase();

    wxFrame *New(wxWindow *parent,
                 wxWindowID winid,
                 const wxString& title,
                 const wxPoint& pos = wxDefaultPosition,
                 const wxSize& size = wxDefaultSize,
                 long style = wxDEFAULT_FRAME_STYLE,
                 const wxString& name = wxFrameNameStr);

    // frame state
    // -----------

    // get the origin of the client area (which may be different from (0, 0)
    // if the frame has a toolbar) in client coordinates
    virtual wxPoint GetClientAreaOrigin() const;


    // menu bar functions
    // ------------------


    virtual void SetMenuBar(wxMenuBar *menubar);
    virtual wxMenuBar *GetMenuBar() const { return m_frameMenuBar; }

    // find the item by id in the frame menu bar: this is an internal function
    // and exists mainly in order to be overridden in the MDI parent frame
    // which also looks at its active child menu bar
    virtual wxMenuItem *FindItemInMenuBar(int menuId) const;

    // generate menu command corresponding to the given menu item
    //
    // returns true if processed
    bool ProcessCommand(wxMenuItem *item);

    // generate menu command corresponding to the given menu command id
    //
    // returns true if processed
    bool ProcessCommand(int winid);

    // status bar functions
    // --------------------

    // create the main status bar by calling OnCreateStatusBar()
    virtual wxStatusBar* CreateStatusBar(int number = 1,
                                         long style = wxSTB_DEFAULT_STYLE,
                                         wxWindowID winid = 0,
                                         const wxString& name = wxStatusLineNameStr);
    // return a new status bar
    virtual wxStatusBar *OnCreateStatusBar(int number,
                                           long style,
                                           wxWindowID winid,
                                           const wxString& name);
    // get the main status bar
    virtual wxStatusBar *GetStatusBar() const { return m_frameStatusBar; }

    // sets the main status bar
    virtual void SetStatusBar(wxStatusBar *statBar);

    // forward these to status bar
    virtual void SetStatusText(const wxString &text, int number = 0);
    virtual void SetStatusWidths(int n, const int widths_field[]);
    void PushStatusText(const wxString &text, int number = 0);
    void PopStatusText(int number = 0);

    // set the status bar pane the help will be shown in
    void SetStatusBarPane(int n) { m_statusBarPane = n; }
    int GetStatusBarPane() const { return m_statusBarPane; }

    // create main toolbar bycalling OnCreateToolBar()
    virtual wxToolBar* CreateToolBar(long style = -1,
                                     wxWindowID winid = #@ WxWindowID(wxID_ANY)
                                                     @#,
                                     const wxString& name = wxToolBarNameStr);
    // return a new toolbar
    virtual wxToolBar *OnCreateToolBar(long style,
                                       wxWindowID winid,
                                       const wxString& name );

    // get/set the main toolbar
    virtual wxToolBar *GetToolBar() const { return m_frameToolBar; }
    virtual void SetToolBar(wxToolBar *toolbar);


    // implementation only from now on
    // -------------------------------

    // event handlers

    void OnMenuOpen(wxMenuEvent& event);
    void OnMenuClose(wxMenuEvent& event);
    void OnMenuHighlight(wxMenuEvent& event);


    // send wxUpdateUIEvents for all menu items in the menubar,
    // or just for menu if non-NULL
    virtual void DoMenuUpdates(wxMenu* menu = NULL);

    // do the UI update processing for this window
    virtual void UpdateWindowUI(auto flags = wxUPDATE_UI_NONE);

    // Implement internal behaviour (menu updating on some platforms)
    virtual void OnInternalIdle();


    // show help text for the currently selected menu or toolbar item
    // (typically in the status bar) or hide it and restore the status bar text
    // originally shown before the menu was opened if show == false
    virtual void DoGiveHelp(const wxString& text, bool show);


    virtual bool IsClientAreaChild(const wxWindow *child) const
    {
        return !IsOneOfBars(child) && wxTopLevelWindow::IsClientAreaChild(child);
    }

};

class WXDLLIMPEXP_CORE wxFrame : public wxFrameBase
{
public:
    // construction
    wxFrame() { Init(); }
    wxFrame(wxWindow *parent,
            wxWindowID id,
            const wxString& title,
            const wxPoint& pos = wxDefaultPosition,
            const wxSize& size = wxDefaultSize,
            auto style = wxDEFAULT_FRAME_STYLE,
            const wxString& name = wxFrameNameStr)
    {
        Init();

        Create(parent, id, title, pos, size, style, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& title,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxDEFAULT_FRAME_STYLE,
                const wxString& name = wxFrameNameStr);

    virtual ~wxFrame();

    // implement base class pure virtuals
    virtual bool ShowFullScreen(bool show, long style = wxFULLSCREEN_ALL);

    // implementation only from now on
    // -------------------------------

    // event handlers
    void OnSysColourChanged(wxSysColourChangedEvent& event);

    // Toolbar

    virtual wxToolBar* CreateToolBar(long style = -1,
                                     wxWindowID id = #@ WxWindowID(wxID_ANY)
                                                     @#,
                                     const wxString& name = wxToolBarNameStr);

    virtual wxStatusBar* OnCreateStatusBar(int number = 1,
                                           long style = wxSTB_DEFAULT_STYLE,
                                           wxWindowID id = #@ WxWindowID(0)
                                                     @#,
                                           const wxString& name = wxStatusLineNameStr);

    // Hint to tell framework which status bar to use: the default is to use
    // native one for the platforms which support it (Win32), the generic one
    // otherwise

    // TODO: should this go into a wxFrameworkSettings class perhaps?
    static void UseNativeStatusBar(bool useNative)
        { m_useNativeStatusBar = useNative; }
    static bool UsesNativeStatusBar()
        { return m_useNativeStatusBar; }


    // override the base class function to handle iconized/maximized frames
    virtual void SendSizeEvent(int flags = 0);

    virtual wxPoint GetClientAreaOrigin() const;
};

#endif
    // _WX_FRAME_H_BASE_
