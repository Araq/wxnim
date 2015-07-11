

discard "forward decl of wxColour"

const 
  wxC2S_NAME* = 1
  wxC2S_CSS_SYNTAX* = 2
  wxC2S_HTML_SYNTAX* = 4

var wxALPHA_TRANSPARENT* {.importcpp: "wxALPHA_TRANSPARENT", header: wxh.}: byte

var wxALPHA_OPAQUE* {.importcpp: "wxALPHA_OPAQUE", header: wxh.}: byte


template wxTransparentColour*(): expr = 
  constructWxColour(0, 0, 0, wxALPHA_TRANSPARENT)

template wxTransparentColor*(): expr = 
  constructWxColour(0, 0, 0, wxALPHA_TRANSPARENT)


type 
  WxColourBase* {.importcpp: "wxColourBase", header: wxh.} = object of WxObject
  
  ChannelType* = byte

proc constructwxColourBase*(): WxColourBase {.cdecl, constructor, 
    importcpp: "wxColourBase(@)", header: wxh.}
proc destroywxColourBase*(this: var WxColourBase) {.cdecl, 
    importcpp: "#.~wxColourBase()", header: wxh.}
proc set*(this: var WxColourBase; red: ChannelType; green: ChannelType; 
          blue: ChannelType; alpha: ChannelType = wxALPHA_OPAQUE) {.cdecl, 
    importcpp: "Set", header: wxh.}
proc set*(this: var WxColourBase; str: WxString): bool {.discardable, cdecl, 
    importcpp: "Set", header: wxh.}
proc set*(this: var WxColourBase; colRGB: culong) {.cdecl, importcpp: "Set", 
    header: wxh.}
proc red*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Red", header: wxh.}
proc green*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Green", header: wxh.}
proc blue*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Blue", header: wxh.}
proc alpha*(this: WxColourBase): ChannelType {.noSideEffect, cdecl, 
    importcpp: "Alpha", header: wxh.}
proc getAsString*(this: WxColourBase; 
                  flags: clong = wxC2S_NAME or wxC2S_CSS_SYNTAX): WxString {.
    noSideEffect, cdecl, importcpp: "GetAsString", header: wxh.}
proc setRGB*(this: var WxColourBase; colRGB: WxUint32) {.cdecl, 
    importcpp: "SetRGB", header: wxh.}
proc setRGBA*(this: var WxColourBase; colRGBA: WxUint32) {.cdecl, 
    importcpp: "SetRGBA", header: wxh.}
proc getRGB*(this: WxColourBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRGB", header: wxh.}
proc getRGBA*(this: WxColourBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetRGBA", header: wxh.}
proc isOk*(this: WxColourBase): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                       header: wxh.}
proc ok*(this: WxColourBase): bool {.noSideEffect, cdecl, importcpp: "Ok", 
                                     header: wxh.}
proc makeMono*(r: ptr byte; g: ptr byte; b: ptr byte; on: bool) {.cdecl, 
    importcpp: "wxColourBase::MakeMono(@)", header: wxh.}
proc makeDisabled*(r: ptr byte; g: ptr byte; b: ptr byte; brightness: byte = 255) {.
    cdecl, importcpp: "wxColourBase::MakeDisabled(@)", header: wxh.}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte) {.cdecl, 
    importcpp: "wxColourBase::MakeGrey(@)", header: wxh.}
proc makeGrey*(r: ptr byte; g: ptr byte; b: ptr byte; weightR: cdouble; 
               weightG: cdouble; weightB: cdouble) {.cdecl, 
    importcpp: "wxColourBase::MakeGrey(@)", header: wxh.}
proc alphaBlend*(fg: byte; bg: byte; alpha: cdouble): byte {.cdecl, 
    importcpp: "wxColourBase::AlphaBlend(@)", header: wxh.}
proc changeLightness*(r: ptr byte; g: ptr byte; b: ptr byte; ialpha: cint) {.
    cdecl, importcpp: "wxColourBase::ChangeLightness(@)", header: wxh.}
proc changeLightness*(this: WxColourBase; ialpha: cint): WxColour {.
    noSideEffect, cdecl, importcpp: "ChangeLightness", header: wxh.}
proc makeDisabled*(this: var WxColourBase; brightness: byte = 255): var WxColour {.
    cdecl, importcpp: "MakeDisabled", header: wxh.}
type 
  WxColour* {.importcpp: "wxColour", header: wxh.} = object of WxColourBase
  

proc constructwxColour*(): WxColour {.cdecl, constructor, 
                                      importcpp: "wxColour(@)", header: wxh.}
proc constructwxColour*(red: ChannelType; green: ChannelType; blue: ChannelType; 
                        alpha: ChannelType = wxALPHA_OPAQUE): WxColour {.cdecl, 
    constructor, importcpp: "wxColour(@)", header: wxh.}
proc constructwxColour*(colRGB: culong): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: wxh.}
proc constructwxColour*(colourName: WxString): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: wxh.}
proc constructwxColour*(colourName: cstring): WxColour {.cdecl, constructor, 
    importcpp: "wxColour(@)", header: wxh.}
proc isOk*(this: WxColour): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                   header: wxh.}
proc red*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Red", 
                                  header: wxh.}
proc green*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Green", 
                                    header: wxh.}
proc blue*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Blue", 
                                   header: wxh.}
proc alpha*(this: WxColour): byte {.noSideEffect, cdecl, importcpp: "Alpha", 
                                    header: wxh.}
proc `==`*(this: WxColour; colour: WxColour): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}

proc wxToString*(col: WxColourBase): WxString {.cdecl, 
    importcpp: "wxToString(@)", header: wxh.}
proc wxFromString*(str: WxString; col: ptr WxColourBase): bool {.cdecl, 
    importcpp: "wxFromString(@)", header: wxh.}
type 
  WxColor* = WxColour
