



discard "forward decl of wxBitmap"
type 
  WxBrush* {.importcpp: "wxBrush", header: "<wx/wx.h>".} = object 
  

discard "forward decl of wxColour"
discard "forward decl of wxCursor"
discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxPalette"
type 
  WxPen* {.importcpp: "wxPen", header: "<wx/wx.h>".} = object 
  

discard "forward decl of wxRegion"
discard "forward decl of wxString"
type 
  WxIconBundle* {.importcpp: "wxIconBundle", header: "<wx/wx.h>".} = object 
  

discard "forward decl of wxPoint"
type 
  WxBitmapType* {.size: sizeof(cint), importcpp: "wxPoint::wxBitmapType", 
                  header: "<wx/wx.h>".} = enum 
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
                       importcpp: "wxPoint::wxPolygonFillMode", 
                       header: "<wx/wx.h>".} = enum 
    wxODDEVEN_RULE = 1, wxWINDING_RULE



type 
  WxStockCursor* {.size: sizeof(cint), importcpp: "wxPoint::wxStockCursor", 
                   header: "<wx/wx.h>".} = enum 
    wxCURSOR_NONE, wxCURSOR_ARROW, wxCURSOR_RIGHT_ARROW, wxCURSOR_BULLSEYE, 
    wxCURSOR_CHAR, wxCURSOR_CROSS, wxCURSOR_HAND, wxCURSOR_IBEAM, 
    wxCURSOR_LEFT_BUTTON, wxCURSOR_MAGNIFIER, wxCURSOR_MIDDLE_BUTTON, 
    wxCURSOR_NO_ENTRY, wxCURSOR_PAINT_BRUSH, wxCURSOR_PENCIL, 
    wxCURSOR_POINT_LEFT, wxCURSOR_POINT_RIGHT, wxCURSOR_QUESTION_ARROW, 
    wxCURSOR_RIGHT_BUTTON, wxCURSOR_SIZENESW, wxCURSOR_SIZENS, 
    wxCURSOR_SIZENWSE, wxCURSOR_SIZEWE, wxCURSOR_SIZING, wxCURSOR_SPRAYCAN, 
    wxCURSOR_WAIT, wxCURSOR_WATCH, wxCURSOR_BLANK



type 
  WxSize* {.importcpp: "wxSize", header: "<wx/wx.h>".} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint


proc constructwxSize*(): WxSize {.cdecl, constructor, importcpp: "wxSize(@)", 
                                  header: "<wx/wx.h>".}
proc constructwxSize*(xx: cint; yy: cint): WxSize {.cdecl, constructor, 
    importcpp: "wxSize(@)", header: "<wx/wx.h>".}
proc `+=`*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc `/=`*(this: var WxSize; i: clong) {.cdecl, importcpp: "(# /= #)", 
    header: "<wx/wx.h>".}
proc `*=`*(this: var WxSize; i: clong) {.cdecl, importcpp: "(# *= #)", 
    header: "<wx/wx.h>".}
proc `/=`*(this: var WxSize; i: culong) {.cdecl, importcpp: "(# /= #)", 
    header: "<wx/wx.h>".}
proc `*=`*(this: var WxSize; i: culong) {.cdecl, importcpp: "(# *= #)", 
    header: "<wx/wx.h>".}
proc `/=`*(this: var WxSize; i: cdouble) {.cdecl, importcpp: "(# /= #)", 
    header: "<wx/wx.h>".}
proc `*=`*(this: var WxSize; i: cdouble) {.cdecl, importcpp: "(# *= #)", 
    header: "<wx/wx.h>".}
proc incTo*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "IncTo", 
    header: "<wx/wx.h>".}
proc decTo*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "DecTo", 
    header: "<wx/wx.h>".}
proc decToIfSpecified*(this: var WxSize; sz: WxSize) {.cdecl, 
    importcpp: "DecToIfSpecified", header: "<wx/wx.h>".}
proc incBy*(this: var WxSize; dx: cint; dy: cint) {.cdecl, importcpp: "IncBy", 
    header: "<wx/wx.h>".}
