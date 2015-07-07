#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/bitmap.h
# Purpose:     wxBitmap class interface
# Author:      Vaclav Slavik
# Modified by:
# Created:     22.04.01
# Copyright:   (c) wxWidgets team
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# headers
# ----------------------------------------------------------------------------

discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
discard "forward decl of wxPalette"
discard "forward decl of wxDC"

type
  WxMaskBase* {.importcpp: "wxMaskBase", header: "wx.h".} = object of WxObject
  WxBitmapBase* {.importcpp: "wxBitmapBase", header: "wx.h".} = object of WxObject
  WxBitmapHelpers* {.importcpp: "wxBitmapHelpers", header: "wx.h".} = object of WxObject
  WxBitmapHandler* {.importcpp: "wxBitmapHandler", header: "wx.h".} = object of WxBitmapBase

  WxBitmap* {.importcpp: "wxBitmap", header: "wx.h".} = object of WxBitmapBase

  WxMask* {.importcpp: "wxMask", header: "wx.h".} = object of WxMaskBase

const
  wxUSE_BITMAP_BASE* = 1

# a more readable way to tell

const
  wxBITMAP_SCREEN_DEPTH* = (- 1)

# ----------------------------------------------------------------------------
# wxBitmapHelpers: container for various bitmap methods common to all ports.
# ----------------------------------------------------------------------------
# Unfortunately, currently wxBitmap does not inherit from wxBitmapBase on all
# platforms and this is not easy to fix. So we extract at least some common
# methods into this class from which both wxBitmapBase (and hence wxBitmap on
# all platforms where it does inherit from it) and wxBitmap in wxMSW and other
# exceptional ports (only wxPM and old wxCocoa) inherit.

proc newFromPNGData*(data: pointer; size: csize): WxBitmap {.
    importcpp: "wxBitmapHelpers::NewFromPNGData(@)", header: "wx.h".}
# All ports except wxMSW and wxOS2 use wxBitmapHandler and wxBitmapBase as
# base class for wxBitmapHandler; wxMSW and wxOS2 use wxGDIImageHandler as
# base class since it allows some code reuse there.

proc constructwxBitmapHandler*(): WxBitmapHandler {.constructor,
    importcpp: "wxBitmapHandler(@)", header: "wx.h".}
proc destroywxBitmapHandler*(this: var WxBitmapHandler) {.
    importcpp: "#.~wxBitmapHandler()", header: "wx.h".}
proc create*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; data: pointer;
             `type`: WxBitmapType; width: cint; height: cint; depth: cint = 1): bool {.
    importcpp: "Create", header: "wx.h".}
proc loadFile*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString;
               `type`: WxBitmapType; desiredWidth: cint; desiredHeight: cint): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString;
               `type`: WxBitmapType; palette: pointer = nil): bool {.
    noSideEffect, importcpp: "SaveFile", header: "wx.h".}
proc setName*(this: var WxBitmapHandler; name: WxString) {.importcpp: "SetName",
    header: "wx.h".}
proc setExtension*(this: var WxBitmapHandler; ext: WxString) {.
    importcpp: "SetExtension", header: "wx.h".}
proc setType*(this: var WxBitmapHandler; `type`: WxBitmapType) {.
    importcpp: "SetType", header: "wx.h".}
proc getName*(this: WxBitmapHandler): WxString {.noSideEffect,
    importcpp: "GetName", header: "wx.h".}
proc getExtension*(this: WxBitmapHandler): WxString {.noSideEffect,
    importcpp: "GetExtension", header: "wx.h".}
proc getType*(this: WxBitmapHandler): WxBitmapType {.noSideEffect,
    importcpp: "GetType", header: "wx.h".}
# ----------------------------------------------------------------------------
# wxBitmap: class which represents platform-dependent bitmap (unlike wxImage)
# ----------------------------------------------------------------------------

