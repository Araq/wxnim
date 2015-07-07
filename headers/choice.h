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

#endif // wxUSE_CHOICE

#endif // _WX_CHOICE_H_BASE_