proc incBy*(this: var WxSize; pt: WxPoint) {.cdecl, importcpp: "IncBy", 
    header: "<wx/wx.h>".}
proc incBy*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "IncBy", 
    header: "<wx/wx.h>".}
proc incBy*(this: var WxSize; d: cint) {.cdecl, importcpp: "IncBy", 
    header: "<wx/wx.h>".}
proc decBy*(this: var WxSize; dx: cint; dy: cint) {.cdecl, importcpp: "DecBy", 
    header: "<wx/wx.h>".}
proc decBy*(this: var WxSize; pt: WxPoint) {.cdecl, importcpp: "DecBy", 
    header: "<wx/wx.h>".}
proc decBy*(this: var WxSize; sz: WxSize) {.cdecl, importcpp: "DecBy", 
    header: "<wx/wx.h>".}
proc decBy*(this: var WxSize; d: cint) {.cdecl, importcpp: "DecBy", 
    header: "<wx/wx.h>".}
proc scale*(this: var WxSize; xscale: cfloat; yscale: cfloat): var WxSize {.
    cdecl, importcpp: "Scale", header: "<wx/wx.h>".}
proc set*(this: var WxSize; xx: cint; yy: cint) {.cdecl, importcpp: "Set", 
    header: "<wx/wx.h>".}
proc setWidth*(this: var WxSize; w: cint) {.cdecl, importcpp: "SetWidth", 
    header: "<wx/wx.h>".}
proc setHeight*(this: var WxSize; h: cint) {.cdecl, importcpp: "SetHeight", 
    header: "<wx/wx.h>".}
proc getWidth*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetWidth", 
                                     header: "<wx/wx.h>".}
proc getHeight*(this: WxSize): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetHeight", 
                                      header: "<wx/wx.h>".}
proc isFullySpecified*(this: WxSize): bool {.noSideEffect, cdecl, 
    importcpp: "IsFullySpecified", header: "<wx/wx.h>".}
proc setDefaults*(this: var WxSize; size: WxSize) {.cdecl, 
    importcpp: "SetDefaults", header: "<wx/wx.h>".}
proc getX*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetX", 
                                 header: "<wx/wx.h>".}
proc getY*(this: WxSize): cint {.noSideEffect, cdecl, importcpp: "GetY", 
                                 header: "<wx/wx.h>".}
proc `==`*(s1: WxSize; s2: WxSize): bool {.cdecl, importcpp: "(# == #)", 
    header: "<wx/wx.h>".}
proc `+`*(s1: WxSize; s2: WxSize): WxSize {.cdecl, importcpp: "(# + #)", 
    header: "<wx/wx.h>".}
proc `-`*(s1: WxSize; s2: WxSize): WxSize {.cdecl, importcpp: "(# - #)", 
    header: "<wx/wx.h>".}
proc `/`*(s: WxSize; i: clong): WxSize {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxSize; i: clong): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: clong; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `/`*(s: WxSize; i: culong): WxSize {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxSize; i: culong): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: culong; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxSize; i: cdouble): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: cdouble; s: WxSize): WxSize {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}

type 
  WxRealPoint* {.importcpp: "wxRealPoint", header: "<wx/wx.h>".} = object 
    x* {.importc: "x".}: cdouble
    y* {.importc: "y".}: cdouble


proc constructwxRealPoint*(): WxRealPoint {.cdecl, constructor, 
    importcpp: "wxRealPoint(@)", header: "<wx/wx.h>".}
proc constructwxRealPoint*(xx: cdouble; yy: cdouble): WxRealPoint {.cdecl, 
    constructor, importcpp: "wxRealPoint(@)", header: "<wx/wx.h>".}
proc constructwxRealPoint*(pt: WxPoint): WxRealPoint {.cdecl, constructor, 
    importcpp: "wxRealPoint(@)", header: "<wx/wx.h>".}
proc `+=`*(this: var WxRealPoint; p: WxRealPoint) {.cdecl, 
    importcpp: "(# += #)", header: "<wx/wx.h>".}
