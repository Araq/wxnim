

type 
  WxDC* {.importcpp: "wxDC", header: wxh.} = object 
  


type 
  WxOwnerDrawnBase* {.importcpp: "wxOwnerDrawnBase", header: wxh.} = object 
  

proc constructwxOwnerDrawnBase*(): WxOwnerDrawnBase {.cdecl, constructor, 
    importcpp: "wxOwnerDrawnBase(@)", header: wxh.}
proc destroywxOwnerDrawnBase*(this: var WxOwnerDrawnBase) {.cdecl, 
    importcpp: "#.~wxOwnerDrawnBase()", header: wxh.}
proc setFont*(this: var WxOwnerDrawnBase; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc getFont*(this: WxOwnerDrawnBase): var WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc setTextColour*(this: var WxOwnerDrawnBase; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc getTextColour*(this: WxOwnerDrawnBase): var WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxOwnerDrawnBase; colBack: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: wxh.}
proc getBackgroundColour*(this: WxOwnerDrawnBase): var WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: wxh.}
proc setMarginWidth*(this: var WxOwnerDrawnBase; width: cint) {.cdecl, 
    importcpp: "SetMarginWidth", header: wxh.}
proc getMarginWidth*(this: WxOwnerDrawnBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMarginWidth", header: wxh.}
proc getDefaultMarginWidth*(): cint {.cdecl, importcpp: "wxOwnerDrawnBase::GetDefaultMarginWidth(@)", 
                                      header: wxh.}
proc getName*(this: WxOwnerDrawnBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc isOwnerDrawn*(this: WxOwnerDrawnBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsOwnerDrawn", header: wxh.}
proc setOwnerDrawn*(this: var WxOwnerDrawnBase; ownerDrawn: bool = true) {.
    cdecl, importcpp: "SetOwnerDrawn", header: wxh.}
type 
  WxODAction* {.size: sizeof(cint), importcpp: "wxOwnerDrawnBase::wxODAction", 
                header: wxh.} = enum 
    wxODDrawAll = 0x00000001, wxODSelectChanged = 0x00000002, 
    wxODFocusChanged = 0x00000004


type 
  WxODStatus* {.size: sizeof(cint), importcpp: "wxOwnerDrawnBase::wxODStatus", 
                header: wxh.} = enum 
    wxODSelected = 0x00000001, wxODGrayed = 0x00000002, 
    wxODDisabled = 0x00000004, wxODChecked = 0x00000008, 
    wxODHasFocus = 0x00000010, wxODDefault = 0x00000020, 
    wxODHidePrefix = 0x00000100


proc onMeasureItem*(this: var WxOwnerDrawnBase; width: ptr csize; 
                    height: ptr csize): bool {.cdecl, 
    importcpp: "OnMeasureItem", header: wxh.}
proc onDrawItem*(this: var WxOwnerDrawnBase; dc: var WxDC; rc: WxRect; 
                 act: WxODAction; stat: WxODStatus): bool {.cdecl, 
    importcpp: "OnDrawItem", header: wxh.}