/////////////////////////////////////////////////////////////////////////////
// Name:        wx/toolbar.h
// Purpose:     wxToolBar interface declaration
// Author:      Vadim Zeitlin
// Modified by:
// Created:     20.11.99
// Copyright:   (c) Vadim Zeitlin
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_TOOLBAR_H_BASE_
#define _WX_TOOLBAR_H_BASE_

#include "wx/defs.h"

// ----------------------------------------------------------------------------
// wxToolBar style flags
// ----------------------------------------------------------------------------

enum
{
    // lay out the toolbar horizontally
    wxTB_HORIZONTAL  = 4,    // == 0x0004

    // lay out the toolbar vertically
    wxTB_VERTICAL    = 8,      // == 0x0008

    // show 3D buttons (wxToolBarSimple only)
    wxTB_3DBUTTONS   = 0x0010,

    // "flat" buttons (Win32/GTK only)
    wxTB_FLAT        = 0x0020,

    wxTB_DEFAULT_STYLE = 4 | 0x0020,

    // dockable toolbar (GTK only)
    wxTB_DOCKABLE    = 0x0040,

    // don't show the icons (they're shown by default)
    wxTB_NOICONS     = 0x0080,

    // show the text (not shown by default)
    wxTB_TEXT        = 0x0100,

    // don't show the divider between toolbar and the window (Win32 only)
    wxTB_NODIVIDER   = 0x0200,

    // no automatic alignment (Win32 only, useless)
    wxTB_NOALIGN     = 0x0400,

    // show the text and the icons alongside, not vertically stacked (Win32/GTK)
    wxTB_HORZ_LAYOUT = 0x0800,
    wxTB_HORZ_TEXT   = 0x0800 | 0x0100,

    // don't show the toolbar short help tooltips
    wxTB_NO_TOOLTIPS = 0x1000,

    // lay out toolbar at the bottom of the window
    wxTB_BOTTOM       = 0x2000,

    // lay out toolbar at the right edge of the window
    wxTB_RIGHT        = 0x4000
};

#define    wxTB_LEFT        wxTB_VERTICAL
#define    wxTB_TOP         wxTB_HORIZONTAL

class WXDLLIMPEXP_FWD_CORE wxToolBarBase;
class WXDLLIMPEXP_FWD_CORE wxToolBarToolBase;
class WXDLLIMPEXP_FWD_CORE wxImage;

// ----------------------------------------------------------------------------
// constants
// ----------------------------------------------------------------------------

//extern WXDLLIMPEXP_DATA_CORE(const wxSize) wxDefaultSize;
//extern WXDLLIMPEXP_DATA_CORE(const wxPoint) wxDefaultPosition;

enum wxToolBarToolStyle
{
    wxTOOL_STYLE_BUTTON    = 1,
    wxTOOL_STYLE_SEPARATOR = 2,
    wxTOOL_STYLE_CONTROL
};