proc create*(this: var WxMaskBase; bitmap: WxBitmap; colour: WxColour): bool {.
    importcpp: "Create", header: "wx.h".}
proc create*(this: var WxMaskBase; bitmap: WxBitmap): bool {.
    importcpp: "Create", header: "wx.h".}

proc create*(this: var WxBitmapBase; width: cint; height: cint;
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.importcpp: "Create",
    header: "wx.h".}
proc create*(this: var WxBitmapBase; sz: WxSize;
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.importcpp: "Create",
    header: "wx.h".}
proc createScaled*(this: var WxBitmapBase; w: cint; h: cint; d: cint;
                   logicalScale: cdouble): bool {.importcpp: "CreateScaled",
    header: "wx.h".}
proc getHeight*(this: WxBitmapBase): cint {.noSideEffect,
    importcpp: "GetHeight", header: "wx.h".}
proc getWidth*(this: WxBitmapBase): cint {.noSideEffect, importcpp: "GetWidth",
    header: "wx.h".}
proc getDepth*(this: WxBitmapBase): cint {.noSideEffect, importcpp: "GetDepth",
    header: "wx.h".}
proc getSize*(this: WxBitmapBase): WxSize {.noSideEffect, importcpp: "GetSize",
    header: "wx.h".}
proc getScaleFactor*(this: WxBitmapBase): cdouble {.noSideEffect,
    importcpp: "GetScaleFactor", header: "wx.h".}
proc getScaledWidth*(this: WxBitmapBase): cdouble {.noSideEffect,
    importcpp: "GetScaledWidth", header: "wx.h".}
proc getScaledHeight*(this: WxBitmapBase): cdouble {.noSideEffect,
    importcpp: "GetScaledHeight", header: "wx.h".}
proc getScaledSize*(this: WxBitmapBase): WxSize {.noSideEffect,
    importcpp: "GetScaledSize", header: "wx.h".}

when false:
  proc convertToImage*(this: WxBitmapBase): WxImage {.noSideEffect,
      importcpp: "ConvertToImage", header: "wx.h".}
proc convertToDisabled*(this: WxBitmapBase; brightness: byte = 255): WxBitmap {.
    noSideEffect, importcpp: "ConvertToDisabled", header: "wx.h".}
proc getMask*(this: WxBitmapBase): ptr WxMask {.noSideEffect,
    importcpp: "GetMask", header: "wx.h".}
proc setMask*(this: var WxBitmapBase; mask: ptr WxMask) {.importcpp: "SetMask",
    header: "wx.h".}
proc getSubBitmap*(this: WxBitmapBase; rect: WxRect): WxBitmap {.noSideEffect,
    importcpp: "GetSubBitmap", header: "wx.h".}
proc saveFile*(this: WxBitmapBase; name: WxString; `type`: WxBitmapType;
               palette: pointer = nil): bool {.noSideEffect,
    importcpp: "SaveFile", header: "wx.h".}
proc loadFile*(this: var WxBitmapBase; name: WxString; `type`: WxBitmapType): bool {.
    importcpp: "LoadFile", header: "wx.h".}
when declared(WxIcon):
  proc copyFromIcon*(this: var WxBitmapBase; icon: WxIcon): bool {.
      importcpp: "CopyFromIcon", header: "wx.h".}
proc setHeight*(this: var WxBitmapBase; height: cint) {.importcpp: "SetHeight",
    header: "wx.h".}
proc setWidth*(this: var WxBitmapBase; width: cint) {.importcpp: "SetWidth",
    header: "wx.h".}
proc setDepth*(this: var WxBitmapBase; depth: cint) {.importcpp: "SetDepth",
    header: "wx.h".}
when false:
  proc getHandlers*(): var WxList {.inline,
                                    importcpp: "wxBitmapBase::GetHandlers(@)",
                                    header: "wx.h".}
proc addHandler*(handler: ptr WxBitmapHandler) {.
    importcpp: "wxBitmapBase::AddHandler(@)", header: "wx.h".}