proc `-=`*(this: var WxRealPoint; p: WxRealPoint) {.cdecl, 
    importcpp: "(# -= #)", header: "<wx/wx.h>".}
proc `+=`*(this: var WxRealPoint; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxRealPoint; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc `==`*(p1: WxRealPoint; p2: WxRealPoint): bool {.cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `+`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# + #)", header: "<wx/wx.h>".}
proc `-`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# - #)", header: "<wx/wx.h>".}
proc `/`*(s: WxRealPoint; i: clong): WxRealPoint {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxRealPoint; i: clong): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: clong; s: WxRealPoint): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `/`*(s: WxRealPoint; i: culong): WxRealPoint {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxRealPoint; i: culong): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: culong; s: WxRealPoint): WxRealPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxRealPoint; i: cdouble): WxRealPoint {.cdecl, 
    importcpp: "(# * #)", header: "<wx/wx.h>".}
proc `*`*(i: cdouble; s: WxRealPoint): WxRealPoint {.cdecl, 
    importcpp: "(# * #)", header: "<wx/wx.h>".}

type 
  WxPoint* {.importcpp: "wxPoint", header: "<wx/wx.h>".} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint


proc constructwxPoint*(): WxPoint {.cdecl, constructor, importcpp: "wxPoint(@)", 
                                    header: "<wx/wx.h>".}
proc constructwxPoint*(xx: cint; yy: cint): WxPoint {.cdecl, constructor, 
    importcpp: "wxPoint(@)", header: "<wx/wx.h>".}
proc constructwxPoint*(pt: WxRealPoint): WxPoint {.cdecl, constructor, 
    importcpp: "wxPoint(@)", header: "<wx/wx.h>".}
proc `+=`*(this: var WxPoint; p: WxPoint) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxPoint; p: WxPoint) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc `+=`*(this: var WxPoint; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxPoint; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc isFullySpecified*(this: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "IsFullySpecified", header: "<wx/wx.h>".}
proc setDefaults*(this: var WxPoint; pt: WxPoint) {.cdecl, 
    importcpp: "SetDefaults", header: "<wx/wx.h>".}

proc `==`*(p1: WxPoint; p2: WxPoint): bool {.cdecl, importcpp: "(# == #)", 
    header: "<wx/wx.h>".}

proc `+`*(p1: WxPoint; p2: WxPoint): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: "<wx/wx.h>".}
proc `-`*(p1: WxPoint; p2: WxPoint): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: "<wx/wx.h>".}
proc `+`*(p: WxPoint; s: WxSize): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: "<wx/wx.h>".}
proc `-`*(p: WxPoint; s: WxSize): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: "<wx/wx.h>".}
proc `+`*(s: WxSize; p: WxPoint): WxPoint {.cdecl, importcpp: "(# + #)", 
    header: "<wx/wx.h>".}
proc `-`*(s: WxSize; p: WxPoint): WxPoint {.cdecl, importcpp: "(# - #)", 
    header: "<wx/wx.h>".}
proc `-`*(p: WxPoint): WxPoint {.cdecl, importcpp: "(- #)", header: "<wx/wx.h>".}
proc `/`*(s: WxPoint; i: clong): WxPoint {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxPoint; i: clong): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: clong; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `/`*(s: WxPoint; i: culong): WxPoint {.cdecl, importcpp: "(# / #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxPoint; i: culong): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: culong; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(s: WxPoint; i: cdouble): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}
proc `*`*(i: cdouble; s: WxPoint): WxPoint {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}

type 
  WxRect* {.importcpp: "wxRect", header: "<wx/wx.h>".} = object 
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint


proc constructwxRect*(): WxRect {.cdecl, constructor, importcpp: "wxRect(@)", 
                                  header: "<wx/wx.h>".}
proc constructwxRect*(xx: cint; yy: cint; ww: cint; hh: cint): WxRect {.cdecl, 
    constructor, importcpp: "wxRect(@)", header: "<wx/wx.h>".}
proc constructwxRect*(topLeft: WxPoint; bottomRight: WxPoint): WxRect {.cdecl, 
    constructor, importcpp: "wxRect(@)", header: "<wx/wx.h>".}
proc constructwxRect*(pt: WxPoint; size: WxSize): WxRect {.cdecl, constructor, 
    importcpp: "wxRect(@)", header: "<wx/wx.h>".}
proc constructwxRect*(size: WxSize): WxRect {.cdecl, constructor, 
    importcpp: "wxRect(@)", header: "<wx/wx.h>".}
proc getX*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetX", 
                                 header: "<wx/wx.h>".}
