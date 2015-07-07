


type 
  WxTextPos* = clong

discard "forward decl of wxTextCtrl"
discard "forward decl of wxTextCtrlBase"
type 
  WxTextCoord* = clong


var wxOutOfRangeTextCoord* {.importcpp: "wxOutOfRangeTextCoord", header: "wx.h".}: WxTextCoord

var wxInvalidTextCoord* {.importcpp: "wxInvalidTextCoord", header: "wx.h".}: WxTextCoord


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
                             header: "wx.h".} = enum 
    wxTE_HT_UNKNOWN = - 2, wxTE_HT_BEFORE, wxTE_HT_ON_TEXT, wxTE_HT_BELOW, 
    wxTE_HT_BEYOND



type 
  WxTextAttrAlignment* {.size: sizeof(cint), 
                         importcpp: "wxTextCtrlBase::wxTextAttrAlignment", 
                         header: "wx.h".} = enum 
    wxTEXT_ALIGNMENT_DEFAULT, wxTEXT_ALIGNMENT_LEFT, wxTEXT_ALIGNMENT_CENTER, 
    wxTEXT_ALIGNMENT_RIGHT, wxTEXT_ALIGNMENT_JUSTIFIED



type 
  WxTextAttrFlags* {.size: sizeof(cint), 
                     importcpp: "wxTextCtrlBase::wxTextAttrFlags", 
                     header: "wx.h".} = enum 
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
                           header: "wx.h".} = enum 
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
                       header: "wx.h".} = enum 
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
                           header: "wx.h".} = enum 
    wxTEXT_ATTR_LINE_SPACING_NORMAL = 10, wxTEXT_ATTR_LINE_SPACING_HALF = 15, 
    wxTEXT_ATTR_LINE_SPACING_TWICE = 20



type 
  WxTextAttr* {.importcpp: "wxTextAttr", header: "wx.h".} = object 
  

proc constructwxTextAttr*(): WxTextAttr {.cdecl, constructor, 
    importcpp: "wxTextAttr(@)", header: "wx.h".}
proc constructwxTextAttr*(attr: WxTextAttr): WxTextAttr {.cdecl, constructor, 
    importcpp: "wxTextAttr(@)", header: "wx.h".}
proc constructwxTextAttr*(colText: WxColour; colBack: WxColour = wxNullColour; 
                          font: WxFont = wxNullFont; alignment: WxTextAttrAlignment = wxTEXT_ALIGNMENT_DEFAULT): WxTextAttr {.
    cdecl, constructor, importcpp: "wxTextAttr(@)", header: "wx.h".}
proc init*(this: var WxTextAttr) {.cdecl, importcpp: "Init", header: "wx.h".}
proc copy*(this: var WxTextAttr; attr: WxTextAttr) {.cdecl, importcpp: "Copy", 
    header: "wx.h".}
