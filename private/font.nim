#///////////////////////////////////////////////////////////////////////////
# Name:        wx/font.h
# Purpose:     wxFontBase class: the interface of wxFont
# Author:      Vadim Zeitlin
# Modified by:
# Created:     20.09.99
# Copyright:   (c) wxWidgets team
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# headers
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# forward declarations
# ----------------------------------------------------------------------------

discard "forward decl of wxFont"
type
  WxFontFamily* = enum
    wxFONTFAMILY_DEFAULT = wxDEFAULT, wxFONTFAMILY_DECORATIVE = wxDECORATIVE,
    wxFONTFAMILY_ROMAN = wxROMAN, wxFONTFAMILY_SCRIPT = wxSCRIPT,
    wxFONTFAMILY_SWISS = wxSWISS, wxFONTFAMILY_MODERN = wxMODERN,
    wxFONTFAMILY_TELETYPE = wxTELETYPE,
    wxFONTFAMILY_UNKNOWN


# font styles

type
  WxFontStyle* = enum
    wxFONTSTYLE_NORMAL = wxNORMAL, wxFONTSTYLE_ITALIC = wxITALIC,
    wxFONTSTYLE_SLANT = wxSLANT, wxFONTSTYLE_MAX


# font weights

type
  WxFontWeight* = enum
    wxFONTWEIGHT_NORMAL = wxNORMAL, wxFONTWEIGHT_LIGHT = wxLIGHT,
    wxFONTWEIGHT_BOLD = wxBOLD, wxFONTWEIGHT_MAX


# Symbolic font sizes as defined in CSS specification.

type
  WxFontSymbolicSize* = enum
    wxFONTSIZE_XX_SMALL = - 3, wxFONTSIZE_X_SMALL, wxFONTSIZE_SMALL,
    wxFONTSIZE_MEDIUM, wxFONTSIZE_LARGE, wxFONTSIZE_X_LARGE, wxFONTSIZE_XX_LARGE


# the font flag bits for the new font ctor accepting one combined flags word

type
  WxFontFlag* = enum          # no special flags: font with default weight/slant/anti-aliasing
    wxFONTFLAG_DEFAULT = 0,   # slant flags (default: no slant)
    wxFONTFLAG_ITALIC = 1 shl 0, wxFONTFLAG_SLANT = 1 shl 1, # weight flags (default: medium)
    wxFONTFLAG_LIGHT = 1 shl 2, wxFONTFLAG_BOLD = 1 shl 3, # anti-aliasing flag: force on or off (default: the current system default)
    wxFONTFLAG_ANTIALIASED = 1 shl 4,
    wxFONTFLAG_NOT_ANTIALIASED = 1 shl 5,
    wxFONTFLAG_UNDERLINED = 1 shl 6,
    wxFONTFLAG_STRIKETHROUGH = 1 shl 7

const
    wxFONTFLAG_MASK* = 127
    # wxFONTFLAG_ITALIC or wxFONTFLAG_SLANT or
    #    wxFONTFLAG_LIGHT or wxFONTFLAG_BOLD or wxFONTFLAG_ANTIALIASED or
    #    wxFONTFLAG_NOT_ANTIALIASED or wxFONTFLAG_UNDERLINED or
    #    wxFONTFLAG_STRIKETHROUGH


# ----------------------------------------------------------------------------
# wxFontInfo describes a wxFont
# ----------------------------------------------------------------------------

type
  WxFontInfo* {.importcpp: "wxFontInfo", header: "wx.h".} = object # Default ctor uses the default font size appropriate for the current
                                                                   # platform.
                                                                   # Common part of all ctor, initializing everything except the size (which
                                                                   # is initialized by the ctors themselves).
    mPointSize* {.importc: "m_pointSize".}: cint
    mPixelSize* {.importc: "m_pixelSize".}: WxSize
    mFamily* {.importc: "m_family".}: WxFontFamily
    mFaceName* {.importc: "m_faceName".}: WxString
    mFlags* {.importc: "m_flags".}: cint
    mEncoding* {.importc: "m_encoding".}: WxFontEncoding


