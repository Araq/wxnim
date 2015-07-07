#///////////////////////////////////////////////////////////////////////////
# Name:        wx/position.h
# Purpose:     Common structure and methods for positional information.
# Author:      Vadim Zeitlin, Robin Dunn, Brad Anderson, Bryan Petty
# Created:     2007-03-13
# Copyright:   (c) 2007 The wxWidgets Team
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

type 
  WxPosition* {.importcpp: "wxPosition", header: "wx.h".} = object 
    mRow* {.importc: "m_row".}: cint
    mColumn* {.importc: "m_column".}: cint


proc constructwxPosition*(): WxPosition {.constructor, 
    importcpp: "wxPosition(@)", header: "wx.h".}
proc constructwxPosition*(row: cint; col: cint): WxPosition {.constructor, 
    importcpp: "wxPosition(@)", header: "wx.h".}
proc getRow*(this: WxPosition): cint {.noSideEffect, importcpp: "GetRow", 
                                       header: "wx.h".}
proc getColumn*(this: WxPosition): cint {.noSideEffect, importcpp: "GetColumn", 
    header: "wx.h".}
proc getCol*(this: WxPosition): cint {.noSideEffect, importcpp: "GetCol", 
                                       header: "wx.h".}
proc setRow*(this: var WxPosition; row: cint) {.importcpp: "SetRow", 
    header: "wx.h".}
proc setColumn*(this: var WxPosition; column: cint) {.importcpp: "SetColumn", 
    header: "wx.h".}
proc setCol*(this: var WxPosition; column: cint) {.importcpp: "SetCol", 
    header: "wx.h".}
proc `==`*(this: WxPosition; p: WxPosition): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "wx.h".}
proc `+=`*(this: var WxPosition; p: WxPosition) {.importcpp: "(# += #)", 
    header: "wx.h".}
proc `-=`*(this: var WxPosition; p: WxPosition) {.importcpp: "(# -= #)", 
    header: "wx.h".}
proc `+=`*(this: var WxPosition; s: WxSize) {.importcpp: "(# += #)", 
    header: "wx.h".}
proc `-=`*(this: var WxPosition; s: WxSize) {.importcpp: "(# -= #)", 
    header: "wx.h".}
proc `+`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, 
    importcpp: "(# + #)", header: "wx.h".}
proc `-`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, 
    importcpp: "(# - #)", header: "wx.h".}
proc `+`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, 
    importcpp: "(# + #)", header: "wx.h".}
proc `-`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, 
    importcpp: "(# - #)", header: "wx.h".}