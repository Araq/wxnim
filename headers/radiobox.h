///////////////////////////////////////////////////////////////////////////////
// Name:        wx/radiobox.h
// Purpose:     wxRadioBox declaration
// Author:      Vadim Zeitlin
// Modified by:
// Created:     10.09.00
// Copyright:   (c) Vadim Zeitlin
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_RADIOBOX_H_BASE_
#define _WX_RADIOBOX_H_BASE_

#include "wx/defs.h"

#if wxUSE_RADIOBOX

#include "wx/ctrlsub.h"

#if wxUSE_TOOLTIPS

#include "wx/dynarray.h"

class WXDLLIMPEXP_FWD_CORE wxToolTip;

//WX_DEFINE_EXPORTED_ARRAY_PTR(wxToolTip *, wxToolTipArray);

#endif // wxUSE_TOOLTIPS

// ----------------------------------------------------------------------------
// wxRadioBoxBase is not a normal base class, but rather a mix-in because the
// real wxRadioBox derives from different classes on different platforms: for
// example, it is a wxStaticBox in wxUniv and wxMSW but not in other ports
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxRadioBoxBase : public wxItemContainerImmutable
{
public:
    virtual ~wxRadioBoxBase();

    // change/query the individual radio button state
    virtual bool Enable(unsigned int n, bool enable = true) = 0;
    virtual bool Show(unsigned int n, bool show = true) = 0;
    virtual bool IsItemEnabled(unsigned int n) const = 0;
    virtual bool IsItemShown(unsigned int n) const = 0;

    // return number of columns/rows in this radiobox
    unsigned int GetColumnCount() const { return m_numCols; }
    unsigned int GetRowCount() const { return m_numRows; }

    // return the next active (i.e. shown and not disabled) item above/below/to
    // the left/right of the given one
    int GetNextItem(int item, wxDirection dir, long style) const;

    // set the tooltip text for a radio item, empty string unsets any tooltip
    void SetItemToolTip(unsigned int item, const wxString& text);

    // get the individual items tooltip; returns NULL if none
    wxToolTip *GetItemToolTip(unsigned int item) const
        { return m_itemsTooltips ? (*m_itemsTooltips)[item] : NULL; }

    // set helptext for a particular item, pass an empty string to erase it
    void SetItemHelpText(unsigned int n, const wxString& helpText);

    // retrieve helptext for a particular item, empty string means no help text
    wxString GetItemHelpText(unsigned int n) const;

    // returns the radio item at the given position or wxNOT_FOUND if none
    // (currently implemented only under MSW and GTK)
    virtual int GetItemFromPoint(const wxPoint& WXUNUSED(pt)) const
    {
        return wxNOT_FOUND;
    }
};

class WXDLLIMPEXP_FWD_CORE wxSubwindows;

// ----------------------------------------------------------------------------
// wxRadioBox
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxRadioBox : public wxRadioBoxBase
{
public:
    wxRadioBox() { Init(); }

    wxRadioBox(wxWindow *parent,
               wxWindowID id,
               const wxString& title,
               const wxPoint& pos = wxDefaultPosition,
               const wxSize& size = wxDefaultSize,
               int n = 0, const wxString choices[] = NULL,
               int majorDim = 0,
               auto style = wxRA_SPECIFY_COLS,
               const wxValidator& val = wxDefaultValidator,
               const wxString& name = wxRadioBoxNameStr)
    {
        Init();

        (void)Create(parent, id, title, pos, size, n, choices, majorDim,
                     style, val, name);
    }

    wxRadioBox(wxWindow *parent,
               wxWindowID id,
               const wxString& title,
               const wxPoint& pos,
               const wxSize& size,
               const wxArrayString& choices,
               int majorDim = 0,
               auto style = wxRA_SPECIFY_COLS,
               const wxValidator& val = wxDefaultValidator,
               const wxString& name = wxRadioBoxNameStr)
    {
        Init();

        (void)Create(parent, id, title, pos, size, choices, majorDim,
                     style, val, name);
    }

    virtual ~wxRadioBox();

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& title,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                int n = 0, const wxString choices[] = NULL,
                int majorDim = 0,
                auto style = wxRA_SPECIFY_COLS,
                const wxValidator& val = wxDefaultValidator,
                const wxString& name = wxRadioBoxNameStr);
    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& title,
                const wxPoint& pos,
                const wxSize& size,
                const wxArrayString& choices,
                int majorDim = 0,
                auto style = wxRA_SPECIFY_COLS,
                const wxValidator& val = wxDefaultValidator,
                const wxString& name = wxRadioBoxNameStr);

    // implement the radiobox interface
    virtual void SetSelection(int n);
    virtual int GetSelection() const { return m_selectedButton; }
    virtual unsigned int GetCount() const;
    virtual wxString GetString(unsigned int n) const;
    virtual void SetString(unsigned int n, const wxString& label);
    virtual bool Enable(unsigned int n, bool enable = true);
    virtual bool Show(unsigned int n, bool show = true);
    virtual bool IsItemEnabled(unsigned int n) const;
    virtual bool IsItemShown(unsigned int n) const;
    virtual int GetItemFromPoint(const wxPoint& pt) const;

    // override some base class methods
    virtual bool Show(bool show = true);
    virtual bool Enable(bool enable = true);
    virtual bool CanBeFocused() const;
    virtual void SetFocus();
    virtual bool SetFont(const wxFont& font);

    virtual bool HasToolTips() const;

    // override virtual function with a platform-independent implementation
    virtual wxString GetHelpTextAtPoint(const wxPoint & pt, wxHelpEvent::Origin origin) const
    {
        return wxRadioBoxBase::DoGetHelpTextAtPoint( this, pt, origin );
    }

    virtual bool Reparent(wxWindowBase *newParent);

    // returns true if the platform should explicitly apply a theme border
    virtual bool CanApplyThemeBorder() const { return false; }

    void SetLabelFont(const wxFont& WXUNUSED(font)) {}
    void SetButtonFont(const wxFont& font) { SetFont(font); }

    void Command(wxCommandEvent& event);

    void SendNotificationEvent();
};

#endif // wxUSE_RADIOBOX

#endif // _WX_RADIOBOX_H_BASE_
