

discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxWindow"
discard "forward decl of wxRichToolTipImpl"
type 
  WxTipKind* {.size: sizeof(cint), importcpp: "wxRichToolTipImpl::wxTipKind", 
               header: wxh.} = enum 
    wxTipKindNone, wxTipKindTopLeft, wxTipKindTop, wxTipKindTopRight, 
    wxTipKindBottomLeft, wxTipKindBottom, wxTipKindBottomRight, wxTipKindAuto



type 
  WxRichToolTip* {.importcpp: "wxRichToolTip", header: wxh.} = object 
  

proc constructwxRichToolTip*(title: WxString; message: WxString): WxRichToolTip {.
    cdecl, constructor, importcpp: "wxRichToolTip(@)", header: wxh.}
proc setBackgroundColour*(this: var WxRichToolTip; col: WxColour; 
                          colEnd: WxColour = wxColour()) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setIcon*(this: var WxRichToolTip; icon: cint = wxICON_INFORMATION) {.cdecl, 
    importcpp: "SetIcon", header: wxh.}
proc setIcon*(this: var WxRichToolTip; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: wxh.}
proc setTimeout*(this: var WxRichToolTip; milliseconds: cuint; 
                 millisecondsShowdelay: cuint = 0) {.cdecl, 
    importcpp: "SetTimeout", header: wxh.}
proc setTipKind*(this: var WxRichToolTip; tipKind: WxTipKind) {.cdecl, 
    importcpp: "SetTipKind", header: wxh.}
proc setTitleFont*(this: var WxRichToolTip; font: WxFont) {.cdecl, 
    importcpp: "SetTitleFont", header: wxh.}
proc showFor*(this: var WxRichToolTip; win: ptr WxWindow; rect: ptr WxRect = nil) {.
    cdecl, importcpp: "ShowFor", header: wxh.}
proc destroywxRichToolTip*(this: var WxRichToolTip) {.cdecl, 
    importcpp: "#.~wxRichToolTip()", header: wxh.}