proc constructwxFontInfo*(): WxFontInfo {.constructor,
    importcpp: "wxFontInfo(@)", header: "wx.h".}
proc constructwxFontInfo*(pointSize: cint): WxFontInfo {.constructor,
    importcpp: "wxFontInfo(@)", header: "wx.h".}
proc constructwxFontInfo*(pixelSize: WxSize): WxFontInfo {.constructor,
    importcpp: "wxFontInfo(@)", header: "wx.h".}
proc family*(this: var WxFontInfo; family: WxFontFamily): var WxFontInfo {.
    importcpp: "Family", header: "wx.h".}
proc faceName*(this: var WxFontInfo; faceName: WxString): var WxFontInfo {.
    importcpp: "FaceName", header: "wx.h".}
proc bold*(this: var WxFontInfo; bold: bool = true): var WxFontInfo {.
    importcpp: "Bold", header: "wx.h".}
proc light*(this: var WxFontInfo; light: bool = true): var WxFontInfo {.
    importcpp: "Light", header: "wx.h".}
proc italic*(this: var WxFontInfo; italic: bool = true): var WxFontInfo {.
    importcpp: "Italic", header: "wx.h".}
proc slant*(this: var WxFontInfo; slant: bool = true): var WxFontInfo {.
    importcpp: "Slant", header: "wx.h".}
proc antiAliased*(this: var WxFontInfo; antiAliased: bool = true): var WxFontInfo {.
    importcpp: "AntiAliased", header: "wx.h".}
proc underlined*(this: var WxFontInfo; underlined: bool = true): var WxFontInfo {.
    importcpp: "Underlined", header: "wx.h".}
proc strikethrough*(this: var WxFontInfo; strikethrough: bool = true): var WxFontInfo {.
    importcpp: "Strikethrough", header: "wx.h".}
proc encoding*(this: var WxFontInfo; encoding: WxFontEncoding): var WxFontInfo {.
    importcpp: "Encoding", header: "wx.h".}
proc allFlags*(this: var WxFontInfo; flags: cint): var WxFontInfo {.
    importcpp: "AllFlags", header: "wx.h".}
proc isUsingSizeInPixels*(this: WxFontInfo): bool {.noSideEffect,
    importcpp: "IsUsingSizeInPixels", header: "wx.h".}
proc getPointSize*(this: WxFontInfo): cint {.noSideEffect,
    importcpp: "GetPointSize", header: "wx.h".}
proc getPixelSize*(this: WxFontInfo): WxSize {.noSideEffect,
    importcpp: "GetPixelSize", header: "wx.h".}
proc getFamily*(this: WxFontInfo): WxFontFamily {.noSideEffect,
    importcpp: "GetFamily", header: "wx.h".}
proc getFaceName*(this: WxFontInfo): WxString {.noSideEffect,
    importcpp: "GetFaceName", header: "wx.h".}
proc getStyle*(this: WxFontInfo): WxFontStyle {.noSideEffect,
    importcpp: "GetStyle", header: "wx.h".}
proc getWeight*(this: WxFontInfo): WxFontWeight {.noSideEffect,
    importcpp: "GetWeight", header: "wx.h".}
proc isAntiAliased*(this: WxFontInfo): bool {.noSideEffect,
    importcpp: "IsAntiAliased", header: "wx.h".}
proc isUnderlined*(this: WxFontInfo): bool {.noSideEffect,
    importcpp: "IsUnderlined", header: "wx.h".}
proc isStrikethrough*(this: WxFontInfo): bool {.noSideEffect,
    importcpp: "IsStrikethrough", header: "wx.h".}
proc getEncoding*(this: WxFontInfo): WxFontEncoding {.noSideEffect,
    importcpp: "GetEncoding", header: "wx.h".}
