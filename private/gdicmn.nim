#///////////////////////////////////////////////////////////////////////////
# Name:        wx/gdicmn.h
# Purpose:     Common GDI classes, types and declarations
# Author:      Julian Smart
# Modified by:
# Created:     01/02/97
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ---------------------------------------------------------------------------
# headers
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# forward declarations
# ---------------------------------------------------------------------------

discard "forward decl of wxBitmap"
discard "forward decl of wxBrush"
discard "forward decl of wxColour"
discard "forward decl of wxCursor"
discard "forward decl of wxFont"
discard "forward decl of wxIcon"
discard "forward decl of wxPalette"
discard "forward decl of wxPen"
discard "forward decl of wxRegion"
discard "forward decl of wxString"
discard "forward decl of wxIconBundle"
discard "forward decl of wxPoint"
type
  WxBitmapType* = enum
    wxBITMAP_TYPE_INVALID,    # should be == 0 for compatibility!
    wxBITMAP_TYPE_BMP, wxBITMAP_TYPE_BMP_RESOURCE,
    wxBITMAP_TYPE_ICO,
    wxBITMAP_TYPE_ICO_RESOURCE, wxBITMAP_TYPE_CUR, wxBITMAP_TYPE_CUR_RESOURCE,
    wxBITMAP_TYPE_XBM, wxBITMAP_TYPE_XBM_DATA, wxBITMAP_TYPE_XPM,
    wxBITMAP_TYPE_XPM_DATA, wxBITMAP_TYPE_TIFF,
    wxBITMAP_TYPE_TIFF_RESOURCE,
    wxBITMAP_TYPE_GIF,
    wxBITMAP_TYPE_GIF_RESOURCE, wxBITMAP_TYPE_PNG, wxBITMAP_TYPE_PNG_RESOURCE,
    wxBITMAP_TYPE_JPEG, wxBITMAP_TYPE_JPEG_RESOURCE, wxBITMAP_TYPE_PNM,
    wxBITMAP_TYPE_PNM_RESOURCE, wxBITMAP_TYPE_PCX, wxBITMAP_TYPE_PCX_RESOURCE,
    wxBITMAP_TYPE_PICT, wxBITMAP_TYPE_PICT_RESOURCE, wxBITMAP_TYPE_ICON,
    wxBITMAP_TYPE_ICON_RESOURCE, wxBITMAP_TYPE_ANI, wxBITMAP_TYPE_IFF,
    wxBITMAP_TYPE_TGA, wxBITMAP_TYPE_MACCURSOR,
    wxBITMAP_TYPE_MACCURSOR_RESOURCE, wxBITMAP_TYPE_MAX,
    wxBITMAP_TYPE_ANY = 50

const
  wxBITMAP_TYPE_RESOURCE = wxBITMAP_TYPE_BMP_RESOURCE
  wxBITMAP_TYPE_TIF_RESOURCE = wxBITMAP_TYPE_TIFF_RESOURCE
  wxBITMAP_TYPE_TIF = wxBITMAP_TYPE_TIFF

#  Polygon filling mode

type
  WxPolygonFillMode* = enum
    wxODDEVEN_RULE = 1, wxWINDING_RULE

#  WxCoord* = cint
# Standard cursors

type
  WxStockCursor* = enum
    wxCURSOR_NONE,            # should be 0
    wxCURSOR_ARROW, wxCURSOR_RIGHT_ARROW, wxCURSOR_BULLSEYE, wxCURSOR_CHAR,
    wxCURSOR_CROSS, wxCURSOR_HAND, wxCURSOR_IBEAM, wxCURSOR_LEFT_BUTTON,
    wxCURSOR_MAGNIFIER, wxCURSOR_MIDDLE_BUTTON, wxCURSOR_NO_ENTRY,
    wxCURSOR_PAINT_BRUSH, wxCURSOR_PENCIL, wxCURSOR_POINT_LEFT,
    wxCURSOR_POINT_RIGHT, wxCURSOR_QUESTION_ARROW, wxCURSOR_RIGHT_BUTTON,
    wxCURSOR_SIZENESW, wxCURSOR_SIZENS, wxCURSOR_SIZENWSE, wxCURSOR_SIZEWE,
    wxCURSOR_SIZING, wxCURSOR_SPRAYCAN, wxCURSOR_WAIT, wxCURSOR_WATCH,
    wxCURSOR_BLANK


