



discard "forward decl of wxBitmap"
type 
  WxBrush* {.importcpp: "wxBrush", header: wxh.} = object 
  

discard "forward decl of wxColour"
discard "forward decl of wxCursor"
discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxPalette"
type 
  WxPen* {.importcpp: "wxPen", header: wxh.} = object 
  

discard "forward decl of wxRegion"
discard "forward decl of wxString"
type 
  WxIconBundle* {.importcpp: "wxIconBundle", header: wxh.} = object 
  

discard "forward decl of wxPoint"
type 
  WxBitmapType* {.size: sizeof(cint), importcpp: "wxPoint::wxBitmapType", 
                  header: wxh.} = enum 
    wxBITMAP_TYPE_INVALID, wxBITMAP_TYPE_BMP, wxBITMAP_TYPE_BMP_RESOURCE, 
    wxBITMAP_TYPE_ICO, wxBITMAP_TYPE_ICO_RESOURCE, wxBITMAP_TYPE_CUR, 
    wxBITMAP_TYPE_CUR_RESOURCE, wxBITMAP_TYPE_XBM, wxBITMAP_TYPE_XBM_DATA, 
    wxBITMAP_TYPE_XPM, wxBITMAP_TYPE_XPM_DATA, wxBITMAP_TYPE_TIFF, 
    wxBITMAP_TYPE_TIFF_RESOURCE, wxBITMAP_TYPE_GIF, wxBITMAP_TYPE_GIF_RESOURCE, 
    wxBITMAP_TYPE_PNG, wxBITMAP_TYPE_PNG_RESOURCE, wxBITMAP_TYPE_JPEG, 
    wxBITMAP_TYPE_JPEG_RESOURCE, wxBITMAP_TYPE_PNM, wxBITMAP_TYPE_PNM_RESOURCE, 
    wxBITMAP_TYPE_PCX, wxBITMAP_TYPE_PCX_RESOURCE, wxBITMAP_TYPE_PICT, 
    wxBITMAP_TYPE_PICT_RESOURCE, wxBITMAP_TYPE_ICON, 
    wxBITMAP_TYPE_ICON_RESOURCE, wxBITMAP_TYPE_ANI, wxBITMAP_TYPE_IFF, 
    wxBITMAP_TYPE_TGA, wxBITMAP_TYPE_MACCURSOR, 
    wxBITMAP_TYPE_MACCURSOR_RESOURCE, wxBITMAP_TYPE_MAX, wxBITMAP_TYPE_ANY = 50

const 
  wxBITMAP_TYPE_RESOURCE = wxBITMAP_TYPE_BMP_RESOURCE
  wxBITMAP_TYPE_TIF = wxBITMAP_TYPE_TIFF
  wxBITMAP_TYPE_TIF_RESOURCE = wxBITMAP_TYPE_TIFF_RESOURCE


type 
  WxPolygonFillMode* {.size: sizeof(cint), 
                       importcpp: "wxPoint::wxPolygonFillMode", header: wxh.} = enum 
    wxODDEVEN_RULE = 1, wxWINDING_RULE



type 
  WxStockCursor* {.size: sizeof(cint), importcpp: "wxPoint::wxStockCursor", 
                   header: wxh.} = enum 
    wxCURSOR_NONE, wxCURSOR_ARROW, wxCURSOR_RIGHT_ARROW, wxCURSOR_BULLSEYE, 
    wxCURSOR_CHAR, wxCURSOR_CROSS, wxCURSOR_HAND, wxCURSOR_IBEAM, 
    wxCURSOR_LEFT_BUTTON, wxCURSOR_MAGNIFIER, wxCURSOR_MIDDLE_BUTTON, 
    wxCURSOR_NO_ENTRY, wxCURSOR_PAINT_BRUSH, wxCURSOR_PENCIL, 
    wxCURSOR_POINT_LEFT, wxCURSOR_POINT_RIGHT, wxCURSOR_QUESTION_ARROW, 
    wxCURSOR_RIGHT_BUTTON, wxCURSOR_SIZENESW, wxCURSOR_SIZENS, 
    wxCURSOR_SIZENWSE, wxCURSOR_SIZEWE, wxCURSOR_SIZING, wxCURSOR_SPRAYCAN, 
    wxCURSOR_WAIT, wxCURSOR_WATCH, wxCURSOR_BLANK



type 
  WxSize* {.importcpp: "wxSize", header: wxh.} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint


