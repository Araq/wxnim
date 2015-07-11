


template wxIMAGE_OPTION_QUALITY*(): expr = 
  constructWxString("quality")

template wxIMAGE_OPTION_FILENAME*(): expr = 
  constructWxString("FileName")

template wxIMAGE_OPTION_RESOLUTION*(): expr = 
  constructWxString("Resolution")

template wxIMAGE_OPTION_RESOLUTIONX*(): expr = 
  constructWxString("ResolutionX")

template wxIMAGE_OPTION_RESOLUTIONY*(): expr = 
  constructWxString("ResolutionY")

template wxIMAGE_OPTION_RESOLUTIONUNIT*(): expr = 
  constructWxString("ResolutionUnit")

template wxIMAGE_OPTION_MAX_WIDTH*(): expr = 
  constructWxString("MaxWidth")

template wxIMAGE_OPTION_MAX_HEIGHT*(): expr = 
  constructWxString("MaxHeight")

template wxIMAGE_OPTION_ORIGINAL_WIDTH*(): expr = 
  constructWxString("OriginalWidth")

template wxIMAGE_OPTION_ORIGINAL_HEIGHT*(): expr = 
  constructWxString("OriginalHeight")


type 
  WxImageResolution* {.size: sizeof(cint), importcpp: "wxImageResolution", 
                       header: wxh.} = enum 
    wxIMAGE_RESOLUTION_NONE = 0, wxIMAGE_RESOLUTION_INCHES = 1, 
    wxIMAGE_RESOLUTION_CM = 2



type 
  WxImageResizeQuality* {.size: sizeof(cint), importcpp: "wxImageResizeQuality", 
                          header: wxh.} = enum 
    wxIMAGE_QUALITY_NEAREST = 0, wxIMAGE_QUALITY_BILINEAR = 1, 
    wxIMAGE_QUALITY_BICUBIC = 2, wxIMAGE_QUALITY_BOX_AVERAGE = 3, 
    wxIMAGE_QUALITY_HIGH = 4

const 
  wxIMAGE_QUALITY_NORMAL = wxIMAGE_QUALITY_NEAREST


var wxIMAGE_ALPHA_TRANSPARENT* {.importcpp: "wxIMAGE_ALPHA_TRANSPARENT", 
                                 header: wxh.}: byte

var wxIMAGE_ALPHA_THRESHOLD* {.importcpp: "wxIMAGE_ALPHA_THRESHOLD", header: wxh.}: byte

var wxIMAGE_ALPHA_OPAQUE* {.importcpp: "wxIMAGE_ALPHA_OPAQUE", header: wxh.}: byte


discard "forward decl of wxImageHandler"
discard "forward decl of wxImage"
discard "forward decl of wxPalette"
type 
  WxImageHandler* {.importcpp: "wxImageHandler", header: wxh.} = object of WxObject
  

proc constructwxImageHandler*(): WxImageHandler {.cdecl, constructor, 
    importcpp: "wxImageHandler(@)", header: wxh.}
