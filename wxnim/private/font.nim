



discard "forward decl of wxFont"
var wxEmptyString* {.importcpp: "wxEmptyString", header: wxh.}: WxString


type 
  WxFontFamily* {.size: sizeof(cint), importcpp: "wxFontFamily", 
                  header: wxh.} = enum 
    wxFONTFAMILY_DEFAULT = wxDEFAULT, wxFONTFAMILY_DECORATIVE = wxDECORATIVE, 
    wxFONTFAMILY_ROMAN = wxROMAN, wxFONTFAMILY_SCRIPT = wxSCRIPT, 
    wxFONTFAMILY_SWISS = wxSWISS, wxFONTFAMILY_MODERN = wxMODERN, 
    wxFONTFAMILY_TELETYPE = wxTELETYPE, wxFONTFAMILY_MAX

const 
  wxFONTFAMILY_UNKNOWN = wxFONTFAMILY_MAX


type 
  WxFontStyle* {.size: sizeof(cint), importcpp: "wxFontStyle", 
                 header: wxh.} = enum 
    wxFONTSTYLE_NORMAL = wxNORMAL, wxFONTSTYLE_ITALIC = wxITALIC, 
    wxFONTSTYLE_SLANT = wxSLANT, wxFONTSTYLE_MAX



type 
  WxFontWeight* {.size: sizeof(cint), importcpp: "wxFontWeight", 
                  header: wxh.} = enum 
    wxFONTWEIGHT_NORMAL = wxNORMAL, wxFONTWEIGHT_LIGHT = wxLIGHT, 
    wxFONTWEIGHT_BOLD = wxBOLD, wxFONTWEIGHT_MAX



type 
  WxFontSymbolicSize* {.size: sizeof(cint), 
                        importcpp: "wxFont::wxFontSymbolicSize", header: wxh.} = enum 
    wxFONTSIZE_XX_SMALL = - 3, wxFONTSIZE_X_SMALL, wxFONTSIZE_SMALL, 
    wxFONTSIZE_MEDIUM, wxFONTSIZE_LARGE, wxFONTSIZE_X_LARGE, wxFONTSIZE_XX_LARGE



type 
  WxFontFlag* {.size: sizeof(cint), importcpp: "wxFont::wxFontFlag", header: wxh.} = enum 
    wxFONTFLAG_DEFAULT = 0, wxFONTFLAG_ITALIC = 1 shl 0, 
    wxFONTFLAG_SLANT = 1 shl 1, wxFONTFLAG_LIGHT = 1 shl 2, 
    wxFONTFLAG_BOLD = 1 shl 3, wxFONTFLAG_ANTIALIASED = 1 shl 4, 
    wxFONTFLAG_NOT_ANTIALIASED = 1 shl 5, wxFONTFLAG_UNDERLINED = 1 shl 6, 
    wxFONTFLAG_STRIKETHROUGH = 1 shl 7, wxFONTFLAG_MASK = 255



type 
  WxFontInfo* {.importcpp: "wxFontInfo", header: wxh.} = object 
  

proc constructwxFontInfo*(): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: wxh.}
proc constructwxFontInfo*(pointSize: cint): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: wxh.}
proc constructwxFontInfo*(pixelSize: WxSize): WxFontInfo {.cdecl, constructor, 
    importcpp: "wxFontInfo(@)", header: wxh.}
proc family*(this: var WxFontInfo; family: WxFontFamily): var WxFontInfo {.
    cdecl, importcpp: "Family", header: wxh.}
proc faceName*(this: var WxFontInfo; faceName: WxString): var WxFontInfo {.
    cdecl, importcpp: "FaceName", header: wxh.}
