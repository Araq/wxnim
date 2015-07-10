


const 
  wxHAS_BUTTON_BITMAP* = true

type 
  WxBitmapButton* {.importcpp: "wxBitmapButton", header: wxh.} = object 
  


type 
  WxBitmapButtonBase* {.importcpp: "wxBitmapButtonBase", header: wxh.} = object of WxButton
  

proc constructwxBitmapButtonBase*(): WxBitmapButtonBase {.cdecl, constructor, 
    importcpp: "wxBitmapButtonBase(@)", header: wxh.}
proc create*(this: var WxBitmapButtonBase; parent: ptr WxWindow; 
             winid: WxWindowID; pos: WxPoint; size: WxSize; style: clong; 
             validator: WxValidator; name: WxString): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc newCloseButton*(parent: ptr WxWindow; winid: WxWindowID): ptr WxBitmapButton {.
    cdecl, importcpp: "wxBitmapButtonBase::NewCloseButton(@)", header: wxh.}
proc setMargins*(this: var WxBitmapButtonBase; x: cint; y: cint) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc getMarginX*(this: WxBitmapButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMarginX", header: wxh.}
proc getMarginY*(this: WxBitmapButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMarginY", header: wxh.}