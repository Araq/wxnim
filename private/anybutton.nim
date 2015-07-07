#///////////////////////////////////////////////////////////////////////////
# Name:        wx/anybutton.h
# Purpose:     wxAnyButtonBase class
# Author:      Vadim Zetlin
# Created:     2000-08-15 (extracted from button.h)
# Copyright:   (c) Vadim Zetlin
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxAnyButton specific flags
# ----------------------------------------------------------------------------
# These flags affect label alignment

const 
  wxBU_LEFT* = 0x00000040
  wxBU_TOP* = 0x00000080
  wxBU_RIGHT* = 0x00000100
  wxBU_BOTTOM* = 0x00000200
  wxBU_ALIGN_MASK* = (wxBU_LEFT or wxBU_TOP or wxBU_RIGHT or wxBU_BOTTOM)

# These two flags are obsolete

const 
  wxBU_NOAUTODRAW* = 0x00000000
  wxBU_AUTODRAW* = 0x00000004

# by default, the buttons will be created with some (system dependent)
# minimal size to make them look nicer, giving this style will make them as
# small as possible

const 
  wxBU_EXACTFIT* = 0x00000001

# this flag can be used to disable using the text label in the button: it is
# mostly useful when creating buttons showing bitmap and having stock id as
# without it both the standard label corresponding to the stock id and the
# bitmap would be shown

const 
  wxBU_NOTEXT* = 0x00000002

# ----------------------------------------------------------------------------
# wxAnyButton: common button functionality
# ----------------------------------------------------------------------------

type 
  WxAnyButtonBase* {.importcpp: "wxAnyButtonBase", header: "wx.h".} = object of WxControl # 
                                                                                          # choose 
                                                                                          # the 
                                                                                          # default 
                                                                                          # border 
                                                                                          # for 
                                                                                          # this 
                                                                                          # window
  

proc constructwxAnyButtonBase*(): WxAnyButtonBase {.constructor, 
    importcpp: "wxAnyButtonBase(@)", header: "wx.h".}
proc setBitmap*(this: var WxAnyButtonBase; bitmap: WxBitmap; 
                dir: WxDirection = wxLEFT) {.importcpp: "SetBitmap", 
    header: "wx.h".}
proc getBitmap*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmap", header: "wx.h".}
proc setBitmapLabel*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapLabel", header: "wx.h".}
proc setBitmapPressed*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapPressed", header: "wx.h".}
proc setBitmapDisabled*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapDisabled", header: "wx.h".}
proc setBitmapCurrent*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapCurrent", header: "wx.h".}
proc setBitmapFocus*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapFocus", header: "wx.h".}
proc getBitmapLabel*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapLabel", header: "wx.h".}
proc getBitmapPressed*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapPressed", header: "wx.h".}
proc getBitmapDisabled*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapDisabled", header: "wx.h".}
proc getBitmapCurrent*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapCurrent", header: "wx.h".}
proc getBitmapFocus*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapFocus", header: "wx.h".}
proc setBitmapMargins*(this: var WxAnyButtonBase; x: WxCoord; y: WxCoord) {.
    importcpp: "SetBitmapMargins", header: "wx.h".}
proc setBitmapMargins*(this: var WxAnyButtonBase; sz: WxSize) {.
    importcpp: "SetBitmapMargins", header: "wx.h".}
proc getBitmapMargins*(this: var WxAnyButtonBase): WxSize {.
    importcpp: "GetBitmapMargins", header: "wx.h".}
proc setBitmapPosition*(this: var WxAnyButtonBase; dir: WxDirection) {.
    importcpp: "SetBitmapPosition", header: "wx.h".}
proc shouldInheritColours*(this: WxAnyButtonBase): bool {.noSideEffect, 
    importcpp: "ShouldInheritColours", header: "wx.h".}
proc getBitmapSelected*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapSelected", header: "wx.h".}
proc getBitmapHover*(this: WxAnyButtonBase): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmapHover", header: "wx.h".}
proc setBitmapSelected*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapSelected", header: "wx.h".}
proc setBitmapHover*(this: var WxAnyButtonBase; bitmap: WxBitmap) {.
    importcpp: "SetBitmapHover", header: "wx.h".}
type 
  State* = enum 
    StateNormal, StateCurrent, # a.k.a. hot or "hovering"
    StatePressed,             # a.k.a. "selected" in public API for some reason
    StateDisabled, StateFocused, StateMax


proc dontShowLabel*(this: WxAnyButtonBase): bool {.noSideEffect, 
    importcpp: "DontShowLabel", header: "wx.h".}
proc showsLabel*(this: WxAnyButtonBase): bool {.noSideEffect, 
    importcpp: "ShowsLabel", header: "wx.h".}
type 
  WxAnyButton* = WxAnyButtonBase