proc setX*(this: var WxRect; xx: cint) {.cdecl, importcpp: "SetX", 
    header: "<wx/wx.h>".}
proc getY*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetY", 
                                 header: "<wx/wx.h>".}
proc setY*(this: var WxRect; yy: cint) {.cdecl, importcpp: "SetY", 
    header: "<wx/wx.h>".}
proc getWidth*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetWidth", 
                                     header: "<wx/wx.h>".}
proc setWidth*(this: var WxRect; w: cint) {.cdecl, importcpp: "SetWidth", 
    header: "<wx/wx.h>".}
proc getHeight*(this: WxRect): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetHeight", 
                                      header: "<wx/wx.h>".}
proc setHeight*(this: var WxRect; h: cint) {.cdecl, importcpp: "SetHeight", 
    header: "<wx/wx.h>".}
proc getPosition*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc getSize*(this: WxRect): WxSize {.noSideEffect, cdecl, importcpp: "GetSize", 
                                      header: "<wx/wx.h>".}
proc setSize*(this: var WxRect; s: WxSize) {.cdecl, importcpp: "SetSize", 
    header: "<wx/wx.h>".}
proc isEmpty*(this: WxRect): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                    header: "<wx/wx.h>".}
proc getLeft*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetLeft", 
                                    header: "<wx/wx.h>".}
proc getTop*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetTop", 
                                   header: "<wx/wx.h>".}
proc getBottom*(this: WxRect): cint {.noSideEffect, cdecl, 
                                      importcpp: "GetBottom", 
                                      header: "<wx/wx.h>".}
proc getRight*(this: WxRect): cint {.noSideEffect, cdecl, importcpp: "GetRight", 
                                     header: "<wx/wx.h>".}
proc setLeft*(this: var WxRect; left: cint) {.cdecl, importcpp: "SetLeft", 
    header: "<wx/wx.h>".}
proc setRight*(this: var WxRect; right: cint) {.cdecl, importcpp: "SetRight", 
    header: "<wx/wx.h>".}
proc setTop*(this: var WxRect; top: cint) {.cdecl, importcpp: "SetTop", 
    header: "<wx/wx.h>".}
proc setBottom*(this: var WxRect; bottom: cint) {.cdecl, importcpp: "SetBottom", 
    header: "<wx/wx.h>".}
proc getTopLeft*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetTopLeft", header: "<wx/wx.h>".}
proc getLeftTop*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetLeftTop", header: "<wx/wx.h>".}
proc setTopLeft*(this: var WxRect; p: WxPoint) {.cdecl, importcpp: "SetTopLeft", 
    header: "<wx/wx.h>".}
proc setLeftTop*(this: var WxRect; p: WxPoint) {.cdecl, importcpp: "SetLeftTop", 
    header: "<wx/wx.h>".}
proc getBottomRight*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetBottomRight", header: "<wx/wx.h>".}
proc getRightBottom*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetRightBottom", header: "<wx/wx.h>".}
proc setBottomRight*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetBottomRight", header: "<wx/wx.h>".}
proc setRightBottom*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetRightBottom", header: "<wx/wx.h>".}
proc getTopRight*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetTopRight", header: "<wx/wx.h>".}
proc getRightTop*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetRightTop", header: "<wx/wx.h>".}
proc setTopRight*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetTopRight", header: "<wx/wx.h>".}
proc setRightTop*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetRightTop", header: "<wx/wx.h>".}
proc getBottomLeft*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetBottomLeft", header: "<wx/wx.h>".}
proc getLeftBottom*(this: WxRect): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetLeftBottom", header: "<wx/wx.h>".}
proc setBottomLeft*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetBottomLeft", header: "<wx/wx.h>".}
proc setLeftBottom*(this: var WxRect; p: WxPoint) {.cdecl, 
    importcpp: "SetLeftBottom", header: "<wx/wx.h>".}