proc constructwxSize*(): WxSize {.cdecl, constructor, importcpp: "wxSize(@)", 
                                  header: wxh.}
proc constructwxSize*(xx: cint; yy: cint): WxSize {.cdecl, constructor, 
    importcpp: "wxSize(@)", header: wxh.}
proc `+=`*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc `/=`*(this: var WxSize; i: clong) {.cdecl, importcpp: "(# /= #)", 
    header: wxh.}
proc `*=`*(this: var WxSize; i: clong) {.cdecl, importcpp: "(# *= #)", 
    header: wxh.}
proc `/=`*(this: var WxSize; i: culong) {.cdecl, importcpp: "(# /= #)", 
    header: wxh.}
proc `*=`*(this: var WxSize; i: culong) {.cdecl, importcpp: "(# *= #)", 
    header: wxh.}
proc `/=`*(this: var WxSize; i: cdouble) {.cdecl, importcpp: "(# /= #)", 
    header: wxh.}
proc `*=`*(this: var WxSize; i: cdouble) {.cdecl, importcpp: "(# *= #)", 
    header: wxh.}
proc incTo*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "IncTo", 
    header: wxh.}
proc decTo*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "DecTo", 
    header: wxh.}
proc decToIfSpecified*(this: var WxSize; sz: WxSize) {.cdecl, 
    importcpp: "DecToIfSpecified", header: wxh.}
proc incBy*(this: var WxSize; dx: cint; dy: cint) {.cdecl, importcpp: "IncBy", 
    header: wxh.}
proc incBy*(this: var WxSize; pt: WxPoint) {.cdecl, importcpp: "IncBy", 
    header: wxh.}
proc incBy*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "IncBy", 
    header: wxh.}
proc incBy*(this: var WxSize; d: cint) {.cdecl, importcpp: "IncBy", header: wxh.}
proc decBy*(this: var WxSize; dx: cint; dy: cint) {.cdecl, importcpp: "DecBy", 
    header: wxh.}
proc decBy*(this: var WxSize; pt: WxPoint) {.cdecl, importcpp: "DecBy", 
    header: wxh.}
proc decBy*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "DecBy", 
    header: wxh.}
proc decBy*(this: var WxSize; d: cint) {.cdecl, importcpp: "DecBy", header: wxh.}
proc scale*(this: var WxSize; xscale: cfloat; yscale: cfloat): var WxSize {.
    cdecl, importcpp: "Scale", header: wxh.}
proc set*(this: var WxSize; xx: cint; yy: cint) {.cdecl, importcpp: "Set", 
    header: wxh.}
proc setWidth*(this: var WxSize; w: cint) {.cdecl, importcpp: "SetWidth", 
    header: wxh.}
proc setHeight*(this: var WxSize; h: cint) {.cdecl, importcpp: "SetHeight", 
    header: wxh.}
proc getWidth*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetWidth", 
                                     header: wxh.}
proc getHeight*(this: WxSize): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetHeight", header: wxh.}
proc isFullySpecified*(this: WxSize): bool {.noSideEffect, cdecl, 
    importcpp: "IsFullySpecified", header: wxh.}
proc setDefaults*(this: var WxSize; size: WxSize) {.cdecl, 
    importcpp: "SetDefaults", header: wxh.}
proc getX*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetX", 
                                 header: wxh.}
proc getY*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetY", 
                                 header: wxh.}
proc `==`*(s1: WxSize; s2: WxSize): bool {.cdecl, importcpp: "(# == #)", 
    header: wxh.}
proc `+`*(s1: WxSize; s2: WxSize): WxSize {.cdecl, importcpp: "(# + #)", 
    header: wxh.}
proc `-`*(s1: WxSize; s2: WxSize): WxSize {.cdecl, importcpp: "(# - #)", 
    header: wxh.}
proc `/`*(s: WxSize; i: clong): WxSize {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxSize; i: clong): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: clong; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `/`*(s: WxSize; i: culong): WxSize {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxSize; i: culong): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: culong; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(s: WxSize; i: cdouble): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: cdouble; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: wxh.}

type 
  WxRealPoint* {.importcpp: "wxRealPoint", header: wxh.} = object 
    x* {.importc: "x".}: cdouble
    y* {.importc: "y".}: cdouble


proc constructwxRealPoint*(): WxRealPoint {.cdecl, constructor, 
    importcpp: "wxRealPoint(@)", header: wxh.}
proc constructwxRealPoint*(xx: cdouble; yy: cdouble): WxRealPoint {.cdecl, 
    constructor, importcpp: "wxRealPoint(@)", header: wxh.}
