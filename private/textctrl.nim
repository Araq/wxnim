


type 
  WxTextPos* = clong

discard "forward decl of wxTextCtrl"
discard "forward decl of wxTextCtrlBase"
type 
  WxTextCoord* = clong


var wxOutOfRangeTextCoord* {.importcpp: "wxOutOfRangeTextCoord", header: wxh.}: WxTextCoord

var wxInvalidTextCoord* {.importcpp: "wxInvalidTextCoord", header: wxh.}: WxTextCoord


const 
  wxTE_NO_VSCROLL* = 0x00000002
  wxTE_READONLY* = 0x00000010
  wxTE_MULTILINE* = 0x00000020
  wxTE_PROCESS_TAB* = 0x00000040


const 
  wxTE_LEFT* = 0x00000000
  wxTE_CENTER* = wxALIGN_CENTER_HORIZONTAL
  wxTE_RIGHT* = wxALIGN_RIGHT
  wxTE_CENTRE* = wxTE_CENTER


const 
  wxTE_RICH* = 0x00000080
  wxTE_PROCESS_ENTER* = 0x00000400
  wxTE_PASSWORD* = 0x00000800


const 
  wxTE_AUTO_URL* = 0x00001000


const 
  wxTE_NOHIDESEL* = 0x00002000


const 
  wxTE_DONTWRAP* = wxHSCROLL
  wxTE_CHARWRAP* = 0x00004000
  wxTE_WORDWRAP* = 0x00000001
  wxTE_BESTWRAP* = 0x00000000


const 
  wxTE_LINEWRAP* = wxTE_CHARWRAP


const 
  wxTE_AUTO_SCROLL* = 0


const 
  wxTE_RICH2* = 0x00008000


const 
  wxTE_CAPITALIZE* = wxTE_RICH2


const 
  wxTEXT_TYPE_ANY* = 0


type 
  WxTextCtrlHitTestResult* {.size: sizeof(cint), importcpp: "wxTextCtrlBase::wxTextCtrlHitTestResult", 
                             header: wxh.} = enum 
    wxTE_HT_UNKNOWN = - 2, wxTE_HT_BEFORE, wxTE_HT_ON_TEXT, wxTE_HT_BELOW, 
    wxTE_HT_BEYOND



type 
  WxTextAttrAlignment* {.size: sizeof(cint), 
                         importcpp: "wxTextCtrlBase::wxTextAttrAlignment", 
                         header: wxh.} = enum 
    wxTEXT_ALIGNMENT_DEFAULT, wxTEXT_ALIGNMENT_LEFT, wxTEXT_ALIGNMENT_CENTER, 
    wxTEXT_ALIGNMENT_RIGHT, wxTEXT_ALIGNMENT_JUSTIFIED