proc setName*(this: var WxImageHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc setExtension*(this: var WxImageHandler; ext: WxString) {.cdecl, 
    importcpp: "SetExtension", header: wxh.}
proc setAltExtensions*(this: var WxImageHandler; exts: WxArrayString) {.cdecl, 
    importcpp: "SetAltExtensions", header: wxh.}
proc setType*(this: var WxImageHandler; `type`: WxBitmapType) {.cdecl, 
    importcpp: "SetType", header: wxh.}
proc setMimeType*(this: var WxImageHandler; `type`: WxString) {.cdecl, 
    importcpp: "SetMimeType", header: wxh.}
proc getName*(this: WxImageHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc getExtension*(this: WxImageHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: wxh.}
proc getAltExtensions*(this: WxImageHandler): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetAltExtensions", header: wxh.}
proc getType*(this: WxImageHandler): WxBitmapType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc getMimeType*(this: WxImageHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetMimeType", header: wxh.}

type 
  WxImageHistogramEntry* {.importcpp: "wxImageHistogramEntry", header: wxh.} = object 
    index* {.importc: "index".}: culong
    value* {.importc: "value".}: culong


proc constructwxImageHistogramEntry*(): WxImageHistogramEntry {.cdecl, 
    constructor, importcpp: "wxImageHistogramEntry(@)", header: wxh.}
type 
  WxImageHistogram* {.importcpp: "wxImageHistogram", header: wxh.} = object of WxObject
  

proc constructwxImageHistogram*(): WxImageHistogram {.cdecl, constructor, 
    importcpp: "wxImageHistogram(@)", header: wxh.}
proc makeKey*(r: byte; g: byte; b: byte): culong {.cdecl, 
    importcpp: "wxImageHistogram::MakeKey(@)", header: wxh.}
proc findFirstUnusedColour*(this: WxImageHistogram; r: ptr byte; g: ptr byte; 
                            b: ptr byte; startR: byte = 1; startG: byte = 0; 
                            startB: byte = 0): bool {.noSideEffect, cdecl, 
    importcpp: "FindFirstUnusedColour", header: wxh.}

type 
  WxImage* {.importcpp: "wxImage", header: wxh.} = object of WxObject
  
  RGBValue* {.importcpp: "RGBValue", header: wxh.} = object 
    red* {.importc: "red".}: byte
    green* {.importc: "green".}: byte
    blue* {.importc: "blue".}: byte


proc constructRGBValue*(r: byte = 0; g: byte = 0; b: byte = 0): RGBValue {.
    cdecl, constructor, importcpp: "RGBValue(@)", header: wxh.}
type 
  HSVValue* {.importcpp: "HSVValue", header: wxh.} = object 
    hue* {.importc: "hue".}: cdouble
    saturation* {.importc: "saturation".}: cdouble
    value* {.importc: "value".}: cdouble


proc constructHSVValue*(h: cdouble = 0.0; s: cdouble = 0.0; v: cdouble = 0.0): HSVValue {.
    cdecl, constructor, importcpp: "HSVValue(@)", header: wxh.}
proc constructwxImage*(): WxImage {.cdecl, constructor, importcpp: "wxImage(@)", 
                                    header: wxh.}
proc constructwxImage*(width: cint; height: cint; clear: bool = true): WxImage {.
    cdecl, constructor, importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(width: cint; height: cint; data: ptr byte; 
                       staticData: bool = false): WxImage {.cdecl, constructor, 
    importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(width: cint; height: cint; data: ptr byte; 
                       alpha: ptr byte; staticData: bool = false): WxImage {.
    cdecl, constructor, importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(sz: WxSize; clear: bool = true): WxImage {.cdecl, 
    constructor, importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(sz: WxSize; data: ptr byte; staticData: bool = false): WxImage {.
    cdecl, constructor, importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(sz: WxSize; data: ptr byte; alpha: ptr byte; 
                       staticData: bool = false): WxImage {.cdecl, constructor, 
    importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(name: WxString; `type`: WxBitmapType = wxBITMAP_TYPE_ANY; 
                       index: cint = - 1): WxImage {.cdecl, constructor, 
    importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(name: WxString; mimetype: WxString; index: cint = - 1): WxImage {.
    cdecl, constructor, importcpp: "wxImage(@)", header: wxh.}
proc constructwxImage*(xpmData: cstringArray): WxImage {.cdecl, constructor, 
    importcpp: "wxImage(@)", header: wxh.}
proc create*(this: var WxImage; xpmData: cstringArray): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxImage; width: cint; height: cint; clear: bool = true): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc create*(this: var WxImage; width: cint; height: cint; data: ptr byte; 
             staticData: bool = false): bool {.cdecl, importcpp: "Create", 
    header: wxh.}
proc create*(this: var WxImage; width: cint; height: cint; data: ptr byte; 
             alpha: ptr byte; staticData: bool = false): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxImage; sz: WxSize; clear: bool = true): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxImage; sz: WxSize; data: ptr byte; 
             staticData: bool = false): bool {.cdecl, importcpp: "Create", 
    header: wxh.}
proc create*(this: var WxImage; sz: WxSize; data: ptr byte; alpha: ptr byte; 
             staticData: bool = false): bool {.cdecl, importcpp: "Create", 
    header: wxh.}
proc destroy*(this: var WxImage) {.cdecl, importcpp: "Destroy", header: wxh.}
proc clear*(this: var WxImage; value: byte = 0) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc copy*(this: WxImage): WxImage {.noSideEffect, cdecl, importcpp: "Copy", 
                                     header: wxh.}
proc getSubImage*(this: WxImage; rect: WxRect): WxImage {.noSideEffect, cdecl, 
    importcpp: "GetSubImage", header: wxh.}
proc size*(this: WxImage; size: WxSize; pos: WxPoint; r: cint = - 1; 
           g: cint = - 1; b: cint = - 1): WxImage {.noSideEffect, cdecl, 
    importcpp: "Size", header: wxh.}
proc paste*(this: var WxImage; image: WxImage; x: cint; y: cint) {.cdecl, 
    importcpp: "Paste", header: wxh.}
proc scale*(this: WxImage; width: cint; height: cint; 
            quality: WxImageResizeQuality = wxIMAGE_QUALITY_NORMAL): WxImage {.
    noSideEffect, cdecl, importcpp: "Scale", header: wxh.}
proc resampleNearest*(this: WxImage; width: cint; height: cint): WxImage {.
    noSideEffect, cdecl, importcpp: "ResampleNearest", header: wxh.}
proc resampleBox*(this: WxImage; width: cint; height: cint): WxImage {.
    noSideEffect, cdecl, importcpp: "ResampleBox", header: wxh.}
proc resampleBilinear*(this: WxImage; width: cint; height: cint): WxImage {.
    noSideEffect, cdecl, importcpp: "ResampleBilinear", header: wxh.}
proc resampleBicubic*(this: WxImage; width: cint; height: cint): WxImage {.
    noSideEffect, cdecl, importcpp: "ResampleBicubic", header: wxh.}
proc blur*(this: WxImage; radius: cint): WxImage {.noSideEffect, cdecl, 
    importcpp: "Blur", header: wxh.}
proc blurHorizontal*(this: WxImage; radius: cint): WxImage {.noSideEffect, 
    cdecl, importcpp: "BlurHorizontal", header: wxh.}
proc blurVertical*(this: WxImage; radius: cint): WxImage {.noSideEffect, cdecl, 
    importcpp: "BlurVertical", header: wxh.}
proc shrinkBy*(this: WxImage; xFactor: cint; yFactor: cint): WxImage {.
    noSideEffect, cdecl, importcpp: "ShrinkBy", header: wxh.}
proc rescale*(this: var WxImage; width: cint; height: cint; 
              quality: WxImageResizeQuality = wxIMAGE_QUALITY_NORMAL): var WxImage {.
    cdecl, importcpp: "Rescale", header: wxh.}
proc resize*(this: var WxImage; size: WxSize; pos: WxPoint; r: cint = - 1; 
             g: cint = - 1; b: cint = - 1): var WxImage {.cdecl, 
    importcpp: "Resize", header: wxh.}
proc rotate*(this: WxImage; angle: cdouble; centreOfRotation: WxPoint; 
             interpolating: bool = true; offsetAfterRotation: ptr WxPoint = nil): WxImage {.
    noSideEffect, cdecl, importcpp: "Rotate", header: wxh.}
proc rotate90*(this: WxImage; clockwise: bool = true): WxImage {.noSideEffect, 
    cdecl, importcpp: "Rotate90", header: wxh.}
proc rotate180*(this: WxImage): WxImage {.noSideEffect, cdecl, 
    importcpp: "Rotate180", header: wxh.}
proc mirror*(this: WxImage; horizontally: bool = true): WxImage {.noSideEffect, 
    cdecl, importcpp: "Mirror", header: wxh.}
proc replace*(this: var WxImage; r1: byte; g1: byte; b1: byte; r2: byte; 
              g2: byte; b2: byte) {.cdecl, importcpp: "Replace", header: wxh.}
proc convertToGreyscale*(this: WxImage; weightR: cdouble; weightG: cdouble; 
                         weightB: cdouble): WxImage {.noSideEffect, cdecl, 
    importcpp: "ConvertToGreyscale", header: wxh.}
proc convertToGreyscale*(this: WxImage): WxImage {.noSideEffect, cdecl, 
    importcpp: "ConvertToGreyscale", header: wxh.}
proc convertToMono*(this: WxImage; r: byte; g: byte; b: byte): WxImage {.
    noSideEffect, cdecl, importcpp: "ConvertToMono", header: wxh.}
proc convertToDisabled*(this: WxImage; brightness: byte = 255): WxImage {.
    noSideEffect, cdecl, importcpp: "ConvertToDisabled", header: wxh.}
proc setRGB*(this: var WxImage; x: cint; y: cint; r: byte; g: byte; b: byte) {.
    cdecl, importcpp: "SetRGB", header: wxh.}
proc setRGB*(this: var WxImage; rect: WxRect; r: byte; g: byte; b: byte) {.
    cdecl, importcpp: "SetRGB", header: wxh.}
proc getRed*(this: WxImage; x: cint; y: cint): byte {.noSideEffect, cdecl, 
    importcpp: "GetRed", header: wxh.}
proc getGreen*(this: WxImage; x: cint; y: cint): byte {.noSideEffect, cdecl, 
    importcpp: "GetGreen", header: wxh.}
proc getBlue*(this: WxImage; x: cint; y: cint): byte {.noSideEffect, cdecl, 
    importcpp: "GetBlue", header: wxh.}
proc setAlpha*(this: var WxImage; x: cint; y: cint; alpha: byte) {.cdecl, 
    importcpp: "SetAlpha", header: wxh.}
proc getAlpha*(this: WxImage; x: cint; y: cint): byte {.noSideEffect, cdecl, 
    importcpp: "GetAlpha", header: wxh.}
proc findFirstUnusedColour*(this: WxImage; r: ptr byte; g: ptr byte; 
                            b: ptr byte; startR: byte = 1; startG: byte = 0; 
                            startB: byte = 0): bool {.noSideEffect, cdecl, 
    importcpp: "FindFirstUnusedColour", header: wxh.}
proc setMaskFromImage*(this: var WxImage; mask: WxImage; mr: byte; mg: byte; 
                       mb: byte): bool {.discardable, cdecl, 
    importcpp: "SetMaskFromImage", header: wxh.}
proc convertAlphaToMask*(this: var WxImage; 
                         threshold: byte = wxIMAGE_ALPHA_THRESHOLD): bool {.
    cdecl, importcpp: "ConvertAlphaToMask", header: wxh.}
proc convertAlphaToMask*(this: var WxImage; mr: byte; mg: byte; mb: byte; 
                         threshold: byte = wxIMAGE_ALPHA_THRESHOLD): bool {.
    cdecl, importcpp: "ConvertAlphaToMask", header: wxh.}
proc convertColourToAlpha*(this: var WxImage; r: byte; g: byte; b: byte): bool {.
    cdecl, importcpp: "ConvertColourToAlpha", header: wxh.}
proc canRead*(name: WxString): bool {.cdecl, importcpp: "wxImage::CanRead(@)", 
                                      header: wxh.}
proc getImageCount*(name: WxString; `type`: WxBitmapType = wxBITMAP_TYPE_ANY): cint {.
    cdecl, importcpp: "wxImage::GetImageCount(@)", header: wxh.}
proc loadFile*(this: var WxImage; name: WxString; 
               `type`: WxBitmapType = wxBITMAP_TYPE_ANY; index: cint = - 1): bool {.
    cdecl, importcpp: "LoadFile", header: wxh.}
proc loadFile*(this: var WxImage; name: WxString; mimetype: WxString; 
               index: cint = - 1): bool {.cdecl, importcpp: "LoadFile", 
    header: wxh.}
proc saveFile*(this: WxImage; name: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "SaveFile", header: wxh.}
proc saveFile*(this: WxImage; name: WxString; `type`: WxBitmapType): bool {.
    noSideEffect, cdecl, importcpp: "SaveFile", header: wxh.}
proc saveFile*(this: WxImage; name: WxString; mimetype: WxString): bool {.
    noSideEffect, cdecl, importcpp: "SaveFile", header: wxh.}
proc ok*(this: WxImage): bool {.noSideEffect, cdecl, importcpp: "Ok", 
                                header: wxh.}
proc isOk*(this: WxImage): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                  header: wxh.}
proc getWidth*(this: WxImage): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetWidth", header: wxh.}
proc getHeight*(this: WxImage): cint {.noSideEffect, cdecl, 
                                       importcpp: "GetHeight", header: wxh.}
proc getSize*(this: WxImage): WxSize {.noSideEffect, cdecl, 
                                       importcpp: "GetSize", header: wxh.}
proc getType*(this: WxImage): WxBitmapType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc setType*(this: var WxImage; `type`: WxBitmapType) {.cdecl, 
    importcpp: "SetType", header: wxh.}
proc getData*(this: WxImage): ptr byte {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc setData*(this: var WxImage; data: ptr byte; staticData: bool = false) {.
    cdecl, importcpp: "SetData", header: wxh.}
proc setData*(this: var WxImage; data: ptr byte; newWidth: cint; 
              newHeight: cint; staticData: bool = false) {.cdecl, 
    importcpp: "SetData", header: wxh.}
proc getAlpha*(this: WxImage): ptr byte {.noSideEffect, cdecl, 
    importcpp: "GetAlpha", header: wxh.}
proc hasAlpha*(this: WxImage): bool {.noSideEffect, cdecl, 
                                      importcpp: "HasAlpha", header: wxh.}
proc setAlpha*(this: var WxImage; alpha: ptr byte = nil; 
               staticData: bool = false) {.cdecl, importcpp: "SetAlpha", 
    header: wxh.}
proc initAlpha*(this: var WxImage) {.cdecl, importcpp: "InitAlpha", header: wxh.}
proc clearAlpha*(this: var WxImage) {.cdecl, importcpp: "ClearAlpha", 
                                      header: wxh.}
proc isTransparent*(this: WxImage; x: cint; y: cint; 
                    threshold: byte = wxIMAGE_ALPHA_THRESHOLD): bool {.
    noSideEffect, cdecl, importcpp: "IsTransparent", header: wxh.}
proc setMaskColour*(this: var WxImage; r: byte; g: byte; b: byte) {.cdecl, 
    importcpp: "SetMaskColour", header: wxh.}
proc getOrFindMaskColour*(this: WxImage; r: ptr byte; g: ptr byte; b: ptr byte): bool {.
    noSideEffect, cdecl, importcpp: "GetOrFindMaskColour", header: wxh.}
proc getMaskRed*(this: WxImage): byte {.noSideEffect, cdecl, 
                                        importcpp: "GetMaskRed", header: wxh.}
proc getMaskGreen*(this: WxImage): byte {.noSideEffect, cdecl, 
    importcpp: "GetMaskGreen", header: wxh.}
proc getMaskBlue*(this: WxImage): byte {.noSideEffect, cdecl, 
    importcpp: "GetMaskBlue", header: wxh.}
proc setMask*(this: var WxImage; mask: bool = true) {.cdecl, 
    importcpp: "SetMask", header: wxh.}
proc hasMask*(this: WxImage): bool {.noSideEffect, cdecl, importcpp: "HasMask", 
                                     header: wxh.}
proc setOption*(this: var WxImage; name: WxString; value: WxString) {.cdecl, 
    importcpp: "SetOption", header: wxh.}
proc setOption*(this: var WxImage; name: WxString; value: cint) {.cdecl, 
    importcpp: "SetOption", header: wxh.}
proc getOption*(this: WxImage; name: WxString): WxString {.noSideEffect, cdecl, 
    importcpp: "GetOption", header: wxh.}
proc getOptionInt*(this: WxImage; name: WxString): cint {.noSideEffect, cdecl, 
    importcpp: "GetOptionInt", header: wxh.}
proc hasOption*(this: WxImage; name: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "HasOption", header: wxh.}
proc countColours*(this: WxImage; stopafter: culong = cast[culong](- 1)): culong {.
    noSideEffect, cdecl, importcpp: "CountColours", header: wxh.}
proc computeHistogram*(this: WxImage; h: var WxImageHistogram): culong {.
    noSideEffect, cdecl, importcpp: "ComputeHistogram", header: wxh.}
proc rotateHue*(this: var WxImage; angle: cdouble) {.cdecl, 
    importcpp: "RotateHue", header: wxh.}
proc getHandlers*(): var WxList {.cdecl, importcpp: "wxImage::GetHandlers(@)", 
                                  header: wxh.}
proc addHandler*(handler: ptr WxImageHandler) {.cdecl, 
    importcpp: "wxImage::AddHandler(@)", header: wxh.}
proc insertHandler*(handler: ptr WxImageHandler) {.cdecl, 
    importcpp: "wxImage::InsertHandler(@)", header: wxh.}
proc removeHandler*(name: WxString): bool {.cdecl, 
    importcpp: "wxImage::RemoveHandler(@)", header: wxh.}
proc findHandler*(name: WxString): ptr WxImageHandler {.cdecl, 
    importcpp: "wxImage::FindHandler(@)", header: wxh.}
proc findHandler*(extension: WxString; imageType: WxBitmapType): ptr WxImageHandler {.
    cdecl, importcpp: "wxImage::FindHandler(@)", header: wxh.}
proc findHandler*(imageType: WxBitmapType): ptr WxImageHandler {.cdecl, 
    importcpp: "wxImage::FindHandler(@)", header: wxh.}
proc findHandlerMime*(mimetype: WxString): ptr WxImageHandler {.cdecl, 
    importcpp: "wxImage::FindHandlerMime(@)", header: wxh.}
proc getImageExtWildcard*(): WxString {.cdecl, importcpp: "wxImage::GetImageExtWildcard(@)", 
                                        header: wxh.}
proc cleanUpHandlers*() {.cdecl, importcpp: "wxImage::CleanUpHandlers(@)", 
                          header: wxh.}
proc initStandardHandlers*() {.cdecl, 
                               importcpp: "wxImage::InitStandardHandlers(@)", 
                               header: wxh.}
proc rGBtoHSV*(rgb: RGBValue): HSVValue {.cdecl, 
    importcpp: "wxImage::RGBtoHSV(@)", header: wxh.}
proc hSVtoRGB*(hsv: HSVValue): RGBValue {.cdecl, 
    importcpp: "wxImage::HSVtoRGB(@)", header: wxh.}
proc wxInitAllImageHandlers*() {.cdecl, importcpp: "wxInitAllImageHandlers(@)", 
                                 header: wxh.}
var wxNullImage* {.importcpp: "wxNullImage", header: wxh.}: WxImage