proc constructwxRealPoint*(pt: WxPoint): WxRealPoint {.cdecl, constructor, 
    importcpp: "wxRealPoint(@)", header: wxh.}
proc `+=`*(this: var WxRealPoint; p: WxRealPoint) {.cdecl, 
    importcpp: "(# += #)", header: wxh.}
proc `-=`*(this: var WxRealPoint; p: WxRealPoint) {.cdecl, 
    importcpp: "(# -= #)", header: wxh.}
proc `+=`*(this: var WxRealPoint; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxRealPoint; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc `==`*(p1: WxRealPoint; p2: WxRealPoint): bool {.cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `+`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# + #)", header: wxh.}
proc `-`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# - #)", header: wxh.}
proc `/`*(s: WxRealPoint; i: clong): WxRealPoint {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxRealPoint; i: clong): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: clong; s: WxRealPoint): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `/`*(s: WxRealPoint; i: culong): WxRealPoint {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxRealPoint; i: culong): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: culong; s: WxRealPoint): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(s: WxRealPoint; i: cdouble): WxRealPoint {.cdecl, 
    importcpp: "(# * #)", header: wxh.}
proc `*`*(i: cdouble; s: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# * #)", header: wxh.}

type 
  WxPoint* {.importcpp: "wxPoint", header: wxh.} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint


proc constructwxPoint*(): WxPoint {.cdecl, constructor, importcpp: "wxPoint(@)", 
                                    header: wxh.}
proc constructwxPoint*(xx: cint; yy: cint): WxPoint {.cdecl, constructor, 
    importcpp: "wxPoint(@)", header: wxh.}
proc constructwxPoint*(pt: WxRealPoint): WxPoint {.cdecl, constructor, 
    importcpp: "wxPoint(@)", header: wxh.}
proc `+=`*(this: var WxPoint; p: WxPoint) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxPoint; p: WxPoint) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc `+=`*(this: var WxPoint; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxPoint; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc isFullySpecified*(this: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "IsFullySpecified", header: wxh.}
proc setDefaults*(this: var WxPoint; pt: WxPoint) {.cdecl, 
    importcpp: "SetDefaults", header: wxh.}

proc `==`*(p1: WxPoint; p2: WxPoint): bool {.cdecl, importcpp: "(# == #)", 
    header: wxh.}

proc `+`*(p1: WxPoint; p2: WxPoint): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: wxh.}
proc `-`*(p1: WxPoint; p2: WxPoint): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: wxh.}
proc `+`*(p: WxPoint; s: WxSize): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: wxh.}
proc `-`*(p: WxPoint; s: WxSize): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: wxh.}
proc `+`*(s: WxSize; p: WxPoint): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: wxh.}
proc `-`*(s: WxSize; p: WxPoint): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: wxh.}
proc `-`*(p: WxPoint): WxPoint {.cdecl, importcpp: "(- #)", header: wxh.}
proc `/`*(s: WxPoint; i: clong): WxPoint {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxPoint; i: clong): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: clong; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `/`*(s: WxPoint; i: culong): WxPoint {.cdecl, importcpp: "(# / #)", 
    header: wxh.}
proc `*`*(s: WxPoint; i: culong): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: culong; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(s: WxPoint; i: cdouble): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}
proc `*`*(i: cdouble; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: wxh.}

type 
  WxRect* {.importcpp: "wxRect", header: wxh.} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint


proc constructwxRect*(): WxRect {.cdecl, constructor, importcpp: "wxRect(@)", 
                                  header: wxh.}
proc constructwxRect*(xx: cint; yy: cint; ww: cint; hh: cint): WxRect {.cdecl, 
    constructor, importcpp: "wxRect(@)", header: wxh.}
proc constructwxRect*(topLeft: WxPoint; bottomRight: WxPoint): WxRect {.cdecl, 
    constructor, importcpp: "wxRect(@)", header: wxh.}
proc constructwxRect*(pt: WxPoint; size: WxSize): WxRect {.cdecl, constructor, 
    importcpp: "wxRect(@)", header: wxh.}
proc constructwxRect*(size: WxSize): WxRect {.cdecl, constructor, 
    importcpp: "wxRect(@)", header: wxh.}
proc getX*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetX", 
                                 header: wxh.}
proc setX*(this: var WxRect; xx: cint) {.cdecl, importcpp: "SetX", header: wxh.}
proc getY*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetY", 
                                 header: wxh.}