proc `==`*(this: WxTextAttr; attr: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc eqPartial*(this: WxTextAttr; attr: WxTextAttr; weakTest: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "EqPartial", header: "wx.h".}
proc getFontAttributes*(this: var WxTextAttr; font: WxFont; 
                        flags: auto = wxTEXT_ATTR_FONT): bool {.cdecl, 
    importcpp: "GetFontAttributes", header: "wx.h".}
proc setTextColour*(this: var WxTextAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxTextAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "wx.h".}
proc setAlignment*(this: var WxTextAttr; alignment: WxTextAttrAlignment) {.
    cdecl, importcpp: "SetAlignment", header: "wx.h".}
proc setTabs*(this: var WxTextAttr; tabs: WxArrayInt) {.cdecl, 
    importcpp: "SetTabs", header: "wx.h".}
proc setLeftIndent*(this: var WxTextAttr; indent: cint; subIndent: cint = 0) {.
    cdecl, importcpp: "SetLeftIndent", header: "wx.h".}
proc setRightIndent*(this: var WxTextAttr; indent: cint) {.cdecl, 
    importcpp: "SetRightIndent", header: "wx.h".}
proc setFontSize*(this: var WxTextAttr; pointSize: cint) {.cdecl, 
    importcpp: "SetFontSize", header: "wx.h".}
proc setFontPointSize*(this: var WxTextAttr; pointSize: cint) {.cdecl, 
    importcpp: "SetFontPointSize", header: "wx.h".}
proc setFontPixelSize*(this: var WxTextAttr; pixelSize: cint) {.cdecl, 
    importcpp: "SetFontPixelSize", header: "wx.h".}
proc setFontStyle*(this: var WxTextAttr; fontStyle: WxFontStyle) {.cdecl, 
    importcpp: "SetFontStyle", header: "wx.h".}
proc setFontWeight*(this: var WxTextAttr; fontWeight: WxFontWeight) {.cdecl, 
    importcpp: "SetFontWeight", header: "wx.h".}
proc setFontFaceName*(this: var WxTextAttr; faceName: WxString) {.cdecl, 
    importcpp: "SetFontFaceName", header: "wx.h".}
proc setFontUnderlined*(this: var WxTextAttr; underlined: bool) {.cdecl, 
    importcpp: "SetFontUnderlined", header: "wx.h".}
proc setFontStrikethrough*(this: var WxTextAttr; strikethrough: bool) {.cdecl, 
    importcpp: "SetFontStrikethrough", header: "wx.h".}
proc setFontEncoding*(this: var WxTextAttr; encoding: WxFontEncoding) {.cdecl, 
    importcpp: "SetFontEncoding", header: "wx.h".}
proc setFontFamily*(this: var WxTextAttr; family: WxFontFamily) {.cdecl, 
    importcpp: "SetFontFamily", header: "wx.h".}
proc setFont*(this: var WxTextAttr; font: WxFont) {.cdecl, importcpp: "SetFont", 
    header: "wx.h".}
proc setFlags*(this: var WxTextAttr; flags: clong) {.cdecl, 
    importcpp: "SetFlags", header: "wx.h".}
proc setCharacterStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetCharacterStyleName", header: "wx.h".}
proc setParagraphStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetParagraphStyleName", header: "wx.h".}
proc setListStyleName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetListStyleName", header: "wx.h".}
proc setParagraphSpacingAfter*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetParagraphSpacingAfter", header: "wx.h".}
proc setParagraphSpacingBefore*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetParagraphSpacingBefore", header: "wx.h".}
proc setLineSpacing*(this: var WxTextAttr; spacing: cint) {.cdecl, 
    importcpp: "SetLineSpacing", header: "wx.h".}
proc setBulletStyle*(this: var WxTextAttr; style: cint) {.cdecl, 
    importcpp: "SetBulletStyle", header: "wx.h".}
proc setBulletNumber*(this: var WxTextAttr; n: cint) {.cdecl, 
    importcpp: "SetBulletNumber", header: "wx.h".}
proc setBulletText*(this: var WxTextAttr; text: WxString) {.cdecl, 
    importcpp: "SetBulletText", header: "wx.h".}
proc setBulletFont*(this: var WxTextAttr; bulletFont: WxString) {.cdecl, 
    importcpp: "SetBulletFont", header: "wx.h".}
proc setBulletName*(this: var WxTextAttr; name: WxString) {.cdecl, 
    importcpp: "SetBulletName", header: "wx.h".}
proc setURL*(this: var WxTextAttr; url: WxString) {.cdecl, importcpp: "SetURL", 
    header: "wx.h".}
proc setPageBreak*(this: var WxTextAttr; pageBreak: bool = true) {.cdecl, 
    importcpp: "SetPageBreak", header: "wx.h".}
proc setTextEffects*(this: var WxTextAttr; effects: cint) {.cdecl, 
    importcpp: "SetTextEffects", header: "wx.h".}
proc setTextEffectFlags*(this: var WxTextAttr; effects: cint) {.cdecl, 
    importcpp: "SetTextEffectFlags", header: "wx.h".}
proc setOutlineLevel*(this: var WxTextAttr; level: cint) {.cdecl, 
    importcpp: "SetOutlineLevel", header: "wx.h".}
proc getTextColour*(this: WxTextAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "wx.h".}
proc getBackgroundColour*(this: WxTextAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: "wx.h".}
proc getAlignment*(this: WxTextAttr): WxTextAttrAlignment {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: "wx.h".}
proc getTabs*(this: WxTextAttr): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetTabs", header: "wx.h".}
proc getLeftIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetLeftIndent", header: "wx.h".}
proc getLeftSubIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetLeftSubIndent", header: "wx.h".}
proc getRightIndent*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetRightIndent", header: "wx.h".}
proc getFlags*(this: WxTextAttr): clong {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "wx.h".}
proc getFontSize*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetFontSize", header: "wx.h".}
proc getFontStyle*(this: WxTextAttr): WxFontStyle {.noSideEffect, cdecl, 
    importcpp: "GetFontStyle", header: "wx.h".}
proc getFontWeight*(this: WxTextAttr): WxFontWeight {.noSideEffect, cdecl, 
    importcpp: "GetFontWeight", header: "wx.h".}
proc getFontUnderlined*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetFontUnderlined", header: "wx.h".}
proc getFontStrikethrough*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetFontStrikethrough", header: "wx.h".}
proc getFontFaceName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFontFaceName", header: "wx.h".}
proc getFontEncoding*(this: WxTextAttr): WxFontEncoding {.noSideEffect, cdecl, 
    importcpp: "GetFontEncoding", header: "wx.h".}
proc getFontFamily*(this: WxTextAttr): WxFontFamily {.noSideEffect, cdecl, 
    importcpp: "GetFontFamily", header: "wx.h".}
proc getFont*(this: WxTextAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "wx.h".}
proc getCharacterStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCharacterStyleName", header: "wx.h".}
proc getParagraphStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetParagraphStyleName", header: "wx.h".}
proc getListStyleName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetListStyleName", header: "wx.h".}
proc getParagraphSpacingAfter*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphSpacingAfter", header: "wx.h".}
proc getParagraphSpacingBefore*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphSpacingBefore", header: "wx.h".}
proc getLineSpacing*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetLineSpacing", header: "wx.h".}
proc getBulletStyle*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetBulletStyle", header: "wx.h".}
proc getBulletNumber*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetBulletNumber", header: "wx.h".}
proc getBulletText*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletText", header: "wx.h".}
proc getBulletFont*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletFont", header: "wx.h".}
proc getBulletName*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBulletName", header: "wx.h".}
proc getURL*(this: WxTextAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: "wx.h".}
proc getTextEffects*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetTextEffects", header: "wx.h".}
proc getTextEffectFlags*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetTextEffectFlags", header: "wx.h".}
proc getOutlineLevel*(this: WxTextAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetOutlineLevel", header: "wx.h".}
proc hasTextColour*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: "wx.h".}
proc hasBackgroundColour*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: "wx.h".}
proc hasAlignment*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasAlignment", header: "wx.h".}
proc hasTabs*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
                                        importcpp: "HasTabs", header: "wx.h".}
