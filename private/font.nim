



discard "forward decl of wxFont"
var wxEmptyString* {.importcpp: "wxEmptyString", header: "<wx/wx.h>".}: WxString


type 
  WxFontFamily* {.size: sizeof(cint), importcpp: "wxFont::wxFontFamily", 
                  header: "<wx/wx.h>".} = enum 
    wxFONTFAMILY_DEFAULT = wxDEFAULT, wxFONTFAMILY_DECORATIVE = wxDECORATIVE, 
    wxFONTFAMILY_ROMAN = wxROMAN, wxFONTFAMILY_SCRIPT = wxSCRIPT, 
    wxFONTFAMILY_SWISS = wxSWISS, wxFONTFAMILY_MODERN = wxMODERN, 
    wxFONTFAMILY_TELETYPE = wxTELETYPE, wxFONTFAMILY_MAX

const 
  wxFONTFAMILY_UNKNOWN = wxFONTFAMILY_MAX


type 
  WxFontStyle* {.size: sizeof(cint), importcpp: "wxFont::wxFontStyle", 
                 header: "<wx/wx.h>".} = enum 
    wxFONTSTYLE_NORMAL = wxNORMAL, wxFONTSTYLE_ITALIC = wxITALIC, 
    wxFONTSTYLE_SLANT = wxSLANT, wxFONTSTYLE_MAX



type 
  WxFontWeight* {.size: sizeof(cint), importcpp: "wxFont::wxFontWeight", 
                  header: "<wx/wx.h>".} = enum 
    wxFONTWEIGHT_NORMAL = wxNORMAL, wxFONTWEIGHT_LIGHT = wxLIGHT, 
    wxFONTWEIGHT_BOLD = wxBOLD, wxFONTWEIGHT_MAX



type 
  WxFontSymbolicSize* {.size: sizeof(cint), 
                        importcpp: "wxFont::wxFontSymbolicSize", 
                        header: "<wx/wx.h>".} = enum 
    wxFONTSIZE_XX_SMALL = - 3, wxFONTSIZE_X_SMALL, wxFONTSIZE_SMALL, 
    wxFONTSIZE_MEDIUM, wxFONTSIZE_LARGE, wxFONTSIZE_X_LARGE, wxFONTSIZE_XX_LARGE



type 
  WxFontFlag* {.size: sizeof(cint), importcpp: "wxFont::wxFontFlag", 
                header: "<wx/wx.h>".} = enum 
    wxFONTFLAG_DEFAULT = 0, wxFONTFLAG_ITALIC = 1 shl 0, 
    wxFONTFLAG_SLANT = 1 shl 1, wxFONTFLAG_LIGHT = 1 shl 2, 
    wxFONTFLAG_BOLD = 1 shl 3, wxFONTFLAG_ANTIALIASED = 1 shl 4, 
    wxFONTFLAG_NOT_ANTIALIASED = 1 shl 5, wxFONTFLAG_UNDERLINED = 1 shl 6, 
    wxFONTFLAG_STRIKETHROUGH = 1 shl 7, wxFONTFLAG_MASK = 255



type 
  WxFontInfo* {.importcpp: "wxFontInfo", header: "<wx/wx.h>".} = object 
  

proc constructwxFontInfo*(): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: "<wx/wx.h>".}
proc constructwxFontInfo*(pointSize: cint): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: "<wx/wx.h>".}
proc constructwxFontInfo*(pixelSize: WxSize): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: "<wx/wx.h>".}
proc family*(this: var WxFontInfo; family: WxFontFamily): var WxFontInfo {.
    cdecl, importcpp: "Family", header: "<wx/wx.h>".}
proc faceName*(this: var WxFontInfo; faceName: WxString): var WxFontInfo {.
    cdecl, importcpp: "FaceName", header: "<wx/wx.h>".}