proc setY*(this: var WxRect; yy: cint) {.cdecl, importcpp: "SetY", header: wxh.}
proc getWidth*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetWidth", 
                                     header: wxh.}
proc setWidth*(this: var WxRect; w: cint) {.cdecl, importcpp: "SetWidth", 
    header: wxh.}
proc getHeight*(this: WxRect): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetHeight", header: wxh.}
proc setHeight*(this: var WxRect; h: cint) {.cdecl, importcpp: "SetHeight", 
    header: wxh.}
proc getPosition*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getSize*(this: WxRect): WxSize {.noSideEffect, cdecl, importcpp: "GetSize", 
                                      header: wxh.}
proc setSize*(this: var WxRect; s: WxSize) {.cdecl, importcpp: "SetSize", 
    header: wxh.}
proc isEmpty*(this: WxRect): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                    header: wxh.}
proc getLeft*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetLeft", 
                                    header: wxh.}
proc getTop*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetTop", 
                                   header: wxh.}
proc getBottom*(this: WxRect): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetBottom", header: wxh.}
proc getRight*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetRight", 
                                     header: wxh.}
proc setLeft*(this: var WxRect; left: cint) {.cdecl, importcpp: "SetLeft", 
    header: wxh.}
proc setRight*(this: var WxRect; right: cint) {.cdecl, importcpp: "SetRight", 
    header: wxh.}
proc setTop*(this: var WxRect; top: cint) {.cdecl, importcpp: "SetTop", 
    header: wxh.}
proc setBottom*(this: var WxRect; bottom: cint) {.cdecl, importcpp: "SetBottom", 
    header: wxh.}
proc getTopLeft*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetTopLeft", header: wxh.}
proc getLeftTop*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetLeftTop", header: wxh.}
proc setTopLeft*(this: var WxRect; p: WxPoint) {.cdecl, importcpp: "SetTopLeft", 
    header: wxh.}
proc setLeftTop*(this: var WxRect; p: WxPoint) {.cdecl, importcpp: "SetLeftTop", 
    header: wxh.}
proc getBottomRight*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetBottomRight", header: wxh.}
proc getRightBottom*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetRightBottom", header: wxh.}
proc setBottomRight*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetBottomRight", header: wxh.}
proc setRightBottom*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetRightBottom", header: wxh.}
proc getTopRight*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetTopRight", header: wxh.}
proc getRightTop*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetRightTop", header: wxh.}
proc setTopRight*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetTopRight", header: wxh.}
proc setRightTop*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetRightTop", header: wxh.}
proc getBottomLeft*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetBottomLeft", header: wxh.}
proc getLeftBottom*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetLeftBottom", header: wxh.}
proc setBottomLeft*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetBottomLeft", header: wxh.}
proc setLeftBottom*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetLeftBottom", header: wxh.}
proc inflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.cdecl, 
    importcpp: "Inflate", header: wxh.}
proc inflate*(this: var WxRect; d: WxSize): var WxRect {.cdecl, 
    importcpp: "Inflate", header: wxh.}
proc inflate*(this: var WxRect; d: WxCoord): var WxRect {.cdecl, 
    importcpp: "Inflate", header: wxh.}
proc inflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect, 
    cdecl, importcpp: "Inflate", header: wxh.}
proc deflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.cdecl, 
    importcpp: "Deflate", header: wxh.}
proc deflate*(this: var WxRect; d: WxSize): var WxRect {.cdecl, 
    importcpp: "Deflate", header: wxh.}
proc deflate*(this: var WxRect; d: WxCoord): var WxRect {.cdecl, 
    importcpp: "Deflate", header: wxh.}
proc deflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect, 
    cdecl, importcpp: "Deflate", header: wxh.}
proc offset*(this: var WxRect; dx: WxCoord; dy: WxCoord) {.cdecl, 
    importcpp: "Offset", header: wxh.}
proc offset*(this: var WxRect; pt: WxPoint) {.cdecl, importcpp: "Offset", 
    header: wxh.}
proc intersect*(this: var WxRect; rect: WxRect): var WxRect {.cdecl, 
    importcpp: "Intersect", header: wxh.}
proc intersect*(this: WxRect; rect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "Intersect", header: wxh.}
proc union*(this: var WxRect; rect: WxRect): var WxRect {.cdecl, 
    importcpp: "Union", header: wxh.}
