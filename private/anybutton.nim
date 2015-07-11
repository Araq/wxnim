


const 
  wxBU_LEFT* = 0x00000040
  wxBU_TOP* = 0x00000080
  wxBU_RIGHT* = 0x00000100
  wxBU_BOTTOM* = 0x00000200
  wxBU_ALIGN_MASK* = (wxBU_LEFT or wxBU_TOP or wxBU_RIGHT or wxBU_BOTTOM)


const 
  wxBU_NOAUTODRAW* = 0x00000000
  wxBU_AUTODRAW* = 0x00000004


const 
  wxBU_EXACTFIT* = 0x00000001


const 
  wxBU_NOTEXT* = 0x00000002


type 
  WxAnyButtonBase* {.importcpp: "wxAnyButtonBase", header: wxh.} = object of WxControl
  

proc constructwxAnyButtonBase*(): WxAnyButtonBase {.cdecl, constructor, 
    importcpp: "wxAnyButtonBase(@)", header: wxh.}
proc setBitmap*(this: var WxAnyButtonBase; bitmap: WxBitmap; 
                dir: WxDirection = wxLEFT) {.cdecl, importcpp: "SetBitmap", 
    header: wxh.}
proc getBitmap*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}
proc setBitmapLabel*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapLabel", header: wxh.}
proc setBitmapPressed*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapPressed", header: wxh.}
proc setBitmapDisabled*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapDisabled", header: wxh.}
proc setBitmapCurrent*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapCurrent", header: wxh.}
proc setBitmapFocus*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapFocus", header: wxh.}
proc getBitmapLabel*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapLabel", header: wxh.}
proc getBitmapPressed*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapPressed", header: wxh.}
proc getBitmapDisabled*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapDisabled", header: wxh.}
proc getBitmapCurrent*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapCurrent", header: wxh.}
proc getBitmapFocus*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapFocus", header: wxh.}
proc setBitmapMargins*(this: var WxAnyButtonBase; x: WxCoord; y: WxCoord) {.
    cdecl, importcpp: "SetBitmapMargins", header: wxh.}
proc setBitmapMargins*(this: var WxAnyButtonBase; sz: WxSize) {.cdecl, 
    importcpp: "SetBitmapMargins", header: wxh.}
proc getBitmapMargins*(this: var WxAnyButtonBase): WxSize {.cdecl, 
    importcpp: "GetBitmapMargins", header: wxh.}
proc setBitmapPosition*(this: var WxAnyButtonBase; dir: WxDirection) {.cdecl, 
    importcpp: "SetBitmapPosition", header: wxh.}
proc shouldInheritColours*(this: WxAnyButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc getBitmapSelected*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapSelected", header: wxh.}
proc getBitmapHover*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapHover", header: wxh.}
proc setBitmapSelected*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapSelected", header: wxh.}
proc setBitmapHover*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapHover", header: wxh.}
type 
  State* {.size: sizeof(cint), importcpp: "wxAnyButtonBase::State", header: wxh.} = enum 
    StateNormal, StateCurrent, StatePressed, StateDisabled, StateFocused, 
    StateMax


proc dontShowLabel*(this: WxAnyButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "DontShowLabel", header: wxh.}
proc showsLabel*(this: WxAnyButtonBase): bool {.discardable, noSideEffect, 
    cdecl, importcpp: "ShowsLabel", header: wxh.}
type 
  WxAnyButton* = WxAnyButtonBase
