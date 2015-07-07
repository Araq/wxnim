///////////////////////////////////////////////////////////////////////////////
// Name:        wx/listbox.h
// Purpose:     wxListBox class interface
// Author:      Vadim Zeitlin
// Modified by:
// Created:     22.10.99
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_LISTBOX_H_BASE_
#define _WX_LISTBOX_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/defs.h"

#if wxUSE_LISTBOX

#include "wx/ctrlsub.h"         // base class

class  wxArrayInt {};
class wxControlWithItems : public wxControl {};
class wxOwnerDrawn {};

// ----------------------------------------------------------------------------
// wxListBox interface is defined by the class wxListBoxBase
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxListBoxBase : public wxControlWithItems
{
public:
    wxListBoxBase() { }
    virtual ~wxListBoxBase();

    void InsertItems(unsigned int nItems, const wxString *items, unsigned int pos)
        { Insert(nItems, items, pos); }
    void InsertItems(const wxArrayString& items, unsigned int pos)
        { Insert(items, pos); }

    // multiple selection logic
    virtual bool IsSelected(int n) const = 0;
    virtual void SetSelection(int n);
    void SetSelection(int n, bool select) { DoSetSelection(n, select); }
    void Deselect(int n) { DoSetSelection(n, false); }
    void DeselectAll(int itemToLeaveSelected = -1);

    virtual bool SetStringSelection(const wxString& s, bool select);
    virtual bool SetStringSelection(const wxString& s)
    {
        return SetStringSelection(s, true);
    }

    // works for single as well as multiple selection listboxes (unlike
    // GetSelection which only works for listboxes with single selection)
    virtual int GetSelections(wxArrayInt& aSelections) const = 0;

    // set the specified item at the first visible item or scroll to max
    // range.
    void SetFirstItem(int n) { DoSetFirstItem(n); }
    void SetFirstItem(const wxString& s);

    // ensures that the given item is visible scrolling the listbox if
    // necessary
    virtual void EnsureVisible(int n);

    // a combination of Append() and EnsureVisible(): appends the item to the
    // listbox and ensures that it is visible i.e. not scrolled out of view
    void AppendAndEnsureVisible(const wxString& s);

    // return true if the listbox allows multiple selection
    bool HasMultipleSelection() const
    {
        return (m_windowStyle & wxLB_MULTIPLE) ||
               (m_windowStyle & wxLB_EXTENDED);
    }

    // override wxItemContainer::IsSorted
    virtual bool IsSorted() const { return HasFlag( wxLB_SORT ); }

    // emulate selecting or deselecting the item event.GetInt() (depending on
    // event.GetExtraLong())
    void Command(wxCommandEvent& event);

    // return the index of the item at this position or wxNOT_FOUND
    int HitTest(const wxPoint& point) const { return DoListHitTest(point); }
    int HitTest(int x, int y) const { return DoListHitTest(wxPoint(x, y)); }


protected:
    virtual void DoSetFirstItem(int n) = 0;

    virtual void DoSetSelection(int n, bool select) = 0;

    // there is already wxWindow::DoHitTest() so call this one differently
    virtual int DoListHitTest(const wxPoint& WXUNUSED(point)) const
        { return wxNOT_FOUND; }

    // Helper for the code generating events in single selection mode: updates
    // m_oldSelections and return true if the selection really changed.
    // Otherwise just returns false.
    bool DoChangeSingleSelection(int item);

    // Helper for generating events in multiple and extended mode: compare the
    // current selections with the previously recorded ones (in
    // m_oldSelections) and send the appropriate event if they differ,
    // otherwise just return false.
    bool CalcAndSendEvent();

    // Send a listbox (de)selection or double click event.
    //
    // Returns true if the event was processed.
    bool SendEvent(wxEventType evtType, int item, bool selected);

    // Array storing the indices of all selected items that we already notified
    // the user code about for multi selection list boxes.
    //
    // For single selection list boxes, we reuse this array to store the single
    // currently selected item, this is used by DoChangeSingleSelection().
    //
    // TODO-OPT: wxSelectionStore would be more efficient for big list boxes.
    wxArrayInt m_oldSelections;

    // Update m_oldSelections with currently selected items (does nothing in
    // single selection mode on platforms other than MSW).
    void UpdateOldSelections();

private:
    wxDECLARE_NO_COPY_CLASS(wxListBoxBase);
};

