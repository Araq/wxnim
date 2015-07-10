


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
  WxAnyButtonBase* {.importcpp: "wxAnyButtonBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxAnyButtonBase*(): WxAnyButtonBase {.cdecl, constructor, 
    importcpp: "wxAnyButtonBase(@)", header: "<wx/wx.h>".}
proc setBitmap*(this: var WxAnyButtonBase; bitmap: WxBitmap; 
                dir: WxDirection = wxLEFT) {.cdecl, importcpp: "SetBitmap", 
    header: "<wx/wx.h>".}
proc getBitmap*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "<wx/wx.h>".}
proc setBitmapLabel*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapLabel", header: "<wx/wx.h>".}
proc setBitmapPressed*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapPressed", header: "<wx/wx.h>".}
proc setBitmapDisabled*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapDisabled", header: "<wx/wx.h>".}
proc setBitmapCurrent*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapCurrent", header: "<wx/wx.h>".}
proc setBitmapFocus*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapFocus", header: "<wx/wx.h>".}
proc getBitmapLabel*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapLabel", header: "<wx/wx.h>".}
proc getBitmapPressed*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapPressed", header: "<wx/wx.h>".}
proc getBitmapDisabled*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapDisabled", header: "<wx/wx.h>".}
proc getBitmapCurrent*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapCurrent", header: "<wx/wx.h>".}
proc getBitmapFocus*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapFocus", header: "<wx/wx.h>".}
proc setBitmapMargins*(this: var WxAnyButtonBase; x: WxCoord; y: WxCoord) {.
    cdecl, importcpp: "SetBitmapMargins", header: "<wx/wx.h>".}
proc setBitmapMargins*(this: var WxAnyButtonBase; sz: WxSize) {.cdecl, 
    importcpp: "SetBitmapMargins", header: "<wx/wx.h>".}
proc getBitmapMargins*(this: var WxAnyButtonBase): WxSize {.cdecl, 
    importcpp: "GetBitmapMargins", header: "<wx/wx.h>".}
proc setBitmapPosition*(this: var WxAnyButtonBase; dir: WxDirection) {.cdecl, 
    importcpp: "SetBitmapPosition", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxAnyButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc getBitmapSelected*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapSelected", header: "<wx/wx.h>".}
proc getBitmapHover*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapHover", header: "<wx/wx.h>".}
proc setBitmapSelected*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapSelected", header: "<wx/wx.h>".}
proc setBitmapHover*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmapHover", header: "<wx/wx.h>".}
type 
  State* {.size: sizeof(cint), importcpp: "wxAnyButtonBase::State", 
           header: "<wx/wx.h>".} = enum 
    StateNormal, StateCurrent, StatePressed, StateDisabled, StateFocused, 
    StateMax


proc dontShowLabel*(this: WxAnyButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "DontShowLabel", header: "<wx/wx.h>".}
proc showsLabel*(this: WxAnyButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShowsLabel", header: "<wx/wx.h>".}
type 
  WxAnyButton* = WxAnyButtonBase
