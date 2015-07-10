

discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxWindow"
discard "forward decl of wxRichToolTipImpl"
type 
  WxTipKind* {.size: sizeof(cint), importcpp: "wxRichToolTipImpl::wxTipKind", 
               header: "<wx/wx.h>".} = enum 
    wxTipKindNone, wxTipKindTopLeft, wxTipKindTop, wxTipKindTopRight, 
    wxTipKindBottomLeft, wxTipKindBottom, wxTipKindBottomRight, wxTipKindAuto



type 
  WxRichToolTip* {.importcpp: "wxRichToolTip", header: "<wx/wx.h>".} = object 
  

proc constructwxRichToolTip*(title: WxString; message: WxString): WxRichToolTip {.
    cdecl, constructor, importcpp: "wxRichToolTip(@)", header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxRichToolTip; col: WxColour; 
                          colEnd: WxColour = wxColour()) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc setIcon*(this: var WxRichToolTip; icon: cint = wxICON_INFORMATION) {.cdecl, 
    importcpp: "SetIcon", header: "<wx/wx.h>".}
proc setIcon*(this: var WxRichToolTip; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: "<wx/wx.h>".}
proc setTimeout*(this: var WxRichToolTip; milliseconds: cuint; 
                 millisecondsShowdelay: cuint = 0) {.cdecl, 
    importcpp: "SetTimeout", header: "<wx/wx.h>".}
proc setTipKind*(this: var WxRichToolTip; tipKind: WxTipKind) {.cdecl, 
    importcpp: "SetTipKind", header: "<wx/wx.h>".}
proc setTitleFont*(this: var WxRichToolTip; font: WxFont) {.cdecl, 
    importcpp: "SetTitleFont", header: "<wx/wx.h>".}
proc showFor*(this: var WxRichToolTip; win: ptr WxWindow; rect: ptr WxRect = nil) {.
    cdecl, importcpp: "ShowFor", header: "<wx/wx.h>".}
proc destroywxRichToolTip*(this: var WxRichToolTip) {.cdecl, 
    importcpp: "#.~wxRichToolTip()", header: "<wx/wx.h>".}