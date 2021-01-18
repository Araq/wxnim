


type
  WxStaticBitmap* {.importcpp: "wxStaticBitmap", header: wxh.} = object of WxStaticBitmapBase
  

proc constructwxStaticBitmap*(): WxStaticBitmap {.cdecl, constructor,
    importcpp: "wxStaticBitmap(@)", header: wxh.}
proc constructwxStaticBitmap*(parent: ptr WxWindow; id: WxWindowID; label: WxBitmap;
                             pos: WxPoint = wxDefaultPosition;
                             size: WxSize = wxDefaultSize; style: clong = 0;
                             name: WxString = wxStaticBitmapNameStr): WxStaticBitmap {.
    cdecl, constructor, importcpp: "wxStaticBitmap(@)", header: wxh.}
proc create*(this: var WxStaticBitmap; parent: ptr WxWindow; id: WxWindowID;
            label: WxBitmap; pos: WxPoint = wxDefaultPosition;
            size: WxSize = wxDefaultSize; style: clong = 0;
            name: WxString = wxStaticBitmapNameStr): bool {.cdecl,
    importcpp: "Create", header: wxh.}
proc setIcon*(this: var WxStaticBitmap; icon: WxIcon) {.cdecl, importcpp: "SetIcon",
    header: wxh.}
proc setBitmap*(this: var WxStaticBitmap; bitmap: WxBitmap) {.cdecl,
    importcpp: "SetBitmap", header: wxh.}
proc getBitmap*(this: WxStaticBitmap): WxBitmap {.noSideEffect, cdecl,
    importcpp: "GetBitmap", header: wxh.}
proc getIcon*(this: WxStaticBitmap): WxIcon {.noSideEffect, cdecl,
    importcpp: "GetIcon", header: wxh.}
#proc getClassDefaultAttributes*(variant: WxWindowVariant = wxWINDOW_VARIANT_NORMAL): WxVisualAttributes {.
#    cdecl, importcpp: "wxStaticBitmap::GetClassDefaultAttributes(@)", header: wxh.}