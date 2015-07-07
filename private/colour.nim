#///////////////////////////////////////////////////////////////////////////
# Name:        wx/colour.h
# Purpose:     wxColourBase definition
# Author:      Julian Smart
# Modified by: Francesco Montorsi
# Created:
# Copyright:   Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

discard "forward decl of wxColour"
# flags for wxColour -> wxString conversion (see wxColour::GetAsString)

const
  wxC2S_NAME* = 1             # return colour name, when possible
  wxC2S_CSS_SYNTAX* = 2       # return colour in rgb(r,g,b) syntax
  wxC2S_HTML_SYNTAX* = 4

var wxALPHA_TRANSPARENT* {.importcpp: "wxALPHA_TRANSPARENT", header: "wx.h".}: byte

var wxALPHA_OPAQUE* {.importcpp: "wxALPHA_OPAQUE", header: "wx.h".}: byte

# a valid but fully transparent colour

#const
#  wxTransparentColour* = wxColour(0, 0, 0, wxALPHA_TRANSPARENT)
#  wxTransparentColor* = wxTransparentColour

#-----------------------------------------------------------------------------
# wxColourBase: this class has no data members, just some functions to avoid
#               code redundancy in all native wxColour implementations
#-----------------------------------------------------------------------------

type
  WxColourBase* {.importcpp: "wxColourBase", header: "wx.h".} = object of WxObject
  ChannelType* = byte
type
  WxColour* {.importcpp: "wxColour", header: "wx.h".} = object of WxColourBase
    mIsInit* {.importc: "m_isInit".}: bool
    mRed* {.importc: "m_red".}: byte
    mBlue* {.importc: "m_blue".}: byte
    mGreen* {.importc: "m_green".}: byte
    mAlpha* {.importc: "m_alpha".}: byte

proc constructwxColourBase*(): WxColourBase {.constructor,
    importcpp: "wxColourBase(@)", header: "wx.h".}
proc destroywxColourBase*(this: var WxColourBase) {.
    importcpp: "#.~wxColourBase()", header: "wx.h".}
proc set*(this: var WxColourBase; red: ChannelType; green: ChannelType;
          blue: ChannelType; alpha: ChannelType = wxALPHA_OPAQUE) {.
    importcpp: "Set", header: "wx.h".}
proc set*(this: var WxColourBase; str: WxString): bool {.importcpp: "Set",
    header: "wx.h".}
proc set*(this: var WxColourBase; colRGB: culong) {.importcpp: "Set",
    header: "wx.h".}
proc red*(this: WxColourBase): ChannelType {.noSideEffect, importcpp: "Red",
    header: "wx.h".}
proc green*(this: WxColourBase): ChannelType {.noSideEffect, importcpp: "Green",
    header: "wx.h".}
proc blue*(this: WxColourBase): ChannelType {.noSideEffect, importcpp: "Blue",
    header: "wx.h".}
proc alpha*(this: WxColourBase): ChannelType {.noSideEffect, importcpp: "Alpha",
    header: "wx.h".}
proc getAsString*(this: WxColourBase;
                  flags: clong = wxC2S_NAME or wxC2S_CSS_SYNTAX): WxString {.
    noSideEffect, importcpp: "GetAsString", header: "wx.h".}
proc setRGB*(this: var WxColourBase; colRGB: uint32) {.importcpp: "SetRGB",
    header: "wx.h".}
proc setRGBA*(this: var WxColourBase; colRGBA: uint32) {.importcpp: "SetRGBA",
    header: "wx.h".}
proc getRGB*(this: WxColourBase): uint32 {.noSideEffect, importcpp: "GetRGB",
    header: "wx.h".}
proc getRGBA*(this: WxColourBase): uint32 {.noSideEffect,
    importcpp: "GetRGBA", header: "wx.h".}
proc isOk*(this: WxColourBase): bool {.noSideEffect, importcpp: "IsOk",
                                       header: "wx.h".}
proc ok*(this: WxColourBase): bool {.noSideEffect, importcpp: "Ok",
                                     header: "wx.h".}
proc makeMono*(r: ptr byte; g: ptr byte; b: ptr byte; on: bool) {.
    importcpp: "wxColourBase::MakeMono(@)", header: "wx.h".}
proc makeDisabled*(r: ptr byte; g: ptr byte; b: ptr byte;
                   brightness: byte = 255) {.
    importcpp: "wxColourBase::MakeDisabled(@)", header: "wx.h".}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte) {.
    importcpp: "wxColourBase::MakeGrey(@)", header: "wx.h".}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte; weightR: cdouble;
               weightG: cdouble; weightB: cdouble) {.
    importcpp: "wxColourBase::MakeGrey(@)", header: "wx.h".}
proc alphaBlend*(fg: byte; bg: byte; alpha: cdouble): byte {.
    importcpp: "wxColourBase::AlphaBlend(@)", header: "wx.h".}
proc changeLightness*(r: ptr byte; g: ptr byte; b: ptr byte; ialpha: cint) {.
    importcpp: "wxColourBase::ChangeLightness(@)", header: "wx.h".}
proc changeLightness*(this: WxColourBase; ialpha: cint): WxColour {.
    noSideEffect, importcpp: "ChangeLightness", header: "wx.h".}
proc makeDisabled*(this: var WxColourBase; brightness: byte = 255): var WxColour {.
    importcpp: "MakeDisabled", header: "wx.h".}


proc constructwxColour*(): WxColour {.constructor, importcpp: "wxColour(@)",
                                      header: "wx.h".}
proc constructwxColour*(red: ChannelType; green: ChannelType; blue: ChannelType;
                        alpha: ChannelType = wxALPHA_OPAQUE): WxColour {.
    constructor, importcpp: "wxColour(@)", header: "wx.h".}
proc constructwxColour*(colRGB: culong): WxColour {.constructor,
    importcpp: "wxColour(@)", header: "wx.h".}
proc constructwxColour*(colourName: WxString): WxColour {.constructor,
    importcpp: "wxColour(@)", header: "wx.h".}
proc constructwxColour*(colourName: cstring): WxColour {.constructor,
    importcpp: "wxColour(@)", header: "wx.h".}
proc isOk*(this: WxColour): bool {.noSideEffect, importcpp: "IsOk",
                                   header: "wx.h".}
proc red*(this: WxColour): byte {.noSideEffect, importcpp: "Red",
                                    header: "wx.h".}
proc green*(this: WxColour): byte {.noSideEffect, importcpp: "Green",
                                      header: "wx.h".}
proc blue*(this: WxColour): byte {.noSideEffect, importcpp: "Blue",
                                     header: "wx.h".}
proc alpha*(this: WxColour): byte {.noSideEffect, importcpp: "Alpha",
                                      header: "wx.h".}
proc `==`*(this: WxColour; colour: WxColour): bool {.noSideEffect,
    importcpp: "(# == #)", header: "wx.h".}
# wxColour <-> wxString utilities, used by wxConfig, defined in colourcmn.cpp

proc wxToString*(col: WxColourBase): WxString {.importcpp: "wxToString(@)",
    header: "wx.h".}
proc wxFromString*(str: WxString; col: ptr WxColourBase): bool {.
    importcpp: "wxFromString(@)", header: "wx.h".}

type
  WxColor* = WxColour
