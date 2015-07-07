#///////////////////////////////////////////////////////////////////////////
# Name:        wx/scrolbar.h
# Purpose:     wxScrollBar base header
# Author:      Julian Smart
# Modified by:
# Created:
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxScrollBar: a scroll bar control
# ----------------------------------------------------------------------------

type 
  WxScrollBarBase* {.importcpp: "wxScrollBarBase", header: "wx.h".} = object of WxControl
  

proc constructwxScrollBarBase*(): WxScrollBarBase {.constructor, 
    importcpp: "wxScrollBarBase(@)", header: "wx.h".}
proc getThumbPosition*(this: WxScrollBarBase): cint {.noSideEffect, 
    importcpp: "GetThumbPosition", header: "wx.h".}
proc getThumbSize*(this: WxScrollBarBase): cint {.noSideEffect, 
    importcpp: "GetThumbSize", header: "wx.h".}
proc getPageSize*(this: WxScrollBarBase): cint {.noSideEffect, 
    importcpp: "GetPageSize", header: "wx.h".}
proc getRange*(this: WxScrollBarBase): cint {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc isVertical*(this: WxScrollBarBase): bool {.noSideEffect, 
    importcpp: "IsVertical", header: "wx.h".}
proc setThumbPosition*(this: var WxScrollBarBase; viewStart: cint) {.
    importcpp: "SetThumbPosition", header: "wx.h".}
proc setScrollbar*(this: var WxScrollBarBase; position: cint; thumbSize: cint; 
                   range: cint; pageSize: cint; refresh: bool = true) {.
    importcpp: "SetScrollbar", header: "wx.h".}
proc isNeeded*(this: WxScrollBarBase): bool {.noSideEffect, 
    importcpp: "IsNeeded", header: "wx.h".}
# _WX_SCROLBAR_H_BASE_
