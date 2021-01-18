

type 
  WxFontData* {.importcpp: "wxFontData", header: wxh.} = object of WxObject
    mFontColour* {.importc: "m_fontColour".}: WxColour
    mShowHelp* {.importc: "m_showHelp".}: bool
    mAllowSymbols* {.importc: "m_allowSymbols".}: bool
    mEnableEffects* {.importc: "m_enableEffects".}: bool
    mInitialFont* {.importc: "m_initialFont".}: WxFont
    mChosenFont* {.importc: "m_chosenFont".}: WxFont
    mMinSize* {.importc: "m_minSize".}: cint
    mMaxSize* {.importc: "m_maxSize".}: cint
  

proc constructwxFontData*(): WxFontData {.cdecl, constructor, 
    importcpp: "wxFontData(@)", header: wxh.}
proc destroywxFontData*(this: var WxFontData) {.cdecl, 
    importcpp: "#.~wxFontData()", header: wxh.}
proc constructwxFontData*(data: WxFontData): WxFontData {.cdecl, constructor, 
    importcpp: "wxFontData(@)", header: wxh.}
proc setAllowSymbols*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "SetAllowSymbols", header: wxh.}
proc getAllowSymbols*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetAllowSymbols", header: wxh.}
proc setColour*(this: var WxFontData; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc getColour*(this: WxFontData): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: wxh.}
proc setShowHelp*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "SetShowHelp", header: wxh.}
proc getShowHelp*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetShowHelp", header: wxh.}
proc enableEffects*(this: var WxFontData; flag: bool) {.cdecl, 
    importcpp: "EnableEffects", header: wxh.}
proc getEnableEffects*(this: WxFontData): bool {.noSideEffect, cdecl, 
    importcpp: "GetEnableEffects", header: wxh.}
proc setInitialFont*(this: var WxFontData; font: WxFont) {.cdecl, 
    importcpp: "SetInitialFont", header: wxh.}
proc getInitialFont*(this: WxFontData): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetInitialFont", header: wxh.}
proc setChosenFont*(this: var WxFontData; font: WxFont) {.cdecl, 
    importcpp: "SetChosenFont", header: wxh.}
proc getChosenFont*(this: WxFontData): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetChosenFont", header: wxh.}
proc setRange*(this: var WxFontData; minRange: cint; maxRange: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getEncoding*(this: WxFontData): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: wxh.}
proc setEncoding*(this: var WxFontData; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: wxh.}