# Useful macro for creating icons portably, for example:
#
#    wxIcon *icon = new wxICON(sample);
#
#  expands into:
#
#    wxIcon *icon = new wxIcon("sample");      // On Windows
#    wxIcon *icon = new wxIcon(sample_xpm);    // On wxGTK/Linux
#
# ===========================================================================
# classes
# ===========================================================================
# ---------------------------------------------------------------------------
# wxSize
# ---------------------------------------------------------------------------

proc constructwxSize*(): WxSize {.constructor, importcpp: "wxSize(@)",
                                  header: "wx.h".}
proc constructwxSize*(xx: cint; yy: cint): WxSize {.constructor,
    importcpp: "wxSize(@)", header: "wx.h".}
proc `+=`*(this: var WxSize; sz: WxSize) {.importcpp: "(# += #)", header: "wx.h".}
proc `-=`*(this: var WxSize; sz: WxSize) {.importcpp: "(# -= #)", header: "wx.h".}
proc `/=`*(this: var WxSize; i: cint) {.importcpp: "(# /= #)", header: "wx.h".}
proc `*=`*(this: var WxSize; i: cint) {.importcpp: "(# *= #)", header: "wx.h".}
proc `/=`*(this: var WxSize; i: cuint) {.importcpp: "(# /= #)", header: "wx.h".}
proc `*=`*(this: var WxSize; i: cuint) {.importcpp: "(# *= #)", header: "wx.h".}
proc `/=`*(this: var WxSize; i: cdouble) {.importcpp: "(# /= #)", header: "wx.h".}
proc `*=`*(this: var WxSize; i: cdouble) {.importcpp: "(# *= #)", header: "wx.h".}
proc incTo*(this: var WxSize; sz: WxSize) {.importcpp: "IncTo", header: "wx.h".}
proc decTo*(this: var WxSize; sz: WxSize) {.importcpp: "DecTo", header: "wx.h".}
proc decToIfSpecified*(this: var WxSize; sz: WxSize) {.
    importcpp: "DecToIfSpecified", header: "wx.h".}
proc incBy*(this: var WxSize; dx: cint; dy: cint) {.importcpp: "IncBy",
    header: "wx.h".}
proc incBy*(this: var WxSize; pt: WxPoint) {.importcpp: "IncBy", header: "wx.h".}
proc incBy*(this: var WxSize; sz: WxSize) {.importcpp: "IncBy", header: "wx.h".}
proc incBy*(this: var WxSize; d: cint) {.importcpp: "IncBy", header: "wx.h".}
proc decBy*(this: var WxSize; dx: cint; dy: cint) {.importcpp: "DecBy",
    header: "wx.h".}
proc decBy*(this: var WxSize; pt: WxPoint) {.importcpp: "DecBy", header: "wx.h".}
proc decBy*(this: var WxSize; sz: WxSize) {.importcpp: "DecBy", header: "wx.h".}
proc decBy*(this: var WxSize; d: cint) {.importcpp: "DecBy", header: "wx.h".}
proc scale*(this: var WxSize; xscale: cfloat; yscale: cfloat): var WxSize {.
    importcpp: "Scale", header: "wx.h".}
proc set*(this: var WxSize; xx: cint; yy: cint) {.importcpp: "Set",
    header: "wx.h".}
proc setWidth*(this: var WxSize; w: cint) {.importcpp: "SetWidth",
    header: "wx.h".}
proc setHeight*(this: var WxSize; h: cint) {.importcpp: "SetHeight",
    header: "wx.h".}
proc getWidth*(this: WxSize): cint {.noSideEffect, importcpp: "GetWidth",
                                     header: "wx.h".}
proc getHeight*(this: WxSize): cint {.noSideEffect, importcpp: "GetHeight",
                                      header: "wx.h".}
proc isFullySpecified*(this: WxSize): bool {.noSideEffect,
    importcpp: "IsFullySpecified", header: "wx.h".}