proc inflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.cdecl, 
    importcpp: "Inflate", header: "<wx/wx.h>".}
proc inflate*(this: var WxRect; d: WxSize): var WxRect {.cdecl, 
    importcpp: "Inflate", header: "<wx/wx.h>".}
proc inflate*(this: var WxRect; d: WxCoord): var WxRect {.cdecl, 
    importcpp: "Inflate", header: "<wx/wx.h>".}
proc inflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect, 
    cdecl, importcpp: "Inflate", header: "<wx/wx.h>".}
proc deflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.cdecl, 
    importcpp: "Deflate", header: "<wx/wx.h>".}
proc deflate*(this: var WxRect; d: WxSize): var WxRect {.cdecl, 
    importcpp: "Deflate", header: "<wx/wx.h>".}
proc deflate*(this: var WxRect; d: WxCoord): var WxRect {.cdecl, 
    importcpp: "Deflate", header: "<wx/wx.h>".}
proc deflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect, 
    cdecl, importcpp: "Deflate", header: "<wx/wx.h>".}
proc offset*(this: var WxRect; dx: WxCoord; dy: WxCoord) {.cdecl, 
    importcpp: "Offset", header: "<wx/wx.h>".}
proc offset*(this: var WxRect; pt: WxPoint) {.cdecl, importcpp: "Offset", 
    header: "<wx/wx.h>".}
proc intersect*(this: var WxRect; rect: WxRect): var WxRect {.cdecl, 
    importcpp: "Intersect", header: "<wx/wx.h>".}
proc intersect*(this: WxRect; rect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "Intersect", header: "<wx/wx.h>".}
proc union*(this: var WxRect; rect: WxRect): var WxRect {.cdecl, 
    importcpp: "Union", header: "<wx/wx.h>".}
proc union*(this: WxRect; rect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "Union", header: "<wx/wx.h>".}
proc contains*(this: WxRect; x: cint; y: cint): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: "<wx/wx.h>".}
proc contains*(this: WxRect; pt: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: "<wx/wx.h>".}
proc contains*(this: WxRect; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: "<wx/wx.h>".}
proc intersects*(this: WxRect; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "Intersects", header: "<wx/wx.h>".}
proc `+=`*(this: var WxRect; rect: WxRect) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `*=`*(this: var WxRect; rect: WxRect) {.cdecl, importcpp: "(# *= #)", 
    header: "<wx/wx.h>".}
proc centreIn*(this: WxRect; r: WxRect; dir = wxBOTH): WxRect {.noSideEffect, 
    cdecl, importcpp: "CentreIn", header: "<wx/wx.h>".}
proc centerIn*(this: WxRect; r: WxRect; dir = wxBOTH): WxRect {.noSideEffect, 
    cdecl, importcpp: "CenterIn", header: "<wx/wx.h>".}

proc `==`*(r1: WxRect; r2: WxRect): bool {.cdecl, importcpp: "(# == #)", 
    header: "<wx/wx.h>".}

proc `+`*(r1: WxRect; r2: WxRect): WxRect {.cdecl, importcpp: "(# + #)", 
    header: "<wx/wx.h>".}

proc `*`*(r1: WxRect; r2: WxRect): WxRect {.cdecl, importcpp: "(# * #)", 
    header: "<wx/wx.h>".}

type 
  WxDash* = WxInt8
  WxGDIObjListBase* {.importcpp: "wxGDIObjListBase", header: "<wx/wx.h>".} = object 
  

proc constructwxGDIObjListBase*(): WxGDIObjListBase {.cdecl, constructor, 
    importcpp: "wxGDIObjListBase(@)", header: "<wx/wx.h>".}
proc destroywxGDIObjListBase*(this: var WxGDIObjListBase) {.cdecl, 
    importcpp: "#.~wxGDIObjListBase()", header: "<wx/wx.h>".}