type 
  WxTextAttrFlags* {.size: sizeof(cint), 
                     importcpp: "wxTextCtrlBase::wxTextAttrFlags", header: wxh.} = enum 
    wxTEXT_ATTR_TEXT_COLOUR = 0x00000001, 
    wxTEXT_ATTR_BACKGROUND_COLOUR = 0x00000002, 
    wxTEXT_ATTR_FONT_FACE = 0x00000004, 
    wxTEXT_ATTR_FONT_POINT_SIZE = 0x00000008, 
    wxTEXT_ATTR_FONT_WEIGHT = 0x00000010, wxTEXT_ATTR_FONT_ITALIC = 0x00000020, 
    wxTEXT_ATTR_FONT_UNDERLINE = 0x00000040, wxTEXT_ATTR_ALIGNMENT = 0x00000080, 
    wxTEXT_ATTR_LEFT_INDENT = 0x00000100, wxTEXT_ATTR_RIGHT_INDENT = 0x00000200, 
    wxTEXT_ATTR_TABS = 0x00000400, wxTEXT_ATTR_PARA_SPACING_AFTER = 0x00000800, 
    wxTEXT_ATTR_PARA_SPACING_BEFORE = 0x00001000, 
    wxTEXT_ATTR_LINE_SPACING = 0x00002000, 
    wxTEXT_ATTR_CHARACTER_STYLE_NAME = 0x00004000, 
    wxTEXT_ATTR_PARAGRAPH_STYLE_NAME = 0x00008000, 
    wxTEXT_ATTR_LIST_STYLE_NAME = 0x00010000, 
    wxTEXT_ATTR_BULLET_STYLE = 0x00020000, 
    wxTEXT_ATTR_BULLET_NUMBER = 0x00040000, 
    wxTEXT_ATTR_BULLET_TEXT = 0x00080000, wxTEXT_ATTR_BULLET_NAME = 0x00100000, wxTEXT_ATTR_BULLET = (
        0x00020000 or 0x00040000 or 0x00080000 or 0x00100000), 
    wxTEXT_ATTR_URL = 0x00200000, wxTEXT_ATTR_PAGE_BREAK = 0x00400000, 
    wxTEXT_ATTR_EFFECTS = 0x00800000, wxTEXT_ATTR_OUTLINE_LEVEL = 0x01000000, 
    wxTEXT_ATTR_FONT_ENCODING = 0x02000000, 
    wxTEXT_ATTR_FONT_FAMILY = 0x04000000, 
    wxTEXT_ATTR_FONT_STRIKETHROUGH = 0x08000000, 
    wxTEXT_ATTR_FONT_PIXEL_SIZE = 0x10000000, 
    wxTEXT_ATTR_FONT_SIZE = 0x10000008, wxTEXT_ATTR_FONT = (4 or 0x10000008 or
        0x00000010 or 0x00000020 or 0x00000040 or 0x08000000 or 0x02000000 or
        0x04000000)



type 
  WxTextAttrBulletStyle* {.size: sizeof(cint), 
                           importcpp: "wxTextCtrlBase::wxTextAttrBulletStyle", 
                           header: wxh.} = enum 
    wxTEXT_ATTR_BULLET_STYLE_NONE = 0x00000000, 
    wxTEXT_ATTR_BULLET_STYLE_ARABIC = 0x00000001, 
    wxTEXT_ATTR_BULLET_STYLE_LETTERS_UPPER = 0x00000002, 
    wxTEXT_ATTR_BULLET_STYLE_LETTERS_LOWER = 0x00000004, 
    wxTEXT_ATTR_BULLET_STYLE_ROMAN_UPPER = 0x00000008, 
    wxTEXT_ATTR_BULLET_STYLE_ROMAN_LOWER = 0x00000010, 
    wxTEXT_ATTR_BULLET_STYLE_SYMBOL = 0x00000020, 
    wxTEXT_ATTR_BULLET_STYLE_BITMAP = 0x00000040, 
    wxTEXT_ATTR_BULLET_STYLE_PARENTHESES = 0x00000080, 
    wxTEXT_ATTR_BULLET_STYLE_PERIOD = 0x00000100, 
    wxTEXT_ATTR_BULLET_STYLE_STANDARD = 0x00000200, 
    wxTEXT_ATTR_BULLET_STYLE_RIGHT_PARENTHESIS = 0x00000400, 
    wxTEXT_ATTR_BULLET_STYLE_OUTLINE = 0x00000800, 
    wxTEXT_ATTR_BULLET_STYLE_ALIGN_RIGHT = 0x00001000, 
    wxTEXT_ATTR_BULLET_STYLE_ALIGN_CENTRE = 0x00002000, 
    wxTEXT_ATTR_BULLET_STYLE_CONTINUATION = 0x00004000

const 
  wxTEXT_ATTR_BULLET_STYLE_ALIGN_LEFT = wxTEXT_ATTR_BULLET_STYLE_NONE


type 
  WxTextAttrEffects* {.size: sizeof(cint), 
                       importcpp: "wxTextCtrlBase::wxTextAttrEffects", 
                       header: wxh.} = enum 
    wxTEXT_ATTR_EFFECT_NONE = 0x00000000, 
    wxTEXT_ATTR_EFFECT_CAPITALS = 0x00000001, 
    wxTEXT_ATTR_EFFECT_SMALL_CAPITALS = 0x00000002, 
    wxTEXT_ATTR_EFFECT_STRIKETHROUGH = 0x00000004, 
    wxTEXT_ATTR_EFFECT_DOUBLE_STRIKETHROUGH = 0x00000008, 
    wxTEXT_ATTR_EFFECT_SHADOW = 0x00000010, 
    wxTEXT_ATTR_EFFECT_EMBOSS = 0x00000020, 
    wxTEXT_ATTR_EFFECT_OUTLINE = 0x00000040, 
    wxTEXT_ATTR_EFFECT_ENGRAVE = 0x00000080, 
    wxTEXT_ATTR_EFFECT_SUPERSCRIPT = 0x00000100, 
    wxTEXT_ATTR_EFFECT_SUBSCRIPT = 0x00000200