proc union*(this: WxRect; rect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "Union", header: wxh.}
proc contains*(this: WxRect; x: cint; y: cint): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: wxh.}
proc contains*(this: WxRect; pt: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: wxh.}
proc contains*(this: WxRect; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: wxh.}
proc intersects*(this: WxRect; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "Intersects", header: wxh.}
proc `+=`*(this: var WxRect; rect: WxRect) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `*=`*(this: var WxRect; rect: WxRect) {.cdecl, importcpp: "(# *= #)", 
    header: wxh.}
proc centreIn*(this: WxRect; r: WxRect; dir = wxBOTH): WxRect {.noSideEffect, 
    cdecl, importcpp: "CentreIn", header: wxh.}
proc centerIn*(this: WxRect; r: WxRect; dir = wxBOTH): WxRect {.noSideEffect, 
    cdecl, importcpp: "CenterIn", header: wxh.}

proc `==`*(r1: WxRect; r2: WxRect): bool {.cdecl, importcpp: "(# == #)", 
    header: wxh.}

proc `+`*(r1: WxRect; r2: WxRect): WxRect {.cdecl, importcpp: "(# + #)", 
    header: wxh.}

proc `*`*(r1: WxRect; r2: WxRect): WxRect {.cdecl, importcpp: "(# * #)", 
    header: wxh.}

type 
  WxDash* = WxInt8
  WxGDIObjListBase* {.importcpp: "wxGDIObjListBase", header: wxh.} = object 
  

proc constructwxGDIObjListBase*(): WxGDIObjListBase {.cdecl, constructor, 
    importcpp: "wxGDIObjListBase(@)", header: wxh.}
proc destroywxGDIObjListBase*(this: var WxGDIObjListBase) {.cdecl, 
    importcpp: "#.~wxGDIObjListBase()", header: wxh.}

type 
  WxColourDatabase* {.importcpp: "wxColourDatabase", header: wxh.} = object 
  

proc constructwxColourDatabase*(): WxColourDatabase {.cdecl, constructor, 
    importcpp: "wxColourDatabase(@)", header: wxh.}
proc destroywxColourDatabase*(this: var WxColourDatabase) {.cdecl, 
    importcpp: "#.~wxColourDatabase()", header: wxh.}
proc find*(this: WxColourDatabase; name: WxString): WxColour {.noSideEffect, 
    cdecl, importcpp: "Find", header: wxh.}
proc findName*(this: WxColourDatabase; colour: WxColour): WxString {.
    noSideEffect, cdecl, importcpp: "FindName", header: wxh.}
proc addColour*(this: var WxColourDatabase; name: WxString; colour: WxColour) {.
    cdecl, importcpp: "AddColour", header: wxh.}
type 
  WxResourceCache* {.importcpp: "wxResourceCache", header: wxh.} = object of WxList
  

proc constructwxResourceCache*(): WxResourceCache {.cdecl, constructor, 
    importcpp: "wxResourceCache(@)", header: wxh.}
proc constructwxResourceCache*(keyType: cuint): WxResourceCache {.cdecl, 
    constructor, importcpp: "wxResourceCache(@)", header: wxh.}
proc destroywxResourceCache*(this: var WxResourceCache) {.cdecl, 
    importcpp: "#.~wxResourceCache()", header: wxh.}

type 
  WxStockGDI* {.importcpp: "wxStockGDI", header: wxh.} = object 
  
  Item* {.size: sizeof(cint), importcpp: "wxStockGDI::Item", header: wxh.} = enum 
    BRUSH_BLACK, BRUSH_BLUE, BRUSH_CYAN, BRUSH_GREEN, BRUSH_YELLOW, BRUSH_GREY, 
    BRUSH_LIGHTGREY, BRUSH_MEDIUMGREY, BRUSH_RED, BRUSH_TRANSPARENT, 
    BRUSH_WHITE, COLOUR_BLACK, COLOUR_BLUE, COLOUR_CYAN, COLOUR_GREEN, 
    COLOUR_YELLOW, COLOUR_LIGHTGREY, COLOUR_RED, COLOUR_WHITE, CURSOR_CROSS, 
    CURSOR_HOURGLASS, CURSOR_STANDARD, FONT_ITALIC, FONT_NORMAL, FONT_SMALL, 
    FONT_SWISS, PEN_BLACK, PEN_BLACKDASHED, PEN_BLUE, PEN_CYAN, PEN_GREEN, 
    PEN_YELLOW, PEN_GREY, PEN_LIGHTGREY, PEN_MEDIUMGREY, PEN_RED, 
    PEN_TRANSPARENT, PEN_WHITE, ITEMCOUNT


