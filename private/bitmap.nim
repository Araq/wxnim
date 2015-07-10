


var wxBITMAP_DEFAULT_TYPE* {.importcpp: "wxBITMAP_DEFAULT_TYPE", header: wxh.}: WxBitmapType

discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
discard "forward decl of wxPalette"
discard "forward decl of wxDC"
type 
  WxMaskBase* {.importcpp: "wxMaskBase", header: wxh.} = object of WxObject
  

proc create*(this: var WxMaskBase; bitmap: WxBitmap; colour: WxColour): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxMaskBase; bitmap: WxBitmap): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
const 
  wxUSE_BITMAP_BASE* = 1


const 
  wxBITMAP_SCREEN_DEPTH* = (- 1)


type 
  WxBitmapHelpers* {.importcpp: "wxBitmapHelpers", header: wxh.} = object 
  

proc newFromPNGData*(data: pointer; size: csize): WxBitmap {.cdecl, 
    importcpp: "wxBitmapHelpers::NewFromPNGData(@)", header: wxh.}


type 
  WxBitmapHandler* {.importcpp: "wxBitmapHandler", header: wxh.} = object of WxObject
  

proc constructwxBitmapHandler*(): WxBitmapHandler {.cdecl, constructor, 
    importcpp: "wxBitmapHandler(@)", header: wxh.}
proc destroywxBitmapHandler*(this: var WxBitmapHandler) {.cdecl, 
    importcpp: "#.~wxBitmapHandler()", header: wxh.}
proc create*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; data: pointer; 
             `type`: WxBitmapType; width: cint; height: cint; depth: cint = 1): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc loadFile*(this: var WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString; 
               `type`: WxBitmapType; desiredWidth: cint; desiredHeight: cint): bool {.
    cdecl, importcpp: "LoadFile", header: wxh.}
proc saveFile*(this: WxBitmapHandler; bitmap: ptr WxBitmap; name: WxString; 
               `type`: WxBitmapType; palette: ptr WxPalette = nil): bool {.
    noSideEffect, cdecl, importcpp: "SaveFile", header: wxh.}
