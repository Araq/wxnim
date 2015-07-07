#///////////////////////////////////////////////////////////////////////////
# Name:        wx/fontdata.h
# Author:      Julian Smart
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

type
  WxFontData* {.importcpp: "wxFontData", header: "wx.h".} = object of WxObject
    mFontColour* {.importc: "m_fontColour".}: WxColour
    mShowHelp* {.importc: "m_showHelp".}: bool
    mAllowSymbols* {.importc: "m_allowSymbols".}: bool
    mEnableEffects* {.importc: "m_enableEffects".}: bool
    mInitialFont* {.importc: "m_initialFont".}: WxFont
    mChosenFont* {.importc: "m_chosenFont".}: WxFont
    mMinSize* {.importc: "m_minSize".}: cint
    mMaxSize* {.importc: "m_maxSize".}: cint
    mEncoding* {.importc: "m_encoding".}: WxFontEncoding


proc constructwxFontData*(): WxFontData {.constructor,
    importcpp: "wxFontData(@)", header: "wx.h".}
proc destroywxFontData*(this: var WxFontData) {.importcpp: "#.~wxFontData()",
    header: "wx.h".}
proc constructwxFontData*(data: WxFontData): WxFontData {.constructor,
    importcpp: "wxFontData(@)", header: "wx.h".}
proc setAllowSymbols*(this: var WxFontData; flag: bool) {.
    importcpp: "SetAllowSymbols", header: "wx.h".}
proc getAllowSymbols*(this: WxFontData): bool {.noSideEffect,
    importcpp: "GetAllowSymbols", header: "wx.h".}
proc setColour*(this: var WxFontData; colour: WxColour) {.
    importcpp: "SetColour", header: "wx.h".}
proc getColour*(this: WxFontData): WxColour {.noSideEffect,
    importcpp: "GetColour", header: "wx.h".}
proc setShowHelp*(this: var WxFontData; flag: bool) {.importcpp: "SetShowHelp",
    header: "wx.h".}
proc getShowHelp*(this: WxFontData): bool {.noSideEffect,
    importcpp: "GetShowHelp", header: "wx.h".}
proc enableEffects*(this: var WxFontData; flag: bool) {.
    importcpp: "EnableEffects", header: "wx.h".}
proc getEnableEffects*(this: WxFontData): bool {.noSideEffect,
    importcpp: "GetEnableEffects", header: "wx.h".}
proc setInitialFont*(this: var WxFontData; font: WxFont) {.
    importcpp: "SetInitialFont", header: "wx.h".}
proc getInitialFont*(this: WxFontData): WxFont {.noSideEffect,
    importcpp: "GetInitialFont", header: "wx.h".}
proc setChosenFont*(this: var WxFontData; font: WxFont) {.
    importcpp: "SetChosenFont", header: "wx.h".}
proc getChosenFont*(this: WxFontData): WxFont {.noSideEffect,
    importcpp: "GetChosenFont", header: "wx.h".}
proc setRange*(this: var WxFontData; minRange: cint; maxRange: cint) {.
    importcpp: "SetRange", header: "wx.h".}
proc getEncoding*(this: WxFontData): WxFontEncoding {.noSideEffect,
    importcpp: "GetEncoding", header: "wx.h".}
proc setEncoding*(this: var WxFontData; encoding: WxFontEncoding) {.
    importcpp: "SetEncoding", header: "wx.h".}

