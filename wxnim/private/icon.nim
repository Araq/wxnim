


var wxICON_DEFAULT_TYPE* {.importcpp: "wxICON_DEFAULT_TYPE", header: wxh.}: WxBitmapType

type 
  WxIcon* {.importcpp: "wxIcon", header: wxh.} = object of WxBitmap
  

proc constructwxIcon*(): WxIcon {.cdecl, constructor, importcpp: "wxIcon(@)", 
                                  header: wxh.}
proc constructwxIcon*(bits: cstringArray): WxIcon {.cdecl, constructor, 
    importcpp: "wxIcon(@)", header: wxh.}
proc constructwxIcon*(filename: WxString; 
                      `type`: WxBitmapType = wxICON_DEFAULT_TYPE; 
                      desiredWidth: cint = - 1; desiredHeight: cint = - 1): WxIcon {.
    cdecl, constructor, importcpp: "wxIcon(@)", header: wxh.}
proc loadFile*(this: var WxIcon; name: WxString; flags: WxBitmapType; 
               desiredWidth: cint; desiredHeight: cint): bool {.cdecl, 
    importcpp: "LoadFile", header: wxh.}
proc loadFile*(this: var WxIcon; name: WxString; 
               flags: WxBitmapType = wxICON_DEFAULT_TYPE): bool {.cdecl, 
    importcpp: "LoadFile", header: wxh.}
proc copyFromBitmap*(this: var WxIcon; bmp: WxBitmap) {.cdecl, 
    importcpp: "CopyFromBitmap", header: wxh.}