type 
  WxTextAttrLineSpacing* {.size: sizeof(cint), 
                           importcpp: "wxTextCtrlBase::wxTextAttrLineSpacing", 
                           header: wxh.} = enum 
    wxTEXT_ATTR_LINE_SPACING_NORMAL = 10, wxTEXT_ATTR_LINE_SPACING_HALF = 15, 
    wxTEXT_ATTR_LINE_SPACING_TWICE = 20



type 
  WxTextAttr* {.importcpp: "wxTextAttr", header: wxh.} = object 
  

proc constructwxTextAttr*(): WxTextAttr {.cdecl, constructor, 
    importcpp: "wxTextAttr(@)", header: wxh.}
proc constructwxTextAttr*(attr: WxTextAttr): WxTextAttr {.cdecl, constructor, 
    importcpp: "wxTextAttr(@)", header: wxh.}
proc constructwxTextAttr*(colText: WxColour; colBack: WxColour = wxNullColour; 
                          font: WxFont = wxNullFont; alignment: WxTextAttrAlignment = wxTEXT_ALIGNMENT_DEFAULT): WxTextAttr {.
    cdecl, constructor, importcpp: "wxTextAttr(@)", header: wxh.}
proc init*(this: var WxTextAttr) {.cdecl, importcpp: "Init", header: wxh.}
proc copy*(this: var WxTextAttr; attr: WxTextAttr) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc `==`*(this: WxTextAttr; attr: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc eqPartial*(this: WxTextAttr; attr: WxTextAttr; weakTest: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "EqPartial", header: wxh.}
proc getFontAttributes*(this: var WxTextAttr; font: WxFont; 
                        flags = wxTEXT_ATTR_FONT): bool {.cdecl, 
    importcpp: "GetFontAttributes", header: wxh.}
proc setTextColour*(this: var WxTextAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxTextAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setAlignment*(this: var WxTextAttr; alignment: WxTextAttrAlignment) {.
    cdecl, importcpp: "SetAlignment", header: wxh.}
proc setTabs*(this: var WxTextAttr; tabs: WxArrayInt) {.cdecl, 
    importcpp: "SetTabs", header: wxh.}
proc setLeftIndent*(this: var WxTextAttr; indent: cint; subIndent: cint = 0) {.
    cdecl, importcpp: "SetLeftIndent", header: wxh.}
proc setRightIndent*(this: var WxTextAttr; indent: cint) {.cdecl, 
    importcpp: "SetRightIndent", header: wxh.}
proc setFontSize*(this: var WxTextAttr; pointSize: cint) {.cdecl, 
    importcpp: "SetFontSize", header: wxh.}
proc setFontPointSize*(this: var WxTextAttr; pointSize: cint) {.cdecl, 
    importcpp: "SetFontPointSize", header: wxh.}
proc setFontPixelSize*(this: var WxTextAttr; pixelSize: cint) {.cdecl, 
    importcpp: "SetFontPixelSize", header: wxh.}
proc setFontStyle*(this: var WxTextAttr; fontStyle: WxFontStyle) {.cdecl, 
    importcpp: "SetFontStyle", header: wxh.}
proc setFontWeight*(this: var WxTextAttr; fontWeight: WxFontWeight) {.cdecl, 
    importcpp: "SetFontWeight", header: wxh.}
proc setFontFaceName*(this: var WxTextAttr; faceName: WxString) {.cdecl, 
    importcpp: "SetFontFaceName", header: wxh.}
proc setFontUnderlined*(this: var WxTextAttr; underlined: bool) {.cdecl, 
    importcpp: "SetFontUnderlined", header: wxh.}
proc setFontStrikethrough*(this: var WxTextAttr; strikethrough: bool) {.cdecl, 
    importcpp: "SetFontStrikethrough", header: wxh.}
proc setFontEncoding*(this: var WxTextAttr; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetFontEncoding", header: wxh.}
proc setFontFamily*(this: var WxTextAttr; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFontFamily", header: wxh.}
proc setFont*(this: var WxTextAttr; font: WxFont) {.cdecl, importcpp: "SetFont", 
    header: wxh.}
proc setFlags*(this: var WxTextAttr; flags: clong) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc setCharacterStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetCharacterStyleName", header: wxh.}
proc setParagraphStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetParagraphStyleName", header: wxh.}
proc setListStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetListStyleName", header: wxh.}
proc setParagraphSpacingAfter*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetParagraphSpacingAfter", header: wxh.}
proc setParagraphSpacingBefore*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetParagraphSpacingBefore", header: wxh.}
proc setLineSpacing*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetLineSpacing", header: wxh.}
proc setBulletStyle*(this: var WxTextAttr; style: cint) {.cdecl, 
    importcpp: "SetBulletStyle", header: wxh.}
proc setBulletNumber*(this: var WxTextAttr; n: cint) {.cdecl, 
    importcpp: "SetBulletNumber", header: wxh.}
proc setBulletText*(this: var WxTextAttr; text: WxString) {.cdecl, 
    importcpp: "SetBulletText", header: wxh.}
proc setBulletFont*(this: var WxTextAttr; bulletFont: WxString) {.cdecl, 
    importcpp: "SetBulletFont", header: wxh.}
proc setBulletName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetBulletName", header: wxh.}
proc setURL*(this: var WxTextAttr; url: WxString) {.cdecl, importcpp: "SetURL", 
    header: wxh.}
proc setPageBreak*(this: var WxTextAttr; pageBreak: bool = true) {.cdecl, 
    importcpp: "SetPageBreak", header: wxh.}
proc setTextEffects*(this: var WxTextAttr; effects: cint) {.cdecl, 
    importcpp: "SetTextEffects", header: wxh.}
proc setTextEffectFlags*(this: var WxTextAttr; effects: cint) {.cdecl, 
    importcpp: "SetTextEffectFlags", header: wxh.}
proc setOutlineLevel*(this: var WxTextAttr; level: cint) {.cdecl, 
    importcpp: "SetOutlineLevel", header: wxh.}
proc getTextColour*(this: WxTextAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc getBackgroundColour*(this: WxTextAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: wxh.}
proc getAlignment*(this: WxTextAttr): WxTextAttrAlignment {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: wxh.}
proc getTabs*(this: WxTextAttr): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetTabs", header: wxh.}
proc getLeftIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetLeftIndent", header: wxh.}
proc getLeftSubIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetLeftSubIndent", header: wxh.}
proc getRightIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetRightIndent", header: wxh.}
proc getFlags*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc getFontSize*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetFontSize", header: wxh.}
proc getFontStyle*(this: WxTextAttr): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetFontStyle", header: wxh.}
proc getFontWeight*(this: WxTextAttr): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetFontWeight", header: wxh.}
proc getFontUnderlined*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetFontUnderlined", header: wxh.}
proc getFontStrikethrough*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetFontStrikethrough", header: wxh.}
proc getFontFaceName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFontFaceName", header: wxh.}
proc getFontEncoding*(this: WxTextAttr): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetFontEncoding", header: wxh.}
proc getFontFamily*(this: WxTextAttr): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFontFamily", header: wxh.}
proc getFont*(this: WxTextAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc getCharacterStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCharacterStyleName", header: wxh.}
proc getParagraphStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetParagraphStyleName", header: wxh.}
proc getListStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetListStyleName", header: wxh.}
proc getParagraphSpacingAfter*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphSpacingAfter", header: wxh.}
proc getParagraphSpacingBefore*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphSpacingBefore", header: wxh.}
proc getLineSpacing*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetLineSpacing", header: wxh.}
proc getBulletStyle*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetBulletStyle", header: wxh.}
proc getBulletNumber*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetBulletNumber", header: wxh.}
proc getBulletText*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletText", header: wxh.}
proc getBulletFont*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletFont", header: wxh.}
proc getBulletName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletName", header: wxh.}
proc getURL*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: wxh.}
proc getTextEffects*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetTextEffects", header: wxh.}
proc getTextEffectFlags*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetTextEffectFlags", header: wxh.}
proc getOutlineLevel*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetOutlineLevel", header: wxh.}
proc hasTextColour*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: wxh.}
proc hasBackgroundColour*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: wxh.}
proc hasAlignment*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasAlignment", header: wxh.}
proc hasTabs*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
                                        importcpp: "HasTabs", header: wxh.}
proc hasLeftIndent*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasLeftIndent", header: wxh.}
proc hasRightIndent*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasRightIndent", header: wxh.}
proc hasFontWeight*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontWeight", header: wxh.}
proc hasFontSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontSize", header: wxh.}
proc hasFontPointSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontPointSize", header: wxh.}
proc hasFontPixelSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontPixelSize", header: wxh.}
proc hasFontItalic*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontItalic", header: wxh.}
proc hasFontUnderlined*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontUnderlined", header: wxh.}
proc hasFontStrikethrough*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontStrikethrough", header: wxh.}
proc hasFontFaceName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontFaceName", header: wxh.}
proc hasFontEncoding*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontEncoding", header: wxh.}
proc hasFontFamily*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontFamily", header: wxh.}
proc hasFont*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
                                        importcpp: "HasFont", header: wxh.}
proc hasParagraphSpacingAfter*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphSpacingAfter", header: wxh.}
proc hasParagraphSpacingBefore*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphSpacingBefore", header: wxh.}
proc hasLineSpacing*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasLineSpacing", header: wxh.}
proc hasCharacterStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCharacterStyleName", header: wxh.}
proc hasParagraphStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphStyleName", header: wxh.}
proc hasListStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasListStyleName", header: wxh.}
proc hasBulletStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletStyle", header: wxh.}
proc hasBulletNumber*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletNumber", header: wxh.}
proc hasBulletText*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletText", header: wxh.}
proc hasBulletName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletName", header: wxh.}
proc hasURL*(this: WxTextAttr): bool {.noSideEffect, cdecl, importcpp: "HasURL", 
                                       header: wxh.}
proc hasPageBreak*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasPageBreak", header: wxh.}
proc hasTextEffects*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextEffects", header: wxh.}
proc hasTextEffect*(this: WxTextAttr; effect: cint): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextEffect", header: wxh.}
proc hasOutlineLevel*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasOutlineLevel", header: wxh.}
proc hasFlag*(this: WxTextAttr; flag: clong): bool {.noSideEffect, cdecl, 
    importcpp: "HasFlag", header: wxh.}
proc removeFlag*(this: var WxTextAttr; flag: clong) {.cdecl, 
    importcpp: "RemoveFlag", header: wxh.}
proc addFlag*(this: var WxTextAttr; flag: clong) {.cdecl, importcpp: "AddFlag", 
    header: wxh.}
proc isCharacterStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsCharacterStyle", header: wxh.}
proc isParagraphStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsParagraphStyle", header: wxh.}
proc isDefault*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}
proc apply*(this: var WxTextAttr; style: WxTextAttr; 
            compareWith: ptr WxTextAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: wxh.}