proc hasLeftIndent*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasLeftIndent", header: "wx.h".}
proc hasRightIndent*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasRightIndent", header: "wx.h".}
proc hasFontWeight*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontWeight", header: "wx.h".}
proc hasFontSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontSize", header: "wx.h".}
proc hasFontPointSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontPointSize", header: "wx.h".}
proc hasFontPixelSize*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontPixelSize", header: "wx.h".}
proc hasFontItalic*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontItalic", header: "wx.h".}
proc hasFontUnderlined*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontUnderlined", header: "wx.h".}
proc hasFontStrikethrough*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontStrikethrough", header: "wx.h".}
proc hasFontFaceName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontFaceName", header: "wx.h".}
proc hasFontEncoding*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontEncoding", header: "wx.h".}
proc hasFontFamily*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFontFamily", header: "wx.h".}
proc hasFont*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
                                        importcpp: "HasFont", header: "wx.h".}
proc hasParagraphSpacingAfter*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphSpacingAfter", header: "wx.h".}
proc hasParagraphSpacingBefore*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphSpacingBefore", header: "wx.h".}
proc hasLineSpacing*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasLineSpacing", header: "wx.h".}
proc hasCharacterStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCharacterStyleName", header: "wx.h".}
proc hasParagraphStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphStyleName", header: "wx.h".}
proc hasListStyleName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasListStyleName", header: "wx.h".}
proc hasBulletStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletStyle", header: "wx.h".}
proc hasBulletNumber*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletNumber", header: "wx.h".}
proc hasBulletText*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletText", header: "wx.h".}
proc hasBulletName*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBulletName", header: "wx.h".}
proc hasURL*(this: WxTextAttr): bool {.noSideEffect, cdecl, importcpp: "HasURL", 
                                       header: "wx.h".}