type 
  WxColourDatabase* {.importcpp: "wxColourDatabase", header: "<wx/wx.h>".} = object 
  

proc constructwxColourDatabase*(): WxColourDatabase {.cdecl, constructor, 
    importcpp: "wxColourDatabase(@)", header: "<wx/wx.h>".}
proc destroywxColourDatabase*(this: var WxColourDatabase) {.cdecl, 
    importcpp: "#.~wxColourDatabase()", header: "<wx/wx.h>".}
proc find*(this: WxColourDatabase; name: WxString): WxColour {.noSideEffect, 
    cdecl, importcpp: "Find", header: "<wx/wx.h>".}
proc findName*(this: WxColourDatabase; colour: WxColour): WxString {.
    noSideEffect, cdecl, importcpp: "FindName", header: "<wx/wx.h>".}
proc addColour*(this: var WxColourDatabase; name: WxString; colour: WxColour) {.
    cdecl, importcpp: "AddColour", header: "<wx/wx.h>".}
type 
  WxResourceCache* {.importcpp: "wxResourceCache", header: "<wx/wx.h>".} = object of WxList
  

proc constructwxResourceCache*(): WxResourceCache {.cdecl, constructor, 
    importcpp: "wxResourceCache(@)", header: "<wx/wx.h>".}
proc constructwxResourceCache*(keyType: cuint): WxResourceCache {.cdecl, 
    constructor, importcpp: "wxResourceCache(@)", header: "<wx/wx.h>".}
proc destroywxResourceCache*(this: var WxResourceCache) {.cdecl, 
    importcpp: "#.~wxResourceCache()", header: "<wx/wx.h>".}

type 
  WxStockGDI* {.importcpp: "wxStockGDI", header: "<wx/wx.h>".} = object 
  
  Item* {.size: sizeof(cint), importcpp: "wxStockGDI::Item", header: "<wx/wx.h>".} = enum 
    BRUSH_BLACK, BRUSH_BLUE, BRUSH_CYAN, BRUSH_GREEN, BRUSH_YELLOW, BRUSH_GREY, 
    BRUSH_LIGHTGREY, BRUSH_MEDIUMGREY, BRUSH_RED, BRUSH_TRANSPARENT, 
    BRUSH_WHITE, COLOUR_BLACK, COLOUR_BLUE, COLOUR_CYAN, COLOUR_GREEN, 
    COLOUR_YELLOW, COLOUR_LIGHTGREY, COLOUR_RED, COLOUR_WHITE, CURSOR_CROSS, 
    CURSOR_HOURGLASS, CURSOR_STANDARD, FONT_ITALIC, FONT_NORMAL, FONT_SMALL, 
    FONT_SWISS, PEN_BLACK, PEN_BLACKDASHED, PEN_BLUE, PEN_CYAN, PEN_GREEN, 
    PEN_YELLOW, PEN_GREY, PEN_LIGHTGREY, PEN_MEDIUMGREY, PEN_RED, 
    PEN_TRANSPARENT, PEN_WHITE, ITEMCOUNT


proc constructwxStockGDI*(): WxStockGDI {.cdecl, constructor, 
    importcpp: "wxStockGDI(@)", header: "<wx/wx.h>".}
proc destroywxStockGDI*(this: var WxStockGDI) {.cdecl, 
    importcpp: "#.~wxStockGDI()", header: "<wx/wx.h>".}
proc deleteAll*() {.cdecl, importcpp: "wxStockGDI::DeleteAll(@)", 
                    header: "<wx/wx.h>".}
proc instance*(): var WxStockGDI {.cdecl, importcpp: "wxStockGDI::instance(@)", 
                                   header: "<wx/wx.h>".}
proc getBrush*(item: Item): ptr WxBrush {.cdecl, 
    importcpp: "wxStockGDI::GetBrush(@)", header: "<wx/wx.h>".}
proc getColour*(item: Item): ptr WxColour {.cdecl, 
    importcpp: "wxStockGDI::GetColour(@)", header: "<wx/wx.h>".}