proc merge*(base: WxTextAttr; overlay: WxTextAttr): WxTextAttr {.cdecl, 
    importcpp: "wxTextAttr::Merge(@)", header: wxh.}
proc merge*(this: var WxTextAttr; overlay: WxTextAttr) {.cdecl, 
    importcpp: "Merge", header: wxh.}
proc combine*(attr: WxTextAttr; attrDef: WxTextAttr; text: ptr WxTextCtrlBase): WxTextAttr {.
    cdecl, importcpp: "wxTextAttr::Combine(@)", header: wxh.}
proc tabsEq*(tabs1: WxArrayInt; tabs2: WxArrayInt): bool {.cdecl, 
    importcpp: "wxTextAttr::TabsEq(@)", header: wxh.}
proc removeStyle*(destStyle: var WxTextAttr; style: WxTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttr::RemoveStyle(@)", header: wxh.}
proc combineBitlists*(valueA: var cint; valueB: cint; flagsA: var cint; 
                      flagsB: cint): bool {.cdecl, 
    importcpp: "wxTextAttr::CombineBitlists(@)", header: wxh.}
proc bitlistsEqPartial*(valueA: cint; valueB: cint; flags: cint): bool {.cdecl, 
    importcpp: "wxTextAttr::BitlistsEqPartial(@)", header: wxh.}
proc splitParaCharStyles*(style: WxTextAttr; parStyle: var WxTextAttr; 
                          charStyle: var WxTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttr::SplitParaCharStyles(@)", header: wxh.}

type 
  WxTextAreaBase* {.importcpp: "wxTextAreaBase", header: wxh, inheritable.} = object 
  

proc constructwxTextAreaBase*(): WxTextAreaBase {.cdecl, constructor, 
    importcpp: "wxTextAreaBase(@)", header: wxh.}
proc destroywxTextAreaBase*(this: var WxTextAreaBase) {.cdecl, 
    importcpp: "#.~wxTextAreaBase()", header: wxh.}
proc getLineLength*(this: WxTextAreaBase; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: wxh.}
proc getLineText*(this: WxTextAreaBase; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: wxh.}
proc getNumberOfLines*(this: WxTextAreaBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: wxh.}
proc loadFile*(this: var WxTextAreaBase; file: WxString; 
               fileType: cint = wxTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: wxh.}
proc saveFile*(this: var WxTextAreaBase; file: WxString = wxEmptyString; 
               fileType: cint = wxTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: wxh.}
proc isModified*(this: WxTextAreaBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: wxh.}
proc markDirty*(this: var WxTextAreaBase) {.cdecl, importcpp: "MarkDirty", 
    header: wxh.}
proc discardEdits*(this: var WxTextAreaBase) {.cdecl, importcpp: "DiscardEdits", 
    header: wxh.}
proc setModified*(this: var WxTextAreaBase; modified: bool) {.cdecl, 
    importcpp: "SetModified", header: wxh.}
proc setStyle*(this: var WxTextAreaBase; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc getStyle*(this: var WxTextAreaBase; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: wxh.}
proc setDefaultStyle*(this: var WxTextAreaBase; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: wxh.}
proc getDefaultStyle*(this: WxTextAreaBase): WxTextAttr {.noSideEffect, cdecl, 
    importcpp: "GetDefaultStyle", header: wxh.}
proc xYToPosition*(this: WxTextAreaBase; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: wxh.}
proc positionToXY*(this: WxTextAreaBase; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: wxh.}
proc positionToCoords*(this: WxTextAreaBase; pos: clong): WxPoint {.
    noSideEffect, cdecl, importcpp: "PositionToCoords", header: wxh.}
proc showPosition*(this: var WxTextAreaBase; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: wxh.}
proc hitTest*(this: WxTextAreaBase; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxTextAreaBase; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
proc getValue*(this: WxTextAreaBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxTextAreaBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}

type 
  WxTextCtrlIface* {.importcpp: "wxTextCtrlIface", header: wxh.} = object of WxTextAreaBase
  

proc constructwxTextCtrlIface*(): WxTextCtrlIface {.cdecl, constructor, 
    importcpp: "wxTextCtrlIface(@)", header: wxh.}
proc getValue*(this: WxTextCtrlIface): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxTextCtrlIface; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}

type 
  WxTextCtrlBase* {.importcpp: "wxTextCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxTextCtrlBase*(): WxTextCtrlBase {.cdecl, constructor, 
    importcpp: "wxTextCtrlBase(@)", header: wxh.}
proc destroywxTextCtrlBase*(this: var WxTextCtrlBase) {.cdecl, 
    importcpp: "#.~wxTextCtrlBase()", header: wxh.}
proc isSingleLine*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSingleLine", header: wxh.}
proc isMultiLine*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsMultiLine", header: wxh.}
proc `<<`*(this: var WxTextCtrlBase; s: WxString): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: wxh.}
proc `<<`*(this: var WxTextCtrlBase; i: clong): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: wxh.}
proc `<<`*(this: var WxTextCtrlBase; f: cfloat): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: wxh.}
proc `<<`*(this: var WxTextCtrlBase; d: cdouble): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: wxh.}
proc `<<`*(this: var WxTextCtrlBase; c: char): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: wxh.}
proc emulateKeyPress*(this: var WxTextCtrlBase; event: WxKeyEvent): bool {.
    cdecl, importcpp: "EmulateKeyPress", header: wxh.}