// ----------------------------------------------------------------------------
// wxToolBarTool is a toolbar element.
//
// It has a unique id (except for the separators which always have id wxID_ANY), the
// style (telling whether it is a normal button, separator or a control), the
// state (toggled or not, enabled or not) and short and long help strings. The
// default implementations use the short help string for the tooltip text which
// is popped up when the mouse pointer enters the tool and the long help string
// for the applications status bar.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxToolBarToolBase : public wxObject
{
public:
    // ctors & dtor
    // ------------

    // generic ctor for any kind of tool
    wxToolBarToolBase(wxToolBarBase *tbar = NULL,
                      auto toolid = wxID_SEPARATOR,
                      const wxString& label = wxEmptyString,
                      const wxBitmap& bmpNormal = wxNullBitmap,
                      const wxBitmap& bmpDisabled = wxNullBitmap,
                      wxItemKind kind = wxITEM_NORMAL,
                      wxObject *clientData = NULL,
                      const wxString& shortHelpString = wxEmptyString,
                      const wxString& longHelpString = wxEmptyString)
        : m_label(label),
          m_shortHelpString(shortHelpString),
          m_longHelpString(longHelpString)
    {
        Init
        (
            tbar,
            toolid == wxID_SEPARATOR ? wxTOOL_STYLE_SEPARATOR
                                     : wxTOOL_STYLE_BUTTON,
            toolid == wxID_ANY ? wxWindow::NewControlId()
                               : toolid,
            kind
        );

        m_clientData = clientData;

        m_bmpNormal = bmpNormal;
        m_bmpDisabled = bmpDisabled;
    }

    // ctor for controls only
    wxToolBarToolBase(wxToolBarBase *tbar,
                      wxControl *control,
                      const wxString& label)
        : m_label(label)
    {
        Init(tbar, wxTOOL_STYLE_CONTROL, control->GetId(), wxITEM_MAX);

        m_control = control;
    }

    virtual ~wxToolBarToolBase();

    // accessors
    // ---------

    // general
    int GetId() const { return m_id; }

    wxControl *GetControl() const
    {
        wxASSERT_MSG( IsControl(), wxT("this toolbar tool is not a control") );

        return m_control;
    }

    wxToolBarBase *GetToolBar() const { return m_tbar; }

    // style/kind
    bool IsStretchable() const { return m_stretchable; }
    bool IsButton() const { return m_toolStyle == wxTOOL_STYLE_BUTTON; }
    bool IsControl() const { return m_toolStyle == wxTOOL_STYLE_CONTROL; }
    bool IsSeparator() const { return m_toolStyle == wxTOOL_STYLE_SEPARATOR; }
    bool IsStretchableSpace() const { return IsSeparator() && IsStretchable(); }
    int GetStyle() const { return m_toolStyle; }
    wxItemKind GetKind() const
    {
        wxASSERT_MSG( IsButton(), wxT("only makes sense for buttons") );

        return m_kind;
    }

    void MakeStretchable()
    {
        wxASSERT_MSG( IsSeparator(), "only separators can be stretchable" );

        m_stretchable = true;
    }

    // state
    bool IsEnabled() const { return m_enabled; }
    bool IsToggled() const { return m_toggled; }
    bool CanBeToggled() const
        { return m_kind == wxITEM_CHECK || m_kind == wxITEM_RADIO; }

    // attributes
    const wxBitmap& GetNormalBitmap() const { return m_bmpNormal; }
    const wxBitmap& GetDisabledBitmap() const { return m_bmpDisabled; }

    const wxBitmap& GetBitmap() const
        { return IsEnabled() ? GetNormalBitmap() : GetDisabledBitmap(); }

    const wxString& GetLabel() const { return m_label; }

    const wxString& GetShortHelp() const { return m_shortHelpString; }
    const wxString& GetLongHelp() const { return m_longHelpString; }

    wxObject *GetClientData() const
    {
        if ( m_toolStyle == wxTOOL_STYLE_CONTROL )
        {
            return (wxObject*)m_control->GetClientData();
        }
        else
        {
            return m_clientData;
        }
    }

    // modifiers: return true if the state really changed
    virtual bool Enable(bool enable);
    virtual bool Toggle(bool toggle);
    virtual bool SetToggle(bool toggle);
    virtual bool SetShortHelp(const wxString& help);
    virtual bool SetLongHelp(const wxString& help);

    void Toggle() { Toggle(!IsToggled()); }

    virtual void SetNormalBitmap(const wxBitmap& bmp) { m_bmpNormal = bmp; }
    virtual void SetDisabledBitmap(const wxBitmap& bmp) { m_bmpDisabled = bmp; }

    virtual void SetLabel(const wxString& label) { m_label = label; }

    void SetClientData(wxObject *clientData)
    {
        if ( m_toolStyle == wxTOOL_STYLE_CONTROL )
        {
            m_control->SetClientData(clientData);
        }
        else
        {
            m_clientData = clientData;
        }
    }

    // add tool to/remove it from a toolbar
    virtual void Detach() { m_tbar = NULL; }
    virtual void Attach(wxToolBarBase *tbar) { m_tbar = tbar; }

    // these methods are only for tools of wxITEM_DROPDOWN kind (but even such
    // tools can have a NULL associated menu)
    virtual void SetDropdownMenu(wxMenu *menu);
    wxMenu *GetDropdownMenu() const { return m_dropdownMenu; }

};