proc bold*(this: var WxFontInfo; bold: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Bold", header: wxh.}
proc light*(this: var WxFontInfo; light: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Light", header: wxh.}
proc italic*(this: var WxFontInfo; italic: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Italic", header: wxh.}
proc slant*(this: var WxFontInfo; slant: bool = true): var WxFontInfo {.cdecl, 
    importcpp: "Slant", header: wxh.}
proc antiAliased*(this: var WxFontInfo; antiAliased: bool = true): var WxFontInfo {.
    cdecl, importcpp: "AntiAliased", header: wxh.}
proc underlined*(this: var WxFontInfo; underlined: bool = true): var WxFontInfo {.
    cdecl, importcpp: "Underlined", header: wxh.}
proc strikethrough*(this: var WxFontInfo; strikethrough: bool = true): var WxFontInfo {.
    cdecl, importcpp: "Strikethrough", header: wxh.}
proc encoding*(this: var WxFontInfo; encoding: WxFontEncoding): var WxFontInfo {.
    cdecl, importcpp: "Encoding", header: wxh.}
proc allFlags*(this: var WxFontInfo; flags: cint): var WxFontInfo {.cdecl, 
    importcpp: "AllFlags", header: wxh.}
proc isUsingSizeInPixels*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: wxh.}
proc getPointSize*(this: WxFontInfo): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: wxh.}
proc getPixelSize*(this: WxFontInfo): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: wxh.}
proc getFamily*(this: WxFontInfo): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFamily", header: wxh.}
proc getFaceName*(this: WxFontInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: wxh.}
proc getStyle*(this: WxFontInfo): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getWeight*(this: WxFontInfo): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: wxh.}
proc isAntiAliased*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsAntiAliased", header: wxh.}
proc isUnderlined*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsUnderlined", header: wxh.}
proc isStrikethrough*(this: WxFontInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsStrikethrough", header: wxh.}
proc getEncoding*(this: WxFontInfo): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: wxh.}

type 
  WxNativeFontInfo* {.importcpp: "wxNativeFontInfo", header: wxh.} = object 
  
  WxFontBase* {.importcpp: "wxFontBase", header: wxh.} = object of WxObject
  

proc destroywxFontBase*(this: var WxFontBase) {.cdecl, 
    importcpp: "#.~wxFontBase()", header: wxh.}
