#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/notebook.h
# Purpose:     wxNotebook interface
# Author:      Vadim Zeitlin
# Modified by:
# Created:     01.02.01
# Copyright:   (c) 1996-2000 Vadim Zeitlin
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# headers
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# constants
# ----------------------------------------------------------------------------
# wxNotebook hit results, use wxBK_HITTEST so other book controls can share them
# if wxUSE_NOTEBOOK is disabled

const 
  wxNB_HITTEST_NOWHERE* = wxBK_HITTEST_NOWHERE
  wxNB_HITTEST_ONICON* = wxBK_HITTEST_ONICON
  wxNB_HITTEST_ONLABEL* = wxBK_HITTEST_ONLABEL
  wxNB_HITTEST_ONITEM* = wxBK_HITTEST_ONITEM
  wxNB_HITTEST_ONPAGE* = wxBK_HITTEST_ONPAGE

# wxNotebook flags
# use common book wxBK_* flags for describing alignment

const 
  wxNB_DEFAULT* = wxBK_DEFAULT
  wxNB_TOP* = wxBK_TOP
  wxNB_BOTTOM* = wxBK_BOTTOM
  wxNB_LEFT* = wxBK_LEFT
  wxNB_RIGHT* = wxBK_RIGHT
  wxNB_FIXEDWIDTH* = 0x00000100
  wxNB_MULTILINE* = 0x00000200
  wxNB_NOPAGETHEME* = 0x00000400
  wxNB_FLAT* = 0x00000800

type 
  WxNotebookPage* = WxWindow

# so far, any window can be a page
# ----------------------------------------------------------------------------
# wxNotebookBase: define wxNotebook interface
# ----------------------------------------------------------------------------

type 
  WxNotebookBase* {.importcpp: "wxNotebookBase", header: "wx.h".} = object of WxBookCtrlBase # 
                                                                                             # ctors
                                                                                             # 
                                                                                             # -----
  

proc constructwxNotebookBase*(): WxNotebookBase {.constructor, 
    importcpp: "wxNotebookBase(@)", header: "wx.h".}
proc getRowCount*(this: WxNotebookBase): cint {.noSideEffect, 
    importcpp: "GetRowCount", header: "wx.h".}
proc setPadding*(this: var WxNotebookBase; padding: WxSize) {.
    importcpp: "SetPadding", header: "wx.h".}
proc setTabSize*(this: var WxNotebookBase; sz: WxSize) {.
    importcpp: "SetTabSize", header: "wx.h".}
proc calcSizeFromPage*(this: WxNotebookBase; sizePage: WxSize): WxSize {.
    noSideEffect, importcpp: "CalcSizeFromPage", header: "wx.h".}
proc getThemeBackgroundColour*(this: WxNotebookBase): WxColour {.noSideEffect, 
    importcpp: "GetThemeBackgroundColour", header: "wx.h".}
proc sendPageChangingEvent*(this: var WxNotebookBase; nPage: cint): bool {.
    importcpp: "SendPageChangingEvent", header: "wx.h".}
proc sendPageChangedEvent*(this: var WxNotebookBase; nPageOld: cint; 
                           nPageNew: cint = wxNOT_FOUND) {.
    importcpp: "SendPageChangedEvent", header: "wx.h".}
proc acceptsFocus*(this: WxNotebookBase): bool {.noSideEffect, 
    importcpp: "AcceptsFocus", header: "wx.h".}
# ----------------------------------------------------------------------------
# notebook event class and related stuff
# ----------------------------------------------------------------------------
# wxNotebookEvent is obsolete and defined for compatibility only (notice that
# we use #define and not typedef to also keep compatibility with the existing
# code which forward declares it)

const 
  wxNotebookEvent* = wxBookCtrlEvent

type 
  WxNotebookEventFunction* = WxBookCtrlEventFunction

template wxNotebookEventHandler*(`func`: expr): expr = 
  wxBookCtrlEventHandler(`func`)

var wxEVT_NOTEBOOK_PAGE_CHANGED* {.importcpp: "wxEVT_NOTEBOOK_PAGE_CHANGED", 
                                   header: "wx.h".}: WxEventTypeTag[
    WxBookCtrlEvent]

var wxEVT_NOTEBOOK_PAGE_CHANGING* {.importcpp: "wxEVT_NOTEBOOK_PAGE_CHANGING", 
                                    header: "wx.h".}: WxEventTypeTag[
    WxBookCtrlEvent]

template evt_Notebook_Page_Changed*(winid, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_NOTEBOOK_PAGE_CHANGED, winid, wxBookCtrlEventHandler(fn))

template evt_Notebook_Page_Changing*(winid, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_NOTEBOOK_PAGE_CHANGING, winid, wxBookCtrlEventHandler(fn))

# old wxEVT_COMMAND_* constants

const 
  wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGED* = wxEVT_NOTEBOOK_PAGE_CHANGED
  wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGING* = wxEVT_NOTEBOOK_PAGE_CHANGING

# _WX_NOTEBOOK_H_BASE_
