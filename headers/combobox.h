///////////////////////////////////////////////////////////////////////////////
// Name:        wx/combobox.h
// Purpose:     wxComboBox declaration
// Author:      Vadim Zeitlin
// Modified by:
// Created:     24.12.00
// Copyright:   (c) 1996-2000 wxWidgets team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_COMBOBOX_H_BASE_
#define _WX_COMBOBOX_H_BASE_

#include "wx/defs.h"

#if wxUSE_COMBOBOX

// For compatibility with 2.8 include this header to allow using wxTE_XXX
// styles with wxComboBox without explicitly including it in the user code.
#include "wx/textctrl.h"

// ----------------------------------------------------------------------------
// wxComboBoxBase: this interface defines the methods wxComboBox must implement
// ----------------------------------------------------------------------------

#include "wx/ctrlsub.h"
#include "wx/textentry.h"

#inheritable wxItemContainerImmutable
class wxItemContainerImmutable {};
class wxItemContainer : public wxItemContainerImmutable {};

class WXDLLIMPEXP_CORE wxComboBoxBase : public wxItemContainer,
                                        public wxTextEntry
{
public:
    // override these methods to disambiguate between two base classes versions
    virtual void Clear()
    {
        wxTextEntry::Clear();
        wxItemContainer::Clear();
    }

    // IsEmpty() is ambiguous because we inherit it from both wxItemContainer
    // and wxTextEntry, and even if defined it here to help the compiler with
    // choosing one of them, it would still be confusing for the human users of
    // this class. So instead define the clearly named methods below and leave
    // IsEmpty() ambiguous to trigger a compilation error if it's used.
    bool IsListEmpty() const { return wxItemContainer::IsEmpty(); }
    bool IsTextEmpty() const { return wxTextEntry::IsEmpty(); }

    // also bring in GetSelection() versions of both base classes in scope
    //
    // NB: GetSelection(from, to) could be already implemented in wxTextEntry
    //     but still make it pure virtual because for some platforms it's not
    //     implemented there and also because the derived class has to override
    //     it anyhow to avoid ambiguity with the other GetSelection()
    virtual int GetSelection() const = 0;
    virtual void GetSelection(long *from, long *to) const = 0;

    virtual void Popup() { wxFAIL_MSG( wxT("Not implemented") ); }
    virtual void Dismiss() { wxFAIL_MSG( wxT("Not implemented") ); }

    // may return value different from GetSelection() when the combobox
    // dropdown is shown and the user selected, but not yet accepted, a value
    // different from the old one in it
    virtual int GetCurrentSelection() const { return GetSelection(); }
};


class WXDLLIMPEXP_CORE wxComboBox : public wxChoice,
                                    public wxTextEntry
{
public:
    wxComboBox() { Init(); }

    wxComboBox(wxWindow *parent, wxWindowID id,
            const wxString& value = wxEmptyString,
            const wxPoint& pos = wxDefaultPosition,
            const wxSize& size = wxDefaultSize,
            int n = 0, const wxString choices[] = NULL,
            long style = 0,
            const wxValidator& validator = wxDefaultValidator,
            const wxString& name = wxComboBoxNameStr)
    {
        Init();
        Create(parent, id, value, pos, size, n, choices, style, validator, name);

    }

    wxComboBox(wxWindow *parent, wxWindowID id,
            const wxString& value,
            const wxPoint& pos,
            const wxSize& size,
            const wxArrayString& choices,
            long style = 0,
            const wxValidator& validator = wxDefaultValidator,
            const wxString& name = wxComboBoxNameStr)
    {
        Init();

        Create(parent, id, value, pos, size, choices, style, validator, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& value = wxEmptyString,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                int n = 0,
                const wxString choices[] = NULL,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxComboBoxNameStr);
    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& value,
                const wxPoint& pos,
                const wxSize& size,
                const wxArrayString& choices,
                long style = 0,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxComboBoxNameStr);

    // See wxComboBoxBase discussion of IsEmpty().
    bool IsListEmpty() const { return wxItemContainer::IsEmpty(); }
    bool IsTextEmpty() const { return wxTextEntry::IsEmpty(); }

    // resolve ambiguities among virtual functions inherited from both base
    // classes
    virtual void Clear();
    virtual wxString GetValue() const;
    virtual void SetValue(const wxString& value);
    virtual wxString GetStringSelection() const
        { return wxChoice::GetStringSelection(); }
    virtual void Popup() { MSWDoPopupOrDismiss(true); }
    virtual void Dismiss() { MSWDoPopupOrDismiss(false); }
    virtual void SetSelection(int n) { wxChoice::SetSelection(n); }
    virtual void SetSelection(long from, long to)
        { wxTextEntry::SetSelection(from, to); }
    virtual int GetSelection() const { return wxChoice::GetSelection(); }

    virtual void GetSelection(long *from, long *to) const;

    virtual bool IsEditable() const;

    // Standard event handling
    void OnCut(wxCommandEvent& event);
    void OnCopy(wxCommandEvent& event);
    void OnPaste(wxCommandEvent& event);
    void OnUndo(wxCommandEvent& event);
    void OnRedo(wxCommandEvent& event);
    void OnDelete(wxCommandEvent& event);
    void OnSelectAll(wxCommandEvent& event);

    void OnUpdateCut(wxUpdateUIEvent& event);
    void OnUpdateCopy(wxUpdateUIEvent& event);
    void OnUpdatePaste(wxUpdateUIEvent& event);
    void OnUpdateUndo(wxUpdateUIEvent& event);
    void OnUpdateRedo(wxUpdateUIEvent& event);
    void OnUpdateDelete(wxUpdateUIEvent& event);
    void OnUpdateSelectAll(wxUpdateUIEvent& event);

    // override wxTextEntry method to work around Windows bug
    virtual bool SetHint(const wxString& hint);

protected:
    virtual void DoSetToolTip(wxToolTip *tip);

    virtual wxSize DoGetSizeFromTextSize(int xlen, int ylen = -1) const;

    virtual void EnableTextChangedEvents(bool enable)
    {
        m_allowTextEvents = enable;
    }

private:
    // there are the overridden wxTextEntry methods which should only be called
    // when we do have an edit control so they assert if this is not the case
    virtual wxWindow *GetEditableWindow();
    virtual WXHWND GetEditHWND() const;

    // common part of all ctors
    void Init()
    {
        m_allowTextEvents = true;
    }

    // normally true, false if text events are currently disabled
    bool m_allowTextEvents;

};
#endif // wxUSE_COMBOBOX

#endif // _WX_COMBOBOX_H_BASE_