proc getCursor*(item: Item): ptr WxCursor {.cdecl, 
    importcpp: "wxStockGDI::GetCursor(@)", header: "<wx/wx.h>".}
proc getFont*(this: var WxStockGDI; item: Item): ptr WxFont {.cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc getPen*(item: Item): ptr WxPen {.cdecl, importcpp: "wxStockGDI::GetPen(@)", 
                                      header: "<wx/wx.h>".}

var wxNullBitmap* {.importcpp: "wxNullBitmap", header: "<wx/wx.h>".}: WxBitmap

var wxNullIcon* {.importcpp: "wxNullIcon", header: "<wx/wx.h>".}: WxIcon

var wxNullCursor* {.importcpp: "wxNullCursor", header: "<wx/wx.h>".}: WxCursor

var wxNullPen* {.importcpp: "wxNullPen", header: "<wx/wx.h>".}: WxPen

var wxNullBrush* {.importcpp: "wxNullBrush", header: "<wx/wx.h>".}: WxBrush

var wxNullPalette* {.importcpp: "wxNullPalette", header: "<wx/wx.h>".}: WxPalette

var wxNullFont* {.importcpp: "wxNullFont", header: "<wx/wx.h>".}: WxFont

var wxNullColour* {.importcpp: "wxNullColour", header: "<wx/wx.h>".}: WxColour

var wxNullIconBundle* {.importcpp: "wxNullIconBundle", header: "<wx/wx.h>".}: WxIconBundle

var wxTheColourDatabase* {.importcpp: "wxTheColourDatabase", header: "<wx/wx.h>".}: ptr WxColourDatabase

var wxDefaultSize* {.importcpp: "wxDefaultSize", header: "<wx/wx.h>".}: WxSize

var wxDefaultPosition* {.importcpp: "wxDefaultPosition", header: "<wx/wx.h>".}: WxPoint


proc wxInitializeStockLists*() {.cdecl, importcpp: "wxInitializeStockLists(@)", 
                                 header: "<wx/wx.h>".}
proc wxDeleteStockLists*() {.cdecl, importcpp: "wxDeleteStockLists(@)", 
                             header: "<wx/wx.h>".}

proc wxColourDisplay*(): bool {.cdecl, importcpp: "wxColourDisplay(@)", 
                                header: "<wx/wx.h>".}

proc wxDisplayDepth*(): cint {.cdecl, importcpp: "wxDisplayDepth(@)", 
                               header: "<wx/wx.h>".}
const 
  wxGetDisplayDepth* = wxDisplayDepth


proc wxDisplaySize*(width: ptr cint; height: ptr cint) {.cdecl, 
    importcpp: "wxDisplaySize(@)", header: "<wx/wx.h>".}
proc wxGetDisplaySize*(): WxSize {.cdecl, importcpp: "wxGetDisplaySize(@)", 
                                   header: "<wx/wx.h>".}
proc wxDisplaySizeMM*(width: ptr cint; height: ptr cint) {.cdecl, 
    importcpp: "wxDisplaySizeMM(@)", header: "<wx/wx.h>".}
proc wxGetDisplaySizeMM*(): WxSize {.cdecl, importcpp: "wxGetDisplaySizeMM(@)", 
                                     header: "<wx/wx.h>".}
proc wxGetDisplayPPI*(): WxSize {.cdecl, importcpp: "wxGetDisplayPPI(@)", 
                                  header: "<wx/wx.h>".}

proc wxClientDisplayRect*(x: ptr cint; y: ptr cint; width: ptr cint; 
                          height: ptr cint) {.cdecl, 
    importcpp: "wxClientDisplayRect(@)", header: "<wx/wx.h>".}
proc wxGetClientDisplayRect*(): WxRect {.cdecl, 
    importcpp: "wxGetClientDisplayRect(@)", header: "<wx/wx.h>".}

proc wxSetCursor*(cursor: WxCursor) {.cdecl, importcpp: "wxSetCursor(@)", 
                                      header: "<wx/wx.h>".}
