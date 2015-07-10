


var wxBITMAP_DEFAULT_TYPE* {.importcpp: "wxBITMAP_DEFAULT_TYPE", 
                             header: "<wx/wx.h>".}: WxBitmapType

discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
discard "forward decl of wxPalette"
discard "forward decl of wxDC"
type 
  WxMaskBase* {.importcpp: "wxMaskBase", header: "<wx/wx.h>".} = object of WxObject
  

proc create*(this: var WxMaskBase; bitmap: WxBitmap; colour: WxColour): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxMaskBase; bitmap: WxBitmap): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
const 
  wxUSE_BITMAP_BASE* = 1


const 
  wxBITMAP_SCREEN_DEPTH* = (- 1)


type 
  WxBitmapHelpers* {.importcpp: "wxBitmapHelpers", header: "<wx/wx.h>".} = object 
  

proc newFromPNGData*(data: pointer; size: csize): WxBitmap {.cdecl, 
    importcpp: "wxBitmapHelpers::NewFromPNGData(@)", header: "<wx/wx.h>".}


type 
  WxBitmapHandler* {.importcpp: "wxBitmapHandler", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxBitmapHandler*(): WxBitmapHandler {.cdecl, constructor, 
    importcpp: "wxBitmapHandler(@)", header: "<wx/wx.h>".}
proc destroywxBitmapHandler*(this: var WxBitmapHandler) {.cdecl, 
    importcpp: "#.~wxBitmapHandler()", header: "<wx/wx.h>".}
proc create*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; data: pointer; 
             `type`: WxBitmapType; width: cint; height: cint; depth: cint = 1): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc loadFile*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString; 
               `type`: WxBitmapType; desiredWidth: cint; desiredHeight: cint): bool {.
    cdecl, importcpp: "LoadFile", header: "<wx/wx.h>".}
proc saveFile*(this: WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString; 
               `type`: WxBitmapType; palette: ptr WxPalette = nil): bool {.
    noSideEffect, cdecl, importcpp: "SaveFile", header: "<wx/wx.h>".}