proc insertHandler*(handler: ptr WxBitmapHandler) {.
    importcpp: "wxBitmapBase::InsertHandler(@)", header: "wx.h".}
proc removeHandler*(name: WxString): bool {.
    importcpp: "wxBitmapBase::RemoveHandler(@)", header: "wx.h".}
proc findHandler*(name: WxString): ptr WxBitmapHandler {.
    importcpp: "wxBitmapBase::FindHandler(@)", header: "wx.h".}
proc findHandler*(extension: WxString; bitmapType: WxBitmapType): ptr WxBitmapHandler {.
    importcpp: "wxBitmapBase::FindHandler(@)", header: "wx.h".}
proc findHandler*(bitmapType: WxBitmapType): ptr WxBitmapHandler {.
    importcpp: "wxBitmapBase::FindHandler(@)", header: "wx.h".}
proc cleanUpHandlers*() {.importcpp: "wxBitmapBase::CleanUpHandlers(@)",
                          header: "wx.h".}
proc quantizeColour*(this: WxBitmapBase; colour: WxColour): WxColour {.
    noSideEffect, importcpp: "QuantizeColour", header: "wx.h".}
discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxBitmapRefData"
discard "forward decl of wxControl"
discard "forward decl of wxCursor"
discard "forward decl of wxDC"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
discard "forward decl of wxPalette"
discard "forward decl of wxPixelDataBase"
type
  WxBitmapTransparency* = enum
    wxBitmapTransparencyAuto, # default: copy alpha if the source has it
    wxBitmapTransparencyNone, # never create alpha
    wxBitmapTransparencyAlways # always use alpha


# ----------------------------------------------------------------------------
# wxBitmap: a mono or colour bitmap
# NOTE: for wxMSW we don't use the wxBitmapBase base class declared in bitmap.h!
# ----------------------------------------------------------------------------

proc constructwxBitmap*(): WxBitmap {.constructor, importcpp: "wxBitmap(@)",
                                      header: "wx.h".}
proc constructwxBitmap*(bits: ptr char; width: cint; height: cint;
                        depth: cint = 1): WxBitmap {.constructor,
    importcpp: "wxBitmap(@)", header: "wx.h".}
proc constructwxBitmap*(data: cstringArray): WxBitmap {.constructor,
    importcpp: "wxBitmap(@)", header: "wx.h".}
proc constructwxBitmap*(name: WxString;
                        `type`: WxBitmapType): WxBitmap {.
    constructor, importcpp: "wxBitmap(@)", header: "wx.h".}
proc constructwxBitmap*(data: pointer; `type`: WxBitmapType; width: cint;
                        height: cint; depth: cint = 1): WxBitmap {.constructor,
    importcpp: "wxBitmap(@)", header: "wx.h".}
proc constructwxBitmap*(width: cint; height: cint; depth: cint = - 1): WxBitmap {.
    constructor, importcpp: "wxBitmap(@)", header: "wx.h".}
proc constructwxBitmap*(sz: WxSize; depth: cint = - 1): WxBitmap {.constructor,
    importcpp: "wxBitmap(@)", header: "wx.h".}

when false:
  proc constructwxBitmap*(width: cint; height: cint; dc: WxDC): WxBitmap {.
      constructor, importcpp: "wxBitmap(@)", header: "wx.h".}
  proc constructwxBitmap*(icon: WxIcon;
                          transp: WxBitmapTransparency = wxBitmapTransparencyAuto): WxBitmap {.
      constructor, importcpp: "wxBitmap(@)", header: "wx.h".}
  proc getSubBitmapOfHDC*(this: WxBitmap; rect: WxRect; hdc: Wxhdc): WxBitmap {.
      noSideEffect, importcpp: "GetSubBitmapOfHDC", header: "wx.h".}
  proc copyFromIcon*(this: var WxBitmap; icon: WxIcon;
                     transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
      importcpp: "CopyFromIcon", header: "wx.h".}
  proc copyFromCursor*(this: var WxBitmap; cursor: WxCursor;
                       transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
      importcpp: "CopyFromCursor", header: "wx.h".}
  proc create*(this: var WxBitmap; width: cint; height: cint; dc: WxDC): bool {.
      importcpp: "Create", header: "wx.h".}