proc doUpdateWindowUI*(this: var WxTextCtrlBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: wxh.}
proc shouldInheritColours*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc hitTest*(this: WxTextCtrlBase; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxTextCtrlBase; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
proc setStyle*(this: var WxTextCtrlBase; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc getStyle*(this: var WxTextCtrlBase; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: wxh.}
proc setDefaultStyle*(this: var WxTextCtrlBase; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: wxh.}
proc getValue*(this: WxTextCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxTextCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setHint*(this: var WxTextCtrlBase; hint: WxString): bool {.cdecl, 
    importcpp: "SetHint", header: wxh.}
proc getDefaultAttributes*(this: WxTextCtrlBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: wxh.}

discard "forward decl of wxTextUrlEvent"
var wxEVT_TEXT_ENTER* {.importcpp: "wxEVT_TEXT_ENTER", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TEXT_URL* {.importcpp: "wxEVT_TEXT_URL", header: wxh.}: WxEventTypeTag[
    WxTextUrlEvent]

var wxEVT_TEXT_MAXLEN* {.importcpp: "wxEVT_TEXT_MAXLEN", header: wxh.}: WxEventTypeTag[
    WxCommandEvent]

type 
  WxTextUrlEvent* {.importcpp: "wxTextUrlEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxTextUrlEvent*(winid: cint; evtMouse: WxMouseEvent; start: clong; 
                              `end`: clong): WxTextUrlEvent {.cdecl, 
    constructor, importcpp: "wxTextUrlEvent(@)", header: wxh.}
proc constructwxTextUrlEvent*(event: WxTextUrlEvent): WxTextUrlEvent {.cdecl, 
    constructor, importcpp: "wxTextUrlEvent(@)", header: wxh.}
proc getMouseEvent*(this: WxTextUrlEvent): WxMouseEvent {.noSideEffect, cdecl, 
    importcpp: "GetMouseEvent", header: wxh.}
proc getURLStart*(this: WxTextUrlEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetURLStart", header: wxh.}
proc getURLEnd*(this: WxTextUrlEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetURLEnd", header: wxh.}
proc clone*(this: WxTextUrlEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
template wxTextEventHandler*(`func`: expr): expr = 
  wxCommandEventHandler(`func`)

template wxTextUrlEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxTextUrlEventFunction, `func`)

template evt_Text*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_TEXT, id, wxTextEventHandler(fn))

template evt_Text_Enter*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_TEXT_ENTER, id, wxTextEventHandler(fn))

template evt_Text_Url*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_TEXT_URL, id, wxTextUrlEventHandler(fn))

template evt_Text_Maxlen*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_TEXT_ENTERMAXLEN, id, wxTextEventHandler(fn))


type 
  WxStreamToTextRedirector* {.importcpp: "wxStreamToTextRedirector", header: wxh.} = object 
  

proc constructwxStreamToTextRedirector*(text: ptr WxTextCtrl): WxStreamToTextRedirector {.
    cdecl, constructor, importcpp: "wxStreamToTextRedirector(@)", header: wxh.}
proc destroywxStreamToTextRedirector*(this: var WxStreamToTextRedirector) {.
    cdecl, importcpp: "#.~wxStreamToTextRedirector()", header: wxh.}
type 
  WxTextCtrl* {.importcpp: "wxTextCtrl", header: wxh.} = object of WxTextCtrlBase
  

proc constructwxTextCtrl*(): WxTextCtrl {.cdecl, constructor, 
    importcpp: "wxTextCtrl(@)", header: wxh.}
proc constructwxTextCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                          value: WxString = wxEmptyString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("text")): WxTextCtrl {.
    cdecl, constructor, importcpp: "wxTextCtrl(@)", header: wxh.}
proc destroywxTextCtrl*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "#.~wxTextCtrl()", header: wxh.}
proc create*(this: var WxTextCtrl; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("text")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getValue*(this: WxTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc getRange*(this: WxTextCtrl; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: wxh.}
proc isEmpty*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsEmpty", header: wxh.}
proc writeText*(this: var WxTextCtrl; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: wxh.}
proc appendText*(this: var WxTextCtrl; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: wxh.}
proc clear*(this: var WxTextCtrl) {.cdecl, importcpp: "Clear", header: wxh.}
proc getLineLength*(this: WxTextCtrl; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: wxh.}
proc getLineText*(this: WxTextCtrl; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: wxh.}
proc getNumberOfLines*(this: WxTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: wxh.}
proc setMaxLength*(this: var WxTextCtrl; len: culong) {.cdecl, 
    importcpp: "SetMaxLength", header: wxh.}
proc getSelection*(this: WxTextCtrl; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc redo*(this: var WxTextCtrl) {.cdecl, importcpp: "Redo", header: wxh.}
proc canRedo*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
                                        importcpp: "CanRedo", header: wxh.}
proc setInsertionPointEnd*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "SetInsertionPointEnd", header: wxh.}
proc getInsertionPoint*(this: WxTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: wxh.}
proc getLastPosition*(this: WxTextCtrl): WxTextPos {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: wxh.}
proc isModified*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: wxh.}
proc markDirty*(this: var WxTextCtrl) {.cdecl, importcpp: "MarkDirty", 
                                        header: wxh.}
