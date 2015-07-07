#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/kbdstate.h
# Purpose:     Declaration of wxKeyboardState class
# Author:      Vadim Zeitlin
# Created:     2008-09-19
# Copyright:   (c) 2008 Vadim Zeitlin <vadim@wxwidgets.org>
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxKeyboardState stores the state of the keyboard modifier keys
# ----------------------------------------------------------------------------

type 
  WxKeyboardState* {.importcpp: "wxKeyboardState", header: "wx.h".} = object 
    mControlDown* {.importc: "m_controlDown".}: bool
    mShiftDown* {.importc: "m_shiftDown".}: bool
    mAltDown* {.importc: "m_altDown".}: bool
    mMetaDown* {.importc: "m_metaDown".}: bool


proc constructwxKeyboardState*(controlDown: bool = false; 
                               shiftDown: bool = false; altDown: bool = false; 
                               metaDown: bool = false): WxKeyboardState {.
    constructor, importcpp: "wxKeyboardState(@)", header: "wx.h".}
proc getModifiers*(this: WxKeyboardState): cint {.noSideEffect, 
    importcpp: "GetModifiers", header: "wx.h".}
proc hasAnyModifiers*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "HasAnyModifiers", header: "wx.h".}
proc hasModifiers*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "HasModifiers", header: "wx.h".}
proc controlDown*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "ControlDown", header: "wx.h".}
proc rawControlDown*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "RawControlDown", header: "wx.h".}
proc shiftDown*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "ShiftDown", header: "wx.h".}
proc metaDown*(this: WxKeyboardState): bool {.noSideEffect, 
    importcpp: "MetaDown", header: "wx.h".}
proc altDown*(this: WxKeyboardState): bool {.noSideEffect, importcpp: "AltDown", 
    header: "wx.h".}
proc cmdDown*(this: WxKeyboardState): bool {.noSideEffect, importcpp: "CmdDown", 
    header: "wx.h".}
proc setControlDown*(this: var WxKeyboardState; down: bool) {.
    importcpp: "SetControlDown", header: "wx.h".}
proc setRawControlDown*(this: var WxKeyboardState; down: bool) {.
    importcpp: "SetRawControlDown", header: "wx.h".}
proc setShiftDown*(this: var WxKeyboardState; down: bool) {.
    importcpp: "SetShiftDown", header: "wx.h".}
proc setAltDown*(this: var WxKeyboardState; down: bool) {.
    importcpp: "SetAltDown", header: "wx.h".}
proc setMetaDown*(this: var WxKeyboardState; down: bool) {.
    importcpp: "SetMetaDown", header: "wx.h".}