proc hasPageBreak*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasPageBreak", header: "wx.h".}
proc hasTextEffects*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextEffects", header: "wx.h".}
proc hasTextEffect*(this: WxTextAttr; effect: cint): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextEffect", header: "wx.h".}
proc hasOutlineLevel*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasOutlineLevel", header: "wx.h".}
proc hasFlag*(this: WxTextAttr; flag: clong): bool {.noSideEffect, cdecl, 
    importcpp: "HasFlag", header: "wx.h".}
proc removeFlag*(this: var WxTextAttr; flag: clong) {.cdecl, 
    importcpp: "RemoveFlag", header: "wx.h".}
proc addFlag*(this: var WxTextAttr; flag: clong) {.cdecl, importcpp: "AddFlag", 
    header: "wx.h".}
proc isCharacterStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsCharacterStyle", header: "wx.h".}
proc isParagraphStyle*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsParagraphStyle", header: "wx.h".}
proc isDefault*(this: WxTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "wx.h".}
proc apply*(this: var WxTextAttr; style: WxTextAttr; 
            compareWith: ptr WxTextAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: "wx.h".}
proc merge*(base: WxTextAttr; overlay: WxTextAttr): WxTextAttr {.cdecl, 
    importcpp: "wxTextAttr::Merge(@)", header: "wx.h".}
proc merge*(this: var WxTextAttr; overlay: WxTextAttr) {.cdecl, 
    importcpp: "Merge", header: "wx.h".}
proc combine*(attr: WxTextAttr; attrDef: WxTextAttr; text: ptr WxTextCtrlBase): WxTextAttr {.
    cdecl, importcpp: "wxTextAttr::Combine(@)", header: "wx.h".}
proc tabsEq*(tabs1: WxArrayInt; tabs2: WxArrayInt): bool {.cdecl, 
    importcpp: "wxTextAttr::TabsEq(@)", header: "wx.h".}