# ----------------------------------------------------------------------------
# wxFontBase represents a font object
# ----------------------------------------------------------------------------

discard "forward decl of wxNativeFontInfo"
type
  WxFontBase* {.importcpp: "wxFontBase", header: "wx.h".} = object of WxObject
  WxFont* {.importcpp: "wxFont", header: "wx.h".} = object of WxFontBase # ctors and such
                                                                         # real font
                                                                         # creation
                                                                         # function, used in all cases

template wxEmptyString: expr = constructWxString()

proc destroywxFontBase*(this: var WxFontBase) {.importcpp: "#.~wxFontBase()",
    header: "wx.h".}
proc new*(pointSize: cint; family: cint; style: cint; weight: cint;
          underlined: bool = false; face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
  # size of the font in points
  # see wxFontFamily enum
  # see wxFontStyle enum
  # see wxFontWeight enum
  # not underlined by default
  # facename
  # ISO8859-X, ...
proc new*(pixelSize: WxSize; family: cint; style: cint; weight: cint;
          underlined: bool = false; face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
  # size of the font in pixels
  # see wxFontFamily enum
  # see wxFontStyle enum
  # see wxFontWeight enum
  # not underlined by default
  # facename
  # ISO8859-X, ...
proc new*(pointSize: cint; family: WxFontFamily; style: WxFontStyle;
          weight: WxFontWeight; underlined: bool = false;
          face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
  # size of the font in points
  # see wxFontFamily enum
  # see wxFontStyle enum
  # see wxFontWeight enum
  # not underlined by default
  # facename
proc new*(pixelSize: WxSize; family: WxFontFamily; style: WxFontStyle;
          weight: WxFontWeight; underlined: bool = false;
          face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
  # size of the font in pixels
  # see wxFontFamily enum
  # see wxFontStyle enum
  # see wxFontWeight enum
  # not underlined by default
  # facename
proc new*(pointSize: cint; family: WxFontFamily;
          flags = wxFONTFLAG_DEFAULT; face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
proc new*(pixelSize: WxSize; family: WxFontFamily;
          flags = wxFONTFLAG_DEFAULT; face: WxString = wxEmptyString;
          encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}

proc new*(strNativeFontDesc: WxString): ptr WxFont {.
    importcpp: "wxFontBase::New(@)", header: "wx.h".}
proc `==`*(this: WxFontBase; font: WxFont): bool {.noSideEffect,
    importcpp: "(# == #)", header: "wx.h".}
proc getPointSize*(this: WxFontBase): cint {.noSideEffect,
    importcpp: "GetPointSize", header: "wx.h".}
proc getPixelSize*(this: WxFontBase): WxSize {.noSideEffect,
    importcpp: "GetPixelSize", header: "wx.h".}
proc isUsingSizeInPixels*(this: WxFontBase): bool {.noSideEffect,
    importcpp: "IsUsingSizeInPixels", header: "wx.h".}
proc getFamily*(this: WxFontBase): WxFontFamily {.noSideEffect,
    importcpp: "GetFamily", header: "wx.h".}
proc getStyle*(this: WxFontBase): WxFontStyle {.noSideEffect,
    importcpp: "GetStyle", header: "wx.h".}
proc getWeight*(this: WxFontBase): WxFontWeight {.noSideEffect,
    importcpp: "GetWeight", header: "wx.h".}
proc getUnderlined*(this: WxFontBase): bool {.noSideEffect,
    importcpp: "GetUnderlined", header: "wx.h".}
proc getStrikethrough*(this: WxFontBase): bool {.noSideEffect,
    importcpp: "GetStrikethrough", header: "wx.h".}
proc getFaceName*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetFaceName", header: "wx.h".}
proc getEncoding*(this: WxFontBase): WxFontEncoding {.noSideEffect,
    importcpp: "GetEncoding", header: "wx.h".}

proc isFixedWidth*(this: WxFontBase): bool {.noSideEffect,
    importcpp: "IsFixedWidth", header: "wx.h".}
proc getNativeFontInfoDesc*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetNativeFontInfoDesc", header: "wx.h".}
proc getNativeFontInfoUserDesc*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetNativeFontInfoUserDesc", header: "wx.h".}
proc setPointSize*(this: var WxFontBase; pointSize: cint) {.
    importcpp: "SetPointSize", header: "wx.h".}
proc setPixelSize*(this: var WxFontBase; pixelSize: WxSize) {.
    importcpp: "SetPixelSize", header: "wx.h".}
proc setFamily*(this: var WxFontBase; family: WxFontFamily) {.
    importcpp: "SetFamily", header: "wx.h".}
proc setStyle*(this: var WxFontBase; style: WxFontStyle) {.
    importcpp: "SetStyle", header: "wx.h".}
proc setWeight*(this: var WxFontBase; weight: WxFontWeight) {.
    importcpp: "SetWeight", header: "wx.h".}
proc setUnderlined*(this: var WxFontBase; underlined: bool) {.
    importcpp: "SetUnderlined", header: "wx.h".}
proc setStrikethrough*(this: var WxFontBase; strikethrough: bool) {.
    importcpp: "SetStrikethrough", header: "wx.h".}
proc setEncoding*(this: var WxFontBase; encoding: WxFontEncoding) {.
    importcpp: "SetEncoding", header: "wx.h".}
proc setFaceName*(this: var WxFontBase; faceName: WxString): bool {.
    importcpp: "SetFaceName", header: "wx.h".}

proc setNativeFontInfo*(this: var WxFontBase; info: WxString): bool {.
    importcpp: "SetNativeFontInfo", header: "wx.h".}
proc setNativeFontInfoUserDesc*(this: var WxFontBase; info: WxString): bool {.
    importcpp: "SetNativeFontInfoUserDesc", header: "wx.h".}
proc setSymbolicSize*(this: var WxFontBase; size: WxFontSymbolicSize) {.
    importcpp: "SetSymbolicSize", header: "wx.h".}
proc setSymbolicSizeRelativeTo*(this: var WxFontBase; size: WxFontSymbolicSize;
                                base: cint) {.
    importcpp: "SetSymbolicSizeRelativeTo", header: "wx.h".}
proc adjustToSymbolicSize*(size: WxFontSymbolicSize; base: cint): cint {.
    importcpp: "wxFontBase::AdjustToSymbolicSize(@)", header: "wx.h".}
proc getFamilyString*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetFamilyString", header: "wx.h".}
proc getStyleString*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetStyleString", header: "wx.h".}
proc getWeightString*(this: WxFontBase): WxString {.noSideEffect,
    importcpp: "GetWeightString", header: "wx.h".}
proc getDefaultEncoding*(): WxFontEncoding {.
    importcpp: "wxFontBase::GetDefaultEncoding(@)", header: "wx.h".}
proc setDefaultEncoding*(encoding: WxFontEncoding) {.
    importcpp: "wxFontBase::SetDefaultEncoding(@)", header: "wx.h".}
# wxFontBase <-> wxString utilities, used by wxConfig

proc wxToString*(font: WxFontBase): WxString {.importcpp: "wxToString(@)",
    header: "wx.h".}
proc wxFromString*(str: WxString; font: ptr WxFontBase): bool {.
    importcpp: "wxFromString(@)", header: "wx.h".}
# this macro must be used in all derived wxFont classes declarations

type
  WxFontList* {.importcpp: "wxFontList", header: "wx.h".} = object of WxObject


proc findOrCreateFont*(this: var WxFontList; pointSize: cint;
                       family: WxFontFamily; style: WxFontStyle;
                       weight: WxFontWeight; underline: bool = false;
                       face: WxString = wxEmptyString;
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "FindOrCreateFont", header: "wx.h".}
proc findOrCreateFont*(this: var WxFontList; pointSize: cint; family: cint;
                       style: cint; weight: cint; underline: bool = false;
                       face: WxString = wxEmptyString;
                       encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): ptr WxFont {.
    importcpp: "FindOrCreateFont", header: "wx.h".}
var wxTheFontList* {.importcpp: "wxTheFontList", header: "wx.h".}: ptr WxFontList

# ----------------------------------------------------------------------------
# wxFont
# ----------------------------------------------------------------------------

proc constructwxFont*(): WxFont {.constructor, importcpp: "wxFont(@)",
                                  header: "wx.h".}
proc constructwxFont*(info: WxFontInfo): WxFont {.constructor,
    importcpp: "wxFont(@)", header: "wx.h".}
proc constructwxFont*(size: cint; family: cint; style: cint; weight: cint;
                      underlined: bool = false; face: WxString = wxEmptyString;
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    constructor, importcpp: "wxFont(@)", header: "wx.h".}
proc constructwxFont*(size: cint; family: WxFontFamily; style: WxFontStyle;
                      weight: WxFontWeight; underlined: bool = false;
                      face: WxString = wxEmptyString;
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    constructor, importcpp: "wxFont(@)", header: "wx.h".}
proc create*(this: var WxFont; size: cint; family: WxFontFamily;
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false;
             face: WxString = wxEmptyString;
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.
    importcpp: "Create", header: "wx.h".}
proc constructwxFont*(pixelSize: WxSize; family: cint; style: cint;
                      weight: cint; underlined: bool = false;
                      face: WxString = wxEmptyString;
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    constructor, importcpp: "wxFont(@)", header: "wx.h".}
proc constructwxFont*(pixelSize: WxSize; family: WxFontFamily;
                      style: WxFontStyle; weight: WxFontWeight;
                      underlined: bool = false; face: WxString = wxEmptyString;
                      encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): WxFont {.
    constructor, importcpp: "wxFont(@)", header: "wx.h".}

proc constructwxFont*(fontDesc: WxString): WxFont {.constructor,
    importcpp: "wxFont(@)", header: "wx.h".}
proc create*(this: var WxFont; pixelSize: WxSize; family: WxFontFamily;
             style: WxFontStyle; weight: WxFontWeight; underlined: bool = false;
             face: WxString = wxEmptyString;
             encoding: WxFontEncoding = wxFONTENCODING_DEFAULT): bool {.
    importcpp: "Create", header: "wx.h".}

proc destroywxFont*(this: var WxFont) {.importcpp: "#.~wxFont()", header: "wx.h".}
proc getPointSize*(this: WxFont): cint {.noSideEffect,
    importcpp: "GetPointSize", header: "wx.h".}
proc getPixelSize*(this: WxFont): WxSize {.noSideEffect,
    importcpp: "GetPixelSize", header: "wx.h".}
proc isUsingSizeInPixels*(this: WxFont): bool {.noSideEffect,
    importcpp: "IsUsingSizeInPixels", header: "wx.h".}
proc getStyle*(this: WxFont): WxFontStyle {.noSideEffect, importcpp: "GetStyle",
    header: "wx.h".}
proc getWeight*(this: WxFont): WxFontWeight {.noSideEffect,
    importcpp: "GetWeight", header: "wx.h".}
proc getUnderlined*(this: WxFont): bool {.noSideEffect,
    importcpp: "GetUnderlined", header: "wx.h".}
proc getStrikethrough*(this: WxFont): bool {.noSideEffect,
    importcpp: "GetStrikethrough", header: "wx.h".}
proc getFaceName*(this: WxFont): WxString {.noSideEffect,
    importcpp: "GetFaceName", header: "wx.h".}
proc getEncoding*(this: WxFont): WxFontEncoding {.noSideEffect,
    importcpp: "GetEncoding", header: "wx.h".}

proc setPointSize*(this: var WxFont; pointSize: cint) {.
    importcpp: "SetPointSize", header: "wx.h".}
proc setPixelSize*(this: var WxFont; pixelSize: WxSize) {.
    importcpp: "SetPixelSize", header: "wx.h".}
proc setFamily*(this: var WxFont; family: WxFontFamily) {.
    importcpp: "SetFamily", header: "wx.h".}
proc setStyle*(this: var WxFont; style: WxFontStyle) {.importcpp: "SetStyle",
    header: "wx.h".}
proc setWeight*(this: var WxFont; weight: WxFontWeight) {.
    importcpp: "SetWeight", header: "wx.h".}
proc setFaceName*(this: var WxFont; faceName: WxString): bool {.
    importcpp: "SetFaceName", header: "wx.h".}
proc setUnderlined*(this: var WxFont; underlined: bool) {.
    importcpp: "SetUnderlined", header: "wx.h".}
proc setStrikethrough*(this: var WxFont; strikethrough: bool) {.
    importcpp: "SetStrikethrough", header: "wx.h".}
proc setEncoding*(this: var WxFont; encoding: WxFontEncoding) {.
    importcpp: "SetEncoding", header: "wx.h".}
proc makeBold*(this: var WxFont): var WxFont {.importcpp: "MakeBold",
    header: "wx.h".}
proc makeItalic*(this: var WxFont): var WxFont {.importcpp: "MakeItalic",
    header: "wx.h".}
proc makeUnderlined*(this: var WxFont): var WxFont {.
    importcpp: "MakeUnderlined", header: "wx.h".}
proc makeStrikethrough*(this: var WxFont): var WxFont {.
    importcpp: "MakeStrikethrough", header: "wx.h".}
proc makeLarger*(this: var WxFont): var WxFont {.importcpp: "MakeLarger",
    header: "wx.h".}
proc makeSmaller*(this: var WxFont): var WxFont {.importcpp: "MakeSmaller",
    header: "wx.h".}
proc scale*(this: var WxFont; x: cfloat): var WxFont {.importcpp: "Scale",
    header: "wx.h".}
proc bold*(this: WxFont): WxFont {.noSideEffect, importcpp: "Bold",
                                   header: "wx.h".}
proc italic*(this: WxFont): WxFont {.noSideEffect, importcpp: "Italic",
                                     header: "wx.h".}
proc underlined*(this: WxFont): WxFont {.noSideEffect, importcpp: "Underlined",
    header: "wx.h".}
proc strikethrough*(this: WxFont): WxFont {.noSideEffect,
    importcpp: "Strikethrough", header: "wx.h".}
proc larger*(this: WxFont): WxFont {.noSideEffect, importcpp: "Larger",
                                     header: "wx.h".}
proc smaller*(this: WxFont): WxFont {.noSideEffect, importcpp: "Smaller",
                                      header: "wx.h".}
proc scaled*(this: WxFont; x: cfloat): WxFont {.noSideEffect,
    importcpp: "Scaled", header: "wx.h".}
proc isFixedWidth*(this: WxFont): bool {.noSideEffect,
    importcpp: "IsFixedWidth", header: "wx.h".}
proc isFree*(this: WxFont): bool {.noSideEffect, importcpp: "IsFree",
                                   header: "wx.h".}
proc realizeResource*(this: var WxFont): bool {.importcpp: "RealizeResource",
    header: "wx.h".}

when false:
  proc getResourceHandle*(this: WxFont): Wxhandle {.noSideEffect,
      importcpp: "GetResourceHandle", header: "wx.h".}
  proc freeResource*(this: var WxFont; force: bool = false): bool {.
      importcpp: "FreeResource", header: "wx.h".}
  proc getHFONT*(this: WxFont): Wxhfont {.noSideEffect, importcpp: "GetHFONT",
                                          header: "wx.h".}