proc setDefaults*(this: var WxSize; size: WxSize) {.importcpp: "SetDefaults",
    header: "wx.h".}
proc getX*(this: WxSize): cint {.noSideEffect, importcpp: "GetX", header: "wx.h".}
proc getY*(this: WxSize): cint {.noSideEffect, importcpp: "GetY", header: "wx.h".}
proc `==`*(s1: WxSize; s2: WxSize): bool {.importcpp: "(# == #)", header: "wx.h".}
proc `+`*(s1: WxSize; s2: WxSize): WxSize {.importcpp: "(# + #)", header: "wx.h".}
proc `-`*(s1: WxSize; s2: WxSize): WxSize {.importcpp: "(# - #)", header: "wx.h".}
proc `/`*(s: WxSize; i: cint): WxSize {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxSize; i: cint): WxSize {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cint; s: WxSize): WxSize {.importcpp: "(# * #)", header: "wx.h".}
proc `/`*(s: WxSize; i: cuint): WxSize {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxSize; i: cuint): WxSize {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cuint; s: WxSize): WxSize {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(s: WxSize; i: cdouble): WxSize {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cdouble; s: WxSize): WxSize {.importcpp: "(# * #)", header: "wx.h".}
# ---------------------------------------------------------------------------
# Point classes: with real or integer coordinates
# ---------------------------------------------------------------------------


proc constructwxRealPoint*(): WxRealPoint {.constructor,
    importcpp: "wxRealPoint(@)", header: "wx.h".}
proc constructwxRealPoint*(xx: cdouble; yy: cdouble): WxRealPoint {.constructor,
    importcpp: "wxRealPoint(@)", header: "wx.h".}
proc constructwxRealPoint*(pt: WxPoint): WxRealPoint {.constructor,
    importcpp: "wxRealPoint(@)", header: "wx.h".}
proc `+=`*(this: var WxRealPoint; p: WxRealPoint) {.importcpp: "(# += #)",
    header: "wx.h".}
proc `-=`*(this: var WxRealPoint; p: WxRealPoint) {.importcpp: "(# -= #)",
    header: "wx.h".}
proc `+=`*(this: var WxRealPoint; s: WxSize) {.importcpp: "(# += #)",
    header: "wx.h".}
proc `-=`*(this: var WxRealPoint; s: WxSize) {.importcpp: "(# -= #)",
    header: "wx.h".}
proc `==`*(p1: WxRealPoint; p2: WxRealPoint): bool {.importcpp: "(# == #)", header: "wx.h".}

proc `+`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.importcpp: "(# + #)", header: "wx.h".}
proc `-`*(p1: WxRealPoint; p2: WxRealPoint): WxRealPoint {.importcpp: "(# - #)", header: "wx.h".}
proc `/`*(s: WxRealPoint; i: cint): WxRealPoint {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxRealPoint; i: cint): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cint; s: WxRealPoint): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `/`*(s: WxRealPoint; i: cuint): WxRealPoint {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxRealPoint; i: cuint): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cuint; s: WxRealPoint): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(s: WxRealPoint; i: cdouble): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cdouble; s: WxRealPoint): WxRealPoint {.importcpp: "(# * #)", header: "wx.h".}
# ----------------------------------------------------------------------------
# wxPoint: 2D point with integer coordinates
# ----------------------------------------------------------------------------

proc constructwxPoint*(): WxPoint {.constructor, importcpp: "wxPoint(@)",
                                    header: "wx.h".}
proc constructwxPoint*(xx: cint; yy: cint): WxPoint {.constructor,
    importcpp: "wxPoint(@)", header: "wx.h".}
proc constructwxPoint*(pt: WxRealPoint): WxPoint {.constructor,
    importcpp: "wxPoint(@)", header: "wx.h".}
proc `+=`*(this: var WxPoint; p: WxPoint) {.importcpp: "(# += #)",
    header: "wx.h".}
proc `-=`*(this: var WxPoint; p: WxPoint) {.importcpp: "(# -= #)",
    header: "wx.h".}