proc discardEdits*(this: var WxTextCtrl) {.cdecl, importcpp: "DiscardEdits", 
    header: wxh.}
proc xYToPosition*(this: WxTextCtrl; x: clong; y: clong): clong {.noSideEffect, 
    cdecl, importcpp: "XYToPosition", header: wxh.}
proc positionToXY*(this: WxTextCtrl; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: wxh.}
proc showPosition*(this: var WxTextCtrl; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: wxh.}
proc hitTest*(this: WxTextCtrl; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxTextCtrl; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
proc showNativeCaret*(this: var WxTextCtrl; show: bool = true): bool {.cdecl, 
    importcpp: "ShowNativeCaret", header: wxh.}
proc hideNativeCaret*(this: var WxTextCtrl): bool {.cdecl, 
    importcpp: "HideNativeCaret", header: wxh.}
proc setWindowStyleFlag*(this: var WxTextCtrl; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: wxh.}
proc command*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc isRich*(this: WxTextCtrl): bool {.noSideEffect, cdecl, importcpp: "IsRich", 
                                       header: wxh.}
proc isInkEdit*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsInkEdit", header: wxh.}
proc adoptAttributesFromHWND*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "AdoptAttributesFromHWND", header: wxh.}
proc acceptsFocusFromKeyboard*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: wxh.}
proc canApplyThemeBorder*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
proc onDropFiles*(this: var WxTextCtrl; event: var WxDropFilesEvent) {.cdecl, 
    importcpp: "OnDropFiles", header: wxh.}
proc onChar*(this: var WxTextCtrl; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnChar", header: wxh.}
proc onCut*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCut", header: wxh.}
proc onCopy*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCopy", header: wxh.}
proc onPaste*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPaste", header: wxh.}
proc onUndo*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUndo", header: wxh.}
proc onRedo*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRedo", header: wxh.}
proc onDelete*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnDelete", header: wxh.}
proc onSelectAll*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSelectAll", header: wxh.}
proc onUpdateCut*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCut", header: wxh.}
proc onUpdateCopy*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCopy", header: wxh.}
proc onUpdatePaste*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdatePaste", header: wxh.}
proc onUpdateUndo*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateUndo", header: wxh.}
proc onUpdateRedo*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateRedo", header: wxh.}
proc onUpdateDelete*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateDelete", header: wxh.}
proc onUpdateSelectAll*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateSelectAll", header: wxh.}
proc onContextMenu*(this: var WxTextCtrl; event: var WxContextMenuEvent) {.
    cdecl, importcpp: "OnContextMenu", header: wxh.}
proc onSetFocus*(this: var WxTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnSetFocus", header: wxh.}