proc removeStyle*(destStyle: var WxTextAttr; style: WxTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttr::RemoveStyle(@)", header: "wx.h".}
proc combineBitlists*(valueA: var cint; valueB: cint; flagsA: var cint; 
                      flagsB: cint): bool {.cdecl, 
    importcpp: "wxTextAttr::CombineBitlists(@)", header: "wx.h".}
proc bitlistsEqPartial*(valueA: cint; valueB: cint; flags: cint): bool {.cdecl, 
    importcpp: "wxTextAttr::BitlistsEqPartial(@)", header: "wx.h".}
proc splitParaCharStyles*(style: WxTextAttr; parStyle: var WxTextAttr; 
                          charStyle: var WxTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttr::SplitParaCharStyles(@)", header: "wx.h".}

type 
  WxTextAreaBase* {.importcpp: "wxTextAreaBase", header: "wx.h", inheritable.} = object 
  

proc constructwxTextAreaBase*(): WxTextAreaBase {.cdecl, constructor, 
    importcpp: "wxTextAreaBase(@)", header: "wx.h".}
proc destroywxTextAreaBase*(this: var WxTextAreaBase) {.cdecl, 
    importcpp: "#.~wxTextAreaBase()", header: "wx.h".}
proc getLineLength*(this: WxTextAreaBase; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: "wx.h".}
proc getLineText*(this: WxTextAreaBase; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: "wx.h".}
proc getNumberOfLines*(this: WxTextAreaBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: "wx.h".}
proc loadFile*(this: var WxTextAreaBase; file: WxString; 
               fileType: cint = wxTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: var WxTextAreaBase; file: WxString = wxEmptyString; 
               fileType: cint = wxTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: "wx.h".}
proc isModified*(this: WxTextAreaBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: "wx.h".}
proc markDirty*(this: var WxTextAreaBase) {.cdecl, importcpp: "MarkDirty", 
    header: "wx.h".}
proc discardEdits*(this: var WxTextAreaBase) {.cdecl, importcpp: "DiscardEdits", 
    header: "wx.h".}
proc setModified*(this: var WxTextAreaBase; modified: bool) {.cdecl, 
    importcpp: "SetModified", header: "wx.h".}
proc setStyle*(this: var WxTextAreaBase; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "wx.h".}
proc getStyle*(this: var WxTextAreaBase; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: "wx.h".}
proc setDefaultStyle*(this: var WxTextAreaBase; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: "wx.h".}
proc getDefaultStyle*(this: WxTextAreaBase): WxTextAttr {.noSideEffect, cdecl, 
    importcpp: "GetDefaultStyle", header: "wx.h".}
proc xYToPosition*(this: WxTextAreaBase; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: "wx.h".}
proc positionToXY*(this: WxTextAreaBase; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: "wx.h".}
proc positionToCoords*(this: WxTextAreaBase; pos: clong): WxPoint {.
    noSideEffect, cdecl, importcpp: "PositionToCoords", header: "wx.h".}
proc showPosition*(this: var WxTextAreaBase; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: "wx.h".}
proc hitTest*(this: WxTextAreaBase; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "wx.h".}
proc hitTest*(this: WxTextAreaBase; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "wx.h".}
proc getValue*(this: WxTextAreaBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxTextAreaBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}

type 
  WxTextCtrlIface* {.importcpp: "wxTextCtrlIface", header: "wx.h".} = object of WxTextAreaBase
  

proc constructwxTextCtrlIface*(): WxTextCtrlIface {.cdecl, constructor, 
    importcpp: "wxTextCtrlIface(@)", header: "wx.h".}
proc getValue*(this: WxTextCtrlIface): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxTextCtrlIface; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}

type 
  WxTextCtrlBase* {.importcpp: "wxTextCtrlBase", header: "wx.h".} = object of WxControl
  

proc constructwxTextCtrlBase*(): WxTextCtrlBase {.cdecl, constructor, 
    importcpp: "wxTextCtrlBase(@)", header: "wx.h".}
proc destroywxTextCtrlBase*(this: var WxTextCtrlBase) {.cdecl, 
    importcpp: "#.~wxTextCtrlBase()", header: "wx.h".}
proc isSingleLine*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSingleLine", header: "wx.h".}
proc isMultiLine*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsMultiLine", header: "wx.h".}
proc `<<`*(this: var WxTextCtrlBase; s: WxString): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: "wx.h".}
proc `<<`*(this: var WxTextCtrlBase; i: clong): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: "wx.h".}
proc `<<`*(this: var WxTextCtrlBase; f: cfloat): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: "wx.h".}
proc `<<`*(this: var WxTextCtrlBase; d: cdouble): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: "wx.h".}
proc `<<`*(this: var WxTextCtrlBase; c: char): var WxTextCtrl {.cdecl, 
    importcpp: "(# << #)", header: "wx.h".}
proc emulateKeyPress*(this: var WxTextCtrlBase; event: WxKeyEvent): bool {.
    cdecl, importcpp: "EmulateKeyPress", header: "wx.h".}