proc `+=`*(this: var WxPoint; s: WxSize) {.importcpp: "(# += #)", header: "wx.h".}
proc `-=`*(this: var WxPoint; s: WxSize) {.importcpp: "(# -= #)", header: "wx.h".}
proc isFullySpecified*(this: WxPoint): bool {.noSideEffect,
    importcpp: "IsFullySpecified", header: "wx.h".}
proc setDefaults*(this: var WxPoint; pt: WxPoint) {.importcpp: "SetDefaults",
    header: "wx.h".}
# comparison

proc `==`*(p1: WxPoint; p2: WxPoint): bool {.importcpp: "(# == #)", header: "wx.h".}

# arithmetic operations (component wise)

proc `+`*(p1: WxPoint; p2: WxPoint): WxPoint {.importcpp: "(# + #)", header: "wx.h".}
proc `-`*(p1: WxPoint; p2: WxPoint): WxPoint {.importcpp: "(# - #)", header: "wx.h".}
proc `+`*(p: WxPoint; s: WxSize): WxPoint {.importcpp: "(# + #)", header: "wx.h".}
proc `-`*(p: WxPoint; s: WxSize): WxPoint {.importcpp: "(# - #)", header: "wx.h".}
proc `+`*(s: WxSize; p: WxPoint): WxPoint {.importcpp: "(# + #)", header: "wx.h".}
proc `-`*(s: WxSize; p: WxPoint): WxPoint {.importcpp: "(# - #)", header: "wx.h".}
proc `-`*(p: WxPoint): WxPoint {.importcpp: "(# - #)", header: "wx.h".}
proc `/`*(s: WxPoint; i: cint): WxPoint {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxPoint; i: cint): WxPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cint; s: WxPoint): WxPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `/`*(s: WxPoint; i: cuint): WxPoint {.importcpp: "(# / #)", header: "wx.h".}
proc `*`*(s: WxPoint; i: cuint): WxPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cuint; s: WxPoint): WxPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(s: WxPoint; i: cdouble): WxPoint {.importcpp: "(# * #)", header: "wx.h".}
proc `*`*(i: cdouble; s: WxPoint): WxPoint {.importcpp: "(# * #)", header: "wx.h".}


# ---------------------------------------------------------------------------
# wxRect
# ---------------------------------------------------------------------------

type
  WxRect* {.importcpp: "wxRect", header: "wx.h".} = object
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint


proc constructwxRect*(): WxRect {.constructor, importcpp: "wxRect(@)",
                                  header: "wx.h".}
proc constructwxRect*(xx: cint; yy: cint; ww: cint; hh: cint): WxRect {.
    constructor, importcpp: "wxRect(@)", header: "wx.h".}
proc constructwxRect*(topLeft: WxPoint; bottomRight: WxPoint): WxRect {.
    constructor, importcpp: "wxRect(@)", header: "wx.h".}
proc constructwxRect*(pt: WxPoint; size: WxSize): WxRect {.constructor,
    importcpp: "wxRect(@)", header: "wx.h".}
proc constructwxRect*(size: WxSize): WxRect {.constructor,
    importcpp: "wxRect(@)", header: "wx.h".}
proc getX*(this: WxRect): cint {.noSideEffect, importcpp: "GetX", header: "wx.h".}
proc setX*(this: var WxRect; xx: cint) {.importcpp: "SetX", header: "wx.h".}
proc getY*(this: WxRect): cint {.noSideEffect, importcpp: "GetY", header: "wx.h".}
proc setY*(this: var WxRect; yy: cint) {.importcpp: "SetY", header: "wx.h".}
proc getWidth*(this: WxRect): cint {.noSideEffect, importcpp: "GetWidth",
                                     header: "wx.h".}
proc setWidth*(this: var WxRect; w: cint) {.importcpp: "SetWidth",
    header: "wx.h".}
proc getHeight*(this: WxRect): cint {.noSideEffect, importcpp: "GetHeight",
                                      header: "wx.h".}
proc setHeight*(this: var WxRect; h: cint) {.importcpp: "SetHeight",
    header: "wx.h".}
proc getPosition*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxRect; p: WxPoint) {.importcpp: "SetPosition",
    header: "wx.h".}
proc getSize*(this: WxRect): WxSize {.noSideEffect, importcpp: "GetSize",
                                      header: "wx.h".}