proc setName*(this: var WxBitmapHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc setExtension*(this: var WxBitmapHandler; ext: WxString) {.cdecl, 
    importcpp: "SetExtension", header: wxh.}
proc setType*(this: var WxBitmapHandler; `type`: WxBitmapType) {.cdecl, 
    importcpp: "SetType", header: wxh.}
proc getName*(this: WxBitmapHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc getExtension*(this: WxBitmapHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: wxh.}
proc getType*(this: WxBitmapHandler): WxBitmapType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}

type 
  WxBitmapBase* {.importcpp: "wxBitmapBase", header: wxh.} = object of WxObject
  

proc create*(this: var WxBitmapBase; width: cint; height: cint; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxBitmapBase; sz: WxSize; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createScaled*(this: var WxBitmapBase; w: cint; h: cint; d: cint; 
                   logicalScale: cdouble): bool {.cdecl, 
    importcpp: "CreateScaled", header: wxh.}
proc getHeight*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetHeight", header: wxh.}
proc getWidth*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getDepth*(this: WxBitmapBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetDepth", header: wxh.}
proc getSize*(this: WxBitmapBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc getScaleFactor*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaleFactor", header: wxh.}
proc getScaledWidth*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledWidth", header: wxh.}
proc getScaledHeight*(this: WxBitmapBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledHeight", header: wxh.}
proc getScaledSize*(this: WxBitmapBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetScaledSize", header: wxh.}
proc convertToImage*(this: WxBitmapBase): WxImage {.noSideEffect, cdecl, 
    importcpp: "ConvertToImage", header: wxh.}
proc convertToDisabled*(this: WxBitmapBase; brightness: byte = 255): WxBitmap {.
    noSideEffect, cdecl, importcpp: "ConvertToDisabled", header: wxh.}
proc getMask*(this: WxBitmapBase): ptr WxMask {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: wxh.}
proc setMask*(this: var WxBitmapBase; mask: ptr WxMask) {.cdecl, 
    importcpp: "SetMask", header: wxh.}
proc getSubBitmap*(this: WxBitmapBase; rect: WxRect): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetSubBitmap", header: wxh.}
proc saveFile*(this: WxBitmapBase; name: WxString; `type`: WxBitmapType; 
               palette: ptr WxPalette = nil): bool {.noSideEffect, cdecl, 
    importcpp: "SaveFile", header: wxh.}
proc loadFile*(this: var WxBitmapBase; name: WxString; `type`: WxBitmapType): bool {.
    cdecl, importcpp: "LoadFile", header: wxh.}
proc copyFromIcon*(this: var WxBitmapBase; icon: WxIcon): bool {.cdecl, 
    importcpp: "CopyFromIcon", header: wxh.}
proc setHeight*(this: var WxBitmapBase; height: cint) {.cdecl, 
    importcpp: "SetHeight", header: wxh.}
proc setWidth*(this: var WxBitmapBase; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc setDepth*(this: var WxBitmapBase; depth: cint) {.cdecl, 
    importcpp: "SetDepth", header: wxh.}
proc quantizeColour*(this: WxBitmapBase; colour: WxColour): WxColour {.
    noSideEffect, cdecl, importcpp: "QuantizeColour", header: wxh.}
discard "forward decl of wxBitmap"
discard "forward decl of wxBitmapHandler"
discard "forward decl of wxControl"
discard "forward decl of wxCursor"
discard "forward decl of wxDC"
discard "forward decl of wxIcon"
discard "forward decl of wxMask"
type 
  WxPalette* {.importcpp: "wxPalette", header: wxh.} = object 
  
  WxPixelDataBase* {.importcpp: "wxPixelDataBase", header: wxh.} = object 
  


type 
  WxBitmapTransparency* {.size: sizeof(cint), 
                          importcpp: "wxMask::wxBitmapTransparency", header: wxh.} = enum 
    wxBitmapTransparencyAuto, wxBitmapTransparencyNone, 
    wxBitmapTransparencyAlways



type 
  WxBitmap* {.importcpp: "wxBitmap", header: wxh.} = object of WxImage
  

proc constructwxBitmap*(): WxBitmap {.cdecl, constructor, 
                                      importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(bits: ptr char; width: cint; height: cint; 
                        depth: cint = 1): WxBitmap {.cdecl, constructor, 
    importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(data: cstringArray): WxBitmap {.cdecl, constructor, 
    importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(name: WxString; 
                        `type`: WxBitmapType = wxBITMAP_DEFAULT_TYPE): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(data: pointer; `type`: WxBitmapType; width: cint; 
                        height: cint; depth: cint = 1): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(width: cint; height: cint; depth: cint = - 1): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(sz: WxSize; depth: cint = - 1): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(width: cint; height: cint; dc: WxDC): WxBitmap {.cdecl, 
    constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc constructwxBitmap*(icon: WxIcon; 
                        transp: WxBitmapTransparency = wxBitmapTransparencyAuto): WxBitmap {.
    cdecl, constructor, importcpp: "wxBitmap(@)", header: wxh.}
proc destroywxBitmap*(this: var WxBitmap) {.cdecl, importcpp: "#.~wxBitmap()", 
    header: wxh.}
proc getSubBitmap*(this: WxBitmap; rect: WxRect): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetSubBitmap", header: wxh.}
proc copyFromIcon*(this: var WxBitmap; icon: WxIcon; 
                   transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
    cdecl, importcpp: "CopyFromIcon", header: wxh.}
proc copyFromCursor*(this: var WxBitmap; cursor: WxCursor; 
                     transp: WxBitmapTransparency = wxBitmapTransparencyAuto): bool {.
    cdecl, importcpp: "CopyFromCursor", header: wxh.}
proc create*(this: var WxBitmap; width: cint; height: cint; 
             depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxBitmap; sz: WxSize; depth: cint = wxBITMAP_SCREEN_DEPTH): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxBitmap; width: cint; height: cint; dc: WxDC): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxBitmap; data: pointer; `type`: WxBitmapType; 
             width: cint; height: cint; depth: cint = 1): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createScaled*(this: var WxBitmap; w: cint; h: cint; d: cint; 
                   logicalScale: cdouble): bool {.cdecl, 
    importcpp: "CreateScaled", header: wxh.}
proc loadFile*(this: var WxBitmap; name: WxString; 
               `type`: WxBitmapType = wxBITMAP_DEFAULT_TYPE): bool {.cdecl, 
    importcpp: "LoadFile", header: wxh.}
proc saveFile*(this: WxBitmap; name: WxString; `type`: WxBitmapType; 
               cmap: ptr WxPalette = nil): bool {.noSideEffect, cdecl, 
    importcpp: "SaveFile", header: wxh.}
proc getRawData*(this: var WxBitmap; data: var WxPixelDataBase; bpp: cint): pointer {.
    cdecl, importcpp: "GetRawData", header: wxh.}
proc ungetRawData*(this: var WxBitmap; data: var WxPixelDataBase) {.cdecl, 
    importcpp: "UngetRawData", header: wxh.}
proc getMask*(this: WxBitmap): ptr WxMask {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: wxh.}
proc setMask*(this: var WxBitmap; mask: ptr WxMask) {.cdecl, 
    importcpp: "SetMask", header: wxh.}
proc hasAlpha*(this: WxBitmap): bool {.noSideEffect, cdecl, 
                                       importcpp: "HasAlpha", header: wxh.}
proc useAlpha*(this: var WxBitmap) {.cdecl, importcpp: "UseAlpha", header: wxh.}
proc resetAlpha*(this: var WxBitmap) {.cdecl, importcpp: "ResetAlpha", 
                                       header: wxh.}
proc getScaleFactor*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaleFactor", header: wxh.}
proc getScaledWidth*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledWidth", header: wxh.}
proc getScaledHeight*(this: WxBitmap): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScaledHeight", header: wxh.}
proc getScaledSize*(this: WxBitmap): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetScaledSize", header: wxh.}
proc setSelectedInto*(this: var WxBitmap; dc: ptr WxDC) {.cdecl, 
    importcpp: "SetSelectedInto", header: wxh.}
proc getSelectedInto*(this: WxBitmap): ptr WxDC {.noSideEffect, cdecl, 
    importcpp: "GetSelectedInto", header: wxh.}

type 
  WxMask* {.importcpp: "wxMask", header: wxh.} = object of WxObject
  

proc constructwxMask*(): WxMask {.cdecl, constructor, importcpp: "wxMask(@)", 
                                  header: wxh.}
proc constructwxMask*(mask: WxMask): WxMask {.cdecl, constructor, 
    importcpp: "wxMask(@)", header: wxh.}
proc constructwxMask*(bitmap: WxBitmap; colour: WxColour): WxMask {.cdecl, 
    constructor, importcpp: "wxMask(@)", header: wxh.}
proc constructwxMask*(bitmap: WxBitmap; paletteIndex: cint): WxMask {.cdecl, 
    constructor, importcpp: "wxMask(@)", header: wxh.}
proc constructwxMask*(bitmap: WxBitmap): WxMask {.cdecl, constructor, 
    importcpp: "wxMask(@)", header: wxh.}
proc destroywxMask*(this: var WxMask) {.cdecl, importcpp: "#.~wxMask()", 
                                        header: wxh.}
proc create*(this: var WxMask; bitmap: WxBitmap; colour: WxColour): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxMask; bitmap: WxBitmap; paletteIndex: cint): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxMask; bitmap: WxBitmap): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getBitmap*(this: WxMask): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}