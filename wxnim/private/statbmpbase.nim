

var wxStaticBitmapNameStr* {.importcpp: "wxStaticBitmapNameStr", header: wxh.}: WxString #ptr char


type
  WxStaticBitmapBase* {.importcpp: "wxStaticBitmapBase", header: wxh.} = object of WxControl
  

proc constructwxStaticBitmapBase*(): WxStaticBitmapBase {.cdecl, constructor,
    importcpp: "wxStaticBitmapBase(@)", header: wxh.}
proc destroywxStaticBitmapBase*(this: var WxStaticBitmapBase) {.cdecl,
    importcpp: "#.~wxStaticBitmapBase()", header: wxh.}
proc setIcon*(this: var WxStaticBitmapBase; icon: WxIcon) {.cdecl,
    importcpp: "SetIcon", header: wxh.}
proc setBitmap*(this: var WxStaticBitmapBase; bitmap: WxBitmap) {.cdecl,
    importcpp: "SetBitmap", header: wxh.}
proc getBitmap*(this: WxStaticBitmapBase): WxBitmap {.noSideEffect, cdecl,
    importcpp: "GetBitmap", header: wxh.}
proc getIcon*(this: WxStaticBitmapBase): WxIcon {.noSideEffect, cdecl,
    importcpp: "GetIcon", header: wxh.}
proc acceptsFocus*(this: WxStaticBitmapBase): bool {.noSideEffect, cdecl,
    importcpp: "AcceptsFocus", header: wxh.}
proc hasTransparentBackground*(this: var WxStaticBitmapBase): bool {.cdecl,
    importcpp: "HasTransparentBackground", header: wxh.}