proc setSize*(this: var WxRect; s: WxSize) {.importcpp: "SetSize",
    header: "wx.h".}
proc isEmpty*(this: WxRect): bool {.noSideEffect, importcpp: "IsEmpty",
                                    header: "wx.h".}
proc getLeft*(this: WxRect): cint {.noSideEffect, importcpp: "GetLeft",
                                    header: "wx.h".}
proc getTop*(this: WxRect): cint {.noSideEffect, importcpp: "GetTop",
                                   header: "wx.h".}
proc getBottom*(this: WxRect): cint {.noSideEffect, importcpp: "GetBottom",
                                      header: "wx.h".}
proc getRight*(this: WxRect): cint {.noSideEffect, importcpp: "GetRight",
                                     header: "wx.h".}
proc setLeft*(this: var WxRect; left: cint) {.importcpp: "SetLeft",
    header: "wx.h".}
proc setRight*(this: var WxRect; right: cint) {.importcpp: "SetRight",
    header: "wx.h".}
proc setTop*(this: var WxRect; top: cint) {.importcpp: "SetTop", header: "wx.h".}
proc setBottom*(this: var WxRect; bottom: cint) {.importcpp: "SetBottom",
    header: "wx.h".}
proc getTopLeft*(this: WxRect): WxPoint {.noSideEffect, importcpp: "GetTopLeft",
    header: "wx.h".}
proc getLeftTop*(this: WxRect): WxPoint {.noSideEffect, importcpp: "GetLeftTop",
    header: "wx.h".}
proc setTopLeft*(this: var WxRect; p: WxPoint) {.importcpp: "SetTopLeft",
    header: "wx.h".}
proc setLeftTop*(this: var WxRect; p: WxPoint) {.importcpp: "SetLeftTop",
    header: "wx.h".}
proc getBottomRight*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetBottomRight", header: "wx.h".}
proc getRightBottom*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetRightBottom", header: "wx.h".}
proc setBottomRight*(this: var WxRect; p: WxPoint) {.
    importcpp: "SetBottomRight", header: "wx.h".}
proc setRightBottom*(this: var WxRect; p: WxPoint) {.
    importcpp: "SetRightBottom", header: "wx.h".}
proc getTopRight*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetTopRight", header: "wx.h".}
proc getRightTop*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetRightTop", header: "wx.h".}
proc setTopRight*(this: var WxRect; p: WxPoint) {.importcpp: "SetTopRight",
    header: "wx.h".}
proc setRightTop*(this: var WxRect; p: WxPoint) {.importcpp: "SetRightTop",
    header: "wx.h".}
proc getBottomLeft*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetBottomLeft", header: "wx.h".}
proc getLeftBottom*(this: WxRect): WxPoint {.noSideEffect,
    importcpp: "GetLeftBottom", header: "wx.h".}
proc setBottomLeft*(this: var WxRect; p: WxPoint) {.importcpp: "SetBottomLeft",
    header: "wx.h".}
proc setLeftBottom*(this: var WxRect; p: WxPoint) {.importcpp: "SetLeftBottom",
    header: "wx.h".}
proc inflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.
    importcpp: "Inflate", header: "wx.h".}
proc inflate*(this: var WxRect; d: WxSize): var WxRect {.importcpp: "Inflate",
    header: "wx.h".}
proc inflate*(this: var WxRect; d: WxCoord): var WxRect {.importcpp: "Inflate",
    header: "wx.h".}
proc inflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect,
    importcpp: "Inflate", header: "wx.h".}
proc deflate*(this: var WxRect; dx: WxCoord; dy: WxCoord): var WxRect {.
    importcpp: "Deflate", header: "wx.h".}
proc deflate*(this: var WxRect; d: WxSize): var WxRect {.importcpp: "Deflate",
    header: "wx.h".}
proc deflate*(this: var WxRect; d: WxCoord): var WxRect {.importcpp: "Deflate",
    header: "wx.h".}
proc deflate*(this: WxRect; dx: WxCoord; dy: WxCoord): WxRect {.noSideEffect,
    importcpp: "Deflate", header: "wx.h".}