proc bold*(this: var WxFontInfo; bold: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Bold", header: "<wx/wx.h>".}
proc light*(this: var WxFontInfo; light: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Light", header: "<wx/wx.h>".}
proc italic*(this: var WxFontInfo; italic: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Italic", header: "<wx/wx.h>".}
proc slant*(this: var WxFontInfo; slant: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Slant", header: "<wx/wx.h>".}
proc antiAliased*(this: var WxFontInfo; antiAliased: bool = true): var WxFontInfo {.
    cdecl, importcpp: "AntiAliased", header: "<wx/wx.h>".}
proc underlined*(this: var WxFontInfo; underlined: bool = true): var WxFontInfo {.
    cdecl, importcpp: "Underlined", header: "<wx/wx.h>".}
proc strikethrough*(this: var WxFontInfo; strikethrough: bool = true): var WxFontInfo {.
    cdecl, importcpp: "Strikethrough", header: "<wx/wx.h>".}
proc encoding*(this: var WxFontInfo; encoding: WxFontEncoding): var WxFontInfo {.
    cdecl, importcpp: "Encoding", header: "<wx/wx.h>".}
proc allFlags*(this: var WxFontInfo; flags: cint): var WxFontInfo {.cdecl, 
    importcpp: "AllFlags", header: "<wx/wx.h>".}
proc isUsingSizeInPixels*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: "<wx/wx.h>".}
proc getPointSize*(this: WxFontInfo): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: "<wx/wx.h>".}
proc getPixelSize*(this: WxFontInfo): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: "<wx/wx.h>".}
proc getFamily*(this: WxFontInfo): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFamily", header: "<wx/wx.h>".}
proc getFaceName*(this: WxFontInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: "<wx/wx.h>".}
proc getStyle*(this: WxFontInfo): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc getWeight*(this: WxFontInfo): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: "<wx/wx.h>".}
proc isAntiAliased*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsAntiAliased", header: "<wx/wx.h>".}
proc isUnderlined*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsUnderlined", header: "<wx/wx.h>".}
proc isStrikethrough*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsStrikethrough", header: "<wx/wx.h>".}
proc getEncoding*(this: WxFontInfo): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: "<wx/wx.h>".}

type 
  WxNativeFontInfo* {.importcpp: "wxNativeFontInfo", header: "<wx/wx.h>".} = object 
  
  WxFontBase* {.importcpp: "wxFontBase", header: "<wx/wx.h>".} = object of WxObject
  

proc destroywxFontBase*(this: var WxFontBase) {.cdecl, 
    importcpp: "#.~wxFontBase()", header: "<wx/wx.h>".}
