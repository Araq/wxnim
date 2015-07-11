/////////////////////////////////////////////////////////////////////////////
// Name:        wx/stattext.h
// Purpose:     wxStaticText base header
// Author:      Julian Smart
// Modified by:
// Created:
// Copyright:   (c) Julian Smart
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_STATTEXT_H_BASE_
#define _WX_STATTEXT_H_BASE_

#include "wx/defs.h"

#if wxUSE_STATTEXT

#include "wx/control.h"

/*
 * wxStaticText flags
 */
#define wxST_NO_AUTORESIZE         0x0001
// free 0x0002 bit
#define wxST_ELLIPSIZE_START       0x0004
#define wxST_ELLIPSIZE_MIDDLE      0x0008
#define wxST_ELLIPSIZE_END         0x0010

class WXDLLIMPEXP_CORE wxStaticTextBase : public wxControl
{
public:
    wxStaticTextBase() { }

    // wrap the text of the control so that no line is longer than the given
    // width (if possible: this function won't break words)
    // This function will modify the value returned by GetLabel()!
    void Wrap(int width);

    // overridden base virtuals
    virtual bool AcceptsFocus() const { return false; }
    virtual bool HasTransparentBackground() { return true; }

    bool IsEllipsized() const
    {
        return HasFlag(wxST_ELLIPSIZE_START) ||
               HasFlag(wxST_ELLIPSIZE_MIDDLE) ||
               HasFlag(wxST_ELLIPSIZE_END);
    }

protected:      // functions required for wxST_ELLIPSIZE_* support

    // choose the default border for this window
    virtual wxBorder GetDefaultBorder() const { return wxBORDER_NONE; }

    // Calls Ellipsize() on the real label if necessary. Unlike GetLabelText(),
    // keeps the mnemonics instead of removing them.
    virtual wxString GetEllipsizedLabel() const;

    // Replaces parts of the string with ellipsis according to the ellipsize
    // style. Shouldn't be called if we don't have any.
    wxString Ellipsize(const wxString& label) const;

    // to be called when updating the size of the static text:
    // updates the label redoing ellipsization calculations
    void UpdateLabel();

    // These functions are platform-specific and must be overridden in ports
    // which do not natively support ellipsization and they must be implemented
    // in a way so that the m_labelOrig member of wxControl is not touched:

    // returns the real label currently displayed inside the control.
    virtual wxString DoGetLabel() const { return wxEmptyString; }

    // sets the real label currently displayed inside the control,
    // _without_ invalidating the size. The text passed is always markup-free
    // but may contain the mnemonic characters.
    virtual void DoSetLabel(const wxString& WXUNUSED(str)) { }

private:
    wxDECLARE_NO_COPY_CLASS(wxStaticTextBase);
};

class WXDLLIMPEXP_CORE wxStaticText : public wxStaticTextBase
{
public:
    wxStaticText() { }

    wxStaticText(wxWindow *parent,
                 wxWindowID id,
                 const wxString& label,
                 const wxPoint& pos = wxDefaultPosition,
                 const wxSize& size = wxDefaultSize,
                 long style = 0,
                 const wxString& name = wxStaticTextNameStr)
    {
        Create(parent, id, label, pos, size, style, name);
    }

    bool Create(wxWindow *parent,
                wxWindowID id,
                const wxString& label,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = 0,
                const wxString& name = wxStaticTextNameStr);

    // override some methods to resize the window properly
    virtual void SetLabel(const wxString& label);
    virtual bool SetFont( const wxFont &font );

protected:
    // implement/override some base class virtuals
    virtual void DoSetSize(int x, int y, int w, int h,
                           int sizeFlags = wxSIZE_AUTO);
    virtual wxSize DoGetBestClientSize() const;

    virtual wxString DoGetLabel() const;
    virtual void DoSetLabel(const wxString& str);

    DECLARE_DYNAMIC_CLASS_NO_COPY(wxStaticText)
};

#endif // wxUSE_STATTEXT

#endif // _WX_STATTEXT_H_BASE_
