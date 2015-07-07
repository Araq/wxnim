#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/richtooltip.h
# Purpose:     Declaration of wxRichToolTip class.
# Author:      Vadim Zeitlin
# Created:     2011-10-07
# Copyright:   (c) 2011 Vadim Zeitlin <vadim@wxwidgets.org>
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxWindow"
discard "forward decl of wxRichToolTipImpl"
type 
  WxTipKind* = enum 
    wxTipKindNone, wxTipKindTopLeft, wxTipKindTop, wxTipKindTopRight, 
    wxTipKindBottomLeft, wxTipKindBottom, wxTipKindBottomRight, wxTipKindAuto


# ----------------------------------------------------------------------------
# wxRichToolTip: a customizable but not necessarily native tooltip.
# ----------------------------------------------------------------------------
# Notice that this class does not inherit from wxWindow.

type 
  WxRichToolTip* {.importcpp: "wxRichToolTip", header: "wx.h".} = object # Ctor must specify the tooltip title and main 
                                                                         # message, 
                                                                         # additional
                                                                         # 
                                                                         # attributes can be set later.
    mImpl* {.importc: "m_impl".}: ptr WxRichToolTipImpl


proc constructwxRichToolTip*(title: WxString; message: WxString): WxRichToolTip {.
    constructor, importcpp: "wxRichToolTip(@)", header: "wx.h".}
proc setBackgroundColour*(this: var WxRichToolTip; col: WxColour; 
                          colEnd: WxColour = wxColour()) {.
    importcpp: "SetBackgroundColour", header: "wx.h".}
proc setIcon*(this: var WxRichToolTip; icon: cint = wxICON_INFORMATION) {.
    importcpp: "SetIcon", header: "wx.h".}
proc setIcon*(this: var WxRichToolTip; icon: WxIcon) {.importcpp: "SetIcon", 
    header: "wx.h".}
proc setTimeout*(this: var WxRichToolTip; milliseconds: cuint; 
                 millisecondsShowdelay: cuint = 0) {.importcpp: "SetTimeout", 
    header: "wx.h".}
proc setTipKind*(this: var WxRichToolTip; tipKind: WxTipKind) {.
    importcpp: "SetTipKind", header: "wx.h".}
proc setTitleFont*(this: var WxRichToolTip; font: WxFont) {.
    importcpp: "SetTitleFont", header: "wx.h".}
proc showFor*(this: var WxRichToolTip; win: ptr WxWindow; rect: ptr WxRect = nil) {.
    importcpp: "ShowFor", header: "wx.h".}
proc destroywxRichToolTip*(this: var WxRichToolTip) {.
    importcpp: "#.~wxRichToolTip()", header: "wx.h".}