proc setName*(this: var WxBitmapHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc setExtension*(this: var WxBitmapHandler; ext: WxString) {.cdecl, 
    importcpp: "SetExtension", header: "<wx/wx.h>".}
proc setType*(this: var WxBitmapHandler; `type`: WxBitmapType) {.cdecl, 
    importcpp: "SetType", header: "<wx/wx.h>".}
proc getName*(this: WxBitmapHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc getExtension*(this: WxBitmapHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: "<wx/wx.h>".}
proc getType*(this: WxBitmapHandler): WxBitmapType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "<wx/wx.h>".}

type 
  WxBitmapBase* {.importcpp: "wxBitmapBase", header: "<wx/wx.h>".} = object of WxObject
  

proc create*(this: var WxBitmapBase; width: cint; height: cint; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxBitmapBase; sz: WxSize; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc createScaled*(this: var WxBitmapBase; w: cint; h: cint; d: cint; 
                   logicalScale: cdouble): bool {.cdecl, 
    importcpp: "CreateScaled", header: "<wx/wx.h>".}
proc getHeight*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetHeight", header: "<wx/wx.h>".}
proc getWidth*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc getDepth*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetDepth", header: "<wx/wx.h>".}
proc getSize*(this: WxBitmapBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc getScaleFactor*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaleFactor", header: "<wx/wx.h>".}
proc getScaledWidth*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledWidth", header: "<wx/wx.h>".}
proc getScaledHeight*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledHeight", header: "<wx/wx.h>".}
proc getScaledSize*(this: WxBitmapBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetScaledSize", header: "<wx/wx.h>".}
proc convertToImage*(this: WxBitmapBase): WxImage {.noSideEffect, cdecl, 
    importcpp: "ConvertToImage", header: "<wx/wx.h>".}
proc convertToDisabled*(this: WxBitmapBase; brightness: byte = 255): WxBitmap {.
    noSideEffect, cdecl, importcpp: "ConvertToDisabled", header: "<wx/wx.h>".}
proc getMask*(this: WxBitmapBase): ptr WxMask {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: "<wx/wx.h>".}
proc setMask*(this: var WxBitmapBase; mask: ptr WxMask) {.cdecl, 
    importcpp: "SetMask", header: "<wx/wx.h>".}
proc getSubBitmap*(this: WxBitmapBase; rect: WxRect): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetSubBitmap", header: "<wx/wx.h>".}
proc saveFile*(this: WxBitmapBase; name: WxString; `type`: WxBitmapType; 
               palette: ptr WxPalette = nil): bool {.noSideEffect, cdecl, 
    importcpp: "SaveFile", header: "<wx/wx.h>".}
proc loadFile*(this: var WxBitmapBase; name: WxString; `type`: WxBitmapType): bool {.
    cdecl, importcpp: "LoadFile", header: "<wx/wx.h>".}
proc copyFromIcon*(this: var WxBitmapBase; icon: WxIcon): bool {.cdecl, 
    importcpp: "CopyFromIcon", header: "<wx/wx.h>".}
proc setHeight*(this: var WxBitmapBase; height: cint) {.cdecl, 
    importcpp: "SetHeight", header: "<wx/wx.h>".}
proc setWidth*(this: var WxBitmapBase; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc setDepth*(this: var WxBitmapBase; depth: cint) {.cdecl, 
    importcpp: "SetDepth", header: "<wx/wx.h>".}
proc quantizeColour*(this: WxBitmapBase; colour: WxColour): WxColour {.
    noSideEffect, cdecl, importcpp: "QuantizeColour", header: "<wx/wx.h>".}
discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxControl"
discard "forward decl of wxCursor"
discard "forward decl of wxDC"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
type 
  WxPalette* {.importcpp: "wxPalette", header: "<wx/wx.h>".} = object 
  
  WxPixelDataBase* {.importcpp: "wxPixelDataBase", header: "<wx/wx.h>".} = object 
  


type 
  WxBitmapTransparency* {.size: sizeof(cint), 
                          importcpp: "wxMask::wxBitmapTransparency", 
                          header: "<wx/wx.h>".} = enum 
    wxBitmapTransparencyAuto, wxBitmapTransparencyNone, 
    wxBitmapTransparencyAlways



type 
  WxBitmap* {.importcpp: "wxBitmap", header: "<wx/wx.h>".} = object of WxImage
  

proc constructwxBitmap*(): WxBitmap {.cdecl, constructor, 
                                      importcpp: "wxBitmap(@)", 
                                      header: "<wx/wx.h>".}
proc constructwxBitmap*(bits: ptr char; width: cint; height: cint; 
                        depth: cint = 1): WxBitmap {.cdecl, constructor, 
    importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(data: cstringArray): WxBitmap {.cdecl, constructor, 
    importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(name: WxString; 
                        `type`: WxBitmapType = wxBITMAP_DEFAULT_TYPE): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(data: pointer; `type`: WxBitmapType; width: cint; 
                        height: cint; depth: cint = 1): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(width: cint; height: cint; depth: cint = - 1): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(sz: WxSize; depth: cint = - 1): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(width: cint; height: cint; dc: WxDC): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc constructwxBitmap*(icon: WxIcon; 
                        transp: WxBitmapTransparency = wxBitmapTransparencyAuto): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: "<wx/wx.h>".}
proc destroywxBitmap*(this: var WxBitmap) {.cdecl, importcpp: "#.~wxBitmap()", 
    header: "<wx/wx.h>".}
proc getSubBitmap*(this: WxBitmap; rect: WxRect): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetSubBitmap", header: "<wx/wx.h>".}
proc copyFromIcon*(this: var WxBitmap; icon: WxIcon; 
                   transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
    cdecl, importcpp: "CopyFromIcon", header: "<wx/wx.h>".}
proc copyFromCursor*(this: var WxBitmap; cursor: WxCursor; 
                     transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
    cdecl, importcpp: "CopyFromCursor", header: "<wx/wx.h>".}
proc create*(this: var WxBitmap; width: cint; height: cint; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxBitmap; sz: WxSize; depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxBitmap; width: cint; height: cint; dc: WxDC): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxBitmap; data: pointer; `type`: WxBitmapType; 
             width: cint; height: cint; depth: cint = 1): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc createScaled*(this: var WxBitmap; w: cint; h: cint; d: cint; 
                   logicalScale: cdouble): bool {.cdecl, 
    importcpp: "CreateScaled", header: "<wx/wx.h>".}
proc loadFile*(this: var WxBitmap; name: WxString; 
               `type`: WxBitmapType = wxBITMAP_DEFAULT_TYPE): bool {.cdecl, 
    importcpp: "LoadFile", header: "<wx/wx.h>".}
proc saveFile*(this: WxBitmap; name: WxString; `type`: WxBitmapType; 
               cmap: ptr WxPalette = nil): bool {.noSideEffect, cdecl, 
    importcpp: "SaveFile", header: "<wx/wx.h>".}
proc getRawData*(this: var WxBitmap; data: var WxPixelDataBase; bpp: cint): pointer {.
    cdecl, importcpp: "GetRawData", header: "<wx/wx.h>".}
proc ungetRawData*(this: var WxBitmap; data: var WxPixelDataBase) {.cdecl, 
    importcpp: "UngetRawData", header: "<wx/wx.h>".}
proc getMask*(this: WxBitmap): ptr WxMask {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: "<wx/wx.h>".}
proc setMask*(this: var WxBitmap; mask: ptr WxMask) {.cdecl, 
    importcpp: "SetMask", header: "<wx/wx.h>".}
proc hasAlpha*(this: WxBitmap): bool {.noSideEffect, cdecl, 
                                       importcpp: "HasAlpha", 
                                       header: "<wx/wx.h>".}
proc useAlpha*(this: var WxBitmap) {.cdecl, importcpp: "UseAlpha", 
                                     header: "<wx/wx.h>".}
proc resetAlpha*(this: var WxBitmap) {.cdecl, importcpp: "ResetAlpha", 
                                       header: "<wx/wx.h>".}
proc getScaleFactor*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaleFactor", header: "<wx/wx.h>".}
proc getScaledWidth*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledWidth", header: "<wx/wx.h>".}
proc getScaledHeight*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledHeight", header: "<wx/wx.h>".}
proc getScaledSize*(this: WxBitmap): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetScaledSize", header: "<wx/wx.h>".}
proc setSelectedInto*(this: var WxBitmap; dc: ptr WxDC) {.cdecl, 
    importcpp: "SetSelectedInto", header: "<wx/wx.h>".}
proc getSelectedInto*(this: WxBitmap): ptr WxDC {.noSideEffect, cdecl, 
    importcpp: "GetSelectedInto", header: "<wx/wx.h>".}

type 
  WxMask* {.importcpp: "wxMask", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxMask*(): WxMask {.cdecl, constructor, importcpp: "wxMask(@)", 
                                  header: "<wx/wx.h>".}
proc constructwxMask*(mask: WxMask): WxMask {.cdecl, constructor, 
    importcpp: "wxMask(@)", header: "<wx/wx.h>".}
proc constructwxMask*(bitmap: WxBitmap; colour: WxColour): WxMask {.cdecl, 
    constructor, importcpp: "wxMask(@)", header: "<wx/wx.h>".}
proc constructwxMask*(bitmap: WxBitmap; paletteIndex: cint): WxMask {.cdecl, 
    constructor, importcpp: "wxMask(@)", header: "<wx/wx.h>".}
proc constructwxMask*(bitmap: WxBitmap): WxMask {.cdecl, constructor, 
    importcpp: "wxMask(@)", header: "<wx/wx.h>".}
proc destroywxMask*(this: var WxMask) {.cdecl, importcpp: "#.~wxMask()", 
                                        header: "<wx/wx.h>".}
proc create*(this: var WxMask; bitmap: WxBitmap; colour: WxColour): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxMask; bitmap: WxBitmap; paletteIndex: cint): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxMask; bitmap: WxBitmap): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc getBitmap*(this: WxMask): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "<wx/wx.h>".}