// a list of toolbar tools
//WX_DECLARE_EXPORTED_LIST(wxToolBarToolBase, wxToolBarToolsList);

// ----------------------------------------------------------------------------
// the base class for all toolbars
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxToolBarBase : public wxControl
{
public:
    wxToolBarBase();
    virtual ~wxToolBarBase();

    // toolbar construction
    // --------------------

    // the full AddTool() function
    //
    // If bmpDisabled is wxNullBitmap, a shadowed version of the normal bitmap
    // is created and used as the disabled image.
    wxToolBarToolBase *AddTool(int toolid,
                               const wxString& label,
                               const wxBitmap& bitmap,
                               const wxBitmap& bmpDisabled,
                               wxItemKind kind = wxITEM_NORMAL,
                               const wxString& shortHelp = wxEmptyString,
                               const wxString& longHelp = wxEmptyString,
                               wxObject *data = NULL)
    {
        return DoAddTool(toolid, label, bitmap, bmpDisabled, kind,
                         shortHelp, longHelp, data);
    }

    // the most common AddTool() version
    wxToolBarToolBase *AddTool(int toolid,
                               const wxString& label,
                               const wxBitmap& bitmap,
                               const wxString& shortHelp = wxEmptyString,
                               wxItemKind kind = wxITEM_NORMAL)
    {
        return AddTool(toolid, label, bitmap, wxNullBitmap, kind, shortHelp);
    }

    // add a check tool, i.e. a tool which can be toggled
    wxToolBarToolBase *AddCheckTool(int toolid,
                                    const wxString& label,
                                    const wxBitmap& bitmap,
                                    const wxBitmap& bmpDisabled = wxNullBitmap,
                                    const wxString& shortHelp = wxEmptyString,
                                    const wxString& longHelp = wxEmptyString,
                                    wxObject *data = NULL)
    {
        return AddTool(toolid, label, bitmap, bmpDisabled, wxITEM_CHECK,
                       shortHelp, longHelp, data);
    }

    // add a radio tool, i.e. a tool which can be toggled and releases any
    // other toggled radio tools in the same group when it happens
    wxToolBarToolBase *AddRadioTool(int toolid,
                                    const wxString& label,
                                    const wxBitmap& bitmap,
                                    const wxBitmap& bmpDisabled = wxNullBitmap,
                                    const wxString& shortHelp = wxEmptyString,
                                    const wxString& longHelp = wxEmptyString,
                                    wxObject *data = NULL)
    {
        return AddTool(toolid, label, bitmap, bmpDisabled, wxITEM_RADIO,
                       shortHelp, longHelp, data);
    }


    // insert the new tool at the given position, if pos == GetToolsCount(), it
    // is equivalent to AddTool()
    virtual wxToolBarToolBase *InsertTool
                               (
                                    size_t pos,
                                    int toolid,
                                    const wxString& label,
                                    const wxBitmap& bitmap,
                                    const wxBitmap& bmpDisabled = wxNullBitmap,
                                    wxItemKind kind = wxITEM_NORMAL,
                                    const wxString& shortHelp = wxEmptyString,
                                    const wxString& longHelp = wxEmptyString,
                                    wxObject *clientData = NULL
                               );

    virtual wxToolBarToolBase *AddTool (wxToolBarToolBase *tool);
    virtual wxToolBarToolBase *InsertTool (size_t pos, wxToolBarToolBase *tool);

    // add an arbitrary control to the toolbar (notice that the control will be
    // deleted by the toolbar and that it will also adjust its position/size)
    //
    // the label is optional and, if specified, will be shown near the control
    // NB: the control should have toolbar as its parent
    virtual wxToolBarToolBase *
    AddControl(wxControl *control, const wxString& label = wxEmptyString);

    virtual wxToolBarToolBase *
    InsertControl(size_t pos, wxControl *control,
                  const wxString& label = wxEmptyString);

    // get the control with the given id or return NULL
    virtual wxControl *FindControl( int toolid );

    // add a separator to the toolbar
    virtual wxToolBarToolBase *AddSeparator();
    virtual wxToolBarToolBase *InsertSeparator(size_t pos);

    // add a stretchable space to the toolbar: this is similar to a separator
    // except that it's always blank and that all the extra space the toolbar
    // has is [equally] distributed among the stretchable spaces in it
    virtual wxToolBarToolBase *AddStretchableSpace();
    virtual wxToolBarToolBase *InsertStretchableSpace(size_t pos);

    // remove the tool from the toolbar: the caller is responsible for actually
    // deleting the pointer
    virtual wxToolBarToolBase *RemoveTool(int toolid);

    // delete tool either by index or by position
    virtual bool DeleteToolByPos(size_t pos);
    virtual bool DeleteTool(int toolid);

    // delete all tools
    virtual void ClearTools();

    // must be called after all buttons have been created to finish toolbar
    // initialisation
    //
    // derived class versions should call the base one first, before doing
    // platform-specific stuff
    virtual bool Realize();

    // tools state
    // -----------

    virtual void EnableTool(int toolid, bool enable);
    virtual void ToggleTool(int toolid, bool toggle);

    // Set this to be togglable (or not)
    virtual void SetToggle(int toolid, bool toggle);

    // set/get tools client data (not for controls)
    virtual wxObject *GetToolClientData(int toolid) const;
    virtual void SetToolClientData(int toolid, wxObject *clientData);

    // returns tool pos, or wxNOT_FOUND if tool isn't found
    virtual int GetToolPos(int id) const;

    // return true if the tool is toggled
    virtual bool GetToolState(int toolid) const;

    virtual bool GetToolEnabled(int toolid) const;

    virtual void SetToolShortHelp(int toolid, const wxString& helpString);
    virtual wxString GetToolShortHelp(int toolid) const;
    virtual void SetToolLongHelp(int toolid, const wxString& helpString);
    virtual wxString GetToolLongHelp(int toolid) const;

    virtual void SetToolNormalBitmap(int WXUNUSED(id),
                                     const wxBitmap& WXUNUSED(bitmap)) {}
    virtual void SetToolDisabledBitmap(int WXUNUSED(id),
                                       const wxBitmap& WXUNUSED(bitmap)) {}


    // margins/packing/separation
    // --------------------------

    virtual void SetMargins(int x, int y);
    void SetMargins(const wxSize& size)
        { SetMargins((int) size.x, (int) size.y); }
    virtual void SetToolPacking(int packing)
        { m_toolPacking = packing; }
    virtual void SetToolSeparation(int separation)
        { m_toolSeparation = separation; }

    virtual wxSize GetToolMargins() const { return wxSize(m_xMargin, m_yMargin); }
    virtual int GetToolPacking() const { return m_toolPacking; }
    virtual int GetToolSeparation() const { return m_toolSeparation; }

    // toolbar geometry
    // ----------------

    // set the number of toolbar rows
    virtual void SetRows(int nRows);

    // the toolbar can wrap - limit the number of columns or rows it may take
    void SetMaxRowsCols(int rows, int cols)
        { m_maxRows = rows; m_maxCols = cols; }
    int GetMaxRows() const { return m_maxRows; }
    int GetMaxCols() const { return m_maxCols; }

    // get/set the size of the bitmaps used by the toolbar: should be called
    // before adding any tools to the toolbar
    virtual void SetToolBitmapSize(const wxSize& size)
        { m_defaultWidth = size.x; m_defaultHeight = size.y; }
    virtual wxSize GetToolBitmapSize() const
        { return wxSize(m_defaultWidth, m_defaultHeight); }

    // the button size in some implementations is bigger than the bitmap size:
    // get the total button size (by default the same as bitmap size)
    virtual wxSize GetToolSize() const
        { return GetToolBitmapSize(); }

    // returns a (non separator) tool containing the point (x, y) or NULL if
    // there is no tool at this point (coordinates are client)
    virtual wxToolBarToolBase *FindToolForPosition(wxCoord x,
                                                   wxCoord y) const = 0;

    // find the tool by id
    wxToolBarToolBase *FindById(int toolid) const;

    // return true if this is a vertical toolbar, otherwise false
    bool IsVertical() const;

    // these methods allow to access tools by their index in the toolbar
    size_t GetToolsCount() const { return m_tools.GetCount(); }
    const wxToolBarToolBase *GetToolByPos(int pos) const { return m_tools[pos]; }

    // event handlers
    // --------------

    // NB: these functions are deprecated, use EVT_TOOL_XXX() instead!

    // Only allow toggle if returns true. Call when left button up.
    virtual bool OnLeftClick(int toolid, bool toggleDown);

    // Call when right button down.
    virtual void OnRightClick(int toolid, long x, long y);

    // Called when the mouse cursor enters a tool bitmap.
    // Argument is wxID_ANY if mouse is exiting the toolbar.
    virtual void OnMouseEnter(int toolid);

    // more deprecated functions
    // -------------------------

    // use GetToolMargins() instead
    wxSize GetMargins() const { return GetToolMargins(); }

    // Tool factories,
    // helper functions to create toolbar tools
    // -------------------------
    virtual wxToolBarToolBase *CreateTool(int toolid,
                                          const wxString& label,
                                          const wxBitmap& bmpNormal,
                                          const wxBitmap& bmpDisabled = wxNullBitmap,
                                          wxItemKind kind = wxITEM_NORMAL,
                                          wxObject *clientData = NULL,
                                          const wxString& shortHelp = wxEmptyString,
                                          const wxString& longHelp = wxEmptyString) = 0;

    virtual wxToolBarToolBase *CreateTool(wxControl *control,
                                          const wxString& label) = 0;

    // this one is not virtual but just a simple helper/wrapper around
    // CreateTool() for separators
    wxToolBarToolBase *CreateSeparator()
    {
        return CreateTool(wxID_SEPARATOR,
                          wxEmptyString,
                          wxNullBitmap, wxNullBitmap,
                          wxITEM_SEPARATOR, NULL,
                          wxEmptyString, wxEmptyString);
    }


    // implementation only from now on
    // -------------------------------

    // Do the toolbar button updates (check for EVT_UPDATE_UI handlers)
    virtual void UpdateWindowUI(auto flags = wxUPDATE_UI_NONE) ;

    // don't want toolbars to accept the focus
    virtual bool AcceptsFocus() const { return false; }


    // Set dropdown menu
    bool SetDropdownMenu(int toolid, wxMenu *menu);


};