proc offset*(this: var WxRect; dx: WxCoord; dy: WxCoord) {.importcpp: "Offset",
    header: "wx.h".}
proc offset*(this: var WxRect; pt: WxPoint) {.importcpp: "Offset",
    header: "wx.h".}
proc intersect*(this: var WxRect; rect: WxRect): var WxRect {.
    importcpp: "Intersect", header: "wx.h".}
proc intersect*(this: WxRect; rect: WxRect): WxRect {.noSideEffect,
    importcpp: "Intersect", header: "wx.h".}
proc union*(this: var WxRect; rect: WxRect): var WxRect {.importcpp: "Union",
    header: "wx.h".}
proc union*(this: WxRect; rect: WxRect): WxRect {.noSideEffect,
    importcpp: "Union", header: "wx.h".}
proc contains*(this: WxRect; x: cint; y: cint): bool {.noSideEffect,
    importcpp: "Contains", header: "wx.h".}
proc contains*(this: WxRect; pt: WxPoint): bool {.noSideEffect,
    importcpp: "Contains", header: "wx.h".}
proc contains*(this: WxRect; rect: WxRect): bool {.noSideEffect,
    importcpp: "Contains", header: "wx.h".}
proc intersects*(this: WxRect; rect: WxRect): bool {.noSideEffect,
    importcpp: "Intersects", header: "wx.h".}
proc `+=`*(this: var WxRect; rect: WxRect) {.importcpp: "(# += #)",
    header: "wx.h".}
proc `*=`*(this: var WxRect; rect: WxRect) {.importcpp: "(# *= #)",
    header: "wx.h".}
proc centreIn*(this: WxRect; r: WxRect; dir: cint): WxRect {.
    noSideEffect, importcpp: "CentreIn", header: "wx.h".}
proc centerIn*(this: WxRect; r: WxRect; dir: cint): WxRect {.
    noSideEffect, importcpp: "CenterIn", header: "wx.h".}
# compare rectangles

proc `==`*(r1: WxRect; r2: WxRect): bool {.importcpp: "(# *= #)", header: "wx.h".}
# like Union() but don't treat empty rectangles specially

proc `+`*(r1: WxRect; r2: WxRect): WxRect {.importcpp: "+(@)", header: "wx.h".}
# intersections of two rectangles

proc `*`*(r1: WxRect; r2: WxRect): WxRect {.importcpp: "*(@)", header: "wx.h".}
# define functions which couldn't be defined above because of declarations
# order

#proc incBy*(this: var WxSize; pt: WxPoint) {.importcpp: "wxSize::IncBy(@)", header: "wx.h".}
#proc decBy*(this: var WxSize;pt: WxPoint) {.importcpp: "wxSize::DecBy(@)", header: "wx.h".}

# ---------------------------------------------------------------------------
# Management of pens, brushes and fonts
# ---------------------------------------------------------------------------

type
  WxDash* = int8
  WxGDIObjListBase* {.importcpp: "wxGDIObjListBase", header: "wx.h".} = object


proc constructwxGDIObjListBase*(): WxGDIObjListBase {.constructor,
    importcpp: "wxGDIObjListBase(@)", header: "wx.h".}
proc destroywxGDIObjListBase*(this: var WxGDIObjListBase) {.
    importcpp: "#.~wxGDIObjListBase()", header: "wx.h".}

type
  WxColourDatabase* {.importcpp: "wxColourDatabase", header: "wx.h".} = object


proc constructwxColourDatabase*(): WxColourDatabase {.constructor,
    importcpp: "wxColourDatabase(@)", header: "wx.h".}
proc destroywxColourDatabase*(this: var WxColourDatabase) {.
    importcpp: "#.~wxColourDatabase()", header: "wx.h".}
proc find*(this: WxColourDatabase; name: WxString): WxColour {.noSideEffect,
    importcpp: "Find", header: "wx.h".}
proc findName*(this: WxColourDatabase; colour: WxColour): WxString {.
    noSideEffect, importcpp: "FindName", header: "wx.h".}
proc addColour*(this: var WxColourDatabase; name: WxString; colour: WxColour) {.
    importcpp: "AddColour", header: "wx.h".}