#endif // wxUSE_LISTBOX

class WXDLLIMPEXP_CORE wxListBox : public wxListBoxBase
{
public:
    // ctors and such
    wxListBox() { Init(); }
    wxListBox(wxWindow *parent, wxWindowID id,
            const wxPoint& pos = wxDefaultPosition,
            const wxSize& size = wxDefaultSize,
            int n = 0, const wxString choices[] = NULL,
            long style = 0,
            const wxValidator& validator = wxDefaultValidator,
            const wxString& name = wxListBoxNameStr)
    {
        Init();

        Create(parent, id, pos, size, n, choices, style, validator, name);
    }
    wxListBox(wxWindow *parent, wxWindowID id,
            const wxPoint& pos,
            const wxSize& size,
            const wxArrayString& choices,
            long style = 0,
            const wxValidator& validator = wxDefaultValidator,
            const wxString& name = wxListBoxNameStr)
    {
        Init();

        Create(parent, id, pos, size, choices, style, validator, name);
    }

    bool Create(wxWindow *parent, wxWindowID id,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                int n = 0, const wxString choices[] = NULL,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxListBoxNameStr);
    bool Create(wxWindow *parent, wxWindowID id,
                const wxPoint& pos,
                const wxSize& size,
                const wxArrayString& choices,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxListBoxNameStr);

    virtual ~wxListBox();

    virtual unsigned int GetCount() const;
    virtual wxString GetString(unsigned int n) const;
    virtual void SetString(unsigned int n, const wxString& s);
    virtual int FindString(const wxString& s, bool bCase = false) const;

    virtual bool IsSelected(int n) const;
    virtual int GetSelection() const;
    virtual int GetSelections(wxArrayInt& aSelections) const;

    // return the index of the item at this position or wxNOT_FOUND
    int HitTest(const wxPoint& pt) const { return DoHitTestList(pt); }
    int HitTest(wxCoord x, wxCoord y) const { return DoHitTestList(wxPoint(x, y)); }

    // ownerdrawn wxListBox and wxCheckListBox support
    // override base class virtuals
    virtual bool SetFont(const wxFont &font);

    // plug-in for derived classes
    virtual wxOwnerDrawn *CreateLboxItem(size_t n);

    // allows to get the item and use SetXXX functions to set it's appearance
    wxOwnerDrawn *GetItem(size_t n) const { return m_aItems[n]; }

    // get the index of the given item
    int GetItemIndex(wxOwnerDrawn *item) const { return m_aItems.Index(item); }

    // get rect of the given item index
    bool GetItemRect(size_t n, wxRect& rect) const;

    // redraw the given item
    bool RefreshItem(size_t n);

    // Windows-specific code to update the horizontal extent of the listbox, if
    // necessary. If s is non-empty, the horizontal extent is increased to the
    // length of this string if it's currently too short, otherwise the maximum
    // extent of all strings is used. In any case calls InvalidateBestSize()
    virtual void SetHorizontalExtent(const wxString& s = wxEmptyString);

    virtual wxVisualAttributes GetDefaultAttributes() const
    {
        return GetClassDefaultAttributes(GetWindowVariant());
    }

    // returns true if the platform should explicitly apply a theme border
    virtual bool CanApplyThemeBorder() const { return false; }

    virtual void OnInternalIdle();

protected:
    virtual wxSize DoGetBestClientSize() const;

    virtual void DoClear();
    virtual void DoDeleteOneItem(unsigned int n);

    virtual void DoSetSelection(int n, bool select);

    virtual int DoInsertItems(const wxArrayStringsAdapter& items,
                              unsigned int pos,
                              void **clientData, wxClientDataType type);

    virtual void DoSetFirstItem(int n);
    virtual void DoSetItemClientData(unsigned int n, void* clientData);
    virtual void* DoGetItemClientData(unsigned int n) const;

    // this can't be called DoHitTest() because wxWindow already has this method
    virtual int DoHitTestList(const wxPoint& point) const;

    // free memory (common part of Clear() and dtor)
    void Free();
};

#endif
    // _WX_LISTBOX_H_BASE_