proc constructwxStockGDI*(): WxStockGDI {.cdecl, constructor, 
    importcpp: "wxStockGDI(@)", header: wxh.}
proc destroywxStockGDI*(this: var WxStockGDI) {.cdecl, 
    importcpp: "#.~wxStockGDI()", header: wxh.}
proc deleteAll*() {.cdecl, importcpp: "wxStockGDI::DeleteAll(@)", header: wxh.}
proc instance*(): var WxStockGDI {.cdecl, importcpp: "wxStockGDI::instance(@)", 
                                   header: wxh.}
proc getBrush*(item: Item): ptr WxBrush {.cdecl, 
    importcpp: "wxStockGDI::GetBrush(@)", header: wxh.}
proc getColour*(item: Item): ptr WxColour {.cdecl, 
    importcpp: "wxStockGDI::GetColour(@)", header: wxh.}
proc getCursor*(item: Item): ptr WxCursor {.cdecl, 
    importcpp: "wxStockGDI::GetCursor(@)", header: wxh.}
proc getFont*(this: var WxStockGDI; item: Item): ptr WxFont {.cdecl, 
    importcpp: "GetFont", header: wxh.}
proc getPen*(item: Item): ptr WxPen {.cdecl, importcpp: "wxStockGDI::GetPen(@)", 
                                      header: wxh.}

var wxNullBitmap* {.importcpp: "wxNullBitmap", header: wxh.}: WxBitmap

var wxNullIcon* {.importcpp: "wxNullIcon", header: wxh.}: WxIcon

var wxNullCursor* {.importcpp: "wxNullCursor", header: wxh.}: WxCursor

var wxNullPen* {.importcpp: "wxNullPen", header: wxh.}: WxPen

var wxNullBrush* {.importcpp: "wxNullBrush", header: wxh.}: WxBrush

var wxNullPalette* {.importcpp: "wxNullPalette", header: wxh.}: WxPalette

var wxNullFont* {.importcpp: "wxNullFont", header: wxh.}: WxFont

var wxNullColour* {.importcpp: "wxNullColour", header: wxh.}: WxColour

var wxNullIconBundle* {.importcpp: "wxNullIconBundle", header: wxh.}: WxIconBundle

var wxTheColourDatabase* {.importcpp: "wxTheColourDatabase", header: wxh.}: ptr WxColourDatabase

var wxDefaultSize* {.importcpp: "wxDefaultSize", header: wxh.}: WxSize

var wxDefaultPosition* {.importcpp: "wxDefaultPosition", header: wxh.}: WxPoint


proc wxInitializeStockLists*() {.cdecl, importcpp: "wxInitializeStockLists(@)", 
                                 header: wxh.}
proc wxDeleteStockLists*() {.cdecl, importcpp: "wxDeleteStockLists(@)", 
                             header: wxh.}

proc wxColourDisplay*(): bool {.cdecl, importcpp: "wxColourDisplay(@)", 
                                header: wxh.}

proc wxDisplayDepth*(): cint {.cdecl, importcpp: "wxDisplayDepth(@)", 
                               header: wxh.}
const 
  wxGetDisplayDepth* = wxDisplayDepth


proc wxDisplaySize*(width: ptr cint; height: ptr cint) {.cdecl, 
    importcpp: "wxDisplaySize(@)", header: wxh.}
proc wxGetDisplaySize*(): WxSize {.cdecl, importcpp: "wxGetDisplaySize(@)", 
                                   header: wxh.}
proc wxDisplaySizeMM*(width: ptr cint; height: ptr cint) {.cdecl, 
    importcpp: "wxDisplaySizeMM(@)", header: wxh.}
proc wxGetDisplaySizeMM*(): WxSize {.cdecl, importcpp: "wxGetDisplaySizeMM(@)", 
                                     header: wxh.}
proc wxGetDisplayPPI*(): WxSize {.cdecl, importcpp: "wxGetDisplayPPI(@)", 
                                  header: wxh.}

proc wxClientDisplayRect*(x: ptr cint; y: ptr cint; width: ptr cint; 
                          height: ptr cint) {.cdecl, 
    importcpp: "wxClientDisplayRect(@)", header: wxh.}
proc wxGetClientDisplayRect*(): WxRect {.cdecl, 
    importcpp: "wxGetClientDisplayRect(@)", header: wxh.}

proc wxSetCursor*(cursor: WxCursor) {.cdecl, importcpp: "wxSetCursor(@)", 
                                      header: wxh.}
