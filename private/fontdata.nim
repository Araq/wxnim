

type 
  WxFontData* {.importcpp: "wxFontData", header: "<wx/wx.h>".} = object of WxObject
    mFontColour* {.importc: "m_fontColour".}: WxColour
    mShowHelp* {.importc: "m_showHelp".}: bool
    mAllowSymbols* {.importc: "m_allowSymbols".}: bool
    mEnableEffects* {.importc: "m_enableEffects".}: bool
    mInitialFont* {.importc: "m_initialFont".}: WxFont
    mChosenFont* {.importc: "m_chosenFont".}: WxFont
    mMinSize* {.importc: "m_minSize".}: cint
    mMaxSize* {.importc: "m_maxSize".}: cint
  

proc constructwxFontData*(): WxFontData {.cdecl, constructor, 
    importcpp: "wxFontData(@)", header: "<wx/wx.h>".}
proc destroywxFontData*(this: var WxFontData) {.cdecl, 
    importcpp: "#.~wxFontData()", header: "<wx/wx.h>".}
proc constructwxFontData*(data: WxFontData): WxFontData {.cdecl, constructor, 
    importcpp: "wxFontData(@)", header: "<wx/wx.h>".}
proc setAllowSymbols*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "SetAllowSymbols", header: "<wx/wx.h>".}
proc getAllowSymbols*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetAllowSymbols", header: "<wx/wx.h>".}
proc setColour*(this: var WxFontData; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: "<wx/wx.h>".}
proc getColour*(this: WxFontData): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: "<wx/wx.h>".}
proc setShowHelp*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "SetShowHelp", header: "<wx/wx.h>".}
proc getShowHelp*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetShowHelp", header: "<wx/wx.h>".}
proc enableEffects*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "EnableEffects", header: "<wx/wx.h>".}
proc getEnableEffects*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetEnableEffects", header: "<wx/wx.h>".}
proc setInitialFont*(this: var WxFontData; font: WxFont) {.cdecl, 
    importcpp: "SetInitialFont", header: "<wx/wx.h>".}
proc getInitialFont*(this: WxFontData): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetInitialFont", header: "<wx/wx.h>".}
proc setChosenFont*(this: var WxFontData; font: WxFont) {.cdecl, 
    importcpp: "SetChosenFont", header: "<wx/wx.h>".}
proc getChosenFont*(this: WxFontData): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetChosenFont", header: "<wx/wx.h>".}
proc setRange*(this: var WxFontData; minRange: cint; maxRange: cint) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getEncoding*(this: WxFontData): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: "<wx/wx.h>".}
proc setEncoding*(this: var WxFontData; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: "<wx/wx.h>".}