proc new*(pointSize: cint; family: cint; style: cint; weight: cint; 
          underlined: bool = false; face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(pixelSize: WxSize; family: cint; style: cint; weight: cint; 
          underlined: bool = false; face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(pointSize: cint; family: WxFontFamily; style: WxFontStyle; 
          weight: WxFontWeight; underlined: bool = false; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(pixelSize: WxSize; family: WxFontFamily; style: WxFontStyle; 
          weight: WxFontWeight; underlined: bool = false; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(pointSize: cint; family: WxFontFamily; flags = wxFONTFLAG_DEFAULT; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(pixelSize: WxSize; family: WxFontFamily; flags = wxFONTFLAG_DEFAULT; 
          face: WxString = wxEmptyString; 
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(nativeFontDesc: WxNativeFontInfo): ptr WxFont {.cdecl, 
    importcpp: "wxFontBase::New(@)", header: wxh.}
proc new*(strNativeFontDesc: WxString): ptr WxFont {.cdecl, 
    importcpp: "wxFontBase::New(@)", header: wxh.}
proc `==`*(this: WxFontBase; font: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getPointSize*(this: WxFontBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: wxh.}
proc getPixelSize*(this: WxFontBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: wxh.}
proc isUsingSizeInPixels*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: wxh.}
proc getFamily*(this: WxFontBase): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFamily", header: wxh.}
proc getStyle*(this: WxFontBase): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getWeight*(this: WxFontBase): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: wxh.}
proc getUnderlined*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetUnderlined", header: wxh.}
proc getStrikethrough*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetStrikethrough", header: wxh.}
proc getFaceName*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: wxh.}
proc getEncoding*(this: WxFontBase): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: wxh.}
proc getNativeFontInfo*(this: WxFontBase): ptr WxNativeFontInfo {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfo", header: wxh.}
proc isFixedWidth*(this: WxFontBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFixedWidth", header: wxh.}
proc getNativeFontInfoDesc*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetNativeFontInfoDesc", header: wxh.}
proc getNativeFontInfoUserDesc*(this: WxFontBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfoUserDesc", header: wxh.}
proc setPointSize*(this: var WxFontBase; pointSize: cint) {.cdecl, 
    importcpp: "SetPointSize", header: wxh.}
proc setPixelSize*(this: var WxFontBase; pixelSize: WxSize) {.cdecl, 
    importcpp: "SetPixelSize", header: wxh.}
proc setFamily*(this: var WxFontBase; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFamily", header: wxh.}
proc setStyle*(this: var WxFontBase; style: WxFontStyle) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc setWeight*(this: var WxFontBase; weight: WxFontWeight) {.cdecl, 
    importcpp: "SetWeight", header: wxh.}
proc setUnderlined*(this: var WxFontBase; underlined: bool) {.cdecl, 
    importcpp: "SetUnderlined", header: wxh.}
proc setStrikethrough*(this: var WxFontBase; strikethrough: bool) {.cdecl, 
    importcpp: "SetStrikethrough", header: wxh.}
proc setEncoding*(this: var WxFontBase; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: wxh.}
proc setFaceName*(this: var WxFontBase; faceName: WxString): bool {.discardable, 
    cdecl, importcpp: "SetFaceName", header: wxh.}
proc setNativeFontInfo*(this: var WxFontBase; info: WxNativeFontInfo) {.cdecl, 
    importcpp: "SetNativeFontInfo", header: wxh.}
proc setNativeFontInfo*(this: var WxFontBase; info: WxString): bool {.
    discardable, cdecl, importcpp: "SetNativeFontInfo", header: wxh.}
proc setNativeFontInfoUserDesc*(this: var WxFontBase; info: WxString): bool {.
    discardable, cdecl, importcpp: "SetNativeFontInfoUserDesc", header: wxh.}
proc setSymbolicSize*(this: var WxFontBase; size: WxFontSymbolicSize) {.cdecl, 
    importcpp: "SetSymbolicSize", header: wxh.}
proc setSymbolicSizeRelativeTo*(this: var WxFontBase; size: WxFontSymbolicSize; 
                                base: cint) {.cdecl, 
    importcpp: "SetSymbolicSizeRelativeTo", header: wxh.}
proc adjustToSymbolicSize*(size: WxFontSymbolicSize; base: cint): cint {.cdecl, 
    importcpp: "wxFontBase::AdjustToSymbolicSize(@)", header: wxh.}
proc getFamilyString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFamilyString", header: wxh.}
proc getStyleString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStyleString", header: wxh.}
proc getWeightString*(this: WxFontBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetWeightString", header: wxh.}
proc getDefaultEncoding*(): WxFontEncoding {.cdecl, 
    importcpp: "wxFontBase::GetDefaultEncoding(@)", header: wxh.}
proc setDefaultEncoding*(encoding: WxFontEncoding) {.cdecl, 
    importcpp: "wxFontBase::SetDefaultEncoding(@)", header: wxh.}

proc wxToString*(font: WxFontBase): WxString {.cdecl, 
    importcpp: "wxToString(@)", header: wxh.}
proc wxFromString*(str: WxString; font: ptr WxFontBase): bool {.cdecl, 
    importcpp: "wxFromString(@)", header: wxh.}

type 
  WxFontList* {.importcpp: "wxFontList", header: wxh.} = object of WxList
  

proc findOrCreateFont*(this: var WxFontList; pointSize: cint; 
                       family: WxFontFamily; style: WxFontStyle; 
                       weight: WxFontWeight; underline: bool = false; 
                       face: WxString = wxEmptyString; 
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "FindOrCreateFont", header: wxh.}
proc findOrCreateFont*(this: var WxFontList; pointSize: cint; family: cint; 
                       style: cint; weight: cint; underline: bool = false; 
                       face: WxString = wxEmptyString; 
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    cdecl, importcpp: "FindOrCreateFont", header: wxh.}
var wxTheFontList* {.importcpp: "wxTheFontList", header: wxh.}: ptr WxFontList


type 
  WxFont* {.importcpp: "wxFont", header: wxh.} = object of WxFontBase
  

proc constructwxFont*(): WxFont {.cdecl, constructor, importcpp: "wxFont(@)", 
                                  header: wxh.}
proc constructwxFont*(info: WxFontInfo): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: wxh.}
proc constructwxFont*(size: cint; family: cint; style: cint; weight: cint; 
                      underlined: bool = false; face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: wxh.}
proc constructwxFont*(size: cint; family: WxFontFamily; style: WxFontStyle; 
                      weight: WxFontWeight; underlined: bool = false; 
                      face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: wxh.}
proc create*(this: var WxFont; size: cint; family: WxFontFamily; 
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false; 
             face: WxString = wxEmptyString; 
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc constructwxFont*(pixelSize: WxSize; family: cint; style: cint; 
                      weight: cint; underlined: bool = false; 
                      face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: wxh.}
proc constructwxFont*(pixelSize: WxSize; family: WxFontFamily; 
                      style: WxFontStyle; weight: WxFontWeight; 
                      underlined: bool = false; face: WxString = wxEmptyString; 
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    cdecl, constructor, importcpp: "wxFont(@)", header: wxh.}
proc constructwxFont*(info: WxNativeFontInfo): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: wxh.}
proc constructwxFont*(fontDesc: WxString): WxFont {.cdecl, constructor, 
    importcpp: "wxFont(@)", header: wxh.}
proc create*(this: var WxFont; pixelSize: WxSize; family: WxFontFamily; 
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false; 
             face: WxString = wxEmptyString; 
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxFont*(this: var WxFont) {.cdecl, importcpp: "#.~wxFont()", 
                                        header: wxh.}
proc getPointSize*(this: WxFont): cint {.noSideEffect, cdecl, 
    importcpp: "GetPointSize", header: wxh.}
proc getPixelSize*(this: WxFont): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetPixelSize", header: wxh.}
proc isUsingSizeInPixels*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "IsUsingSizeInPixels", header: wxh.}
proc getStyle*(this: WxFont): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getWeight*(this: WxFont): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetWeight", header: wxh.}
proc getUnderlined*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "GetUnderlined", header: wxh.}
proc getStrikethrough*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "GetStrikethrough", header: wxh.}
proc getFaceName*(this: WxFont): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFaceName", header: wxh.}
proc getEncoding*(this: WxFont): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: wxh.}
proc getNativeFontInfo*(this: WxFont): ptr WxNativeFontInfo {.noSideEffect, 
    cdecl, importcpp: "GetNativeFontInfo", header: wxh.}
proc setPointSize*(this: var WxFont; pointSize: cint) {.cdecl, 
    importcpp: "SetPointSize", header: wxh.}
proc setPixelSize*(this: var WxFont; pixelSize: WxSize) {.cdecl, 
    importcpp: "SetPixelSize", header: wxh.}
proc setFamily*(this: var WxFont; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFamily", header: wxh.}
proc setStyle*(this: var WxFont; style: WxFontStyle) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc setWeight*(this: var WxFont; weight: WxFontWeight) {.cdecl, 
    importcpp: "SetWeight", header: wxh.}
proc setFaceName*(this: var WxFont; faceName: WxString): bool {.discardable, 
    cdecl, importcpp: "SetFaceName", header: wxh.}
proc setUnderlined*(this: var WxFont; underlined: bool) {.cdecl, 
    importcpp: "SetUnderlined", header: wxh.}
proc setStrikethrough*(this: var WxFont; strikethrough: bool) {.cdecl, 
    importcpp: "SetStrikethrough", header: wxh.}
proc setEncoding*(this: var WxFont; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetEncoding", header: wxh.}
proc makeBold*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeBold", 
    header: wxh.}
proc makeItalic*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeItalic", 
    header: wxh.}
proc makeUnderlined*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeUnderlined", header: wxh.}
proc makeStrikethrough*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeStrikethrough", header: wxh.}
proc makeLarger*(this: var WxFont): var WxFont {.cdecl, importcpp: "MakeLarger", 
    header: wxh.}
proc makeSmaller*(this: var WxFont): var WxFont {.cdecl, 
    importcpp: "MakeSmaller", header: wxh.}
proc scale*(this: var WxFont; x: cfloat): var WxFont {.cdecl, 
    importcpp: "Scale", header: wxh.}
proc bold*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Bold", 
                                   header: wxh.}
proc italic*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Italic", 
                                     header: wxh.}
proc underlined*(this: WxFont): WxFont {.noSideEffect, cdecl, 
    importcpp: "Underlined", header: wxh.}
proc strikethrough*(this: WxFont): WxFont {.noSideEffect, cdecl, 
    importcpp: "Strikethrough", header: wxh.}
proc larger*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Larger", 
                                     header: wxh.}
proc smaller*(this: WxFont): WxFont {.noSideEffect, cdecl, importcpp: "Smaller", 
                                      header: wxh.}
proc scaled*(this: WxFont; x: cfloat): WxFont {.noSideEffect, cdecl, 
    importcpp: "Scaled", header: wxh.}
proc isFixedWidth*(this: WxFont): bool {.noSideEffect, cdecl, 
    importcpp: "IsFixedWidth", header: wxh.}
proc isFree*(this: WxFont): bool {.noSideEffect, cdecl, importcpp: "IsFree", 
                                   header: wxh.}
proc realizeResource*(this: var WxFont): bool {.cdecl, 
    importcpp: "RealizeResource", header: wxh.}
proc freeResource*(this: var WxFont; force: bool = false): bool {.cdecl, 
    importcpp: "FreeResource", header: wxh.}