class WXDLLIMPEXP_CORE wxToolBar : public wxToolBarBase
{
public:
    // ctors and dtor
    wxToolBar() { Init(); }

    wxToolBar(wxWindow *parent,
                wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxTB_HORIZONTAL,
                const wxString& name = wxToolBarNameStr)
    {
        Init();

        Create(parent, id, pos, size, style, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxTB_HORIZONTAL,
                const wxString& name = wxToolBarNameStr);

    virtual ~wxToolBar();

    // override/implement base class virtuals
    virtual wxToolBarToolBase *FindToolForPosition(wxCoord x, wxCoord y) const;

    virtual bool Realize();

    virtual void SetToolBitmapSize(const wxSize& size);
    virtual wxSize GetToolSize() const;

    virtual void SetRows(int nRows);

    virtual void SetToolNormalBitmap(int id, const wxBitmap& bitmap);
    virtual void SetToolDisabledBitmap(int id, const wxBitmap& bitmap);

    // implementation only from now on
    // -------------------------------

    virtual void SetWindowStyleFlag(long style);

    void OnMouseEvent(wxMouseEvent& event);
    void OnSysColourChanged(wxSysColourChangedEvent& event);
    void OnEraseBackground(wxEraseEvent& event);

    void SetFocus() {}

    // returns true if the platform should explicitly apply a theme border
    virtual bool CanApplyThemeBorder() const { return false; }

    virtual wxToolBarToolBase *CreateTool(int id,
                                          const wxString& label,
                                          const wxBitmap& bmpNormal,
                                          const wxBitmap& bmpDisabled = wxNullBitmap,
                                          wxItemKind kind = wxITEM_NORMAL,
                                          wxObject *clientData = NULL,
                                          const wxString& shortHelp = wxEmptyString,
                                          const wxString& longHelp = wxEmptyString);

    virtual wxToolBarToolBase *CreateTool(wxControl *control,
                                          const wxString& label);
};

#endif
    // _WX_TOOLBAR_H_BASE_
