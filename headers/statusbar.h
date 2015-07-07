/////////////////////////////////////////////////////////////////////////////
// Name:        wx/statusbr.h
// Purpose:     wxStatusBar class interface
// Author:      Vadim Zeitlin
// Modified by:
// Created:     05.02.00
// Copyright:   (c) Vadim Zeitlin
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_STATUSBR_H_BASE_
#define _WX_STATUSBR_H_BASE_

#include "wx/defs.h"

#if wxUSE_STATUSBAR

#include "wx/control.h"
#include "wx/list.h"
#include "wx/dynarray.h"


// ----------------------------------------------------------------------------
// wxStatusBar constants
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// wxStatusBarPane: an helper for wxStatusBar
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxStatusBarPane
{
public:
    wxStatusBarPane(int style = wxSB_NORMAL, int width = 0)
        : m_nStyle(style), m_nWidth(width)
        { m_bEllipsized = false; }

    int GetWidth() const { return m_nWidth; }
    int GetStyle() const { return m_nStyle; }
    wxString GetText() const { return m_text; }


    // implementation-only from now on
    // -------------------------------

    bool IsEllipsized() const
        { return m_bEllipsized; }
    void SetIsEllipsized(bool isEllipsized) { m_bEllipsized = isEllipsized; }

    void SetWidth(int width) { m_nWidth = width; }
    void SetStyle(int style) { m_nStyle = style; }

    // set text, return true if it changed or false if it was already set to
    // this value
    bool SetText(const wxString& text);

    // save the existing text on top of our stack and make the new text
    // current; return true if the text really changed
    bool PushText(const wxString& text);

    // restore the message saved by the last call to Push() (unless it was
    // changed by an intervening call to SetText()) and return true if we
    // really restored anything
    bool PopText();
};

//WX_DECLARE_EXPORTED_OBJARRAY(wxStatusBarPane, wxStatusBarPaneArray);

// ----------------------------------------------------------------------------
// wxStatusBar: a window near the bottom of the frame used for status info
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxStatusBarBase : public wxControl
{
public:
    wxStatusBarBase();

    virtual ~wxStatusBarBase();

    // field count
    // -----------

    // set the number of fields and call SetStatusWidths(widths) if widths are
    // given
    virtual void SetFieldsCount(int number = 1, const int *widths = NULL);
    int GetFieldsCount() const { return (int)m_panes.GetCount(); }

    // field text
    // ----------

    // just change or get the currently shown text
    void SetStatusText(const wxString& text, int number = 0);
    wxString GetStatusText(int number = 0) const;

    // change the currently shown text to the new one and save the current
    // value to be restored by the next call to PopStatusText()
    void PushStatusText(const wxString& text, int number = 0);
    void PopStatusText(int number = 0);

    // fields widths
    // -------------

    // set status field widths as absolute numbers: positive widths mean that
    // the field has the specified absolute width, negative widths are
    // interpreted as the sizer options, i.e. the extra space (total space
    // minus the sum of fixed width fields) is divided between the fields with
    // negative width according to the abs value of the width (field with width
    // -2 grows twice as much as one with width -1 &c)
    virtual void SetStatusWidths(int n, const int widths[]);

    int GetStatusWidth(int n) const
        { return m_panes[n].GetWidth(); }

    // field styles
    // ------------

    // Set the field border style to one of wxSB_XXX values.
    virtual void SetStatusStyles(int n, const int styles[]);

    int GetStatusStyle(int n) const
        { return m_panes[n].GetStyle(); }

    // geometry
    // --------

    // Get the position and size of the field's internal bounding rectangle
    virtual bool GetFieldRect(int i, wxRect& rect) const = 0;

    // sets the minimal vertical size of the status bar
    virtual void SetMinHeight(int height) = 0;

    // get the dimensions of the horizontal and vertical borders
    virtual int GetBorderX() const = 0;
    virtual int GetBorderY() const = 0;

    wxSize GetBorders() const
        { return wxSize(GetBorderX(), GetBorderY()); }

    // miscellaneous
    // -------------

    const wxStatusBarPane& GetField(int n) const
        { return m_panes[n]; }

    // wxWindow overrides:

    // don't want status bars to accept the focus at all
    virtual bool AcceptsFocus() const { return false; }

    // the client size of a toplevel window doesn't include the status bar
    virtual bool CanBeOutsideClientArea() const { return true; }
};

// ----------------------------------------------------------------------------
// include the actual wxStatusBar class declaration
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_FWD_CORE wxClientDC;

class WXDLLIMPEXP_CORE wxStatusBar : public wxStatusBarBase
{
public:
    // ctors and such
    wxStatusBar();
    wxStatusBar(wxWindow *parent,
                wxWindowID id = #@ WxWindowID(wxID_ANY)
                                @#,
                long style = wxSTB_DEFAULT_STYLE,
                const wxString& name = wxStatusBarNameStr)
    {
    }

    bool Create(wxWindow *parent,
                wxWindowID id = #@ WxWindowID(wxID_ANY)
                                @#,
                long style = wxSTB_DEFAULT_STYLE,
                const wxString& name = wxStatusBarNameStr);

    virtual ~wxStatusBar();

    // implement base class methods
    virtual void SetFieldsCount(int number = 1, const int *widths = NULL);
    virtual void SetStatusWidths(int n, const int widths_field[]);
    virtual void SetStatusStyles(int n, const int styles[]);
    virtual void SetMinHeight(int height);
    virtual bool GetFieldRect(int i, wxRect& rect) const;

    virtual int GetBorderX() const;
    virtual int GetBorderY() const;

    // override some wxWindow virtual methods too
    virtual bool SetFont(const wxFont& font);
};

#endif // wxUSE_STATUSBAR

#endif
    // _WX_STATUSBR_H_BASE_