type
  WxResourceCache* {.importcpp: "wxResourceCache", header: "wx.h".} = object of WxObject


proc constructwxResourceCache*(): WxResourceCache {.constructor,
    importcpp: "wxResourceCache(@)", header: "wx.h".}
proc constructwxResourceCache*(keyType: cuint): WxResourceCache {.constructor,
    importcpp: "wxResourceCache(@)", header: "wx.h".}
proc destroywxResourceCache*(this: var WxResourceCache) {.
    importcpp: "#.~wxResourceCache()", header: "wx.h".}
# ---------------------------------------------------------------------------
# global variables
# ---------------------------------------------------------------------------
# Stock objects
#
#  wxStockGDI creates the stock GDI objects on demand.  Pointers to the
#  created objects are stored in the ms_stockObject array, which is indexed
#  by the Item enum values.  Platorm-specific fonts can be created by
#  implementing a derived class with an override for the GetFont function.
#  wxStockGDI operates as a singleton, accessed through the ms_instance
#  pointer.  By default this pointer is set to an instance of wxStockGDI.
#  A derived class must arrange to set this pointer to an instance of itself.
#

type
  WxStockGDI* {.importcpp: "wxStockGDI", header: "wx.h".} = object

  Item* = enum
    BRUSH_BLACK, BRUSH_BLUE, BRUSH_CYAN, BRUSH_GREEN, BRUSH_YELLOW, BRUSH_GREY,
    BRUSH_LIGHTGREY, BRUSH_MEDIUMGREY, BRUSH_RED, BRUSH_TRANSPARENT,
    BRUSH_WHITE, COLOUR_BLACK, COLOUR_BLUE, COLOUR_CYAN, COLOUR_GREEN,
    COLOUR_YELLOW, COLOUR_LIGHTGREY, COLOUR_RED, COLOUR_WHITE, CURSOR_CROSS,
    CURSOR_HOURGLASS, CURSOR_STANDARD, FONT_ITALIC, FONT_NORMAL, FONT_SMALL,
    FONT_SWISS, PEN_BLACK, PEN_BLACKDASHED, PEN_BLUE, PEN_CYAN, PEN_GREEN,
    PEN_YELLOW, PEN_GREY, PEN_LIGHTGREY, PEN_MEDIUMGREY, PEN_RED,
    PEN_TRANSPARENT, PEN_WHITE, ITEMCOUNT


proc constructwxStockGDI*(): WxStockGDI {.constructor,
    importcpp: "wxStockGDI(@)", header: "wx.h".}
proc destroywxStockGDI*(this: var WxStockGDI) {.importcpp: "#.~wxStockGDI()",
    header: "wx.h".}
proc deleteAll*() {.importcpp: "wxStockGDI::DeleteAll(@)", header: "wx.h".}
proc instance*(): var WxStockGDI {.importcpp: "wxStockGDI::instance(@)",
                                   header: "wx.h".}
#proc getBrush*(item: Item): ptr WxBrush {.importcpp: "wxStockGDI::GetBrush(@)",
#    header: "wx.h".}
proc getColour*(item: Item): ptr WxColour {.
    importcpp: "wxStockGDI::GetColour(@)", header: "wx.h".}
#proc getCursor*(item: Item): ptr WxCursor {.
#    importcpp: "wxStockGDI::GetCursor(@)", header: "wx.h".}
proc getFont*(this: var WxStockGDI; item: Item): ptr WxFont {.
    importcpp: "GetFont", header: "wx.h".}

