

type 
  WxDC* {.importcpp: "wxDC", header: "<wx/wx.h>".} = object 
  


type 
  WxOwnerDrawnBase* {.importcpp: "wxOwnerDrawnBase", header: "<wx/wx.h>".} = object 
  

proc constructwxOwnerDrawnBase*(): WxOwnerDrawnBase {.cdecl, constructor, 
    importcpp: "wxOwnerDrawnBase(@)", header: "<wx/wx.h>".}
proc destroywxOwnerDrawnBase*(this: var WxOwnerDrawnBase) {.cdecl, 
    importcpp: "#.~wxOwnerDrawnBase()", header: "<wx/wx.h>".}
proc setFont*(this: var WxOwnerDrawnBase; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc getFont*(this: WxOwnerDrawnBase): var WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc setTextColour*(this: var WxOwnerDrawnBase; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "<wx/wx.h>".}
proc getTextColour*(this: WxOwnerDrawnBase): var WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxOwnerDrawnBase; colBack: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc getBackgroundColour*(this: WxOwnerDrawnBase): var WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: "<wx/wx.h>".}
proc setMarginWidth*(this: var WxOwnerDrawnBase; width: cint) {.cdecl, 
    importcpp: "SetMarginWidth", header: "<wx/wx.h>".}
proc getMarginWidth*(this: WxOwnerDrawnBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMarginWidth", header: "<wx/wx.h>".}
proc getDefaultMarginWidth*(): cint {.cdecl, importcpp: "wxOwnerDrawnBase::GetDefaultMarginWidth(@)", 
                                      header: "<wx/wx.h>".}
proc getName*(this: WxOwnerDrawnBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc isOwnerDrawn*(this: WxOwnerDrawnBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsOwnerDrawn", header: "<wx/wx.h>".}
proc setOwnerDrawn*(this: var WxOwnerDrawnBase; ownerDrawn: bool = true) {.
    cdecl, importcpp: "SetOwnerDrawn", header: "<wx/wx.h>".}
type 
  WxODAction* {.size: sizeof(cint), importcpp: "wxOwnerDrawnBase::wxODAction", 
                header: "<wx/wx.h>".} = enum 
    wxODDrawAll = 0x00000001, wxODSelectChanged = 0x00000002, 
    wxODFocusChanged = 0x00000004


type 
  WxODStatus* {.size: sizeof(cint), importcpp: "wxOwnerDrawnBase::wxODStatus", 
                header: "<wx/wx.h>".} = enum 
    wxODSelected = 0x00000001, wxODGrayed = 0x00000002, 
    wxODDisabled = 0x00000004, wxODChecked = 0x00000008, 
    wxODHasFocus = 0x00000010, wxODDefault = 0x00000020, 
    wxODHidePrefix = 0x00000100


proc onMeasureItem*(this: var WxOwnerDrawnBase; width: ptr csize; 
                    height: ptr csize): bool {.cdecl, 
    importcpp: "OnMeasureItem", header: "<wx/wx.h>".}
proc onDrawItem*(this: var WxOwnerDrawnBase; dc: var WxDC; rc: WxRect; 
                 act: WxODAction; stat: WxODStatus): bool {.cdecl, 
    importcpp: "OnDrawItem", header: "<wx/wx.h>".}