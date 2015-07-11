/////////////////////////////////////////////////////////////////////////////
// Name:        wx/spinctrl.h
// Purpose:     wxSpinCtrlBase class
// Author:      Vadim Zeitlin
// Modified by:
// Created:     22.07.99
// Copyright:   (c) Vadim Zeitlin
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_SPINCTRL_H_
#define _WX_SPINCTRL_H_

#include "wx/defs.h"

#if wxUSE_SPINCTRL

#include "wx/spinbutt.h"        // should make wxSpinEvent visible to the app

// Events
class WXDLLIMPEXP_FWD_CORE wxSpinDoubleEvent;

wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SPINCTRL, wxSpinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SPINCTRLDOUBLE, wxSpinDoubleEvent);

// ----------------------------------------------------------------------------
// A spin ctrl is a text control with a spin button which is usually used to
// prompt the user for a numeric input.
// There are two kinds for number types T=integer or T=double.
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxSpinCtrlBase : public wxControl
{
public:
    wxSpinCtrlBase() {}

    // accessor functions that derived classes are expected to have
    // T GetValue() const
    // T GetMin() const
    // T GetMax() const
    // T GetIncrement() const
    virtual bool GetSnapToTicks() const = 0;
    // unsigned GetDigits() const                   - wxSpinCtrlDouble only

    // operation functions that derived classes are expected to have
    virtual void SetValue(const wxString& value) = 0;
    // void SetValue(T val)
    // void SetRange(T minVal, T maxVal)
    // void SetIncrement(T inc)
    virtual void SetSnapToTicks(bool snap_to_ticks) = 0;
    // void SetDigits(unsigned digits)              - wxSpinCtrlDouble only

    // The base for numbers display, e.g. 10 or 16.
    virtual int GetBase() const = 0;
    virtual bool SetBase(int base) = 0;

    // Select text in the textctrl
    virtual void SetSelection(long from, long to) = 0;

private:
    wxDECLARE_NO_COPY_CLASS(wxSpinCtrlBase);
};

// ----------------------------------------------------------------------------
// wxSpinDoubleEvent - a wxSpinEvent for double valued controls
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxSpinDoubleEvent : public wxNotifyEvent
{
public:
    wxSpinDoubleEvent(wxEventType commandType = wxEVT_NULL, int winid = 0,
                      double value = 0)
        : wxNotifyEvent(commandType, winid), m_value(value)
    {
    }

    wxSpinDoubleEvent(const wxSpinDoubleEvent& event)
        : wxNotifyEvent(event), m_value(event.GetValue())
    {
    }

    double GetValue() const       { return m_value; }
    void   SetValue(double value) { m_value = value; }

    virtual wxEvent *Clone() const { return new wxSpinDoubleEvent(*this); }

protected:
    double m_value;

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxSpinDoubleEvent)
};

class WXDLLIMPEXP_CORE wxSpinCtrl : public wxSpinButton
{
public:
    wxSpinCtrl() { Init(); }

    wxSpinCtrl(wxWindow *parent,
               wxWindowID id = wxID_ANY,
               const wxString& value = wxEmptyString,
               const wxPoint& pos = wxDefaultPosition,
               const wxSize& size = wxDefaultSize,
               long style = wxSP_ARROW_KEYS | int(wxALIGN_RIGHT),
               int min = 0, int max = 100, int initial = 0,
               const wxString& name = constructWxString("wxSpinCtrl"))
    {
        Init();

        Create(parent, id, value, pos, size, style, min, max, initial, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id = wxID_ANY,
                const wxString& value = wxEmptyString,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxSP_ARROW_KEYS | int(wxALIGN_RIGHT),
                int min = 0, int max = 100, int initial = 0,
                const wxString& name = constructWxString("wxSpinCtrl"));

    // a wxTextCtrl-like method (but we can't have GetValue returning wxString
    // because the base class already has one returning int!)
    void SetValue(const wxString& text);

    // another wxTextCtrl-like method
    void SetSelection(long from, long to);

    // wxSpinCtrlBase methods
    virtual int GetBase() const;
    virtual bool SetBase(int base);


    // implementation only from now on
    // -------------------------------

    virtual ~wxSpinCtrl();

    virtual void SetValue(int val);
    virtual int  GetValue() const;
    virtual void SetRange(int minVal, int maxVal);
    virtual bool SetFont(const wxFont &font);
    virtual void SetFocus();

    virtual bool Enable(bool enable = true);
    virtual bool Show(bool show = true);

    virtual bool Reparent(wxWindowBase *newParent);

    // wxSpinButton doesn't accept focus, but we do
    virtual bool AcceptsFocus() const { return wxWindow::AcceptsFocus(); }

    // we're like wxTextCtrl and not (default) wxButton
    virtual wxVisualAttributes GetDefaultAttributes() const
    {
        return GetClassDefaultAttributes(GetWindowVariant());
    }
protected:
    virtual void DoGetPosition(int *x, int *y) const;
    virtual void DoMoveWindow(int x, int y, int width, int height);
    virtual wxSize DoGetBestSize() const;
    virtual wxSize DoGetSizeFromTextSize(int xlen, int ylen = -1) const;
    virtual void DoGetSize(int *width, int *height) const;
    virtual void DoGetClientSize(int *x, int *y) const;

    virtual void DoSetToolTip( wxToolTip *tip );


    // handle processing of special keys
    void OnChar(wxKeyEvent& event);
    void OnSetFocus(wxFocusEvent& event);
    void OnKillFocus(wxFocusEvent& event);

    // generate spin control update event with the given value
    void SendSpinUpdate(int value);

    // called to ensure that the value is in the correct range
    virtual void NormalizeValue();


    // the value of the control before the latest change (which might not have
    // changed anything in fact -- this is why we need this field)
    int m_oldValue;

    // the data for the "buddy" text ctrl
    WXHWND     m_hwndBuddy;
    WXFARPROC  m_wndProcBuddy;

    // Block text update event after SetValue()
    bool m_blockEvent;

private:
    // Common part of all ctors.
    void Init();

    // Adjust the text control style depending on whether we need to enter only
    // digits or may need to enter something else (e.g. "-" sign, "x"
    // hexadecimal prefix, ...) in it.
    void UpdateBuddyStyle();


    DECLARE_DYNAMIC_CLASS(wxSpinCtrl)
    DECLARE_EVENT_TABLE()
    wxDECLARE_NO_COPY_CLASS(wxSpinCtrl);
};


// ----------------------------------------------------------------------------
// wxSpinDoubleEvent event type, see also wxSpinEvent in wx/spinbutt.h
// ----------------------------------------------------------------------------

#define wxSpinDoubleEventHandler(func) \
    wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, func)

// macros for handling spinctrl events

#define EVT_SPINCTRL(id, fn) \
    wx__DECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

#define EVT_SPINCTRLDOUBLE(id, fn) \
    wx__DECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))

#endif // wxUSE_SPINCTRL

#endif // _WX_SPINCTRL_H_