proc new*(pointSize: cint; family: cint; style: cint; weight: cint; 
          underlined: bool = false; face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(pixelSize: WxSize; family: cint; style: cint; weight: cint; 
          underlined: bool = false; face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(pointSize: cint; family: WxFontFamily; style: WxFontStyle; 
          weight: WxFontWeight; underlined: bool = false; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(pixelSize: WxSize; family: WxFontFamily; style: WxFontStyle; 
          weight: WxFontWeight; underlined: bool = false; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(pointSize: cint; family: WxFontFamily; flags = wxFONTFLAG_DEFAULT; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(pixelSize: WxSize; family: WxFontFamily; flags = wxFONTFLAG_DEFAULT; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(nativeFontDesc: WxNativeFontInfo): ptr WxFont {.cdecl, 
    importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc new*(strNativeFontDesc: WxString): ptr WxFont {.cdecl, 
    importcpp: "wxFontBase::New(@)", header: "<wx/wx.h>".}
proc `==`*(this: WxFontBase; font: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc getPointSize*(this: WxFontBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: "<wx/wx.h>".}
proc getPixelSize*(this: WxFontBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: "<wx/wx.h>".}
proc isUsingSizeInPixels*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: "<wx/wx.h>".}
proc getFamily*(this: WxFontBase): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFamily", header: "<wx/wx.h>".}
proc getStyle*(this: WxFontBase): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc getWeight*(this: WxFontBase): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: "<wx/wx.h>".}
proc getUnderlined*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetUnderlined", header: "<wx/wx.h>".}
proc getStrikethrough*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetStrikethrough", header: "<wx/wx.h>".}
proc getFaceName*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: "<wx/wx.h>".}
proc getEncoding*(this: WxFontBase): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: "<wx/wx.h>".}
proc getNativeFontInfo*(this: WxFontBase): ptr WxNativeFontInfo {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfo", header: "<wx/wx.h>".}
proc isFixedWidth*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFixedWidth", header: "<wx/wx.h>".}
proc getNativeFontInfoDesc*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetNativeFontInfoDesc", header: "<wx/wx.h>".}
proc getNativeFontInfoUserDesc*(this: WxFontBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfoUserDesc", header: "<wx/wx.h>".}
proc setPointSize*(this: var WxFontBase; pointSize: cint) {.cdecl, 
    importcpp: "SetPointSize", header: "<wx/wx.h>".}
proc setPixelSize*(this: var WxFontBase; pixelSize: WxSize) {.cdecl, 
    importcpp: "SetPixelSize", header: "<wx/wx.h>".}
proc setFamily*(this: var WxFontBase; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFamily", header: "<wx/wx.h>".}
proc setStyle*(this: var WxFontBase; style: WxFontStyle) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc setWeight*(this: var WxFontBase; weight: WxFontWeight) {.cdecl, 
    importcpp: "SetWeight", header: "<wx/wx.h>".}
proc setUnderlined*(this: var WxFontBase; underlined: bool) {.cdecl, 
    importcpp: "SetUnderlined", header: "<wx/wx.h>".}
proc setStrikethrough*(this: var WxFontBase; strikethrough: bool) {.cdecl, 
    importcpp: "SetStrikethrough", header: "<wx/wx.h>".}
proc setEncoding*(this: var WxFontBase; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: "<wx/wx.h>".}
proc setFaceName*(this: var WxFontBase; faceName: WxString): bool {.cdecl, 
    importcpp: "SetFaceName", header: "<wx/wx.h>".}
proc setNativeFontInfo*(this: var WxFontBase; info: WxNativeFontInfo) {.cdecl, 
    importcpp: "SetNativeFontInfo", header: "<wx/wx.h>".}
proc setNativeFontInfo*(this: var WxFontBase; info: WxString): bool {.cdecl, 
    importcpp: "SetNativeFontInfo", header: "<wx/wx.h>".}
proc setNativeFontInfoUserDesc*(this: var WxFontBase; info: WxString): bool {.
    cdecl, importcpp: "SetNativeFontInfoUserDesc", header: "<wx/wx.h>".}
proc setSymbolicSize*(this: var WxFontBase; size: WxFontSymbolicSize) {.cdecl, 
    importcpp: "SetSymbolicSize", header: "<wx/wx.h>".}
proc setSymbolicSizeRelativeTo*(this: var WxFontBase; size: WxFontSymbolicSize; 
                                base: cint) {.cdecl, 
    importcpp: "SetSymbolicSizeRelativeTo", header: "<wx/wx.h>".}
proc adjustToSymbolicSize*(size: WxFontSymbolicSize; base: cint): cint {.cdecl, 
    importcpp: "wxFontBase::AdjustToSymbolicSize(@)", header: "<wx/wx.h>".}
proc getFamilyString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFamilyString", header: "<wx/wx.h>".}
proc getStyleString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStyleString", header: "<wx/wx.h>".}
proc getWeightString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetWeightString", header: "<wx/wx.h>".}
proc getDefaultEncoding*(): WxFontEncoding {.cdecl, 
    importcpp: "wxFontBase::GetDefaultEncoding(@)", header: "<wx/wx.h>".}
proc setDefaultEncoding*(encoding: WxFontEncoding) {.cdecl, 
    importcpp: "wxFontBase::SetDefaultEncoding(@)", header: "<wx/wx.h>".}

proc wxToString*(font: WxFontBase): WxString {.cdecl, 
    importcpp: "wxToString(@)", header: "<wx/wx.h>".}
proc wxFromString*(str: WxString; font: ptr WxFontBase): bool {.cdecl, 
    importcpp: "wxFromString(@)", header: "<wx/wx.h>".}

type 
  WxFontList* {.importcpp: "wxFontList", header: "<wx/wx.h>".} = object of WxList
  

proc findOrCreateFont*(this: var WxFontList; pointSize: cint; 
                       family: WxFontFamily; style: WxFontStyle; 
                       weight: WxFontWeight; underline: bool = false; 
                       face: WxString = wxEmptyString; 
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "FindOrCreateFont", header: "<wx/wx.h>".}
proc findOrCreateFont*(this: var WxFontList; pointSize: cint; family: cint; 
                       style: cint; weight: cint; underline: bool = false; 
                       face: WxString = wxEmptyString; 
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "FindOrCreateFont", header: "<wx/wx.h>".}
var wxTheFontList* {.importcpp: "wxTheFontList", header: "<wx/wx.h>".}: ptr WxFontList


type 
  WxFont* {.importcpp: "wxFont", header: "<wx/wx.h>".} = object of WxFontBase
  

proc constructwxFont*(): WxFont {.cdecl, constructor, importcpp: "wxFont(@)", 
                                  header: "<wx/wx.h>".}
proc constructwxFont*(info: WxFontInfo): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc constructwxFont*(size: cint; family: cint; style: cint; weight: cint; 
                      underlined: bool = false; face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc constructwxFont*(size: cint; family: WxFontFamily; style: WxFontStyle; 
                      weight: WxFontWeight; underlined: bool = false; 
                      face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc create*(this: var WxFont; size: cint; family: WxFontFamily; 
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false; 
             face: WxString = wxEmptyString; 
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc constructwxFont*(pixelSize: WxSize; family: cint; style: cint; 
                      weight: cint; underlined: bool = false; 
                      face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc constructwxFont*(pixelSize: WxSize; family: WxFontFamily; 
                      style: WxFontStyle; weight: WxFontWeight; 
                      underlined: bool = false; face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc constructwxFont*(info: WxNativeFontInfo): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc constructwxFont*(fontDesc: WxString): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: "<wx/wx.h>".}
proc create*(this: var WxFont; pixelSize: WxSize; family: WxFontFamily; 
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false; 
             face: WxString = wxEmptyString; 
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc destroywxFont*(this: var WxFont) {.cdecl, importcpp: "#.~wxFont()", 
                                        header: "<wx/wx.h>".}
proc getPointSize*(this: WxFont): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: "<wx/wx.h>".}
proc getPixelSize*(this: WxFont): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: "<wx/wx.h>".}
proc isUsingSizeInPixels*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: "<wx/wx.h>".}
proc getStyle*(this: WxFont): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc getWeight*(this: WxFont): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: "<wx/wx.h>".}
proc getUnderlined*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "GetUnderlined", header: "<wx/wx.h>".}
proc getStrikethrough*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "GetStrikethrough", header: "<wx/wx.h>".}
proc getFaceName*(this: WxFont): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: "<wx/wx.h>".}
proc getEncoding*(this: WxFont): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: "<wx/wx.h>".}
proc getNativeFontInfo*(this: WxFont): ptr WxNativeFontInfo {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfo", header: "<wx/wx.h>".}
proc setPointSize*(this: var WxFont; pointSize: cint) {.cdecl, 
    importcpp: "SetPointSize", header: "<wx/wx.h>".}
proc setPixelSize*(this: var WxFont; pixelSize: WxSize) {.cdecl, 
    importcpp: "SetPixelSize", header: "<wx/wx.h>".}
proc setFamily*(this: var WxFont; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFamily", header: "<wx/wx.h>".}
proc setStyle*(this: var WxFont; style: WxFontStyle) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc setWeight*(this: var WxFont; weight: WxFontWeight) {.cdecl, 
    importcpp: "SetWeight", header: "<wx/wx.h>".}
proc setFaceName*(this: var WxFont; faceName: WxString): bool {.cdecl, 
    importcpp: "SetFaceName", header: "<wx/wx.h>".}
proc setUnderlined*(this: var WxFont; underlined: bool) {.cdecl, 
    importcpp: "SetUnderlined", header: "<wx/wx.h>".}
proc setStrikethrough*(this: var WxFont; strikethrough: bool) {.cdecl, 
    importcpp: "SetStrikethrough", header: "<wx/wx.h>".}
proc setEncoding*(this: var WxFont; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: "<wx/wx.h>".}
proc makeBold*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeBold", 
    header: "<wx/wx.h>".}
proc makeItalic*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeItalic", 
    header: "<wx/wx.h>".}
proc makeUnderlined*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeUnderlined", header: "<wx/wx.h>".}
proc makeStrikethrough*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeStrikethrough", header: "<wx/wx.h>".}
proc makeLarger*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeLarger", 
    header: "<wx/wx.h>".}
proc makeSmaller*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeSmaller", header: "<wx/wx.h>".}
proc scale*(this: var WxFont; x: cfloat): var WxFont {.cdecl, 
    importcpp: "Scale", header: "<wx/wx.h>".}
proc bold*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Bold", 
                                   header: "<wx/wx.h>".}
proc italic*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Italic", 
                                     header: "<wx/wx.h>".}
proc underlined*(this: WxFont): WxFont {.noSideEffect, cdecl, 
    importcpp: "Underlined", header: "<wx/wx.h>".}
proc strikethrough*(this: WxFont): WxFont {.noSideEffect, cdecl, 
    importcpp: "Strikethrough", header: "<wx/wx.h>".}
proc larger*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Larger", 
                                     header: "<wx/wx.h>".}
proc smaller*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Smaller", 
                                      header: "<wx/wx.h>".}
proc scaled*(this: WxFont; x: cfloat): WxFont {.noSideEffect, cdecl, 
    importcpp: "Scaled", header: "<wx/wx.h>".}
proc isFixedWidth*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "IsFixedWidth", header: "<wx/wx.h>".}
proc isFree*(this: WxFont): bool {.noSideEffect, cdecl, importcpp: "IsFree", 
                                   header: "<wx/wx.h>".}
proc realizeResource*(this: var WxFont): bool {.cdecl, 
    importcpp: "RealizeResource", header: "<wx/wx.h>".}
proc freeResource*(this: var WxFont; force: bool = false): bool {.cdecl, 
    importcpp: "FreeResource", header: "<wx/wx.h>".}
