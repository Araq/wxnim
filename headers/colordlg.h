/////////////////////////////////////////////////////////////////////////////
// Name:        wx/colordlg.h
// Purpose:     wxColourDialog
// Author:      Vadim Zeitiln
// Modified by:
// Created:     01/02/97
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_COLORDLG_H_BASE_
#define _WX_COLORDLG_H_BASE_

class wxColourData {};

// get the colour from user and return it
WXDLLIMPEXP_CORE wxColour wxGetColourFromUser(wxWindow *parent = NULL,
                                              const wxColour& colInit = wxNullColour,
                                              const wxString& caption = wxEmptyString,
                                              wxColourData *data = NULL);

#endif
    // _WX_COLORDLG_H_BASE_
