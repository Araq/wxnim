/////////////////////////////////////////////////////////////////////////////
// Name:        wx/choice.h
// Purpose:     wxChoice class interface
// Author:      Vadim Zeitlin
// Modified by:
// Created:     26.07.99
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_CHOICE_H_BASE_
#define _WX_CHOICE_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/defs.h"

#if wxUSE_CHOICE

#include "wx/ctrlsub.h"     // the base class


// ----------------------------------------------------------------------------
// wxChoice allows to select one of a non-modifiable list of strings
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxChoiceBase : public wxControlWithItems
{
public:
    wxChoiceBase() { }
    virtual ~wxChoiceBase();

    // all generic methods are in wxControlWithItems

    // get the current selection: this can only be different from the normal
    // selection if the popup items list is currently opened and the user
    // selected some item in it but didn't close the list yet; otherwise (and
    // currently always on platforms other than MSW) this is the same as
    // GetSelection()
    virtual int GetCurrentSelection() const { return GetSelection(); }

    // set/get the number of columns in the control (as they're not supported on
    // most platforms, they do nothing by default)
    virtual void SetColumns(int WXUNUSED(n) = 1 ) { }
    virtual int GetColumns() const { return 1 ; }

    // emulate selecting the item event.GetInt()
    void Command(wxCommandEvent& event);

    // override wxItemContainer::IsSorted
    virtual bool IsSorted() const { return HasFlag(wxCB_SORT); }

protected:
    // The generic implementation doesn't determine the height correctly and
    // doesn't account for the width of the arrow but does take into account
    // the string widths, so the derived classes should override it and set the
    // height and add the arrow width to the size returned by this version.
    virtual wxSize DoGetBestSize() const;

    wxDECLARE_NO_COPY_CLASS(wxChoiceBase);
};


class WXDLLIMPEXP_CORE wxChoice : public wxChoiceBase
{
public:
    // ctors
    wxChoice() { Init(); }
    virtual ~wxChoice();

    wxChoice(wxWindow *parent,
             wxWindowID id,
             const wxPoint& pos = wxDefaultPosition,
             const wxSize& size = wxDefaultSize,
             int n = 0, const wxString choices[] = NULL,
             long style = 0,
             const wxValidator& validator = wxDefaultValidator,
             const wxString& name = wxChoiceNameStr)
    {
        Init();
        Create(parent, id, pos, size, n, choices, style, validator, name);
    }

    wxChoice(wxWindow *parent,
             wxWindowID id,
             const wxPoint& pos,
             const wxSize& size,
             const wxArrayString& choices,
             long style = 0,
             const wxValidator& validator = wxDefaultValidator,
             const wxString& name = wxChoiceNameStr)
    {
        Init();
        Create(parent, id, pos, size, choices, style, validator, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                int n = 0, const wxString choices[] = NULL,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxChoiceNameStr);
    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxPoint& pos,
                const wxSize& size,
                const wxArrayString& choices,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxChoiceNameStr);

    virtual bool Show(bool show = true);

    virtual void SetLabel(const wxString& label);

    virtual unsigned int GetCount() const;
    virtual int GetSelection() const;
    virtual int GetCurrentSelection() const;
    virtual void SetSelection(int n);

    virtual int FindString(const wxString& s, bool bCase = false) const;
    virtual wxString GetString(unsigned int n) const;
    virtual void SetString(unsigned int n, const wxString& s);

    virtual wxVisualAttributes GetDefaultAttributes() const
    {
        return GetClassDefaultAttributes(GetWindowVariant());
    }

protected:
    // choose the default border for this window
    virtual wxBorder GetDefaultBorder() const { return wxBORDER_NONE; }

    // common part of all ctors
    void Init()
    {
        m_lastAcceptedSelection =
        m_pendingSelection = wxID_NONE;
        m_heightOwn = wxDefaultCoord;
    }

    virtual void DoDeleteOneItem(unsigned int n);
    virtual void DoClear();

    virtual int DoInsertItems(const wxArrayStringsAdapter& items,
                              unsigned int pos,
                              void **clientData, wxClientDataType type);

    virtual void DoMoveWindow(int x, int y, int width, int height);
    virtual void DoSetItemClientData(unsigned int n, void* clientData);
    virtual void* DoGetItemClientData(unsigned int n) const;

    // MSW implementation
    virtual wxSize DoGetBestSize() const;
    virtual void DoGetSize(int *w, int *h) const;
    virtual void DoSetSize(int x, int y,
                           int width, int height,
                           int sizeFlags = wxSIZE_AUTO);
    virtual wxSize DoGetSizeFromTextSize(int xlen, int ylen = -1) const;

    // Show or hide the popup part of the control.
    void MSWDoPopupOrDismiss(bool show);

    // update the height of the drop down list to fit the number of items we
    // have (without changing the visible height)
    void MSWUpdateDropDownHeight();

    // set the height of the visible part of the control to m_heightOwn
    void MSWUpdateVisibleHeight();

    // Call GetComboBoxInfo() and return false if it's not supported by this
    // system. Notice that the caller must initialize info.cbSize.
    bool MSWGetComboBoxInfo(tagCOMBOBOXINFO* info) const;

    // create and initialize the control
    bool CreateAndInit(wxWindow *parent, wxWindowID id,
                       const wxPoint& pos,
                       const wxSize& size,
                       int n, const wxString choices[],
                       long style,
                       const wxValidator& validator,
                       const wxString& name);

    // free all memory we have (used by Clear() and dtor)
    void Free();

    // set the height for simple combo box
    int SetHeightSimpleComboBox(int nItems) const;


    // These variables are only used while the drop down is opened.
    //
    // The first one contains the item that had been originally selected before
    // the drop down was opened and the second one the item we should select
    // when the drop down is closed again.
    int m_lastAcceptedSelection,
        m_pendingSelection;

    // the height of the control itself if it was set explicitly or
    // wxDefaultCoord if it hadn't
    int m_heightOwn;

    DECLARE_DYNAMIC_CLASS_NO_COPY(wxChoice)
};

#endif // wxUSE_CHOICE

#endif // _WX_CHOICE_H_BASE_