proc destroywxBitmap*(this: var WxBitmap) {.importcpp: "#.~wxBitmap()",
    header: "wx.h".}
proc getSubBitmap*(this: WxBitmap; rect: WxRect): WxBitmap {.noSideEffect,
    importcpp: "GetSubBitmap", header: "wx.h".}
proc create*(this: var WxBitmap; width: cint; height: cint;
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.importcpp: "Create",
    header: "wx.h".}
proc create*(this: var WxBitmap; sz: WxSize; depth: cint): bool {.
    importcpp: "Create", header: "wx.h".}
proc create*(this: var WxBitmap; data: pointer; `type`: WxBitmapType;
             width: cint; height: cint; depth: cint = 1): bool {.
    importcpp: "Create", header: "wx.h".}
proc createScaled*(this: var WxBitmap; w: cint; h: cint; d: cint;
                   logicalScale: cdouble): bool {.importcpp: "CreateScaled",
    header: "wx.h".}
proc loadFile*(this: var WxBitmap; name: WxString;
               `type`: WxBitmapType): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: WxBitmap; name: WxString; `type`: WxBitmapType;
               cmap: pointer = nil): bool {.noSideEffect,
    importcpp: "SaveFile", header: "wx.h".}
when false:
  proc getBitmapData*(this: WxBitmap): ptr WxBitmapRefData {.noSideEffect,
      importcpp: "GetBitmapData", header: "wx.h".}
  proc getRawData*(this: var WxBitmap; data: var WxPixelDataBase; bpp: cint): pointer {.
      importcpp: "GetRawData", header: "wx.h".}
  proc ungetRawData*(this: var WxBitmap; data: var WxPixelDataBase) {.
      importcpp: "UngetRawData", header: "wx.h".}
  proc getMask*(this: WxBitmap): ptr WxMask {.noSideEffect, importcpp: "GetMask",
      header: "wx.h".}
  proc setMask*(this: var WxBitmap; mask: ptr WxMask) {.importcpp: "SetMask",
      header: "wx.h".}
  proc hasAlpha*(this: WxBitmap): bool {.noSideEffect, importcpp: "HasAlpha",
                                         header: "wx.h".}
  proc useAlpha*(this: var WxBitmap) {.importcpp: "UseAlpha", header: "wx.h".}
  proc resetAlpha*(this: var WxBitmap) {.importcpp: "ResetAlpha", header: "wx.h".}
  proc getScaleFactor*(this: WxBitmap): cdouble {.noSideEffect,
      importcpp: "GetScaleFactor", header: "wx.h".}
  proc getScaledWidth*(this: WxBitmap): cdouble {.noSideEffect,
      importcpp: "GetScaledWidth", header: "wx.h".}
  proc getScaledHeight*(this: WxBitmap): cdouble {.noSideEffect,
      importcpp: "GetScaledHeight", header: "wx.h".}
  proc getScaledSize*(this: WxBitmap): WxSize {.noSideEffect,
      importcpp: "GetScaledSize", header: "wx.h".}
  proc mSWUpdateAlpha*(this: var WxBitmap) {.importcpp: "MSWUpdateAlpha",
      header: "wx.h".}
  proc setHBITMAP*(this: var WxBitmap; bmp: Wxhbitmap) {.importcpp: "SetHBITMAP",
      header: "wx.h".}
  proc getHBITMAP*(this: WxBitmap): Wxhbitmap {.noSideEffect,
      importcpp: "GetHBITMAP", header: "wx.h".}
  proc setSelectedInto*(this: var WxBitmap; dc: ptr WxDC) {.
      importcpp: "SetSelectedInto", header: "wx.h".}
  proc getSelectedInto*(this: WxBitmap): ptr WxDC {.noSideEffect,
      importcpp: "GetSelectedInto", header: "wx.h".}


  proc constructwxMask*(): WxMask {.constructor, importcpp: "wxMask(@)",
                                    header: "wx.h".}
  proc constructwxMask*(mask: WxMask): WxMask {.constructor,
      importcpp: "wxMask(@)", header: "wx.h".}
  proc constructwxMask*(bitmap: WxBitmap; colour: WxColour): WxMask {.constructor,
      importcpp: "wxMask(@)", header: "wx.h".}
  proc constructwxMask*(bitmap: WxBitmap; paletteIndex: cint): WxMask {.
      constructor, importcpp: "wxMask(@)", header: "wx.h".}
  proc constructwxMask*(bitmap: WxBitmap): WxMask {.constructor,
      importcpp: "wxMask(@)", header: "wx.h".}
  proc constructwxMask*(hbmp: Wxhbitmap): WxMask {.constructor,
      importcpp: "wxMask(@)", header: "wx.h".}
  proc destroywxMask*(this: var WxMask) {.importcpp: "#.~wxMask()", header: "wx.h".}
  proc create*(this: var WxMask; bitmap: WxBitmap; colour: WxColour): bool {.
      importcpp: "Create", header: "wx.h".}
  proc create*(this: var WxMask; bitmap: WxBitmap; paletteIndex: cint): bool {.
      importcpp: "Create", header: "wx.h".}
  proc create*(this: var WxMask; bitmap: WxBitmap): bool {.importcpp: "Create",
      header: "wx.h".}
  proc getBitmap*(this: WxMask): WxBitmap {.noSideEffect, importcpp: "GetBitmap",
      header: "wx.h".}
  proc getMaskBitmap*(this: WxMask): Wxhbitmap {.noSideEffect,
      importcpp: "GetMaskBitmap", header: "wx.h".}
  proc setMaskBitmap*(this: var WxMask; bmp: Wxhbitmap) {.
      importcpp: "SetMaskBitmap", header: "wx.h".}

  proc constructwxBitmapHandler*(): WxBitmapHandler {.constructor,
      importcpp: "wxBitmapHandler(@)", header: "wx.h".}
  proc constructwxBitmapHandler*(name: WxString; ext: WxString;
                                 `type`: WxBitmapType): WxBitmapHandler {.
      constructor, importcpp: "wxBitmapHandler(@)", header: "wx.h".}
  proc create*(this: var WxBitmapHandler; image: ptr WxGDIImage; data: pointer;
               `type`: WxBitmapType; width: cint; height: cint; depth: cint = 1): bool {.
      importcpp: "Create", header: "wx.h".}
  proc load*(this: var WxBitmapHandler; image: ptr WxGDIImage; name: WxString;
             `type`: WxBitmapType; desiredWidth: cint; desiredHeight: cint): bool {.
      importcpp: "Load", header: "wx.h".}
  proc save*(this: WxBitmapHandler; image: ptr WxGDIImage; name: WxString;
             `type`: WxBitmapType): bool {.noSideEffect, importcpp: "Save",
      header: "wx.h".}
  proc create*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; data: pointer;
               `type`: WxBitmapType; width: cint; height: cint; depth: cint = 1): bool {.
      importcpp: "Create", header: "wx.h".}
  proc loadFile*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString;
                 `type`: WxBitmapType; desiredWidth: cint; desiredHeight: cint): bool {.
      importcpp: "LoadFile", header: "wx.h".}
  proc saveFile*(this: WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString;
                 `type`: WxBitmapType; palette: pointer = nil): bool {.
      noSideEffect, importcpp: "SaveFile", header: "wx.h".}
