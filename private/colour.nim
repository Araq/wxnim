

discard "forward decl of wxColour"

const 
  wxC2S_NAME* = 1
  wxC2S_CSS_SYNTAX* = 2
  wxC2S_HTML_SYNTAX* = 4

var wxALPHA_TRANSPARENT* {.importcpp: "wxALPHA_TRANSPARENT", header: "<wx/wx.h>".}: byte

var wxALPHA_OPAQUE* {.importcpp: "wxALPHA_OPAQUE", header: "<wx/wx.h>".}: byte


template wxTransparentColour*(): expr = 
  constructWxColour(0, 0, 0, wxALPHA_TRANSPARENT)

template wxTransparentColor*(): expr = 
  constructWxColour(0, 0, 0, wxALPHA_TRANSPARENT)


type 
  WxColourBase* {.importcpp: "wxColourBase", header: "<wx/wx.h>".} = object of WxObject
  
  ChannelType* = byte

proc constructwxColourBase*(): WxColourBase {.cdecl, constructor, 
    importcpp: "wxColourBase(@)", header: "<wx/wx.h>".}
proc destroywxColourBase*(this: var WxColourBase) {.cdecl, 
    importcpp: "#.~wxColourBase()", header: "<wx/wx.h>".}
proc set*(this: var WxColourBase; red: ChannelType; green: ChannelType; 
          blue: ChannelType; alpha: ChannelType = wxALPHA_OPAQUE) {.cdecl, 
    importcpp: "Set", header: "<wx/wx.h>".}
proc set*(this: var WxColourBase; str: WxString): bool {.cdecl, 
    importcpp: "Set", header: "<wx/wx.h>".}
proc set*(this: var WxColourBase; colRGB: culong) {.cdecl, importcpp: "Set", 
    header: "<wx/wx.h>".}
proc red*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Red", header: "<wx/wx.h>".}
proc green*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Green", header: "<wx/wx.h>".}
proc blue*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Blue", header: "<wx/wx.h>".}
proc alpha*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Alpha", header: "<wx/wx.h>".}
proc getAsString*(this: WxColourBase; 
                  flags: clong = wxC2S_NAME or wxC2S_CSS_SYNTAX): WxString {.
    noSideEffect, cdecl, importcpp: "GetAsString", header: "<wx/wx.h>".}
proc setRGB*(this: var WxColourBase; colRGB: WxUint32) {.cdecl, 
    importcpp: "SetRGB", header: "<wx/wx.h>".}
proc setRGBA*(this: var WxColourBase; colRGBA: WxUint32) {.cdecl, 
    importcpp: "SetRGBA", header: "<wx/wx.h>".}
proc getRGB*(this: WxColourBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRGB", header: "<wx/wx.h>".}
proc getRGBA*(this: WxColourBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRGBA", header: "<wx/wx.h>".}
proc isOk*(this: WxColourBase): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                       header: "<wx/wx.h>".}
proc ok*(this: WxColourBase): bool {.noSideEffect, cdecl, importcpp: "Ok", 
                                     header: "<wx/wx.h>".}
proc makeMono*(r: ptr byte; g: ptr byte; b: ptr byte; on: bool) {.cdecl, 
    importcpp: "wxColourBase::MakeMono(@)", header: "<wx/wx.h>".}
proc makeDisabled*(r: ptr byte; g: ptr byte; b: ptr byte; brightness: byte = 255) {.
    cdecl, importcpp: "wxColourBase::MakeDisabled(@)", header: "<wx/wx.h>".}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte) {.cdecl, 
    importcpp: "wxColourBase::MakeGrey(@)", header: "<wx/wx.h>".}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte; weightR: cdouble; 
               weightG: cdouble; weightB: cdouble) {.cdecl, 
    importcpp: "wxColourBase::MakeGrey(@)", header: "<wx/wx.h>".}
proc alphaBlend*(fg: byte; bg: byte; alpha: cdouble): byte {.cdecl, 
    importcpp: "wxColourBase::AlphaBlend(@)", header: "<wx/wx.h>".}
proc changeLightness*(r: ptr byte; g: ptr byte; b: ptr byte; ialpha: cint) {.
    cdecl, importcpp: "wxColourBase::ChangeLightness(@)", header: "<wx/wx.h>".}
proc changeLightness*(this: WxColourBase; ialpha: cint): WxColour {.
    noSideEffect, cdecl, importcpp: "ChangeLightness", header: "<wx/wx.h>".}
proc makeDisabled*(this: var WxColourBase; brightness: byte = 255): var WxColour {.
    cdecl, importcpp: "MakeDisabled", header: "<wx/wx.h>".}
type 
  WxColour* {.importcpp: "wxColour", header: "<wx/wx.h>".} = object of WxColourBase
  

proc constructwxColour*(): WxColour {.cdecl, constructor, 
                                      importcpp: "wxColour(@)", 
                                      header: "<wx/wx.h>".}
proc constructwxColour*(red: ChannelType; green: ChannelType; blue: ChannelType; 
                        alpha: ChannelType = wxALPHA_OPAQUE): WxColour {.cdecl, 
    constructor, importcpp: "wxColour(@)", header: "<wx/wx.h>".}
proc constructwxColour*(colRGB: culong): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: "<wx/wx.h>".}
proc constructwxColour*(colourName: WxString): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: "<wx/wx.h>".}
proc constructwxColour*(colourName: cstring): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: "<wx/wx.h>".}
proc isOk*(this: WxColour): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                   header: "<wx/wx.h>".}
proc red*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Red", 
                                  header: "<wx/wx.h>".}
proc green*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Green", 
                                    header: "<wx/wx.h>".}
proc blue*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Blue", 
                                   header: "<wx/wx.h>".}
proc alpha*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Alpha", 
                                    header: "<wx/wx.h>".}
proc `==`*(this: WxColour; colour: WxColour): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}

proc wxToString*(col: WxColourBase): WxString {.cdecl, 
    importcpp: "wxToString(@)", header: "<wx/wx.h>".}
proc wxFromString*(str: WxString; col: ptr WxColourBase): bool {.cdecl, 
    importcpp: "wxFromString(@)", header: "<wx/wx.h>".}
type 
  WxColor* = WxColour