when false:
  proc getPen*(item: Item): ptr WxPen {.importcpp: "wxStockGDI::GetPen(@)",
                                        header: "wx.h".}

  const
    wxITALIC_FONT* = instance().getFont(font_Italic)
    wxNORMAL_FONT* = instance().getFont(font_Normal)
    wxSMALL_FONT* = instance().getFont(font_Small)
    wxSWISS_FONT* = instance().getFont(font_Swiss)
    wxBLACK_DASHED_PEN* = getPen(pen_Blackdashed)
    wxBLACK_PEN* = getPen(pen_Black)
    wxBLUE_PEN* = getPen(pen_Blue)
    wxCYAN_PEN* = getPen(pen_Cyan)
    wxGREEN_PEN* = getPen(pen_Green)
    wxYELLOW_PEN* = getPen(pen_Yellow)
    wxGREY_PEN* = getPen(pen_Grey)
    wxLIGHT_GREY_PEN* = getPen(pen_Lightgrey)
    wxMEDIUM_GREY_PEN* = getPen(pen_Mediumgrey)
    wxRED_PEN* = getPen(pen_Red)
    wxTRANSPARENT_PEN* = getPen(pen_Transparent)
    wxWHITE_PEN* = getPen(pen_White)
    wxBLACK_BRUSH* = getBrush(brush_Black)
    wxBLUE_BRUSH* = getBrush(brush_Blue)
    wxCYAN_BRUSH* = getBrush(brush_Cyan)
    wxGREEN_BRUSH* = getBrush(brush_Green)
    wxYELLOW_BRUSH* = getBrush(brush_Yellow)
    wxGREY_BRUSH* = getBrush(brush_Grey)
    wxLIGHT_GREY_BRUSH* = getBrush(brush_Lightgrey)
    wxMEDIUM_GREY_BRUSH* = getBrush(brush_Mediumgrey)
    wxRED_BRUSH* = getBrush(brush_Red)
    wxTRANSPARENT_BRUSH* = getBrush(brush_Transparent)
    wxWHITE_BRUSH* = getBrush(brush_White)
    wxBLACK* = getColour(colour_Black)
    wxBLUE* = getColour(colour_Blue)
    wxCYAN* = getColour(colour_Cyan)
    wxGREEN* = getColour(colour_Green)
    wxYELLOW* = getColour(colour_Yellow)
    wxLIGHT_GREY* = getColour(colour_Lightgrey)
    wxRED* = getColour(colour_Red)
    wxWHITE* = getColour(colour_White)
    wxCROSS_CURSOR* = getCursor(cursor_Cross)
    wxHOURGLASS_CURSOR* = getCursor(cursor_Hourglass)
    wxSTANDARD_CURSOR* = getCursor(cursor_Standard)


# ---------------------------------------------------------------------------
# global functions
# ---------------------------------------------------------------------------
# resource management

proc wxInitializeStockLists*() {.importcpp: "wxInitializeStockLists(@)",
                                 header: "wx.h".}
proc wxDeleteStockLists*() {.importcpp: "wxDeleteStockLists(@)", header: "wx.h".}
# is the display colour (or monochrome)?

proc wxColourDisplay*(): bool {.importcpp: "wxColourDisplay(@)", header: "wx.h".}
# Returns depth of screen

proc wxDisplayDepth*(): cint {.importcpp: "wxDisplayDepth(@)", header: "wx.h".}
const
  wxGetDisplayDepth* = wxDisplayDepth

# get the display size

proc wxDisplaySize*(width: ptr cint; height: ptr cint) {.
    importcpp: "wxDisplaySize(@)", header: "wx.h".}
proc wxGetDisplaySize*(): WxSize {.importcpp: "wxGetDisplaySize(@)",
                                   header: "wx.h".}
proc wxDisplaySizeMM*(width: ptr cint; height: ptr cint) {.
    importcpp: "wxDisplaySizeMM(@)", header: "wx.h".}
proc wxGetDisplaySizeMM*(): WxSize {.importcpp: "wxGetDisplaySizeMM(@)",
                                     header: "wx.h".}
proc wxGetDisplayPPI*(): WxSize {.importcpp: "wxGetDisplayPPI(@)",
                                  header: "wx.h".}
# Get position and size of the display workarea

proc wxClientDisplayRect*(x: ptr cint; y: ptr cint; width: ptr cint;
                          height: ptr cint) {.
    importcpp: "wxClientDisplayRect(@)", header: "wx.h".}
proc wxGetClientDisplayRect*(): WxRect {.importcpp: "wxGetClientDisplayRect(@)",
    header: "wx.h".}

when false:
  proc wxSetCursor*(cursor: WxCursor) {.importcpp: "wxSetCursor(@)",
                                        header: "wx.h".}
# _WX_GDICMNH__