proc doUpdateWindowUI*(this: var WxTextCtrlBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: "wx.h".}
proc shouldInheritColours*(this: WxTextCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "wx.h".}
proc hitTest*(this: WxTextCtrlBase; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "wx.h".}
proc hitTest*(this: WxTextCtrlBase; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "wx.h".}
proc setStyle*(this: var WxTextCtrlBase; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "wx.h".}
proc getStyle*(this: var WxTextCtrlBase; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: "wx.h".}
proc setDefaultStyle*(this: var WxTextCtrlBase; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: "wx.h".}
proc getValue*(this: WxTextCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxTextCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc setHint*(this: var WxTextCtrlBase; hint: WxString): bool {.cdecl, 
    importcpp: "SetHint", header: "wx.h".}
proc getDefaultAttributes*(this: WxTextCtrlBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: "wx.h".}

discard "forward decl of wxTextUrlEvent"
var wxEVT_TEXT_ENTER* {.importcpp: "wxEVT_TEXT_ENTER", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TEXT_URL* {.importcpp: "wxEVT_TEXT_URL", header: "wx.h".}: WxEventTypeTag[
    WxTextUrlEvent]

var wxEVT_TEXT_MAXLEN* {.importcpp: "wxEVT_TEXT_MAXLEN", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

type 
  WxTextUrlEvent* {.importcpp: "wxTextUrlEvent", header: "wx.h".} = object of WxCommandEvent
  

proc constructwxTextUrlEvent*(winid: cint; evtMouse: WxMouseEvent; start: clong; 
                              `end`: clong): WxTextUrlEvent {.cdecl, 
    constructor, importcpp: "wxTextUrlEvent(@)", header: "wx.h".}
proc constructwxTextUrlEvent*(event: WxTextUrlEvent): WxTextUrlEvent {.cdecl, 
    constructor, importcpp: "wxTextUrlEvent(@)", header: "wx.h".}
proc getMouseEvent*(this: WxTextUrlEvent): WxMouseEvent {.noSideEffect, cdecl, 
    importcpp: "GetMouseEvent", header: "wx.h".}
proc getURLStart*(this: WxTextUrlEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetURLStart", header: "wx.h".}
proc getURLEnd*(this: WxTextUrlEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetURLEnd", header: "wx.h".}
proc clone*(this: WxTextUrlEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}
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
  WxStreamToTextRedirector* {.importcpp: "wxStreamToTextRedirector", 
                              header: "wx.h".} = object 
  

proc constructwxStreamToTextRedirector*(text: ptr WxTextCtrl): WxStreamToTextRedirector {.
    cdecl, constructor, importcpp: "wxStreamToTextRedirector(@)", header: "wx.h".}
proc destroywxStreamToTextRedirector*(this: var WxStreamToTextRedirector) {.
    cdecl, importcpp: "#.~wxStreamToTextRedirector()", header: "wx.h".}
type 
  WxTextCtrl* {.importcpp: "wxTextCtrl", header: "wx.h".} = object of WxTextCtrlBase
  

proc constructwxTextCtrl*(): WxTextCtrl {.cdecl, constructor, 
    importcpp: "wxTextCtrl(@)", header: "wx.h".}
proc constructwxTextCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                          value: WxString = wxEmptyString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("text")): WxTextCtrl {.
    cdecl, constructor, importcpp: "wxTextCtrl(@)", header: "wx.h".}
proc destroywxTextCtrl*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "#.~wxTextCtrl()", header: "wx.h".}
proc create*(this: var WxTextCtrl; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("text")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc getValue*(this: WxTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc getRange*(this: WxTextCtrl; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: "wx.h".}
proc isEmpty*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsEmpty", header: "wx.h".}
proc writeText*(this: var WxTextCtrl; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: "wx.h".}
proc appendText*(this: var WxTextCtrl; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: "wx.h".}
proc clear*(this: var WxTextCtrl) {.cdecl, importcpp: "Clear", header: "wx.h".}
proc getLineLength*(this: WxTextCtrl; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: "wx.h".}
proc getLineText*(this: WxTextCtrl; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: "wx.h".}
proc getNumberOfLines*(this: WxTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: "wx.h".}
proc setMaxLength*(this: var WxTextCtrl; len: culong) {.cdecl, 
    importcpp: "SetMaxLength", header: "wx.h".}
proc getSelection*(this: WxTextCtrl; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "wx.h".}
proc redo*(this: var WxTextCtrl) {.cdecl, importcpp: "Redo", header: "wx.h".}
proc canRedo*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
                                        importcpp: "CanRedo", header: "wx.h".}
proc setInsertionPointEnd*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "SetInsertionPointEnd", header: "wx.h".}
proc getInsertionPoint*(this: WxTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: "wx.h".}
proc getLastPosition*(this: WxTextCtrl): WxTextPos {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: "wx.h".}
proc isModified*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: "wx.h".}
proc markDirty*(this: var WxTextCtrl) {.cdecl, importcpp: "MarkDirty", 
                                        header: "wx.h".}
proc discardEdits*(this: var WxTextCtrl) {.cdecl, importcpp: "DiscardEdits", 
    header: "wx.h".}
proc xYToPosition*(this: WxTextCtrl; x: clong; y: clong): clong {.noSideEffect, 
    cdecl, importcpp: "XYToPosition", header: "wx.h".}
proc positionToXY*(this: WxTextCtrl; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: "wx.h".}
proc showPosition*(this: var WxTextCtrl; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: "wx.h".}
proc hitTest*(this: WxTextCtrl; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "wx.h".}
proc hitTest*(this: WxTextCtrl; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "wx.h".}
proc showNativeCaret*(this: var WxTextCtrl; show: bool = true): bool {.cdecl, 
    importcpp: "ShowNativeCaret", header: "wx.h".}
proc hideNativeCaret*(this: var WxTextCtrl): bool {.cdecl, 
    importcpp: "HideNativeCaret", header: "wx.h".}
proc setWindowStyleFlag*(this: var WxTextCtrl; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: "wx.h".}
proc command*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "wx.h".}
proc isRich*(this: WxTextCtrl): bool {.noSideEffect, cdecl, importcpp: "IsRich", 
                                       header: "wx.h".}
proc isInkEdit*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsInkEdit", header: "wx.h".}
proc adoptAttributesFromHWND*(this: var WxTextCtrl) {.cdecl, 
    importcpp: "AdoptAttributesFromHWND", header: "wx.h".}
proc acceptsFocusFromKeyboard*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: "wx.h".}
proc canApplyThemeBorder*(this: WxTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "wx.h".}
proc onDropFiles*(this: var WxTextCtrl; event: var WxDropFilesEvent) {.cdecl, 
    importcpp: "OnDropFiles", header: "wx.h".}
proc onChar*(this: var WxTextCtrl; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnChar", header: "wx.h".}
proc onCut*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCut", header: "wx.h".}
proc onCopy*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCopy", header: "wx.h".}
proc onPaste*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPaste", header: "wx.h".}
proc onUndo*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUndo", header: "wx.h".}
proc onRedo*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRedo", header: "wx.h".}
proc onDelete*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnDelete", header: "wx.h".}
proc onSelectAll*(this: var WxTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSelectAll", header: "wx.h".}
proc onUpdateCut*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCut", header: "wx.h".}
proc onUpdateCopy*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCopy", header: "wx.h".}
proc onUpdatePaste*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdatePaste", header: "wx.h".}
proc onUpdateUndo*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateUndo", header: "wx.h".}
proc onUpdateRedo*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateRedo", header: "wx.h".}
proc onUpdateDelete*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateDelete", header: "wx.h".}
proc onUpdateSelectAll*(this: var WxTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateSelectAll", header: "wx.h".}
proc onContextMenu*(this: var WxTextCtrl; event: var WxContextMenuEvent) {.
    cdecl, importcpp: "OnContextMenu", header: "wx.h".}
proc onSetFocus*(this: var WxTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnSetFocus", header: "wx.h".}
