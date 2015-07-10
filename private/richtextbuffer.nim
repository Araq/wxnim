



const 
  wxTextAttrEx* = wxTextAttr


const 
  wxRICHTEXT_USE_OWN_CARET* = 1


const 
  wxRICHTEXT_USE_OPTIMIZED_LINE_DRAWING* = 0


const 
  wxRICHTEXT_HAVE_XMLDOCUMENT_OUTPUT* = 1


const 
  wxRICHTEXT_HAVE_DIRECT_OUTPUT* = 1


var wxRichTextLineBreakChar* {.importcpp: "wxRichTextLineBreakChar", 
                               header: "<wx/wx.h>".}: WxChar


type 
  WxRichTextFileType* {.size: sizeof(cint), importcpp: "wxRichTextFileType", 
                        header: "<wx/wx.h>".} = enum 
    wxRICHTEXT_TYPE_ANY = 0, wxRICHTEXT_TYPE_TEXT, wxRICHTEXT_TYPE_XML, 
    wxRICHTEXT_TYPE_HTML, wxRICHTEXT_TYPE_RTF, wxRICHTEXT_TYPE_PDF



discard "forward decl of wxRichTextCtrl"
discard "forward decl of wxRichTextObject"
discard "forward decl of wxRichTextImage"
discard "forward decl of wxRichTextPlainText"
discard "forward decl of wxRichTextCacheObject"
discard "forward decl of wxRichTextObjectList"
discard "forward decl of wxRichTextLine"
discard "forward decl of wxRichTextParagraph"
discard "forward decl of wxRichTextFileHandler"
discard "forward decl of wxRichTextDrawingHandler"
discard "forward decl of wxRichTextField"
discard "forward decl of wxRichTextFieldType"
discard "forward decl of wxRichTextStyleSheet"
discard "forward decl of wxRichTextListStyleDefinition"
discard "forward decl of wxRichTextEvent"
discard "forward decl of wxRichTextRenderer"
discard "forward decl of wxRichTextBuffer"
discard "forward decl of wxRichTextXMLHandler"
discard "forward decl of wxRichTextParagraphLayoutBox"
discard "forward decl of wxRichTextImageBlock"
discard "forward decl of wxXmlNode"
discard "forward decl of wxRichTextFloatCollector"
discard "forward decl of wxDataInputStream"
discard "forward decl of wxDataOutputStream"
const 
  wxRICHTEXT_FIXED_WIDTH* = 0x00000001
  wxRICHTEXT_FIXED_HEIGHT* = 0x00000002
  wxRICHTEXT_VARIABLE_WIDTH* = 0x00000004
  wxRICHTEXT_VARIABLE_HEIGHT* = 0x00000008


const 
  wxRICHTEXT_LAYOUT_SPECIFIED_RECT* = 0x00000010


const 
  wxRICHTEXT_DRAW_IGNORE_CACHE* = 0x00000001
  wxRICHTEXT_DRAW_SELECTED* = 0x00000002
  wxRICHTEXT_DRAW_PRINT* = 0x00000004
  wxRICHTEXT_DRAW_GUIDELINES* = 0x00000008


type 
  WxRichTextHitTestFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxRichTextHitTestFlags", 
                            header: "<wx/wx.h>".} = enum 
    wxRICHTEXT_HITTEST_NONE = 0x00000001, 
    wxRICHTEXT_HITTEST_BEFORE = 0x00000002, 
    wxRICHTEXT_HITTEST_AFTER = 0x00000004, wxRICHTEXT_HITTEST_ON = 0x00000008, 
    wxRICHTEXT_HITTEST_OUTSIDE = 0x00000010, 
    wxRICHTEXT_HITTEST_NO_NESTED_OBJECTS = 0x00000020, 
    wxRICHTEXT_HITTEST_NO_FLOATING_OBJECTS = 0x00000040, 
    wxRICHTEXT_HITTEST_HONOUR_ATOMIC = 0x00000080



const 
  wxRICHTEXT_FORMATTED* = 0x00000001
  wxRICHTEXT_UNFORMATTED* = 0x00000002
  wxRICHTEXT_CACHE_SIZE* = 0x00000004
  wxRICHTEXT_HEIGHT_ONLY* = 0x00000008


const 
  wxRICHTEXT_SETSTYLE_NONE* = 0x00000000


const 
  wxRICHTEXT_SETSTYLE_WITH_UNDO* = 0x00000001


const 
  wxRICHTEXT_SETSTYLE_OPTIMIZE* = 0x00000002


const 
  wxRICHTEXT_SETSTYLE_PARAGRAPHS_ONLY* = 0x00000004


const 
  wxRICHTEXT_SETSTYLE_CHARACTERS_ONLY* = 0x00000008


const 
  wxRICHTEXT_SETSTYLE_RENUMBER* = 0x00000010


const 
  wxRICHTEXT_SETSTYLE_SPECIFY_LEVEL* = 0x00000020


const 
  wxRICHTEXT_SETSTYLE_RESET* = 0x00000040


const 
  wxRICHTEXT_SETSTYLE_REMOVE* = 0x00000080


const 
  wxRICHTEXT_SETPROPERTIES_NONE* = 0x00000000


const 
  wxRICHTEXT_SETPROPERTIES_WITH_UNDO* = 0x00000001


const 
  wxRICHTEXT_SETPROPERTIES_PARAGRAPHS_ONLY* = 0x00000002


const 
  wxRICHTEXT_SETPROPERTIES_CHARACTERS_ONLY* = 0x00000004


const 
  wxRICHTEXT_SETPROPERTIES_RESET* = 0x00000008


const 
  wxRICHTEXT_SETPROPERTIES_REMOVE* = 0x00000010


const 
  wxRICHTEXT_INSERT_NONE* = 0x00000000
  wxRICHTEXT_INSERT_WITH_PREVIOUS_PARAGRAPH_STYLE* = 0x00000001
  wxRICHTEXT_INSERT_INTERACTIVE* = 0x00000002


const 
  wxTEXT_ATTR_KEEP_FIRST_PARA_STYLE* = 0x20000000


const 
  wxSCRIPT_MUL_FACTOR* = 1.5


type 
  WxTextAttrDimensionFlags* = cushort


type 
  WxTextBoxAttrFlags* {.size: sizeof(cint), 
                        importcpp: "wxDataOutputStream::wxTextBoxAttrFlags", 
                        header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_FLOAT = 0x00000001, wxTEXT_BOX_ATTR_CLEAR = 0x00000002, 
    wxTEXT_BOX_ATTR_COLLAPSE_BORDERS = 0x00000004, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT = 0x00000008, 
    wxTEXT_BOX_ATTR_BOX_STYLE_NAME = 0x00000010



type 
  WxTextAttrValueFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrValueFlags", 
                          header: "<wx/wx.h>".} = enum 
    wxTEXT_ATTR_VALUE_VALID = 0x00001000

const 
  wxTEXT_ATTR_VALUE_VALID_MASK = wxTEXT_ATTR_VALUE_VALID


type 
  WxTextAttrUnits* {.size: sizeof(cint), 
                     importcpp: "wxDataOutputStream::wxTextAttrUnits", 
                     header: "<wx/wx.h>".} = enum 
    wxTEXT_ATTR_UNITS_TENTHS_MM = 0x00000001, 
    wxTEXT_ATTR_UNITS_PIXELS = 0x00000002, 
    wxTEXT_ATTR_UNITS_PERCENTAGE = 0x00000004, 
    wxTEXT_ATTR_UNITS_POINTS = 0x00000008, 
    wxTEXT_ATTR_UNITS_HUNDREDTHS_POINT = 0x00000100, 
    wxTEXT_ATTR_UNITS_MASK = 0x0000010F



type 
  WxTextBoxAttrPosition* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrPosition", 
                           header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_POSITION_STATIC = 0x00000000, 
    wxTEXT_BOX_ATTR_POSITION_RELATIVE = 0x00000010, 
    wxTEXT_BOX_ATTR_POSITION_ABSOLUTE = 0x00000020, 
    wxTEXT_BOX_ATTR_POSITION_FIXED = 0x00000040, 
    wxTEXT_BOX_ATTR_POSITION_MASK = 0x000000F0



type 
  WxTextAttrDimension* {.importcpp: "wxTextAttrDimension", header: "<wx/wx.h>".} = object 
    mValue* {.importc: "m_value".}: cint
    mFlags* {.importc: "m_flags".}: WxTextAttrDimensionFlags


proc constructwxTextAttrDimension*(): WxTextAttrDimension {.cdecl, constructor, 
    importcpp: "wxTextAttrDimension(@)", header: "<wx/wx.h>".}
proc constructwxTextAttrDimension*(value: cint; units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM): WxTextAttrDimension {.
    cdecl, constructor, importcpp: "wxTextAttrDimension(@)", header: "<wx/wx.h>".}
proc reset*(this: var WxTextAttrDimension) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextAttrDimension; dim: WxTextAttrDimension; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextAttrDimension; dim: WxTextAttrDimension; 
            compareWith: ptr WxTextAttrDimension = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextAttrDimension; 
                              attr: WxTextAttrDimension; 
                              clashingAttr: var WxTextAttrDimension; 
                              absentAttr: var WxTextAttrDimension) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc `==`*(this: WxTextAttrDimension; dim: WxTextAttrDimension): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc getValue*(this: WxTextAttrDimension): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc getValueMM*(this: WxTextAttrDimension): cfloat {.noSideEffect, cdecl, 
    importcpp: "GetValueMM", header: "<wx/wx.h>".}
proc setValueMM*(this: var WxTextAttrDimension; value: cfloat) {.cdecl, 
    importcpp: "SetValueMM", header: "<wx/wx.h>".}
proc setValue*(this: var WxTextAttrDimension; value: cint) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               flags: WxTextAttrDimensionFlags) {.cdecl, importcpp: "SetValue", 
    header: "<wx/wx.h>".}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               units: WxTextAttrUnits) {.cdecl, importcpp: "SetValue", 
    header: "<wx/wx.h>".}
proc setValue*(this: var WxTextAttrDimension; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getUnits*(this: WxTextAttrDimension): WxTextAttrUnits {.noSideEffect, 
    cdecl, importcpp: "GetUnits", header: "<wx/wx.h>".}
proc setUnits*(this: var WxTextAttrDimension; units: WxTextAttrUnits) {.cdecl, 
    importcpp: "SetUnits", header: "<wx/wx.h>".}
proc getPosition*(this: WxTextAttrDimension): WxTextBoxAttrPosition {.
    noSideEffect, cdecl, importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxTextAttrDimension; pos: WxTextBoxAttrPosition) {.
    cdecl, importcpp: "SetPosition", header: "<wx/wx.h>".}
proc isValid*(this: WxTextAttrDimension): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}
proc setValid*(this: var WxTextAttrDimension; b: bool) {.cdecl, 
    importcpp: "SetValid", header: "<wx/wx.h>".}
proc getFlags*(this: WxTextAttrDimension): WxTextAttrDimensionFlags {.
    noSideEffect, cdecl, importcpp: "GetFlags", header: "<wx/wx.h>".}
proc setFlags*(this: var WxTextAttrDimension; flags: WxTextAttrDimensionFlags) {.
    cdecl, importcpp: "SetFlags", header: "<wx/wx.h>".}

type 
  WxTextAttrDimensions* {.importcpp: "wxTextAttrDimensions", header: "<wx/wx.h>".} = object 
    mLeft* {.importc: "m_left".}: WxTextAttrDimension
    mTop* {.importc: "m_top".}: WxTextAttrDimension
    mRight* {.importc: "m_right".}: WxTextAttrDimension
    mBottom* {.importc: "m_bottom".}: WxTextAttrDimension


proc constructwxTextAttrDimensions*(): WxTextAttrDimensions {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensions(@)", header: "<wx/wx.h>".}
proc reset*(this: var WxTextAttrDimensions) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc `==`*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextAttrDimensions; dims: WxTextAttrDimensions; 
            compareWith: ptr WxTextAttrDimensions = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextAttrDimensions; 
                              attr: WxTextAttrDimensions; 
                              clashingAttr: var WxTextAttrDimensions; 
                              absentAttr: var WxTextAttrDimensions) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxTextAttrDimensions; attr: WxTextAttrDimensions): bool {.
    cdecl, importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc getLeft*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getLeft*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getRight*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRight", header: "<wx/wx.h>".}
proc getRight*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRight", header: "<wx/wx.h>".}
proc getTop*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTop", header: "<wx/wx.h>".}
proc getTop*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTop", header: "<wx/wx.h>".}
proc getBottom*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottom", header: "<wx/wx.h>".}
proc getBottom*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    cdecl, importcpp: "GetBottom", header: "<wx/wx.h>".}
proc isValid*(this: WxTextAttrDimensions): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}

type 
  WxTextAttrSize* {.importcpp: "wxTextAttrSize", header: "<wx/wx.h>".} = object 
    mWidth* {.importc: "m_width".}: WxTextAttrDimension
    mHeight* {.importc: "m_height".}: WxTextAttrDimension


proc constructwxTextAttrSize*(): WxTextAttrSize {.cdecl, constructor, 
    importcpp: "wxTextAttrSize(@)", header: "<wx/wx.h>".}
proc reset*(this: var WxTextAttrSize) {.cdecl, importcpp: "Reset", 
                                        header: "<wx/wx.h>".}
proc `==`*(this: WxTextAttrSize; size: WxTextAttrSize): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextAttrSize; size: WxTextAttrSize; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextAttrSize; dims: WxTextAttrSize; 
            compareWith: ptr WxTextAttrSize = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextAttrSize; attr: WxTextAttrSize; 
                              clashingAttr: var WxTextAttrSize; 
                              absentAttr: var WxTextAttrSize) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxTextAttrSize; attr: WxTextAttrSize): bool {.cdecl, 
    importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc getWidth*(this: var WxTextAttrSize): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc getWidth*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrSize; value: cint; 
               flags: WxTextAttrDimensionFlags) {.cdecl, importcpp: "SetWidth", 
    header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    cdecl, importcpp: "SetWidth", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc getHeight*(this: var WxTextAttrSize): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetHeight", header: "<wx/wx.h>".}
proc getHeight*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetHeight", header: "<wx/wx.h>".}
proc setHeight*(this: var WxTextAttrSize; value: cint; 
                flags: WxTextAttrDimensionFlags) {.cdecl, 
    importcpp: "SetHeight", header: "<wx/wx.h>".}
proc setHeight*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    cdecl, importcpp: "SetHeight", header: "<wx/wx.h>".}
proc setHeight*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetHeight", header: "<wx/wx.h>".}
proc isValid*(this: WxTextAttrSize): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}

type 
  WxTextAttrDimensionConverter* {.importcpp: "wxTextAttrDimensionConverter", 
                                  header: "<wx/wx.h>".} = object 
    mPpi* {.importc: "m_ppi".}: cint
    mScale* {.importc: "m_scale".}: cdouble
    mParentSize* {.importc: "m_parentSize".}: WxSize


proc constructwxTextAttrDimensionConverter*(dc: var WxDC; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", 
    header: "<wx/wx.h>".}
proc constructwxTextAttrDimensionConverter*(ppi: cint; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.cdecl, 
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", 
    header: "<wx/wx.h>".}
proc getPixels*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension; 
                direction: cint = wxHORIZONTAL): cint {.noSideEffect, cdecl, 
    importcpp: "GetPixels", header: "<wx/wx.h>".}
proc getTenthsMM*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension): cint {.
    noSideEffect, cdecl, importcpp: "GetTenthsMM", header: "<wx/wx.h>".}
proc convertTenthsMMToPixels*(this: WxTextAttrDimensionConverter; units: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertTenthsMMToPixels", 
    header: "<wx/wx.h>".}
proc convertPixelsToTenthsMM*(this: WxTextAttrDimensionConverter; pixels: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToTenthsMM", 
    header: "<wx/wx.h>".}
proc setScale*(this: var WxTextAttrDimensionConverter; scale: cdouble) {.cdecl, 
    importcpp: "SetScale", header: "<wx/wx.h>".}
proc getScale*(this: WxTextAttrDimensionConverter): cdouble {.noSideEffect, 
    cdecl, importcpp: "GetScale", header: "<wx/wx.h>".}
proc setPPI*(this: var WxTextAttrDimensionConverter; ppi: cint) {.cdecl, 
    importcpp: "SetPPI", header: "<wx/wx.h>".}
proc getPPI*(this: WxTextAttrDimensionConverter): cint {.noSideEffect, cdecl, 
    importcpp: "GetPPI", header: "<wx/wx.h>".}
proc setParentSize*(this: var WxTextAttrDimensionConverter; parentSize: WxSize) {.
    cdecl, importcpp: "SetParentSize", header: "<wx/wx.h>".}
proc getParentSize*(this: WxTextAttrDimensionConverter): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetParentSize", header: "<wx/wx.h>".}

type 
  WxTextAttrBorderStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderStyle", 
                           header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_BORDER_NONE = 0, wxTEXT_BOX_ATTR_BORDER_SOLID = 1, 
    wxTEXT_BOX_ATTR_BORDER_DOTTED = 2, wxTEXT_BOX_ATTR_BORDER_DASHED = 3, 
    wxTEXT_BOX_ATTR_BORDER_DOUBLE = 4, wxTEXT_BOX_ATTR_BORDER_GROOVE = 5, 
    wxTEXT_BOX_ATTR_BORDER_RIDGE = 6, wxTEXT_BOX_ATTR_BORDER_INSET = 7, 
    wxTEXT_BOX_ATTR_BORDER_OUTSET = 8



type 
  WxTextAttrBorderFlags* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderFlags", 
                           header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_BORDER_STYLE = 0x00000001, 
    wxTEXT_BOX_ATTR_BORDER_COLOUR = 0x00000002



type 
  WxTextAttrBorderWidth* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextAttrBorderWidth", 
                           header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_BORDER_THICK = - 3, wxTEXT_BOX_ATTR_BORDER_MEDIUM = - 2, 
    wxTEXT_BOX_ATTR_BORDER_THIN = - 1



type 
  WxTextBoxAttrFloatStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrFloatStyle", 
                             header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_FLOAT_NONE = 0, wxTEXT_BOX_ATTR_FLOAT_LEFT = 1, 
    wxTEXT_BOX_ATTR_FLOAT_RIGHT = 2



type 
  WxTextBoxAttrClearStyle* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrClearStyle", 
                             header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_CLEAR_NONE = 0, wxTEXT_BOX_ATTR_CLEAR_LEFT = 1, 
    wxTEXT_BOX_ATTR_CLEAR_RIGHT = 2, wxTEXT_BOX_ATTR_CLEAR_BOTH = 3



type 
  WxTextBoxAttrCollapseMode* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrCollapseMode", 
                               header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_COLLAPSE_NONE = 0, wxTEXT_BOX_ATTR_COLLAPSE_FULL = 1



type 
  WxTextBoxAttrVerticalAlignment* {.size: sizeof(cint), importcpp: "wxDataOutputStream::wxTextBoxAttrVerticalAlignment", 
                                    header: "<wx/wx.h>".} = enum 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_NONE = 0, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_TOP = 1, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_CENTRE = 2, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_BOTTOM = 3



type 
  WxTextAttrBorder* {.importcpp: "wxTextAttrBorder", header: "<wx/wx.h>".} = object 
    mBorderStyle* {.importc: "m_borderStyle".}: cint
    mBorderColour* {.importc: "m_borderColour".}: culong
    mBorderWidth* {.importc: "m_borderWidth".}: WxTextAttrDimension
    mFlags* {.importc: "m_flags".}: cint


proc constructwxTextAttrBorder*(): WxTextAttrBorder {.cdecl, constructor, 
    importcpp: "wxTextAttrBorder(@)", header: "<wx/wx.h>".}
proc `==`*(this: WxTextAttrBorder; border: WxTextAttrBorder): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc reset*(this: var WxTextAttrBorder) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextAttrBorder; border: WxTextAttrBorder; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextAttrBorder; border: WxTextAttrBorder; 
            compareWith: ptr WxTextAttrBorder = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxTextAttrBorder; attr: WxTextAttrBorder): bool {.
    cdecl, importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextAttrBorder; 
                              attr: WxTextAttrBorder; 
                              clashingAttr: var WxTextAttrBorder; 
                              absentAttr: var WxTextAttrBorder) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc setStyle*(this: var WxTextAttrBorder; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc getStyle*(this: WxTextAttrBorder): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc setColour*(this: var WxTextAttrBorder; colour: culong) {.cdecl, 
    importcpp: "SetColour", header: "<wx/wx.h>".}
proc setColour*(this: var WxTextAttrBorder; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: "<wx/wx.h>".}
proc getColourLong*(this: WxTextAttrBorder): culong {.noSideEffect, cdecl, 
    importcpp: "GetColourLong", header: "<wx/wx.h>".}
proc getColour*(this: WxTextAttrBorder): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: "<wx/wx.h>".}
proc getWidth*(this: var WxTextAttrBorder): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc getWidth*(this: WxTextAttrBorder): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetWidth", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrBorder; width: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrBorder; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc hasStyle*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasStyle", header: "<wx/wx.h>".}
proc hasColour*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasColour", header: "<wx/wx.h>".}
proc hasWidth*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "HasWidth", header: "<wx/wx.h>".}
proc isValid*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}
proc makeValid*(this: var WxTextAttrBorder) {.cdecl, importcpp: "MakeValid", 
    header: "<wx/wx.h>".}
proc isDefault*(this: WxTextAttrBorder): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "<wx/wx.h>".}
proc getFlags*(this: WxTextAttrBorder): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "<wx/wx.h>".}
proc setFlags*(this: var WxTextAttrBorder; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: "<wx/wx.h>".}
proc addFlag*(this: var WxTextAttrBorder; flag: cint) {.cdecl, 
    importcpp: "AddFlag", header: "<wx/wx.h>".}
proc removeFlag*(this: var WxTextAttrBorder; flag: cint) {.cdecl, 
    importcpp: "RemoveFlag", header: "<wx/wx.h>".}

type 
  WxTextAttrBorders* {.importcpp: "wxTextAttrBorders", header: "<wx/wx.h>".} = object 
    mLeft* {.importc: "m_left".}: WxTextAttrBorder
    mRight* {.importc: "m_right".}: WxTextAttrBorder
    mTop* {.importc: "m_top".}: WxTextAttrBorder
    mBottom* {.importc: "m_bottom".}: WxTextAttrBorder


proc constructwxTextAttrBorders*(): WxTextAttrBorders {.cdecl, constructor, 
    importcpp: "wxTextAttrBorders(@)", header: "<wx/wx.h>".}
proc `==`*(this: WxTextAttrBorders; borders: WxTextAttrBorders): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc setStyle*(this: var WxTextAttrBorders; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc setColour*(this: var WxTextAttrBorders; colour: culong) {.cdecl, 
    importcpp: "SetColour", header: "<wx/wx.h>".}
proc setColour*(this: var WxTextAttrBorders; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrBorders; width: WxTextAttrDimension) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc setWidth*(this: var WxTextAttrBorders; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.cdecl, 
    importcpp: "SetWidth", header: "<wx/wx.h>".}
proc reset*(this: var WxTextAttrBorders) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextAttrBorders; borders: WxTextAttrBorders; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextAttrBorders; borders: WxTextAttrBorders; 
            compareWith: ptr WxTextAttrBorders = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxTextAttrBorders; attr: WxTextAttrBorders): bool {.
    cdecl, importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextAttrBorders; 
                              attr: WxTextAttrBorders; 
                              clashingAttr: var WxTextAttrBorders; 
                              absentAttr: var WxTextAttrBorders) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc isValid*(this: WxTextAttrBorders): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}
proc isDefault*(this: WxTextAttrBorders): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "<wx/wx.h>".}
proc getLeft*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getLeft*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getRight*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetRight", header: "<wx/wx.h>".}
proc getRight*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRight", header: "<wx/wx.h>".}
proc getTop*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetTop", header: "<wx/wx.h>".}
proc getTop*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTop", header: "<wx/wx.h>".}
proc getBottom*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottom", header: "<wx/wx.h>".}
proc getBottom*(this: var WxTextAttrBorders): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottom", header: "<wx/wx.h>".}

type 
  WxTextBoxAttr* {.importcpp: "wxTextBoxAttr", header: "<wx/wx.h>".} = object 
    mFlags* {.importc: "m_flags".}: cint
    mMargins* {.importc: "m_margins".}: WxTextAttrDimensions
    mPadding* {.importc: "m_padding".}: WxTextAttrDimensions
    mPosition* {.importc: "m_position".}: WxTextAttrDimensions
    mSize* {.importc: "m_size".}: WxTextAttrSize
    mMinSize* {.importc: "m_minSize".}: WxTextAttrSize
    mMaxSize* {.importc: "m_maxSize".}: WxTextAttrSize
    mBorder* {.importc: "m_border".}: WxTextAttrBorders
    mOutline* {.importc: "m_outline".}: WxTextAttrBorders
    mFloatMode* {.importc: "m_floatMode".}: WxTextBoxAttrFloatStyle
    mClearMode* {.importc: "m_clearMode".}: WxTextBoxAttrClearStyle
    mCollapseMode* {.importc: "m_collapseMode".}: WxTextBoxAttrCollapseMode
    mVerticalAlignment* {.importc: "m_verticalAlignment".}: WxTextBoxAttrVerticalAlignment
    mBoxStyleName* {.importc: "m_boxStyleName".}: WxString


proc constructwxTextBoxAttr*(): WxTextBoxAttr {.cdecl, constructor, 
    importcpp: "wxTextBoxAttr(@)", header: "<wx/wx.h>".}
proc constructwxTextBoxAttr*(attr: WxTextBoxAttr): WxTextBoxAttr {.cdecl, 
    constructor, importcpp: "wxTextBoxAttr(@)", header: "<wx/wx.h>".}
proc init*(this: var WxTextBoxAttr) {.cdecl, importcpp: "Init", 
                                      header: "<wx/wx.h>".}
proc reset*(this: var WxTextBoxAttr) {.cdecl, importcpp: "Reset", 
                                       header: "<wx/wx.h>".}
proc `==`*(this: WxTextBoxAttr; attr: WxTextBoxAttr): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc eqPartial*(this: WxTextBoxAttr; attr: WxTextBoxAttr; weakTest: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxTextBoxAttr; style: WxTextBoxAttr; 
            compareWith: ptr WxTextBoxAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxTextBoxAttr; attr: WxTextBoxAttr; 
                              clashingAttr: var WxTextBoxAttr; 
                              absentAttr: var WxTextBoxAttr) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxTextBoxAttr; attr: WxTextBoxAttr): bool {.cdecl, 
    importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc setFlags*(this: var WxTextBoxAttr; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: "<wx/wx.h>".}
proc getFlags*(this: WxTextBoxAttr): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "<wx/wx.h>".}
proc hasFlag*(this: WxTextBoxAttr; flag: WxTextBoxAttrFlags): bool {.
    noSideEffect, cdecl, importcpp: "HasFlag", header: "<wx/wx.h>".}
proc removeFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.cdecl, 
    importcpp: "RemoveFlag", header: "<wx/wx.h>".}
proc addFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.cdecl, 
    importcpp: "AddFlag", header: "<wx/wx.h>".}
proc isDefault*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "<wx/wx.h>".}
proc getFloatMode*(this: WxTextBoxAttr): WxTextBoxAttrFloatStyle {.noSideEffect, 
    cdecl, importcpp: "GetFloatMode", header: "<wx/wx.h>".}
proc setFloatMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrFloatStyle) {.
    cdecl, importcpp: "SetFloatMode", header: "<wx/wx.h>".}
proc hasFloatMode*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFloatMode", header: "<wx/wx.h>".}
proc isFloating*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloating", header: "<wx/wx.h>".}
proc getClearMode*(this: WxTextBoxAttr): WxTextBoxAttrClearStyle {.noSideEffect, 
    cdecl, importcpp: "GetClearMode", header: "<wx/wx.h>".}
proc setClearMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrClearStyle) {.
    cdecl, importcpp: "SetClearMode", header: "<wx/wx.h>".}
proc hasClearMode*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasClearMode", header: "<wx/wx.h>".}
proc getCollapseBorders*(this: WxTextBoxAttr): WxTextBoxAttrCollapseMode {.
    noSideEffect, cdecl, importcpp: "GetCollapseBorders", header: "<wx/wx.h>".}
proc setCollapseBorders*(this: var WxTextBoxAttr; 
                         collapse: WxTextBoxAttrCollapseMode) {.cdecl, 
    importcpp: "SetCollapseBorders", header: "<wx/wx.h>".}
proc hasCollapseBorders*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCollapseBorders", header: "<wx/wx.h>".}
proc getVerticalAlignment*(this: WxTextBoxAttr): WxTextBoxAttrVerticalAlignment {.
    noSideEffect, cdecl, importcpp: "GetVerticalAlignment", header: "<wx/wx.h>".}
proc setVerticalAlignment*(this: var WxTextBoxAttr; 
                           verticalAlignment: WxTextBoxAttrVerticalAlignment) {.
    cdecl, importcpp: "SetVerticalAlignment", header: "<wx/wx.h>".}
proc hasVerticalAlignment*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasVerticalAlignment", header: "<wx/wx.h>".}
proc getMargins*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetMargins", header: "<wx/wx.h>".}
proc getMargins*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetMargins", header: "<wx/wx.h>".}
proc getLeftMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeftMargin", header: "<wx/wx.h>".}
proc getLeftMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeftMargin", header: "<wx/wx.h>".}
proc getRightMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRightMargin", header: "<wx/wx.h>".}
proc getRightMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRightMargin", header: "<wx/wx.h>".}
proc getTopMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTopMargin", header: "<wx/wx.h>".}
proc getTopMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTopMargin", header: "<wx/wx.h>".}
proc getBottomMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetBottomMargin", header: "<wx/wx.h>".}
proc getBottomMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottomMargin", header: "<wx/wx.h>".}
proc getPosition*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc getPosition*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetPosition", header: "<wx/wx.h>".}
proc getLeft*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getLeft*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetLeft", header: "<wx/wx.h>".}
proc getRight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRight", header: "<wx/wx.h>".}
proc getRight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetRight", header: "<wx/wx.h>".}
proc getTop*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTop", header: "<wx/wx.h>".}
proc getTop*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetTop", header: "<wx/wx.h>".}
proc getBottom*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetBottom", header: "<wx/wx.h>".}
proc getBottom*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetBottom", header: "<wx/wx.h>".}
proc getPadding*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.cdecl, 
    importcpp: "GetPadding", header: "<wx/wx.h>".}
proc getPadding*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    cdecl, importcpp: "GetPadding", header: "<wx/wx.h>".}
proc getLeftPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetLeftPadding", header: "<wx/wx.h>".}
proc getLeftPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetLeftPadding", header: "<wx/wx.h>".}
proc getRightPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetRightPadding", header: "<wx/wx.h>".}
proc getRightPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetRightPadding", header: "<wx/wx.h>".}
proc getTopPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetTopPadding", header: "<wx/wx.h>".}
proc getTopPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetTopPadding", header: "<wx/wx.h>".}
proc getBottomPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    cdecl, importcpp: "GetBottomPadding", header: "<wx/wx.h>".}
proc getBottomPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    cdecl, importcpp: "GetBottomPadding", header: "<wx/wx.h>".}
proc getBorder*(this: var WxTextBoxAttr): var WxTextAttrBorders {.cdecl, 
    importcpp: "GetBorder", header: "<wx/wx.h>".}
proc getBorder*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: "<wx/wx.h>".}
proc getLeftBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeftBorder", header: "<wx/wx.h>".}
proc getLeftBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetLeftBorder", header: "<wx/wx.h>".}
proc getTopBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTopBorder", header: "<wx/wx.h>".}
proc getTopBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, cdecl, 
    importcpp: "GetTopBorder", header: "<wx/wx.h>".}
proc getRightBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRightBorder", header: "<wx/wx.h>".}
proc getRightBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetRightBorder", header: "<wx/wx.h>".}
proc getBottomBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottomBorder", header: "<wx/wx.h>".}
proc getBottomBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottomBorder", header: "<wx/wx.h>".}
proc getOutline*(this: var WxTextBoxAttr): var WxTextAttrBorders {.cdecl, 
    importcpp: "GetOutline", header: "<wx/wx.h>".}
proc getOutline*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, cdecl, 
    importcpp: "GetOutline", header: "<wx/wx.h>".}
proc getLeftOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetLeftOutline", header: "<wx/wx.h>".}
proc getLeftOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetLeftOutline", header: "<wx/wx.h>".}
proc getTopOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetTopOutline", header: "<wx/wx.h>".}
proc getTopOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetTopOutline", header: "<wx/wx.h>".}
proc getRightOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetRightOutline", header: "<wx/wx.h>".}
proc getRightOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetRightOutline", header: "<wx/wx.h>".}
proc getBottomOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.cdecl, 
    importcpp: "GetBottomOutline", header: "<wx/wx.h>".}
proc getBottomOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    cdecl, importcpp: "GetBottomOutline", header: "<wx/wx.h>".}
proc getSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc getSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc getMinSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetMinSize", header: "<wx/wx.h>".}
proc getMinSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: "<wx/wx.h>".}
proc getMaxSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.cdecl, 
    importcpp: "GetMaxSize", header: "<wx/wx.h>".}
proc getMaxSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: "<wx/wx.h>".}
proc setSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetSize", header: "<wx/wx.h>".}
proc setMinSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetMinSize", header: "<wx/wx.h>".}
proc setMaxSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.cdecl, 
    importcpp: "SetMaxSize", header: "<wx/wx.h>".}
proc getWidth*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc getWidth*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "<wx/wx.h>".}
proc getHeight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.cdecl, 
    importcpp: "GetHeight", header: "<wx/wx.h>".}
proc getHeight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, cdecl, 
    importcpp: "GetHeight", header: "<wx/wx.h>".}
proc getBoxStyleName*(this: WxTextBoxAttr): WxString {.noSideEffect, cdecl, 
    importcpp: "GetBoxStyleName", header: "<wx/wx.h>".}
proc setBoxStyleName*(this: var WxTextBoxAttr; name: WxString) {.cdecl, 
    importcpp: "SetBoxStyleName", header: "<wx/wx.h>".}
proc hasBoxStyleName*(this: WxTextBoxAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBoxStyleName", header: "<wx/wx.h>".}

type 
  WxRichTextAttr* {.importcpp: "wxRichTextAttr", header: "<wx/wx.h>".} = object of WxTextAttr
    mTextBoxAttr* {.importc: "m_textBoxAttr".}: WxTextBoxAttr


proc constructwxRichTextAttr*(attr: WxTextAttr): WxRichTextAttr {.cdecl, 
    constructor, importcpp: "wxRichTextAttr(@)", header: "<wx/wx.h>".}
proc constructwxRichTextAttr*(attr: WxRichTextAttr): WxRichTextAttr {.cdecl, 
    constructor, importcpp: "wxRichTextAttr(@)", header: "<wx/wx.h>".}
proc constructwxRichTextAttr*(): WxRichTextAttr {.cdecl, constructor, 
    importcpp: "wxRichTextAttr(@)", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextAttr; attr: WxRichTextAttr) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc `==`*(this: WxRichTextAttr; attr: WxRichTextAttr): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc eqPartial*(this: WxRichTextAttr; attr: WxRichTextAttr; 
                weakTest: bool = true): bool {.noSideEffect, cdecl, 
    importcpp: "EqPartial", header: "<wx/wx.h>".}
proc apply*(this: var WxRichTextAttr; style: WxRichTextAttr; 
            compareWith: ptr WxRichTextAttr = nil): bool {.cdecl, 
    importcpp: "Apply", header: "<wx/wx.h>".}
proc collectCommonAttributes*(this: var WxRichTextAttr; attr: WxRichTextAttr; 
                              clashingAttr: var WxRichTextAttr; 
                              absentAttr: var WxRichTextAttr) {.cdecl, 
    importcpp: "CollectCommonAttributes", header: "<wx/wx.h>".}
proc removeStyle*(this: var WxRichTextAttr; attr: WxRichTextAttr): bool {.cdecl, 
    importcpp: "RemoveStyle", header: "<wx/wx.h>".}
proc getTextBoxAttr*(this: var WxRichTextAttr): var WxTextBoxAttr {.cdecl, 
    importcpp: "GetTextBoxAttr", header: "<wx/wx.h>".}
proc getTextBoxAttr*(this: WxRichTextAttr): WxTextBoxAttr {.noSideEffect, cdecl, 
    importcpp: "GetTextBoxAttr", header: "<wx/wx.h>".}
proc setTextBoxAttr*(this: var WxRichTextAttr; attr: WxTextBoxAttr) {.cdecl, 
    importcpp: "SetTextBoxAttr", header: "<wx/wx.h>".}
proc isDefault*(this: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "<wx/wx.h>".}
type 
  WxRichTextAttrArray* {.importcpp: "wxRichTextAttrArray", header: "<wx/wx.h>".} = object of WxArrayPtrVoid
  

proc constructwxRichTextAttrArray*(): WxRichTextAttrArray {.cdecl, constructor, 
    importcpp: "wxRichTextAttrArray(@)", header: "<wx/wx.h>".}
proc constructwxRichTextAttrArray*(src: WxRichTextAttrArray): WxRichTextAttrArray {.
    cdecl, constructor, importcpp: "wxRichTextAttrArray(@)", header: "<wx/wx.h>".}
proc destroywxRichTextAttrArray*(this: var WxRichTextAttrArray) {.cdecl, 
    importcpp: "#.~wxRichTextAttrArray()", header: "<wx/wx.h>".}
proc alloc*(this: var WxRichTextAttrArray; count: csize) {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc reserve*(this: var WxRichTextAttrArray; count: csize) {.cdecl, 
    importcpp: "reserve", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextAttrArray): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc size*(this: WxRichTextAttrArray): csize {.noSideEffect, cdecl, 
    importcpp: "size", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextAttrArray): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc empty*(this: WxRichTextAttrArray): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc count*(this: WxRichTextAttrArray): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc shrink*(this: var WxRichTextAttrArray) {.cdecl, importcpp: "Shrink", 
    header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextAttrArray; uiIndex: csize): var WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc item*(this: WxRichTextAttrArray; uiIndex: csize): var WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc last*(this: WxRichTextAttrArray): var WxRichTextAttr {.noSideEffect, cdecl, 
    importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxRichTextAttrArray; lItem: WxRichTextAttr; 
            bFromEnd: bool = false): cint {.noSideEffect, cdecl, 
    importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextAttrArray; pItem: ptr WxRichTextAttr) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextAttrArray; lItem: WxRichTextAttr; 
             uiIndex: csize; nInsert: csize = 1) {.cdecl, importcpp: "Insert", 
    header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextAttrArray; pItem: ptr WxRichTextAttr; 
             uiIndex: csize) {.cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc empty*(this: var WxRichTextAttrArray) {.cdecl, importcpp: "Empty", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextAttrArray) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc detach*(this: var WxRichTextAttrArray; uiIndex: csize): ptr WxRichTextAttr {.
    cdecl, importcpp: "Detach", header: "<wx/wx.h>".}
proc removeAt*(this: var WxRichTextAttrArray; uiIndex: csize) {.cdecl, 
    importcpp: "RemoveAt", header: "<wx/wx.h>".}
type 
  WxRichTextVariantArray* {.importcpp: "wxRichTextVariantArray", 
                            header: "<wx/wx.h>".} = object of WxArrayPtrVoid
  

proc constructwxRichTextVariantArray*(): WxRichTextVariantArray {.cdecl, 
    constructor, importcpp: "wxRichTextVariantArray(@)", header: "<wx/wx.h>".}
proc constructwxRichTextVariantArray*(src: WxRichTextVariantArray): WxRichTextVariantArray {.
    cdecl, constructor, importcpp: "wxRichTextVariantArray(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextVariantArray*(this: var WxRichTextVariantArray) {.cdecl, 
    importcpp: "#.~wxRichTextVariantArray()", header: "<wx/wx.h>".}
proc alloc*(this: var WxRichTextVariantArray; count: csize) {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc reserve*(this: var WxRichTextVariantArray; count: csize) {.cdecl, 
    importcpp: "reserve", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextVariantArray): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc size*(this: WxRichTextVariantArray): csize {.noSideEffect, cdecl, 
    importcpp: "size", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextVariantArray): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc empty*(this: WxRichTextVariantArray): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc count*(this: WxRichTextVariantArray): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc shrink*(this: var WxRichTextVariantArray) {.cdecl, importcpp: "Shrink", 
    header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextVariantArray; uiIndex: csize): var WxVariant {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc item*(this: WxRichTextVariantArray; uiIndex: csize): var WxVariant {.
    noSideEffect, cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc last*(this: WxRichTextVariantArray): var WxVariant {.noSideEffect, cdecl, 
    importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxRichTextVariantArray; lItem: WxVariant; 
            bFromEnd: bool = false): cint {.noSideEffect, cdecl, 
    importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextVariantArray; pItem: ptr WxVariant) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextVariantArray; lItem: WxVariant; uiIndex: csize; 
             nInsert: csize = 1) {.cdecl, importcpp: "Insert", 
                                   header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextVariantArray; pItem: ptr WxVariant; 
             uiIndex: csize) {.cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc empty*(this: var WxRichTextVariantArray) {.cdecl, importcpp: "Empty", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextVariantArray) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc detach*(this: var WxRichTextVariantArray; uiIndex: csize): ptr WxVariant {.
    cdecl, importcpp: "Detach", header: "<wx/wx.h>".}
proc removeAt*(this: var WxRichTextVariantArray; uiIndex: csize) {.cdecl, 
    importcpp: "RemoveAt", header: "<wx/wx.h>".}
type 
  WxRichTextRectArray* {.importcpp: "wxRichTextRectArray", header: "<wx/wx.h>".} = object of WxArrayPtrVoid
  

proc constructwxRichTextRectArray*(): WxRichTextRectArray {.cdecl, constructor, 
    importcpp: "wxRichTextRectArray(@)", header: "<wx/wx.h>".}
proc constructwxRichTextRectArray*(src: WxRichTextRectArray): WxRichTextRectArray {.
    cdecl, constructor, importcpp: "wxRichTextRectArray(@)", header: "<wx/wx.h>".}
proc destroywxRichTextRectArray*(this: var WxRichTextRectArray) {.cdecl, 
    importcpp: "#.~wxRichTextRectArray()", header: "<wx/wx.h>".}
proc alloc*(this: var WxRichTextRectArray; count: csize) {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc reserve*(this: var WxRichTextRectArray; count: csize) {.cdecl, 
    importcpp: "reserve", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextRectArray): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc size*(this: WxRichTextRectArray): csize {.noSideEffect, cdecl, 
    importcpp: "size", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextRectArray): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc empty*(this: WxRichTextRectArray): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc count*(this: WxRichTextRectArray): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc shrink*(this: var WxRichTextRectArray) {.cdecl, importcpp: "Shrink", 
    header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextRectArray; uiIndex: csize): var WxRect {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc item*(this: WxRichTextRectArray; uiIndex: csize): var WxRect {.
    noSideEffect, cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc last*(this: WxRichTextRectArray): var WxRect {.noSideEffect, cdecl, 
    importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxRichTextRectArray; lItem: WxRect; bFromEnd: bool = false): cint {.
    noSideEffect, cdecl, importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextRectArray; pItem: ptr WxRect) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextRectArray; lItem: WxRect; uiIndex: csize; 
             nInsert: csize = 1) {.cdecl, importcpp: "Insert", 
                                   header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextRectArray; pItem: ptr WxRect; uiIndex: csize) {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc empty*(this: var WxRichTextRectArray) {.cdecl, importcpp: "Empty", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextRectArray) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc detach*(this: var WxRichTextRectArray; uiIndex: csize): ptr WxRect {.cdecl, 
    importcpp: "Detach", header: "<wx/wx.h>".}
proc removeAt*(this: var WxRichTextRectArray; uiIndex: csize) {.cdecl, 
    importcpp: "RemoveAt", header: "<wx/wx.h>".}

type 
  WxRichTextProperties* {.importcpp: "wxRichTextProperties", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextProperties*(): WxRichTextProperties {.cdecl, 
    constructor, importcpp: "wxRichTextProperties(@)", header: "<wx/wx.h>".}
proc constructwxRichTextProperties*(props: WxRichTextProperties): WxRichTextProperties {.
    cdecl, constructor, importcpp: "wxRichTextProperties(@)", 
    header: "<wx/wx.h>".}
proc `==`*(this: WxRichTextProperties; props: WxRichTextProperties): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextProperties; props: WxRichTextProperties) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextProperties; idx: csize): WxVariant {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc `[]`*(this: var WxRichTextProperties; idx: csize): var WxVariant {.cdecl, 
    importcpp: "#[@]", header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextProperties) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc getProperties*(this: WxRichTextProperties): WxRichTextVariantArray {.
    noSideEffect, cdecl, importcpp: "GetProperties", header: "<wx/wx.h>".}
proc getProperties*(this: var WxRichTextProperties): var WxRichTextVariantArray {.
    cdecl, importcpp: "GetProperties", header: "<wx/wx.h>".}
proc setProperties*(this: var WxRichTextProperties; 
                    props: WxRichTextVariantArray) {.cdecl, 
    importcpp: "SetProperties", header: "<wx/wx.h>".}
proc getPropertyNames*(this: WxRichTextProperties): WxArrayString {.
    noSideEffect, cdecl, importcpp: "GetPropertyNames", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextProperties): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc hasProperty*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, cdecl, importcpp: "HasProperty", header: "<wx/wx.h>".}
proc find*(this: WxRichTextProperties; name: WxString): cint {.noSideEffect, 
    cdecl, importcpp: "Find", header: "<wx/wx.h>".}
proc remove*(this: var WxRichTextProperties; name: WxString): bool {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc getProperty*(this: WxRichTextProperties; name: WxString): WxVariant {.
    noSideEffect, cdecl, importcpp: "GetProperty", header: "<wx/wx.h>".}
proc findOrCreateProperty*(this: var WxRichTextProperties; name: WxString): ptr WxVariant {.
    cdecl, importcpp: "FindOrCreateProperty", header: "<wx/wx.h>".}
proc getPropertyString*(this: WxRichTextProperties; name: WxString): WxString {.
    noSideEffect, cdecl, importcpp: "GetPropertyString", header: "<wx/wx.h>".}
proc getPropertyLong*(this: WxRichTextProperties; name: WxString): clong {.
    noSideEffect, cdecl, importcpp: "GetPropertyLong", header: "<wx/wx.h>".}
proc getPropertyBool*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetPropertyBool", header: "<wx/wx.h>".}
proc getPropertyDouble*(this: WxRichTextProperties; name: WxString): cdouble {.
    noSideEffect, cdecl, importcpp: "GetPropertyDouble", header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; variant: WxVariant) {.cdecl, 
    importcpp: "SetProperty", header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  variant: WxVariant) {.cdecl, importcpp: "SetProperty", 
                                        header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: WxString) {.cdecl, importcpp: "SetProperty", 
                                     header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: ptr WxChar) {.cdecl, importcpp: "SetProperty", 
                                       header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: clong) {.
    cdecl, importcpp: "SetProperty", header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: cdouble) {.
    cdecl, importcpp: "SetProperty", header: "<wx/wx.h>".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: bool) {.
    cdecl, importcpp: "SetProperty", header: "<wx/wx.h>".}
proc removeProperties*(this: var WxRichTextProperties; 
                       properties: WxRichTextProperties) {.cdecl, 
    importcpp: "RemoveProperties", header: "<wx/wx.h>".}
proc mergeProperties*(this: var WxRichTextProperties; 
                      properties: WxRichTextProperties) {.cdecl, 
    importcpp: "MergeProperties", header: "<wx/wx.h>".}

type 
  WxRichTextFontTable* {.importcpp: "wxRichTextFontTable", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextFontTable*(): WxRichTextFontTable {.cdecl, constructor, 
    importcpp: "wxRichTextFontTable(@)", header: "<wx/wx.h>".}
proc constructwxRichTextFontTable*(table: WxRichTextFontTable): WxRichTextFontTable {.
    cdecl, constructor, importcpp: "wxRichTextFontTable(@)", header: "<wx/wx.h>".}
proc destroywxRichTextFontTable*(this: var WxRichTextFontTable) {.cdecl, 
    importcpp: "#.~wxRichTextFontTable()", header: "<wx/wx.h>".}
proc isOk*(this: WxRichTextFontTable): bool {.noSideEffect, cdecl, 
    importcpp: "IsOk", header: "<wx/wx.h>".}
proc findFont*(this: var WxRichTextFontTable; fontSpec: WxRichTextAttr): WxFont {.
    cdecl, importcpp: "FindFont", header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextFontTable) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc `==`*(this: WxRichTextFontTable; table: WxRichTextFontTable): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc setFontScale*(this: var WxRichTextFontTable; fontScale: cdouble) {.cdecl, 
    importcpp: "SetFontScale", header: "<wx/wx.h>".}

type 
  WxRichTextRange* {.importcpp: "wxRichTextRange", header: "<wx/wx.h>".} = object 
  

proc constructwxRichTextRange*(): WxRichTextRange {.cdecl, constructor, 
    importcpp: "wxRichTextRange(@)", header: "<wx/wx.h>".}
proc constructwxRichTextRange*(start: clong; `end`: clong): WxRichTextRange {.
    cdecl, constructor, importcpp: "wxRichTextRange(@)", header: "<wx/wx.h>".}
proc constructwxRichTextRange*(range: WxRichTextRange): WxRichTextRange {.cdecl, 
    constructor, importcpp: "wxRichTextRange(@)", header: "<wx/wx.h>".}
proc destroywxRichTextRange*(this: var WxRichTextRange) {.cdecl, 
    importcpp: "#.~wxRichTextRange()", header: "<wx/wx.h>".}
proc `==`*(this: WxRichTextRange; range: WxRichTextRange): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `-`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "(# - #)", header: "<wx/wx.h>".}
proc `+`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "(# + #)", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextRange; start: clong; `end`: clong) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc setStart*(this: var WxRichTextRange; start: clong) {.cdecl, 
    importcpp: "SetStart", header: "<wx/wx.h>".}
proc getStart*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetStart", header: "<wx/wx.h>".}
proc setEnd*(this: var WxRichTextRange; `end`: clong) {.cdecl, 
    importcpp: "SetEnd", header: "<wx/wx.h>".}
proc getEnd*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetEnd", header: "<wx/wx.h>".}
proc isOutside*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, cdecl, importcpp: "IsOutside", header: "<wx/wx.h>".}
proc isWithin*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, cdecl, importcpp: "IsWithin", header: "<wx/wx.h>".}
proc contains*(this: WxRichTextRange; pos: clong): bool {.noSideEffect, cdecl, 
    importcpp: "Contains", header: "<wx/wx.h>".}
proc limitTo*(this: var WxRichTextRange; range: WxRichTextRange): bool {.cdecl, 
    importcpp: "LimitTo", header: "<wx/wx.h>".}
proc getLength*(this: WxRichTextRange): clong {.noSideEffect, cdecl, 
    importcpp: "GetLength", header: "<wx/wx.h>".}
proc swap*(this: var WxRichTextRange) {.cdecl, importcpp: "Swap", 
                                        header: "<wx/wx.h>".}
proc toInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "ToInternal", header: "<wx/wx.h>".}
proc fromInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "FromInternal", header: "<wx/wx.h>".}
type 
  WxRichTextRangeArray* {.importcpp: "wxRichTextRangeArray", header: "<wx/wx.h>".} = object of WxArrayPtrVoid
  

proc constructwxRichTextRangeArray*(): WxRichTextRangeArray {.cdecl, 
    constructor, importcpp: "wxRichTextRangeArray(@)", header: "<wx/wx.h>".}
proc constructwxRichTextRangeArray*(src: WxRichTextRangeArray): WxRichTextRangeArray {.
    cdecl, constructor, importcpp: "wxRichTextRangeArray(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextRangeArray*(this: var WxRichTextRangeArray) {.cdecl, 
    importcpp: "#.~wxRichTextRangeArray()", header: "<wx/wx.h>".}
proc alloc*(this: var WxRichTextRangeArray; count: csize) {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc reserve*(this: var WxRichTextRangeArray; count: csize) {.cdecl, 
    importcpp: "reserve", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextRangeArray): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc size*(this: WxRichTextRangeArray): csize {.noSideEffect, cdecl, 
    importcpp: "size", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextRangeArray): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc empty*(this: WxRichTextRangeArray): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc count*(this: WxRichTextRangeArray): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc shrink*(this: var WxRichTextRangeArray) {.cdecl, importcpp: "Shrink", 
    header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextRangeArray; uiIndex: csize): var WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc item*(this: WxRichTextRangeArray; uiIndex: csize): var WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc last*(this: WxRichTextRangeArray): var WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxRichTextRangeArray; lItem: WxRichTextRange; 
            bFromEnd: bool = false): cint {.noSideEffect, cdecl, 
    importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextRangeArray; pItem: ptr WxRichTextRange) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextRangeArray; lItem: WxRichTextRange; 
             uiIndex: csize; nInsert: csize = 1) {.cdecl, importcpp: "Insert", 
    header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextRangeArray; pItem: ptr WxRichTextRange; 
             uiIndex: csize) {.cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc empty*(this: var WxRichTextRangeArray) {.cdecl, importcpp: "Empty", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextRangeArray) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc detach*(this: var WxRichTextRangeArray; uiIndex: csize): ptr WxRichTextRange {.
    cdecl, importcpp: "Detach", header: "<wx/wx.h>".}
proc removeAt*(this: var WxRichTextRangeArray; uiIndex: csize) {.cdecl, 
    importcpp: "RemoveAt", header: "<wx/wx.h>".}
const 
  wxRICHTEXT_ALL* = wxRichTextRange(- 2, - 2)
  wxRICHTEXT_NONE* = wxRichTextRange(- 1, - 1)
  wxRICHTEXT_NO_SELECTION* = wxRichTextRange(- 2, - 2)


type 
  WxRichTextSelection* {.importcpp: "wxRichTextSelection", header: "<wx/wx.h>".} = object 
    mRanges* {.importc: "m_ranges".}: WxRichTextRangeArray
    mContainer* {.importc: "m_container".}: ptr WxRichTextParagraphLayoutBox


proc constructwxRichTextSelection*(sel: WxRichTextSelection): WxRichTextSelection {.
    cdecl, constructor, importcpp: "wxRichTextSelection(@)", header: "<wx/wx.h>".}
proc constructwxRichTextSelection*(range: WxRichTextRange; 
                                   container: ptr WxRichTextParagraphLayoutBox): WxRichTextSelection {.
    cdecl, constructor, importcpp: "wxRichTextSelection(@)", header: "<wx/wx.h>".}
proc constructwxRichTextSelection*(): WxRichTextSelection {.cdecl, constructor, 
    importcpp: "wxRichTextSelection(@)", header: "<wx/wx.h>".}
proc reset*(this: var WxRichTextSelection) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc set*(this: var WxRichTextSelection; range: WxRichTextRange; 
          container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "Set", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextSelection; range: WxRichTextRange) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc set*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray; 
          container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "Set", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextSelection; sel: WxRichTextSelection) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc `==`*(this: WxRichTextSelection; sel: WxRichTextSelection): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextSelection; i: csize): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc getRanges*(this: var WxRichTextSelection): var WxRichTextRangeArray {.
    cdecl, importcpp: "GetRanges", header: "<wx/wx.h>".}
proc getRanges*(this: WxRichTextSelection): WxRichTextRangeArray {.noSideEffect, 
    cdecl, importcpp: "GetRanges", header: "<wx/wx.h>".}
proc setRanges*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray) {.
    cdecl, importcpp: "SetRanges", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextSelection): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextSelection; i: csize): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetRange", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextSelection): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetRange", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextSelection; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getContainer*(this: WxRichTextSelection): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: "<wx/wx.h>".}
proc setContainer*(this: var WxRichTextSelection; 
                   container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetContainer", header: "<wx/wx.h>".}
proc isValid*(this: WxRichTextSelection): bool {.noSideEffect, cdecl, 
    importcpp: "IsValid", header: "<wx/wx.h>".}
proc getSelectionForObject*(this: WxRichTextSelection; obj: ptr WxRichTextObject): WxRichTextRangeArray {.
    noSideEffect, cdecl, importcpp: "GetSelectionForObject", header: "<wx/wx.h>".}
proc withinSelection*(this: WxRichTextSelection; pos: clong; 
                      obj: ptr WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "WithinSelection", header: "<wx/wx.h>".}
proc withinSelection*(this: WxRichTextSelection; pos: clong): bool {.
    noSideEffect, cdecl, importcpp: "WithinSelection", header: "<wx/wx.h>".}
proc withinSelection*(pos: clong; ranges: WxRichTextRangeArray): bool {.cdecl, 
    importcpp: "wxRichTextSelection::WithinSelection(@)", header: "<wx/wx.h>".}
proc withinSelection*(range: WxRichTextRange; ranges: WxRichTextRangeArray): bool {.
    cdecl, importcpp: "wxRichTextSelection::WithinSelection(@)", 
    header: "<wx/wx.h>".}

type 
  WxRichTextDrawingContext* {.importcpp: "wxRichTextDrawingContext", 
                              header: "<wx/wx.h>".} = object of WxObject
    mBuffer* {.importc: "m_buffer".}: ptr WxRichTextBuffer
    mEnableVirtualAttributes* {.importc: "m_enableVirtualAttributes".}: bool


proc constructwxRichTextDrawingContext*(buffer: ptr WxRichTextBuffer): WxRichTextDrawingContext {.
    cdecl, constructor, importcpp: "wxRichTextDrawingContext(@)", 
    header: "<wx/wx.h>".}
proc init*(this: var WxRichTextDrawingContext) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc hasVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HasVirtualAttributes", header: "<wx/wx.h>".}
proc getVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributes", header: "<wx/wx.h>".}
proc applyVirtualAttributes*(this: WxRichTextDrawingContext; 
                             attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "ApplyVirtualAttributes", 
    header: "<wx/wx.h>".}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingContext; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: "<wx/wx.h>".}
proc getVirtualSubobjectAttributes*(this: WxRichTextDrawingContext; 
                                    obj: ptr WxRichTextObject; 
                                    positions: var WxArrayInt; 
                                    attributes: var WxRichTextAttrArray): cint {.
    noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributes", 
    header: "<wx/wx.h>".}
proc hasVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, cdecl, 
    importcpp: "HasVirtualText", header: "<wx/wx.h>".}
proc getVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualText", header: "<wx/wx.h>".}
proc enableVirtualAttributes*(this: var WxRichTextDrawingContext; b: bool) {.
    cdecl, importcpp: "EnableVirtualAttributes", header: "<wx/wx.h>".}
proc getVirtualAttributesEnabled*(this: WxRichTextDrawingContext): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributesEnabled", 
    header: "<wx/wx.h>".}

type 
  WxRichTextObject* {.importcpp: "wxRichTextObject", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextObject*(parent: ptr WxRichTextObject = nil): WxRichTextObject {.
    cdecl, constructor, importcpp: "wxRichTextObject(@)", header: "<wx/wx.h>".}
proc destroywxRichTextObject*(this: var WxRichTextObject) {.cdecl, 
    importcpp: "#.~wxRichTextObject()", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextObject; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextObject; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc findPosition*(this: var WxRichTextObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: "<wx/wx.h>".}
proc getBestSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestSize", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc doSplit*(this: var WxRichTextObject; pos: clong): ptr WxRichTextObject {.
    cdecl, importcpp: "DoSplit", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextObject; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: "<wx/wx.h>".}
proc deleteRange*(this: var WxRichTextObject; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc isFloatable*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloatable", header: "<wx/wx.h>".}
proc isFloating*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloating", header: "<wx/wx.h>".}
proc getFloatDirection*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetFloatDirection", header: "<wx/wx.h>".}
proc getTextForRange*(this: WxRichTextObject; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: "<wx/wx.h>".}
proc canMerge*(this: WxRichTextObject; `object`: ptr WxRichTextObject; 
               context: var WxRichTextDrawingContext): bool {.noSideEffect, 
    cdecl, importcpp: "CanMerge", header: "<wx/wx.h>".}
proc merge*(this: var WxRichTextObject; `object`: ptr WxRichTextObject; 
            context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "Merge", header: "<wx/wx.h>".}
proc canSplit*(this: WxRichTextObject; context: var WxRichTextDrawingContext): bool {.
    noSideEffect, cdecl, importcpp: "CanSplit", header: "<wx/wx.h>".}
proc split*(this: var WxRichTextObject; context: var WxRichTextDrawingContext): ptr WxRichTextObject {.
    cdecl, importcpp: "Split", header: "<wx/wx.h>".}
proc dump*(this: var WxRichTextObject; stream: var WxTextOutputStream) {.cdecl, 
    importcpp: "Dump", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextObject; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextObject): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
proc importFromXML*(this: var WxRichTextObject; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.cdecl, 
    importcpp: "ImportFromXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextObject; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextObject; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc usesParagraphAttributes*(this: WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "UsesParagraphAttributes", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc invalidate*(this: var WxRichTextObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: "<wx/wx.h>".}
proc handlesChildSelections*(this: WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HandlesChildSelections", header: "<wx/wx.h>".}
proc getSelection*(this: WxRichTextObject; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getCachedSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetCachedSize", header: "<wx/wx.h>".}
proc setCachedSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetCachedSize", header: "<wx/wx.h>".}
proc getMaxSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: "<wx/wx.h>".}
proc setMaxSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetMaxSize", header: "<wx/wx.h>".}
proc getMinSize*(this: WxRichTextObject): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: "<wx/wx.h>".}
proc setMinSize*(this: var WxRichTextObject; sz: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: "<wx/wx.h>".}
proc getNaturalSize*(this: WxRichTextObject): WxTextAttrSize {.noSideEffect, 
    cdecl, importcpp: "GetNaturalSize", header: "<wx/wx.h>".}
proc getPosition*(this: WxRichTextObject): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxRichTextObject; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc getAbsolutePosition*(this: WxRichTextObject): WxPoint {.noSideEffect, 
    cdecl, importcpp: "GetAbsolutePosition", header: "<wx/wx.h>".}
proc getRect*(this: WxRichTextObject): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextObject; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc getRange*(this: var WxRichTextObject): var WxRichTextRange {.cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc setOwnRange*(this: var WxRichTextObject; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetOwnRange", header: "<wx/wx.h>".}
proc getOwnRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetOwnRange", header: "<wx/wx.h>".}
proc getOwnRange*(this: var WxRichTextObject): var WxRichTextRange {.cdecl, 
    importcpp: "GetOwnRange", header: "<wx/wx.h>".}
proc getOwnRangeIfTopLevel*(this: WxRichTextObject): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetOwnRangeIfTopLevel", header: "<wx/wx.h>".}
proc isComposite*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsComposite", header: "<wx/wx.h>".}
proc isAtomic*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: "<wx/wx.h>".}
proc getParent*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "GetParent", header: "<wx/wx.h>".}
proc setParent*(this: var WxRichTextObject; parent: ptr WxRichTextObject) {.
    cdecl, importcpp: "SetParent", header: "<wx/wx.h>".}
proc getContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: "<wx/wx.h>".}
proc getParentContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetParentContainer", header: "<wx/wx.h>".}
proc setMargins*(this: var WxRichTextObject; margin: cint) {.cdecl, 
    importcpp: "SetMargins", header: "<wx/wx.h>".}
proc setMargins*(this: var WxRichTextObject; leftMargin: cint; 
                 rightMargin: cint; topMargin: cint; bottomMargin: cint) {.
    cdecl, importcpp: "SetMargins", header: "<wx/wx.h>".}
proc getLeftMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetLeftMargin", header: "<wx/wx.h>".}
proc getRightMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetRightMargin", header: "<wx/wx.h>".}
proc getTopMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetTopMargin", header: "<wx/wx.h>".}
proc getBottomMargin*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetBottomMargin", header: "<wx/wx.h>".}
proc getAvailableContentArea*(this: WxRichTextObject; dc: var WxDC; 
                              context: var WxRichTextDrawingContext; 
                              outerRect: WxRect): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetAvailableContentArea", header: "<wx/wx.h>".}
proc layoutToBestSize*(this: var WxRichTextObject; dc: var WxDC; 
                       context: var WxRichTextDrawingContext; 
                       buffer: ptr WxRichTextBuffer; parentAttr: WxRichTextAttr; 
                       attr: WxRichTextAttr; availableParentSpace: WxRect; 
                       availableContainerSpace: WxRect; style: cint): bool {.
    cdecl, importcpp: "LayoutToBestSize", header: "<wx/wx.h>".}
proc adjustAttributes*(this: var WxRichTextObject; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: "<wx/wx.h>".}
proc setAttributes*(this: var WxRichTextObject; attr: WxRichTextAttr) {.cdecl, 
    importcpp: "SetAttributes", header: "<wx/wx.h>".}
proc getAttributes*(this: WxRichTextObject): WxRichTextAttr {.noSideEffect, 
    cdecl, importcpp: "GetAttributes", header: "<wx/wx.h>".}
proc getAttributes*(this: var WxRichTextObject): var WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: "<wx/wx.h>".}
proc getProperties*(this: var WxRichTextObject): var WxRichTextProperties {.
    cdecl, importcpp: "GetProperties", header: "<wx/wx.h>".}
proc getProperties*(this: WxRichTextObject): WxRichTextProperties {.
    noSideEffect, cdecl, importcpp: "GetProperties", header: "<wx/wx.h>".}
proc setProperties*(this: var WxRichTextObject; props: WxRichTextProperties) {.
    cdecl, importcpp: "SetProperties", header: "<wx/wx.h>".}
proc setDescent*(this: var WxRichTextObject; descent: cint) {.cdecl, 
    importcpp: "SetDescent", header: "<wx/wx.h>".}
proc getDescent*(this: WxRichTextObject): cint {.noSideEffect, cdecl, 
    importcpp: "GetDescent", header: "<wx/wx.h>".}
proc getBuffer*(this: WxRichTextObject): ptr WxRichTextBuffer {.noSideEffect, 
    cdecl, importcpp: "GetBuffer", header: "<wx/wx.h>".}
proc setName*(this: var WxRichTextObject; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxRichTextObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc isShown*(this: WxRichTextObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "<wx/wx.h>".}
proc show*(this: var WxRichTextObject; show: bool) {.cdecl, importcpp: "Show", 
    header: "<wx/wx.h>".}
proc clone*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextObject; obj: WxRichTextObject) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc reference*(this: var WxRichTextObject) {.cdecl, importcpp: "Reference", 
    header: "<wx/wx.h>".}
proc dereference*(this: var WxRichTextObject) {.cdecl, importcpp: "Dereference", 
    header: "<wx/wx.h>".}
proc move*(this: var WxRichTextObject; pt: WxPoint) {.cdecl, importcpp: "Move", 
    header: "<wx/wx.h>".}
proc convertTenthsMMToPixels*(this: WxRichTextObject; dc: var WxDC; units: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertTenthsMMToPixels", 
    header: "<wx/wx.h>".}
proc convertTenthsMMToPixels*(ppi: cint; units: cint; scale: cdouble = 1.0): cint {.
    cdecl, importcpp: "wxRichTextObject::ConvertTenthsMMToPixels(@)", 
    header: "<wx/wx.h>".}
proc convertPixelsToTenthsMM*(this: WxRichTextObject; dc: var WxDC; pixels: cint): cint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToTenthsMM", 
    header: "<wx/wx.h>".}
proc convertPixelsToTenthsMM*(ppi: cint; pixels: cint; scale: cdouble = 1.0): cint {.
    cdecl, importcpp: "wxRichTextObject::ConvertPixelsToTenthsMM(@)", 
    header: "<wx/wx.h>".}
proc drawBoxAttributes*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                        attr: WxRichTextAttr; boxRect: WxRect; flags: cint = 0; 
                        obj: ptr WxRichTextObject = nil): bool {.cdecl, 
    importcpp: "wxRichTextObject::DrawBoxAttributes(@)", header: "<wx/wx.h>".}
proc drawBorder*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                 attr: WxTextAttrBorders; rect: WxRect; flags: cint = 0): bool {.
    cdecl, importcpp: "wxRichTextObject::DrawBorder(@)", header: "<wx/wx.h>".}
proc getBoxRects*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                  attr: WxRichTextAttr; marginRect: var WxRect; 
                  borderRect: var WxRect; contentRect: var WxRect; 
                  paddingRect: var WxRect; outlineRect: var WxRect): bool {.
    cdecl, importcpp: "wxRichTextObject::GetBoxRects(@)", header: "<wx/wx.h>".}
proc getTotalMargin*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                     attr: WxRichTextAttr; leftMargin: var cint; 
                     rightMargin: var cint; topMargin: var cint; 
                     bottomMargin: var cint): bool {.cdecl, 
    importcpp: "wxRichTextObject::GetTotalMargin(@)", header: "<wx/wx.h>".}
proc adjustAvailableSpace*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                           parentAttr: WxRichTextAttr; 
                           childAttr: WxRichTextAttr; 
                           availableParentSpace: WxRect; 
                           availableContainerSpace: WxRect): WxRect {.cdecl, 
    importcpp: "wxRichTextObject::AdjustAvailableSpace(@)", header: "<wx/wx.h>".}
wx_Declare_List_With_Decl(wxRichTextObject, wxRichTextObjectList, class)

type 
  WxRichTextCompositeObject* {.importcpp: "wxRichTextCompositeObject", 
                               header: "<wx/wx.h>".} = object of WxRichTextObject
  

proc constructwxRichTextCompositeObject*(parent: ptr WxRichTextObject = nil): WxRichTextCompositeObject {.
    cdecl, constructor, importcpp: "wxRichTextCompositeObject(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextCompositeObject*(this: var WxRichTextCompositeObject) {.
    cdecl, importcpp: "#.~wxRichTextCompositeObject()", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextCompositeObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc findPosition*(this: var WxRichTextCompositeObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextCompositeObject; start: clong; 
                     `end`: var clong) {.cdecl, importcpp: "CalculateRange", 
    header: "<wx/wx.h>".}
proc deleteRange*(this: var WxRichTextCompositeObject; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: "<wx/wx.h>".}
proc getTextForRange*(this: WxRichTextCompositeObject; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextCompositeObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc dump*(this: var WxRichTextCompositeObject; stream: var WxTextOutputStream) {.
    cdecl, importcpp: "Dump", header: "<wx/wx.h>".}
proc invalidate*(this: var WxRichTextCompositeObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: "<wx/wx.h>".}
proc getChildren*(this: var WxRichTextCompositeObject): var WxRichTextObjectList {.
    cdecl, importcpp: "GetChildren", header: "<wx/wx.h>".}
proc getChildren*(this: WxRichTextCompositeObject): WxRichTextObjectList {.
    noSideEffect, cdecl, importcpp: "GetChildren", header: "<wx/wx.h>".}
proc getChildCount*(this: WxRichTextCompositeObject): csize {.noSideEffect, 
    cdecl, importcpp: "GetChildCount", header: "<wx/wx.h>".}
proc getChild*(this: WxRichTextCompositeObject; n: csize): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetChild", header: "<wx/wx.h>".}
proc isComposite*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsComposite", header: "<wx/wx.h>".}
proc isAtomic*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextCompositeObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc getChildAtPosition*(this: WxRichTextCompositeObject; pos: clong): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetChildAtPosition", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextCompositeObject; obj: WxRichTextCompositeObject) {.
    cdecl, importcpp: "Copy", header: "<wx/wx.h>".}
proc appendChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject): csize {.cdecl, 
    importcpp: "AppendChild", header: "<wx/wx.h>".}
proc insertChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; inFrontOf: ptr WxRichTextObject): bool {.
    cdecl, importcpp: "InsertChild", header: "<wx/wx.h>".}
proc removeChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; deleteChild: bool = false): bool {.
    cdecl, importcpp: "RemoveChild", header: "<wx/wx.h>".}
proc deleteChildren*(this: var WxRichTextCompositeObject): bool {.cdecl, 
    importcpp: "DeleteChildren", header: "<wx/wx.h>".}
proc defragment*(this: var WxRichTextCompositeObject; 
                 context: var WxRichTextDrawingContext; 
                 range: WxRichTextRange = wxRICHTEXT_ALL): bool {.cdecl, 
    importcpp: "Defragment", header: "<wx/wx.h>".}
proc move*(this: var WxRichTextCompositeObject; pt: WxPoint) {.cdecl, 
    importcpp: "Move", header: "<wx/wx.h>".}

type 
  WxRichTextParagraphLayoutBox* {.importcpp: "wxRichTextParagraphLayoutBox", 
                                  header: "<wx/wx.h>".} = object of WxRichTextCompositeObject
  

proc constructwxRichTextParagraphLayoutBox*(parent: ptr WxRichTextObject = nil): WxRichTextParagraphLayoutBox {.
    cdecl, constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextParagraphLayoutBox*(obj: WxRichTextParagraphLayoutBox): WxRichTextParagraphLayoutBox {.
    cdecl, constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextParagraphLayoutBox*(this: var WxRichTextParagraphLayoutBox) {.
    cdecl, importcpp: "#.~wxRichTextParagraphLayoutBox()", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc deleteRange*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: "<wx/wx.h>".}
proc getTextForRange*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: "<wx/wx.h>".}
proc importFromXML*(this: var WxRichTextParagraphLayoutBox; 
                    buffer: ptr WxRichTextBuffer; node: ptr WxXmlNode; 
                    handler: ptr WxRichTextXMLHandler; recurse: ptr bool): bool {.
    cdecl, importcpp: "ImportFromXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextParagraphLayoutBox; 
                stream: var WxOutputStream; indent: cint; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextParagraphLayoutBox; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextParagraphLayoutBox): WxString {.
    noSideEffect, cdecl, importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    cdecl, importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
proc setRichTextCtrl*(this: var WxRichTextParagraphLayoutBox; 
                      ctrl: ptr WxRichTextCtrl) {.cdecl, 
    importcpp: "SetRichTextCtrl", header: "<wx/wx.h>".}
proc getRichTextCtrl*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: "<wx/wx.h>".}
proc setPartialParagraph*(this: var WxRichTextParagraphLayoutBox; 
                          partialPara: bool) {.cdecl, 
    importcpp: "SetPartialParagraph", header: "<wx/wx.h>".}
proc getPartialParagraph*(this: WxRichTextParagraphLayoutBox): bool {.
    noSideEffect, cdecl, importcpp: "GetPartialParagraph", header: "<wx/wx.h>".}
proc getStyleSheet*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    cdecl, importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc insertParagraphsWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                               buffer: ptr WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertParagraphsWithUndo", header: "<wx/wx.h>".}
proc insertTextWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                         buffer: ptr WxRichTextBuffer; pos: clong; 
                         text: WxString; ctrl: ptr WxRichTextCtrl; 
                         flags: cint = 0): bool {.cdecl, 
    importcpp: "InsertTextWithUndo", header: "<wx/wx.h>".}
proc insertNewlineWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                            buffer: ptr WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertNewlineWithUndo", header: "<wx/wx.h>".}
proc insertImageWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): bool {.cdecl, 
    importcpp: "InsertImageWithUndo", header: "<wx/wx.h>".}
proc insertFieldWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          fieldType: WxString; properties: WxRichTextProperties; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): ptr WxRichTextField {.
    cdecl, importcpp: "InsertFieldWithUndo", header: "<wx/wx.h>".}
proc getStyleForNewParagraph*(this: WxRichTextParagraphLayoutBox; 
                              buffer: ptr WxRichTextBuffer; pos: clong; 
                              caretPosition: bool = false; 
                              lookUpNewParaStyle: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetStyleForNewParagraph", 
    header: "<wx/wx.h>".}
proc insertObjectWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                           buffer: ptr WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint = 0): ptr WxRichTextObject {.
    cdecl, importcpp: "InsertObjectWithUndo", header: "<wx/wx.h>".}
proc deleteRangeWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          range: WxRichTextRange; ctrl: ptr WxRichTextCtrl; 
                          buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "DeleteRangeWithUndo", header: "<wx/wx.h>".}
proc drawFloats*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
                 context: var WxRichTextDrawingContext; range: WxRichTextRange; 
                 selection: WxRichTextSelection; rect: WxRect; descent: cint; 
                 style: cint) {.cdecl, importcpp: "DrawFloats", 
                                header: "<wx/wx.h>".}
proc moveAnchoredObjectToParagraph*(this: var WxRichTextParagraphLayoutBox; 
                                    `from`: ptr WxRichTextParagraph; 
                                    to: ptr WxRichTextParagraph; 
                                    obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "MoveAnchoredObjectToParagraph", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc reset*(this: var WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Reset", 
    header: "<wx/wx.h>".}
proc addParagraph*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    cdecl, importcpp: "AddParagraph", header: "<wx/wx.h>".}
proc addImage*(this: var WxRichTextParagraphLayoutBox; image: WxImage; 
               paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.cdecl, 
    importcpp: "AddImage", header: "<wx/wx.h>".}
proc addParagraphs*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                    paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    cdecl, importcpp: "AddParagraphs", header: "<wx/wx.h>".}
proc getLineAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                        caretPosition: bool = false): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineAtPosition", header: "<wx/wx.h>".}
proc getLineAtYPosition*(this: WxRichTextParagraphLayoutBox; y: cint): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineAtYPosition", header: "<wx/wx.h>".}
proc getParagraphAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                             caretPosition: bool = false): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphAtPosition", 
    header: "<wx/wx.h>".}
proc getLineSizeAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                            caretPosition: bool = false): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetLineSizeAtPosition", header: "<wx/wx.h>".}
proc getVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                           caretPosition: bool = false; 
                           startOfLine: bool = false): clong {.noSideEffect, 
    cdecl, importcpp: "GetVisibleLineNumber", header: "<wx/wx.h>".}
proc getLineForVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; 
                                  lineNumber: clong): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetLineForVisibleLineNumber", 
    header: "<wx/wx.h>".}
proc getLeafObjectAtPosition*(this: WxRichTextParagraphLayoutBox; 
                              position: clong): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetLeafObjectAtPosition", 
    header: "<wx/wx.h>".}
proc getParagraphAtLine*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphAtLine", header: "<wx/wx.h>".}
proc getParagraphForLine*(this: WxRichTextParagraphLayoutBox; 
                          line: ptr WxRichTextLine): ptr WxRichTextParagraph {.
    noSideEffect, cdecl, importcpp: "GetParagraphForLine", header: "<wx/wx.h>".}
proc getParagraphLength*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): cint {.noSideEffect, cdecl, 
    importcpp: "GetParagraphLength", header: "<wx/wx.h>".}
proc getParagraphCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, cdecl, importcpp: "GetParagraphCount", header: "<wx/wx.h>".}
proc getLineCount*(this: WxRichTextParagraphLayoutBox): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineCount", header: "<wx/wx.h>".}
proc getParagraphText*(this: WxRichTextParagraphLayoutBox; 
                       paragraphNumber: clong): WxString {.noSideEffect, cdecl, 
    importcpp: "GetParagraphText", header: "<wx/wx.h>".}
proc xYToPosition*(this: WxRichTextParagraphLayoutBox; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: "<wx/wx.h>".}
proc positionToXY*(this: WxRichTextParagraphLayoutBox; pos: clong; x: ptr clong; 
                   y: ptr clong): bool {.noSideEffect, cdecl, 
    importcpp: "PositionToXY", header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
               style: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; 
               obj: ptr WxRichTextObject; textAttr: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc getStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
               style: var WxRichTextAttr): bool {.cdecl, importcpp: "GetStyle", 
    header: "<wx/wx.h>".}
proc getUncombinedStyle*(this: var WxRichTextParagraphLayoutBox; 
                         position: clong; style: var WxRichTextAttr): bool {.
    cdecl, importcpp: "GetUncombinedStyle", header: "<wx/wx.h>".}
proc doGetStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                 style: var WxRichTextAttr; combineStyles: bool = true): bool {.
    cdecl, importcpp: "DoGetStyle", header: "<wx/wx.h>".}
proc getStyleForRange*(this: var WxRichTextParagraphLayoutBox; 
                       range: WxRichTextRange; style: var WxRichTextAttr): bool {.
    cdecl, importcpp: "GetStyleForRange", header: "<wx/wx.h>".}
proc collectStyle*(this: var WxRichTextParagraphLayoutBox; 
                   currentStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                   clashingAttr: var WxRichTextAttr; 
                   absentAttr: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "CollectStyle", header: "<wx/wx.h>".}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "SetListStyle", header: "<wx/wx.h>".}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; defName: WxString; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "SetListStyle", header: "<wx/wx.h>".}
proc clearListStyle*(this: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange; 
                     flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "ClearListStyle", header: "<wx/wx.h>".}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: "<wx/wx.h>".}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: "<wx/wx.h>".}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: "<wx/wx.h>".}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: "<wx/wx.h>".}
proc doNumberList*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; promotionRange: WxRichTextRange; 
                   promoteBy: cint; def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "DoNumberList", header: "<wx/wx.h>".}
proc findNextParagraphNumber*(this: WxRichTextParagraphLayoutBox; 
                              previousParagraph: ptr WxRichTextParagraph; 
                              attr: var WxRichTextAttr): bool {.noSideEffect, 
    cdecl, importcpp: "FindNextParagraphNumber", header: "<wx/wx.h>".}
proc setProperties*(this: var WxRichTextParagraphLayoutBox; 
                    range: WxRichTextRange; properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    cdecl, importcpp: "SetProperties", header: "<wx/wx.h>".}
proc setObjectPropertiesWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                                  obj: var WxRichTextObject; 
                                  properties: WxRichTextProperties; 
                                  objToSet: ptr WxRichTextObject = nil): bool {.
    cdecl, importcpp: "SetObjectPropertiesWithUndo", header: "<wx/wx.h>".}
proc hasCharacterAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, cdecl, importcpp: "HasCharacterAttributes", 
    header: "<wx/wx.h>".}
proc hasParagraphAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, cdecl, importcpp: "HasParagraphAttributes", 
    header: "<wx/wx.h>".}
proc clone*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "Clone", header: "<wx/wx.h>".}
proc prepareContent*(this: var WxRichTextParagraphLayoutBox; 
                     container: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "PrepareContent", header: "<wx/wx.h>".}
proc insertFragment*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                     fragment: var WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "InsertFragment", header: "<wx/wx.h>".}
proc copyFragment*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   fragment: var WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "CopyFragment", header: "<wx/wx.h>".}
proc applyStyleSheet*(this: var WxRichTextParagraphLayoutBox; 
                      styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "ApplyStyleSheet", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextParagraphLayoutBox; 
           obj: WxRichTextParagraphLayoutBox) {.cdecl, importcpp: "Copy", 
    header: "<wx/wx.h>".}
proc updateRanges*(this: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "UpdateRanges", header: "<wx/wx.h>".}
proc getText*(this: WxRichTextParagraphLayoutBox): WxString {.noSideEffect, 
    cdecl, importcpp: "GetText", header: "<wx/wx.h>".}
proc setDefaultStyle*(this: var WxRichTextParagraphLayoutBox; 
                      style: WxRichTextAttr): bool {.cdecl, 
    importcpp: "SetDefaultStyle", header: "<wx/wx.h>".}
proc getDefaultStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetDefaultStyle", header: "<wx/wx.h>".}
proc setBasicStyle*(this: var WxRichTextParagraphLayoutBox; 
                    style: WxRichTextAttr) {.cdecl, importcpp: "SetBasicStyle", 
    header: "<wx/wx.h>".}
proc getBasicStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetBasicStyle", header: "<wx/wx.h>".}
proc invalidate*(this: var WxRichTextParagraphLayoutBox; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.cdecl, 
    importcpp: "Invalidate", header: "<wx/wx.h>".}
proc doInvalidate*(this: var WxRichTextParagraphLayoutBox; 
                   invalidRange: WxRichTextRange) {.cdecl, 
    importcpp: "DoInvalidate", header: "<wx/wx.h>".}
proc invalidateHierarchy*(this: var WxRichTextParagraphLayoutBox; 
                          invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    cdecl, importcpp: "InvalidateHierarchy", header: "<wx/wx.h>".}
proc updateFloatingObjects*(this: var WxRichTextParagraphLayoutBox; 
                            availableRect: WxRect; 
                            untilObj: ptr WxRichTextObject = nil): bool {.cdecl, 
    importcpp: "UpdateFloatingObjects", header: "<wx/wx.h>".}
proc getInvalidRange*(this: WxRichTextParagraphLayoutBox; 
                      wholeParagraphs: bool = false): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetInvalidRange", header: "<wx/wx.h>".}
proc isDirty*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, cdecl, 
    importcpp: "IsDirty", header: "<wx/wx.h>".}
proc getFloatCollector*(this: var WxRichTextParagraphLayoutBox): ptr WxRichTextFloatCollector {.
    cdecl, importcpp: "GetFloatCollector", header: "<wx/wx.h>".}
proc getFloatingObjectCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, cdecl, importcpp: "GetFloatingObjectCount", 
    header: "<wx/wx.h>".}
proc getFloatingObjects*(this: WxRichTextParagraphLayoutBox; 
                         objects: var WxRichTextObjectList): bool {.
    noSideEffect, cdecl, importcpp: "GetFloatingObjects", header: "<wx/wx.h>".}

type 
  WxRichTextBox* {.importcpp: "wxRichTextBox", header: "<wx/wx.h>".} = object of WxRichTextParagraphLayoutBox
  

proc constructwxRichTextBox*(parent: ptr WxRichTextObject = nil): WxRichTextBox {.
    cdecl, constructor, importcpp: "wxRichTextBox(@)", header: "<wx/wx.h>".}
proc constructwxRichTextBox*(obj: WxRichTextBox): WxRichTextBox {.cdecl, 
    constructor, importcpp: "wxRichTextBox(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextBox): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextBox; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextBox): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextBox): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextBox; obj: WxRichTextBox) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}

type 
  WxRichTextField* {.importcpp: "wxRichTextField", header: "<wx/wx.h>".} = object of WxRichTextParagraphLayoutBox
  

proc constructwxRichTextField*(fieldType: WxString = wxEmptyString; 
                               parent: ptr WxRichTextObject = nil): WxRichTextField {.
    cdecl, constructor, importcpp: "wxRichTextField(@)", header: "<wx/wx.h>".}
proc constructwxRichTextField*(obj: WxRichTextField): WxRichTextField {.cdecl, 
    constructor, importcpp: "wxRichTextField(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextField; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextField; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextField; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextField): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextField; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextField): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextField; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: "<wx/wx.h>".}
proc isAtomic*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsAtomic", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxRichTextField): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc setFieldType*(this: var WxRichTextField; fieldType: WxString) {.cdecl, 
    importcpp: "SetFieldType", header: "<wx/wx.h>".}
proc getFieldType*(this: WxRichTextField): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFieldType", header: "<wx/wx.h>".}
proc updateField*(this: var WxRichTextField; buffer: ptr WxRichTextBuffer): bool {.
    cdecl, importcpp: "UpdateField", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextField): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextField; obj: WxRichTextField) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}

type 
  WxRichTextFieldType* {.importcpp: "wxRichTextFieldType", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextFieldType*(name: WxString = wxEmptyString): WxRichTextFieldType {.
    cdecl, constructor, importcpp: "wxRichTextFieldType(@)", header: "<wx/wx.h>".}
proc constructwxRichTextFieldType*(fieldType: WxRichTextFieldType): WxRichTextFieldType {.
    cdecl, constructor, importcpp: "wxRichTextFieldType(@)", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextFieldType; fieldType: WxRichTextFieldType) {.
    cdecl, importcpp: "Copy", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.cdecl, importcpp: "Draw", 
    header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextFieldType; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
                     parent: ptr WxWindow; buffer: ptr WxRichTextBuffer): bool {.
    cdecl, importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): WxString {.
    noSideEffect, cdecl, importcpp: "GetPropertiesMenuLabel", 
    header: "<wx/wx.h>".}
proc updateField*(this: var WxRichTextFieldType; buffer: ptr WxRichTextBuffer; 
                  obj: ptr WxRichTextField): bool {.cdecl, 
    importcpp: "UpdateField", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc setName*(this: var WxRichTextFieldType; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxRichTextFieldType): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
wx_Declare_String_Hash_Map(ptr wxRichTextFieldType, wxRichTextFieldTypeHashMap)

type 
  WxRichTextFieldTypeStandard* {.importcpp: "wxRichTextFieldTypeStandard", 
                                 header: "<wx/wx.h>".} = object of WxRichTextFieldType
  

const 
  wxRICHTEXT_FIELD_STYLE_COMPOSITE* = 0x00000001
  wxRICHTEXT_FIELD_STYLE_RECTANGLE* = 0x00000002
  wxRICHTEXT_FIELD_STYLE_NO_BORDER* = 0x00000004
  wxRICHTEXT_FIELD_STYLE_START_TAG* = 0x00000008
  wxRICHTEXT_FIELD_STYLE_END_TAG* = 0x00000010

proc constructwxRichTextFieldTypeStandard*(name: WxString; label: WxString; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_RECTANGLE): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextFieldTypeStandard*(name: WxString; bitmap: WxBitmap; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_NO_BORDER): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextFieldTypeStandard*(): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextFieldTypeStandard*(field: WxRichTextFieldTypeStandard): WxRichTextFieldTypeStandard {.
    cdecl, constructor, importcpp: "wxRichTextFieldTypeStandard(@)", 
    header: "<wx/wx.h>".}
proc init*(this: var WxRichTextFieldTypeStandard) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextFieldTypeStandard; 
           field: WxRichTextFieldTypeStandard) {.cdecl, importcpp: "Copy", 
    header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.cdecl, importcpp: "Draw", 
    header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc getSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
              dc: var WxDC; context: var WxRichTextDrawingContext; style: cint): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSize", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField): bool {.
    noSideEffect, cdecl, importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc setLabel*(this: var WxRichTextFieldTypeStandard; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxRichTextFieldTypeStandard): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLabel", header: "<wx/wx.h>".}
proc setBitmap*(this: var WxRichTextFieldTypeStandard; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetBitmap", header: "<wx/wx.h>".}
proc getBitmap*(this: WxRichTextFieldTypeStandard): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetBitmap", header: "<wx/wx.h>".}
proc getDisplayStyle*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    cdecl, importcpp: "GetDisplayStyle", header: "<wx/wx.h>".}
proc setDisplayStyle*(this: var WxRichTextFieldTypeStandard; displayStyle: cint) {.
    cdecl, importcpp: "SetDisplayStyle", header: "<wx/wx.h>".}
proc getFont*(this: WxRichTextFieldTypeStandard): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc setFont*(this: var WxRichTextFieldTypeStandard; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc getTextColour*(this: WxRichTextFieldTypeStandard): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetTextColour", header: "<wx/wx.h>".}
proc setTextColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    cdecl, importcpp: "SetTextColour", header: "<wx/wx.h>".}
proc getBorderColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, cdecl, importcpp: "GetBorderColour", header: "<wx/wx.h>".}
proc setBorderColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    cdecl, importcpp: "SetBorderColour", header: "<wx/wx.h>".}
proc getBackgroundColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, cdecl, importcpp: "GetBackgroundColour", header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxRichTextFieldTypeStandard; 
                          colour: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc setVerticalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    cdecl, importcpp: "SetVerticalPadding", header: "<wx/wx.h>".}
proc getVerticalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetVerticalPadding", header: "<wx/wx.h>".}
proc setHorizontalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    cdecl, importcpp: "SetHorizontalPadding", header: "<wx/wx.h>".}
proc getHorizontalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetHorizontalPadding", header: "<wx/wx.h>".}
proc setHorizontalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    cdecl, importcpp: "SetHorizontalMargin", header: "<wx/wx.h>".}
proc getHorizontalMargin*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, cdecl, importcpp: "GetHorizontalMargin", header: "<wx/wx.h>".}
proc setVerticalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    cdecl, importcpp: "SetVerticalMargin", header: "<wx/wx.h>".}
proc getVerticalMargin*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    cdecl, importcpp: "GetVerticalMargin", header: "<wx/wx.h>".}

type 
  WxRichTextLine* {.importcpp: "wxRichTextLine", header: "<wx/wx.h>".} = object 
  

proc constructwxRichTextLine*(parent: ptr WxRichTextParagraph): WxRichTextLine {.
    cdecl, constructor, importcpp: "wxRichTextLine(@)", header: "<wx/wx.h>".}
proc constructwxRichTextLine*(obj: WxRichTextLine): WxRichTextLine {.cdecl, 
    constructor, importcpp: "wxRichTextLine(@)", header: "<wx/wx.h>".}
proc destroywxRichTextLine*(this: var WxRichTextLine) {.cdecl, 
    importcpp: "#.~wxRichTextLine()", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextLine; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextLine; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getParent*(this: var WxRichTextLine): ptr WxRichTextParagraph {.cdecl, 
    importcpp: "GetParent", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc getRange*(this: var WxRichTextLine): var WxRichTextRange {.cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc getAbsoluteRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetAbsoluteRange", header: "<wx/wx.h>".}
proc getSize*(this: WxRichTextLine): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc setSize*(this: var WxRichTextLine; sz: WxSize) {.cdecl, 
    importcpp: "SetSize", header: "<wx/wx.h>".}
proc getPosition*(this: WxRichTextLine): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxRichTextLine; pos: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc getAbsolutePosition*(this: WxRichTextLine): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetAbsolutePosition", header: "<wx/wx.h>".}
proc getRect*(this: WxRichTextLine): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: "<wx/wx.h>".}
proc setDescent*(this: var WxRichTextLine; descent: cint) {.cdecl, 
    importcpp: "SetDescent", header: "<wx/wx.h>".}
proc getDescent*(this: WxRichTextLine): cint {.noSideEffect, cdecl, 
    importcpp: "GetDescent", header: "<wx/wx.h>".}
proc getObjectSizes*(this: var WxRichTextLine): var WxArrayInt {.cdecl, 
    importcpp: "GetObjectSizes", header: "<wx/wx.h>".}
proc getObjectSizes*(this: WxRichTextLine): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetObjectSizes", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextLine; parent: ptr WxRichTextParagraph) {.cdecl, 
    importcpp: "Init", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextLine; obj: WxRichTextLine) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextLine): ptr WxRichTextLine {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
wx_Declare_List_With_Decl(wxRichTextLine, wxRichTextLineList, class)

type 
  WxRichTextParagraph* {.importcpp: "wxRichTextParagraph", header: "<wx/wx.h>".} = object of WxRichTextCompositeObject
  

proc constructwxRichTextParagraph*(parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: "<wx/wx.h>".}
proc constructwxRichTextParagraph*(text: WxString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   paraStyle: ptr WxRichTextAttr = nil; 
                                   charStyle: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: "<wx/wx.h>".}
proc destroywxRichTextParagraph*(this: var WxRichTextParagraph) {.cdecl, 
    importcpp: "#.~wxRichTextParagraph()", header: "<wx/wx.h>".}
proc constructwxRichTextParagraph*(obj: WxRichTextParagraph): WxRichTextParagraph {.
    cdecl, constructor, importcpp: "wxRichTextParagraph(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextParagraph; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextParagraph; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextParagraph; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc findPosition*(this: var WxRichTextParagraph; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextParagraph; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextParagraph; start: clong; 
                     `end`: var clong) {.cdecl, importcpp: "CalculateRange", 
    header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextParagraph): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc getLines*(this: var WxRichTextParagraph): var WxRichTextLineList {.cdecl, 
    importcpp: "GetLines", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextParagraph; obj: WxRichTextParagraph) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextParagraph): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "Clone", header: "<wx/wx.h>".}
proc clearLines*(this: var WxRichTextParagraph) {.cdecl, 
    importcpp: "ClearLines", header: "<wx/wx.h>".}
proc applyParagraphStyle*(this: var WxRichTextParagraph; 
                          line: ptr WxRichTextLine; attr: WxRichTextAttr; 
                          rect: WxRect; dc: var WxDC) {.cdecl, 
    importcpp: "ApplyParagraphStyle", header: "<wx/wx.h>".}
proc insertText*(this: var WxRichTextParagraph; pos: clong; text: WxString): bool {.
    cdecl, importcpp: "InsertText", header: "<wx/wx.h>".}
proc splitAt*(this: var WxRichTextParagraph; pos: clong; 
              previousObject: ptr ptr WxRichTextObject = nil): ptr WxRichTextObject {.
    cdecl, importcpp: "SplitAt", header: "<wx/wx.h>".}
proc moveToList*(this: var WxRichTextParagraph; obj: ptr WxRichTextObject; 
                 list: var WxList) {.cdecl, importcpp: "MoveToList", 
                                     header: "<wx/wx.h>".}
proc moveFromList*(this: var WxRichTextParagraph; list: var WxList) {.cdecl, 
    importcpp: "MoveFromList", header: "<wx/wx.h>".}
proc getContiguousPlainText*(this: var WxRichTextParagraph; text: var WxString; 
                             range: WxRichTextRange; fromStart: bool = true): bool {.
    cdecl, importcpp: "GetContiguousPlainText", header: "<wx/wx.h>".}
proc findWrapPosition*(this: var WxRichTextParagraph; range: WxRichTextRange; 
                       dc: var WxDC; context: var WxRichTextDrawingContext; 
                       availableSpace: cint; wrapPosition: var clong; 
                       partialExtents: ptr WxArrayInt): bool {.cdecl, 
    importcpp: "FindWrapPosition", header: "<wx/wx.h>".}
proc findObjectAtPosition*(this: var WxRichTextParagraph; position: clong): ptr WxRichTextObject {.
    cdecl, importcpp: "FindObjectAtPosition", header: "<wx/wx.h>".}
proc getBulletText*(this: var WxRichTextParagraph): WxString {.cdecl, 
    importcpp: "GetBulletText", header: "<wx/wx.h>".}
proc allocateLine*(this: var WxRichTextParagraph; pos: cint): ptr WxRichTextLine {.
    cdecl, importcpp: "AllocateLine", header: "<wx/wx.h>".}
proc clearUnusedLines*(this: var WxRichTextParagraph; lineCount: cint): bool {.
    cdecl, importcpp: "ClearUnusedLines", header: "<wx/wx.h>".}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            contentStyle: WxRichTextAttr; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetCombinedAttributes", header: "<wx/wx.h>".}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetCombinedAttributes", header: "<wx/wx.h>".}
proc getFirstLineBreakPosition*(this: var WxRichTextParagraph; pos: clong): clong {.
    cdecl, importcpp: "GetFirstLineBreakPosition", header: "<wx/wx.h>".}
proc initDefaultTabs*() {.cdecl, 
                          importcpp: "wxRichTextParagraph::InitDefaultTabs(@)", 
                          header: "<wx/wx.h>".}
proc clearDefaultTabs*() {.cdecl, importcpp: "wxRichTextParagraph::ClearDefaultTabs(@)", 
                           header: "<wx/wx.h>".}
proc getDefaultTabs*(): WxArrayInt {.cdecl, importcpp: "wxRichTextParagraph::GetDefaultTabs(@)", 
                                     header: "<wx/wx.h>".}
proc layoutFloat*(this: var WxRichTextParagraph; dc: var WxDC; 
                  context: var WxRichTextDrawingContext; rect: WxRect; 
                  parentRect: WxRect; style: cint; 
                  floatCollector: ptr WxRichTextFloatCollector) {.cdecl, 
    importcpp: "LayoutFloat", header: "<wx/wx.h>".}

type 
  WxRichTextPlainText* {.importcpp: "wxRichTextPlainText", header: "<wx/wx.h>".} = object of WxRichTextObject
  

proc constructwxRichTextPlainText*(text: WxString = wxEmptyString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextPlainText {.
    cdecl, constructor, importcpp: "wxRichTextPlainText(@)", header: "<wx/wx.h>".}
proc constructwxRichTextPlainText*(obj: WxRichTextPlainText): WxRichTextPlainText {.
    cdecl, constructor, importcpp: "wxRichTextPlainText(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextPlainText; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextPlainText; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc adjustAttributes*(this: var WxRichTextPlainText; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextPlainText; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc getTextForRange*(this: WxRichTextPlainText; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: "<wx/wx.h>".}
proc doSplit*(this: var WxRichTextPlainText; pos: clong): ptr WxRichTextObject {.
    cdecl, importcpp: "DoSplit", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextPlainText; start: clong; 
                     `end`: var clong) {.cdecl, importcpp: "CalculateRange", 
    header: "<wx/wx.h>".}
proc deleteRange*(this: var WxRichTextPlainText; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextPlainText): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc canMerge*(this: WxRichTextPlainText; `object`: ptr WxRichTextObject; 
               context: var WxRichTextDrawingContext): bool {.noSideEffect, 
    cdecl, importcpp: "CanMerge", header: "<wx/wx.h>".}
proc merge*(this: var WxRichTextPlainText; `object`: ptr WxRichTextObject; 
            context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "Merge", header: "<wx/wx.h>".}
proc dump*(this: var WxRichTextPlainText; stream: var WxTextOutputStream) {.
    cdecl, importcpp: "Dump", header: "<wx/wx.h>".}
proc canSplit*(this: WxRichTextPlainText; context: var WxRichTextDrawingContext): bool {.
    noSideEffect, cdecl, importcpp: "CanSplit", header: "<wx/wx.h>".}
proc split*(this: var WxRichTextPlainText; context: var WxRichTextDrawingContext): ptr WxRichTextObject {.
    cdecl, importcpp: "Split", header: "<wx/wx.h>".}
proc getFirstLineBreakPosition*(this: var WxRichTextPlainText; pos: clong): clong {.
    cdecl, importcpp: "GetFirstLineBreakPosition", header: "<wx/wx.h>".}
proc usesParagraphAttributes*(this: WxRichTextPlainText): bool {.noSideEffect, 
    cdecl, importcpp: "UsesParagraphAttributes", header: "<wx/wx.h>".}
proc importFromXML*(this: var WxRichTextPlainText; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.cdecl, 
    importcpp: "ImportFromXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextPlainText; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextPlainText; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextPlainText): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc getText*(this: WxRichTextPlainText): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "<wx/wx.h>".}
proc setText*(this: var WxRichTextPlainText; text: WxString) {.cdecl, 
    importcpp: "SetText", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextPlainText; obj: WxRichTextPlainText) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextPlainText): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "Clone", header: "<wx/wx.h>".}

type 
  WxRichTextImageBlock* {.importcpp: "wxRichTextImageBlock", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextImageBlock*(): WxRichTextImageBlock {.cdecl, 
    constructor, importcpp: "wxRichTextImageBlock(@)", header: "<wx/wx.h>".}
proc constructwxRichTextImageBlock*(`block`: WxRichTextImageBlock): WxRichTextImageBlock {.
    cdecl, constructor, importcpp: "wxRichTextImageBlock(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextImageBlock*(this: var WxRichTextImageBlock) {.cdecl, 
    importcpp: "#.~wxRichTextImageBlock()", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextImageBlock) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextImageBlock) {.cdecl, importcpp: "Clear", 
    header: "<wx/wx.h>".}
proc makeImageBlock*(this: var WxRichTextImageBlock; filename: WxString; 
                     imageType: WxBitmapType; image: var WxImage; 
                     convertToJPEG: bool = true): bool {.cdecl, 
    importcpp: "MakeImageBlock", header: "<wx/wx.h>".}
proc makeImageBlock*(this: var WxRichTextImageBlock; image: var WxImage; 
                     imageType: WxBitmapType; quality: cint = 80): bool {.cdecl, 
    importcpp: "MakeImageBlock", header: "<wx/wx.h>".}
proc makeImageBlockDefaultQuality*(this: var WxRichTextImageBlock; 
                                   image: WxImage; imageType: WxBitmapType): bool {.
    cdecl, importcpp: "MakeImageBlockDefaultQuality", header: "<wx/wx.h>".}
proc doMakeImageBlock*(this: var WxRichTextImageBlock; image: WxImage; 
                       imageType: WxBitmapType): bool {.cdecl, 
    importcpp: "DoMakeImageBlock", header: "<wx/wx.h>".}
proc write*(this: var WxRichTextImageBlock; filename: WxString): bool {.cdecl, 
    importcpp: "Write", header: "<wx/wx.h>".}
proc writeHex*(this: var WxRichTextImageBlock; stream: var WxOutputStream): bool {.
    cdecl, importcpp: "WriteHex", header: "<wx/wx.h>".}
proc readHex*(this: var WxRichTextImageBlock; stream: var WxInputStream; 
              length: cint; imageType: WxBitmapType): bool {.cdecl, 
    importcpp: "ReadHex", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextImageBlock; `block`: WxRichTextImageBlock) {.
    cdecl, importcpp: "Copy", header: "<wx/wx.h>".}
proc load*(this: var WxRichTextImageBlock; image: var WxImage): bool {.cdecl, 
    importcpp: "Load", header: "<wx/wx.h>".}
proc getData*(this: WxRichTextImageBlock): ptr cuchar {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxRichTextImageBlock): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getImageType*(this: WxRichTextImageBlock): WxBitmapType {.noSideEffect, 
    cdecl, importcpp: "GetImageType", header: "<wx/wx.h>".}
proc setData*(this: var WxRichTextImageBlock; image: ptr cuchar) {.cdecl, 
    importcpp: "SetData", header: "<wx/wx.h>".}
proc setDataSize*(this: var WxRichTextImageBlock; size: csize) {.cdecl, 
    importcpp: "SetDataSize", header: "<wx/wx.h>".}
proc setImageType*(this: var WxRichTextImageBlock; imageType: WxBitmapType) {.
    cdecl, importcpp: "SetImageType", header: "<wx/wx.h>".}
proc isOk*(this: WxRichTextImageBlock): bool {.noSideEffect, cdecl, 
    importcpp: "IsOk", header: "<wx/wx.h>".}
proc ok*(this: WxRichTextImageBlock): bool {.noSideEffect, cdecl, 
    importcpp: "Ok", header: "<wx/wx.h>".}
proc getExtension*(this: WxRichTextImageBlock): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: "<wx/wx.h>".}
proc readBlock*(stream: var WxInputStream; size: csize): ptr cuchar {.cdecl, 
    importcpp: "wxRichTextImageBlock::ReadBlock(@)", header: "<wx/wx.h>".}
proc readBlock*(filename: WxString; size: csize): ptr cuchar {.cdecl, 
    importcpp: "wxRichTextImageBlock::ReadBlock(@)", header: "<wx/wx.h>".}
proc writeBlock*(stream: var WxOutputStream; `block`: ptr cuchar; size: csize): bool {.
    cdecl, importcpp: "wxRichTextImageBlock::WriteBlock(@)", header: "<wx/wx.h>".}
proc writeBlock*(filename: WxString; `block`: ptr cuchar; size: csize): bool {.
    cdecl, importcpp: "wxRichTextImageBlock::WriteBlock(@)", header: "<wx/wx.h>".}

type 
  WxRichTextImage* {.importcpp: "wxRichTextImage", header: "<wx/wx.h>".} = object of WxRichTextObject
  

proc constructwxRichTextImage*(parent: ptr WxRichTextObject = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: "<wx/wx.h>".}
proc constructwxRichTextImage*(image: WxImage; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: "<wx/wx.h>".}
proc constructwxRichTextImage*(imageBlock: WxRichTextImageBlock; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    cdecl, constructor, importcpp: "wxRichTextImage(@)", header: "<wx/wx.h>".}
proc constructwxRichTextImage*(obj: WxRichTextImage): WxRichTextImage {.cdecl, 
    constructor, importcpp: "wxRichTextImage(@)", header: "<wx/wx.h>".}
proc destroywxRichTextImage*(this: var WxRichTextImage) {.cdecl, 
    importcpp: "#.~wxRichTextImage()", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextImage) {.cdecl, importcpp: "Init", 
                                        header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextImage; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextImage; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextImage; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc getNaturalSize*(this: WxRichTextImage): WxTextAttrSize {.noSideEffect, 
    cdecl, importcpp: "GetNaturalSize", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextImage; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextImage): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc usesParagraphAttributes*(this: WxRichTextImage): bool {.noSideEffect, 
    cdecl, importcpp: "UsesParagraphAttributes", header: "<wx/wx.h>".}
proc importFromXML*(this: var WxRichTextImage; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.cdecl, 
    importcpp: "ImportFromXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextImage; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextImage; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc isFloatable*(this: WxRichTextImage): bool {.noSideEffect, cdecl, 
    importcpp: "IsFloatable", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextImage): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc getImageCache*(this: WxRichTextImage): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetImageCache", header: "<wx/wx.h>".}
proc setImageCache*(this: var WxRichTextImage; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetImageCache", header: "<wx/wx.h>".}
proc resetImageCache*(this: var WxRichTextImage) {.cdecl, 
    importcpp: "ResetImageCache", header: "<wx/wx.h>".}
proc getImageBlock*(this: var WxRichTextImage): var WxRichTextImageBlock {.
    cdecl, importcpp: "GetImageBlock", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextImage; obj: WxRichTextImage) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextImage): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc loadImageCache*(this: var WxRichTextImage; dc: var WxDC; 
                     resetCache: bool = false; 
                     parentSize: WxSize = wxDefaultSize): bool {.cdecl, 
    importcpp: "LoadImageCache", header: "<wx/wx.h>".}
proc getOriginalImageSize*(this: WxRichTextImage): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetOriginalImageSize", header: "<wx/wx.h>".}
proc setOriginalImageSize*(this: var WxRichTextImage; sz: WxSize) {.cdecl, 
    importcpp: "SetOriginalImageSize", header: "<wx/wx.h>".}
discard "forward decl of wxRichTextCommand"
discard "forward decl of wxRichTextAction"
type 
  WxRichTextBuffer* {.importcpp: "wxRichTextBuffer", header: "<wx/wx.h>".} = object of WxRichTextParagraphLayoutBox
  

proc constructwxRichTextBuffer*(): WxRichTextBuffer {.cdecl, constructor, 
    importcpp: "wxRichTextBuffer(@)", header: "<wx/wx.h>".}
proc constructwxRichTextBuffer*(obj: WxRichTextBuffer): WxRichTextBuffer {.
    cdecl, constructor, importcpp: "wxRichTextBuffer(@)", header: "<wx/wx.h>".}
proc destroywxRichTextBuffer*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "#.~wxRichTextBuffer()", header: "<wx/wx.h>".}
proc getCommandProcessor*(this: WxRichTextBuffer): ptr WxCommandProcessor {.
    noSideEffect, cdecl, importcpp: "GetCommandProcessor", header: "<wx/wx.h>".}
proc setStyleSheet*(this: var WxRichTextBuffer; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: "<wx/wx.h>".}
proc getStyleSheet*(this: WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: "<wx/wx.h>".}
proc setStyleSheetAndNotify*(this: var WxRichTextBuffer; 
                             sheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "SetStyleSheetAndNotify", header: "<wx/wx.h>".}
proc pushStyleSheet*(this: var WxRichTextBuffer; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "PushStyleSheet", header: "<wx/wx.h>".}
proc popStyleSheet*(this: var WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    cdecl, importcpp: "PopStyleSheet", header: "<wx/wx.h>".}
proc getFontTable*(this: var WxRichTextBuffer): var WxRichTextFontTable {.cdecl, 
    importcpp: "GetFontTable", header: "<wx/wx.h>".}
proc getFontTable*(this: WxRichTextBuffer): WxRichTextFontTable {.noSideEffect, 
    cdecl, importcpp: "GetFontTable", header: "<wx/wx.h>".}
proc setFontTable*(this: var WxRichTextBuffer; table: WxRichTextFontTable) {.
    cdecl, importcpp: "SetFontTable", header: "<wx/wx.h>".}
proc setFontScale*(this: var WxRichTextBuffer; fontScale: cdouble) {.cdecl, 
    importcpp: "SetFontScale", header: "<wx/wx.h>".}
proc getFontScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetFontScale", header: "<wx/wx.h>".}
proc setDimensionScale*(this: var WxRichTextBuffer; dimScale: cdouble) {.cdecl, 
    importcpp: "SetDimensionScale", header: "<wx/wx.h>".}
proc getDimensionScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDimensionScale", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextBuffer) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc resetAndClearCommands*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ResetAndClearCommands", header: "<wx/wx.h>".}
proc loadFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: "<wx/wx.h>".}
proc saveFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: "<wx/wx.h>".}
proc loadFile*(this: var WxRichTextBuffer; stream: var WxInputStream; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: "<wx/wx.h>".}
proc saveFile*(this: var WxRichTextBuffer; stream: var WxOutputStream; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: "<wx/wx.h>".}
proc setHandlerFlags*(this: var WxRichTextBuffer; flags: cint) {.cdecl, 
    importcpp: "SetHandlerFlags", header: "<wx/wx.h>".}
proc getHandlerFlags*(this: WxRichTextBuffer): cint {.noSideEffect, cdecl, 
    importcpp: "GetHandlerFlags", header: "<wx/wx.h>".}
proc addParagraph*(this: var WxRichTextBuffer; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    cdecl, importcpp: "AddParagraph", header: "<wx/wx.h>".}
proc beginBatchUndo*(this: var WxRichTextBuffer; cmdName: WxString): bool {.
    cdecl, importcpp: "BeginBatchUndo", header: "<wx/wx.h>".}
proc endBatchUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndBatchUndo", header: "<wx/wx.h>".}
proc batchingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "BatchingUndo", header: "<wx/wx.h>".}
proc submitAction*(this: var WxRichTextBuffer; action: ptr WxRichTextAction): bool {.
    cdecl, importcpp: "SubmitAction", header: "<wx/wx.h>".}
proc getBatchedCommand*(this: WxRichTextBuffer): ptr WxRichTextCommand {.
    noSideEffect, cdecl, importcpp: "GetBatchedCommand", header: "<wx/wx.h>".}
proc beginSuppressUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginSuppressUndo", header: "<wx/wx.h>".}
proc endSuppressUndo*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndSuppressUndo", header: "<wx/wx.h>".}
proc suppressingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "SuppressingUndo", header: "<wx/wx.h>".}
proc copyToClipboard*(this: var WxRichTextBuffer; range: WxRichTextRange): bool {.
    cdecl, importcpp: "CopyToClipboard", header: "<wx/wx.h>".}
proc pasteFromClipboard*(this: var WxRichTextBuffer; position: clong): bool {.
    cdecl, importcpp: "PasteFromClipboard", header: "<wx/wx.h>".}
proc canPasteFromClipboard*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "CanPasteFromClipboard", header: "<wx/wx.h>".}
proc beginStyle*(this: var WxRichTextBuffer; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "BeginStyle", header: "<wx/wx.h>".}
proc endStyle*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndStyle", 
    header: "<wx/wx.h>".}
proc endAllStyles*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndAllStyles", header: "<wx/wx.h>".}
proc clearStyleStack*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ClearStyleStack", header: "<wx/wx.h>".}
proc getStyleStackSize*(this: WxRichTextBuffer): csize {.noSideEffect, cdecl, 
    importcpp: "GetStyleStackSize", header: "<wx/wx.h>".}
proc beginBold*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginBold", header: "<wx/wx.h>".}
proc endBold*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndBold", 
    header: "<wx/wx.h>".}
proc beginItalic*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginItalic", header: "<wx/wx.h>".}
proc endItalic*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndItalic", header: "<wx/wx.h>".}
proc beginUnderline*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "BeginUnderline", header: "<wx/wx.h>".}
proc endUnderline*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndUnderline", header: "<wx/wx.h>".}
proc beginFontSize*(this: var WxRichTextBuffer; pointSize: cint): bool {.cdecl, 
    importcpp: "BeginFontSize", header: "<wx/wx.h>".}
proc endFontSize*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndFontSize", header: "<wx/wx.h>".}
proc beginFont*(this: var WxRichTextBuffer; font: WxFont): bool {.cdecl, 
    importcpp: "BeginFont", header: "<wx/wx.h>".}
proc endFont*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndFont", 
    header: "<wx/wx.h>".}
proc beginTextColour*(this: var WxRichTextBuffer; colour: WxColour): bool {.
    cdecl, importcpp: "BeginTextColour", header: "<wx/wx.h>".}
proc endTextColour*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndTextColour", header: "<wx/wx.h>".}
proc beginAlignment*(this: var WxRichTextBuffer; alignment: WxTextAttrAlignment): bool {.
    cdecl, importcpp: "BeginAlignment", header: "<wx/wx.h>".}
proc endAlignment*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndAlignment", header: "<wx/wx.h>".}
proc beginLeftIndent*(this: var WxRichTextBuffer; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.cdecl, 
    importcpp: "BeginLeftIndent", header: "<wx/wx.h>".}
proc endLeftIndent*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndLeftIndent", header: "<wx/wx.h>".}
proc beginRightIndent*(this: var WxRichTextBuffer; rightIndent: cint): bool {.
    cdecl, importcpp: "BeginRightIndent", header: "<wx/wx.h>".}
proc endRightIndent*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndRightIndent", header: "<wx/wx.h>".}
proc beginParagraphSpacing*(this: var WxRichTextBuffer; before: cint; 
                            after: cint): bool {.cdecl, 
    importcpp: "BeginParagraphSpacing", header: "<wx/wx.h>".}
proc endParagraphSpacing*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndParagraphSpacing", header: "<wx/wx.h>".}
proc beginLineSpacing*(this: var WxRichTextBuffer; lineSpacing: cint): bool {.
    cdecl, importcpp: "BeginLineSpacing", header: "<wx/wx.h>".}
proc endLineSpacing*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndLineSpacing", header: "<wx/wx.h>".}
proc beginNumberedBullet*(this: var WxRichTextBuffer; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint; bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_ARABIC or
    wxTEXT_ATTR_BULLET_STYLE_PERIOD): bool {.cdecl, 
    importcpp: "BeginNumberedBullet", header: "<wx/wx.h>".}
proc endNumberedBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndNumberedBullet", header: "<wx/wx.h>".}
proc beginSymbolBullet*(this: var WxRichTextBuffer; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint; 
                        bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_SYMBOL): bool {.
    cdecl, importcpp: "BeginSymbolBullet", header: "<wx/wx.h>".}
proc endSymbolBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndSymbolBullet", header: "<wx/wx.h>".}
proc beginStandardBullet*(this: var WxRichTextBuffer; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint; 
                          bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_STANDARD): bool {.
    cdecl, importcpp: "BeginStandardBullet", header: "<wx/wx.h>".}
proc endStandardBullet*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndStandardBullet", header: "<wx/wx.h>".}
proc beginCharacterStyle*(this: var WxRichTextBuffer; characterStyle: WxString): bool {.
    cdecl, importcpp: "BeginCharacterStyle", header: "<wx/wx.h>".}
proc endCharacterStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndCharacterStyle", header: "<wx/wx.h>".}
proc beginParagraphStyle*(this: var WxRichTextBuffer; paragraphStyle: WxString): bool {.
    cdecl, importcpp: "BeginParagraphStyle", header: "<wx/wx.h>".}
proc endParagraphStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndParagraphStyle", header: "<wx/wx.h>".}
proc beginListStyle*(this: var WxRichTextBuffer; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.cdecl, 
    importcpp: "BeginListStyle", header: "<wx/wx.h>".}
proc endListStyle*(this: var WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EndListStyle", header: "<wx/wx.h>".}
proc beginURL*(this: var WxRichTextBuffer; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "BeginURL", header: "<wx/wx.h>".}
proc endURL*(this: var WxRichTextBuffer): bool {.cdecl, importcpp: "EndURL", 
    header: "<wx/wx.h>".}
proc addEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler): bool {.
    cdecl, importcpp: "AddEventHandler", header: "<wx/wx.h>".}
proc removeEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler; 
                         deleteHandler: bool = false): bool {.cdecl, 
    importcpp: "RemoveEventHandler", header: "<wx/wx.h>".}
proc clearEventHandlers*(this: var WxRichTextBuffer) {.cdecl, 
    importcpp: "ClearEventHandlers", header: "<wx/wx.h>".}
proc sendEvent*(this: var WxRichTextBuffer; event: var WxEvent; 
                sendToAll: bool = true): bool {.cdecl, importcpp: "SendEvent", 
    header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextBuffer; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextBuffer; obj: WxRichTextBuffer) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextBuffer): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc insertParagraphsWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertParagraphsWithUndo", header: "<wx/wx.h>".}
proc insertTextWithUndo*(this: var WxRichTextBuffer; pos: clong; text: WxString; 
                         ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertTextWithUndo", header: "<wx/wx.h>".}
proc insertNewlineWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "InsertNewlineWithUndo", header: "<wx/wx.h>".}
proc insertImageWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint = 0; 
                          textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    cdecl, importcpp: "InsertImageWithUndo", header: "<wx/wx.h>".}
proc insertObjectWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint): ptr WxRichTextObject {.
    cdecl, importcpp: "InsertObjectWithUndo", header: "<wx/wx.h>".}
proc deleteRangeWithUndo*(this: var WxRichTextBuffer; range: WxRichTextRange; 
                          ctrl: ptr WxRichTextCtrl): bool {.cdecl, 
    importcpp: "DeleteRangeWithUndo", header: "<wx/wx.h>".}
proc modify*(this: var WxRichTextBuffer; modify: bool = true) {.cdecl, 
    importcpp: "Modify", header: "<wx/wx.h>".}
proc isModified*(this: WxRichTextBuffer): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: "<wx/wx.h>".}
proc dump*(this: var WxRichTextBuffer) {.cdecl, importcpp: "Dump", 
    header: "<wx/wx.h>".}
proc dump*(this: var WxRichTextBuffer; stream: var WxTextOutputStream) {.cdecl, 
    importcpp: "Dump", header: "<wx/wx.h>".}
proc getHandlers*(): var WxList {.cdecl, importcpp: "wxRichTextBuffer::GetHandlers(@)", 
                                  header: "<wx/wx.h>".}
proc addHandler*(handler: ptr WxRichTextFileHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::AddHandler(@)", header: "<wx/wx.h>".}
proc insertHandler*(handler: ptr WxRichTextFileHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::InsertHandler(@)", header: "<wx/wx.h>".}
proc removeHandler*(name: WxString): bool {.cdecl, 
    importcpp: "wxRichTextBuffer::RemoveHandler(@)", header: "<wx/wx.h>".}
proc findHandler*(name: WxString): ptr WxRichTextFileHandler {.cdecl, 
    importcpp: "wxRichTextBuffer::FindHandler(@)", header: "<wx/wx.h>".}
proc findHandler*(extension: WxString; imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandler(@)", header: "<wx/wx.h>".}
proc findHandlerFilenameOrType*(filename: WxString; 
                                imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandlerFilenameOrType(@)", 
    header: "<wx/wx.h>".}
proc findHandler*(imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    cdecl, importcpp: "wxRichTextBuffer::FindHandler(@)", header: "<wx/wx.h>".}
proc getExtWildcard*(combine: bool = false; save: bool = false; 
                     types: ptr WxArrayInt = nil): WxString {.cdecl, 
    importcpp: "wxRichTextBuffer::GetExtWildcard(@)", header: "<wx/wx.h>".}
proc cleanUpHandlers*() {.cdecl, 
                          importcpp: "wxRichTextBuffer::CleanUpHandlers(@)", 
                          header: "<wx/wx.h>".}
proc initStandardHandlers*() {.cdecl, importcpp: "wxRichTextBuffer::InitStandardHandlers(@)", 
                               header: "<wx/wx.h>".}
proc getDrawingHandlers*(): var WxList {.cdecl, 
    importcpp: "wxRichTextBuffer::GetDrawingHandlers(@)", header: "<wx/wx.h>".}
proc addDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::AddDrawingHandler(@)", header: "<wx/wx.h>".}
proc insertDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.cdecl, 
    importcpp: "wxRichTextBuffer::InsertDrawingHandler(@)", header: "<wx/wx.h>".}
proc removeDrawingHandler*(name: WxString): bool {.cdecl, 
    importcpp: "wxRichTextBuffer::RemoveDrawingHandler(@)", header: "<wx/wx.h>".}
proc findDrawingHandler*(name: WxString): ptr WxRichTextDrawingHandler {.cdecl, 
    importcpp: "wxRichTextBuffer::FindDrawingHandler(@)", header: "<wx/wx.h>".}
proc cleanUpDrawingHandlers*() {.cdecl, importcpp: "wxRichTextBuffer::CleanUpDrawingHandlers(@)", 
                                 header: "<wx/wx.h>".}
proc getFieldTypes*(): var WxRichTextFieldTypeHashMap {.cdecl, 
    importcpp: "wxRichTextBuffer::GetFieldTypes(@)", header: "<wx/wx.h>".}
proc addFieldType*(fieldType: ptr WxRichTextFieldType) {.cdecl, 
    importcpp: "wxRichTextBuffer::AddFieldType(@)", header: "<wx/wx.h>".}
proc removeFieldType*(name: WxString): bool {.cdecl, 
    importcpp: "wxRichTextBuffer::RemoveFieldType(@)", header: "<wx/wx.h>".}
proc findFieldType*(name: WxString): ptr WxRichTextFieldType {.cdecl, 
    importcpp: "wxRichTextBuffer::FindFieldType(@)", header: "<wx/wx.h>".}
proc cleanUpFieldTypes*() {.cdecl, importcpp: "wxRichTextBuffer::CleanUpFieldTypes(@)", 
                            header: "<wx/wx.h>".}
proc getRenderer*(): ptr WxRichTextRenderer {.cdecl, 
    importcpp: "wxRichTextBuffer::GetRenderer(@)", header: "<wx/wx.h>".}
proc setRenderer*(renderer: ptr WxRichTextRenderer) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetRenderer(@)", header: "<wx/wx.h>".}
proc getBulletRightMargin*(): cint {.cdecl, importcpp: "wxRichTextBuffer::GetBulletRightMargin(@)", 
                                     header: "<wx/wx.h>".}
proc setBulletRightMargin*(margin: cint) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetBulletRightMargin(@)", header: "<wx/wx.h>".}
proc getBulletProportion*(): cfloat {.cdecl, importcpp: "wxRichTextBuffer::GetBulletProportion(@)", 
                                      header: "<wx/wx.h>".}
proc setBulletProportion*(prop: cfloat) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetBulletProportion(@)", header: "<wx/wx.h>".}
proc getScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScale", header: "<wx/wx.h>".}
proc setScale*(this: var WxRichTextBuffer; scale: cdouble) {.cdecl, 
    importcpp: "SetScale", header: "<wx/wx.h>".}
proc setFloatingLayoutMode*(mode: bool) {.cdecl, 
    importcpp: "wxRichTextBuffer::SetFloatingLayoutMode(@)", header: "<wx/wx.h>".}
proc getFloatingLayoutMode*(): bool {.cdecl, importcpp: "wxRichTextBuffer::GetFloatingLayoutMode(@)", 
                                      header: "<wx/wx.h>".}

type 
  WxRichTextCell* {.importcpp: "wxRichTextCell", header: "<wx/wx.h>".} = object of WxRichTextBox
  

proc constructwxRichTextCell*(parent: ptr WxRichTextObject = nil): WxRichTextCell {.
    cdecl, constructor, importcpp: "wxRichTextCell(@)", header: "<wx/wx.h>".}
proc constructwxRichTextCell*(obj: WxRichTextCell): WxRichTextCell {.cdecl, 
    constructor, importcpp: "wxRichTextCell(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextCell; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextCell; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc adjustAttributes*(this: var WxRichTextCell; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextCell): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextCell): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextCell; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextCell): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc getColSpan*(this: WxRichTextCell): cint {.noSideEffect, cdecl, 
    importcpp: "GetColSpan", header: "<wx/wx.h>".}
proc setColSpan*(this: var WxRichTextCell; span: clong) {.cdecl, 
    importcpp: "SetColSpan", header: "<wx/wx.h>".}
proc getRowSpan*(this: WxRichTextCell): cint {.noSideEffect, cdecl, 
    importcpp: "GetRowSpan", header: "<wx/wx.h>".}
proc setRowSpan*(this: var WxRichTextCell; span: clong) {.cdecl, 
    importcpp: "SetRowSpan", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextCell): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextCell; obj: WxRichTextCell) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}

wx_Define_Array_Ptr(ptr wxRichTextObject, wxRichTextObjectPtrArray)
type 
  WxRichTextObjectPtrArrayArray* {.importcpp: "wxRichTextObjectPtrArrayArray", 
                                   header: "<wx/wx.h>".} = object of WxArrayPtrVoid
  

proc constructwxRichTextObjectPtrArrayArray*(): WxRichTextObjectPtrArrayArray {.
    cdecl, constructor, importcpp: "wxRichTextObjectPtrArrayArray(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextObjectPtrArrayArray*(src: WxRichTextObjectPtrArrayArray): WxRichTextObjectPtrArrayArray {.
    cdecl, constructor, importcpp: "wxRichTextObjectPtrArrayArray(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextObjectPtrArrayArray*(
    this: var WxRichTextObjectPtrArrayArray) {.cdecl, 
    importcpp: "#.~wxRichTextObjectPtrArrayArray()", header: "<wx/wx.h>".}
proc alloc*(this: var WxRichTextObjectPtrArrayArray; count: csize) {.cdecl, 
    importcpp: "Alloc", header: "<wx/wx.h>".}
proc reserve*(this: var WxRichTextObjectPtrArrayArray; count: csize) {.cdecl, 
    importcpp: "reserve", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, 
    cdecl, importcpp: "GetCount", header: "<wx/wx.h>".}
proc size*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, cdecl, 
    importcpp: "size", header: "<wx/wx.h>".}
proc isEmpty*(this: WxRichTextObjectPtrArrayArray): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc empty*(this: WxRichTextObjectPtrArrayArray): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc count*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc shrink*(this: var WxRichTextObjectPtrArrayArray) {.cdecl, 
    importcpp: "Shrink", header: "<wx/wx.h>".}
proc `[]`*(this: WxRichTextObjectPtrArrayArray; uiIndex: csize): var WxRichTextObjectPtrArray {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc item*(this: WxRichTextObjectPtrArrayArray; uiIndex: csize): var WxRichTextObjectPtrArray {.
    noSideEffect, cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc last*(this: WxRichTextObjectPtrArrayArray): var WxRichTextObjectPtrArray {.
    noSideEffect, cdecl, importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxRichTextObjectPtrArrayArray; 
            lItem: WxRichTextObjectPtrArray; bFromEnd: bool = false): cint {.
    noSideEffect, cdecl, importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxRichTextObjectPtrArrayArray; 
          pItem: ptr WxRichTextObjectPtrArray) {.cdecl, importcpp: "Add", 
    header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextObjectPtrArrayArray; 
             lItem: WxRichTextObjectPtrArray; uiIndex: csize; nInsert: csize = 1) {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc insert*(this: var WxRichTextObjectPtrArrayArray; 
             pItem: ptr WxRichTextObjectPtrArray; uiIndex: csize) {.cdecl, 
    importcpp: "Insert", header: "<wx/wx.h>".}
proc empty*(this: var WxRichTextObjectPtrArrayArray) {.cdecl, 
    importcpp: "Empty", header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextObjectPtrArrayArray) {.cdecl, 
    importcpp: "Clear", header: "<wx/wx.h>".}
proc detach*(this: var WxRichTextObjectPtrArrayArray; uiIndex: csize): ptr WxRichTextObjectPtrArray {.
    cdecl, importcpp: "Detach", header: "<wx/wx.h>".}
proc removeAt*(this: var WxRichTextObjectPtrArrayArray; uiIndex: csize) {.cdecl, 
    importcpp: "RemoveAt", header: "<wx/wx.h>".}
type 
  WxRichTextTable* {.importcpp: "wxRichTextTable", header: "<wx/wx.h>".} = object of WxRichTextBox
  

proc constructwxRichTextTable*(parent: ptr WxRichTextObject = nil): WxRichTextTable {.
    cdecl, constructor, importcpp: "wxRichTextTable(@)", header: "<wx/wx.h>".}
proc constructwxRichTextTable*(obj: WxRichTextTable): WxRichTextTable {.cdecl, 
    constructor, importcpp: "wxRichTextTable(@)", header: "<wx/wx.h>".}
proc draw*(this: var WxRichTextTable; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.cdecl, importcpp: "Draw", header: "<wx/wx.h>".}
proc hitTest*(this: var WxRichTextTable; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc adjustAttributes*(this: var WxRichTextTable; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.cdecl, 
    importcpp: "AdjustAttributes", header: "<wx/wx.h>".}
proc getXMLNodeName*(this: WxRichTextTable): WxString {.noSideEffect, cdecl, 
    importcpp: "GetXMLNodeName", header: "<wx/wx.h>".}
proc layout*(this: var WxRichTextTable; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.cdecl, 
    importcpp: "Layout", header: "<wx/wx.h>".}
proc getRangeSize*(this: WxRichTextTable; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    cdecl, importcpp: "GetRangeSize", header: "<wx/wx.h>".}
proc deleteRange*(this: var WxRichTextTable; range: WxRichTextRange): bool {.
    cdecl, importcpp: "DeleteRange", header: "<wx/wx.h>".}
proc getTextForRange*(this: WxRichTextTable; range: WxRichTextRange): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextForRange", header: "<wx/wx.h>".}
proc importFromXML*(this: var WxRichTextTable; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.cdecl, 
    importcpp: "ImportFromXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextTable; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc exportXML*(this: var WxRichTextTable; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.cdecl, 
    importcpp: "ExportXML", header: "<wx/wx.h>".}
proc findPosition*(this: var WxRichTextTable; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    cdecl, importcpp: "FindPosition", header: "<wx/wx.h>".}
proc calculateRange*(this: var WxRichTextTable; start: clong; `end`: var clong) {.
    cdecl, importcpp: "CalculateRange", header: "<wx/wx.h>".}
proc handlesChildSelections*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "HandlesChildSelections", header: "<wx/wx.h>".}
proc getSelection*(this: WxRichTextTable; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextTable; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: WxRichTextTable): WxString {.noSideEffect, 
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxRichTextTable): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
proc getCells*(this: WxRichTextTable): WxRichTextObjectPtrArrayArray {.
    noSideEffect, cdecl, importcpp: "GetCells", header: "<wx/wx.h>".}
proc getCells*(this: var WxRichTextTable): var WxRichTextObjectPtrArrayArray {.
    cdecl, importcpp: "GetCells", header: "<wx/wx.h>".}
proc getRowCount*(this: WxRichTextTable): cint {.noSideEffect, cdecl, 
    importcpp: "GetRowCount", header: "<wx/wx.h>".}
proc setRowCount*(this: var WxRichTextTable; count: cint) {.cdecl, 
    importcpp: "SetRowCount", header: "<wx/wx.h>".}
proc getColumnCount*(this: WxRichTextTable): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "<wx/wx.h>".}
proc setColumnCount*(this: var WxRichTextTable; count: cint) {.cdecl, 
    importcpp: "SetColumnCount", header: "<wx/wx.h>".}
proc getCell*(this: WxRichTextTable; row: cint; col: cint): ptr WxRichTextCell {.
    noSideEffect, cdecl, importcpp: "GetCell", header: "<wx/wx.h>".}
proc getCell*(this: WxRichTextTable; pos: clong): ptr WxRichTextCell {.
    noSideEffect, cdecl, importcpp: "GetCell", header: "<wx/wx.h>".}
proc getCellRowColumnPosition*(this: WxRichTextTable; pos: clong; row: var cint; 
                               col: var cint): bool {.noSideEffect, cdecl, 
    importcpp: "GetCellRowColumnPosition", header: "<wx/wx.h>".}
proc getFocusedCell*(this: WxRichTextTable): WxPosition {.noSideEffect, cdecl, 
    importcpp: "GetFocusedCell", header: "<wx/wx.h>".}
proc clearTable*(this: var WxRichTextTable) {.cdecl, importcpp: "ClearTable", 
    header: "<wx/wx.h>".}
proc createTable*(this: var WxRichTextTable; rows: cint; cols: cint): bool {.
    cdecl, importcpp: "CreateTable", header: "<wx/wx.h>".}
proc setCellStyle*(this: var WxRichTextTable; selection: WxRichTextSelection; 
                   style: WxRichTextAttr; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "SetCellStyle", header: "<wx/wx.h>".}
proc deleteRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1): bool {.
    cdecl, importcpp: "DeleteRows", header: "<wx/wx.h>".}
proc deleteColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1): bool {.
    cdecl, importcpp: "DeleteColumns", header: "<wx/wx.h>".}
proc addRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1; 
              attr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "AddRows", header: "<wx/wx.h>".}
proc addColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1; 
                 attr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "AddColumns", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextTable): ptr WxRichTextObject {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextTable; obj: WxRichTextTable) {.cdecl, 
    importcpp: "Copy", header: "<wx/wx.h>".}

type 
  WxRichTextTableBlock* {.importcpp: "wxRichTextTableBlock", header: "<wx/wx.h>".} = object 
    mColStart* {.importc: "m_colStart".}: cint
    mColEnd* {.importc: "m_colEnd".}: cint
    mRowStart* {.importc: "m_rowStart".}: cint
    mRowEnd* {.importc: "m_rowEnd".}: cint


proc constructwxRichTextTableBlock*(): WxRichTextTableBlock {.cdecl, 
    constructor, importcpp: "wxRichTextTableBlock(@)", header: "<wx/wx.h>".}
proc constructwxRichTextTableBlock*(colStart: cint; colEnd: cint; 
                                    rowStart: cint; rowEnd: cint): WxRichTextTableBlock {.
    cdecl, constructor, importcpp: "wxRichTextTableBlock(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextTableBlock*(`block`: WxRichTextTableBlock): WxRichTextTableBlock {.
    cdecl, constructor, importcpp: "wxRichTextTableBlock(@)", 
    header: "<wx/wx.h>".}
proc init*(this: var WxRichTextTableBlock) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock) {.
    cdecl, importcpp: "Copy", header: "<wx/wx.h>".}
proc `==`*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock): bool {.
    cdecl, importcpp: "(# == #)", header: "<wx/wx.h>".}
proc computeBlockForSelection*(this: var WxRichTextTableBlock; 
                               table: ptr WxRichTextTable; 
                               ctrl: ptr WxRichTextCtrl; 
                               requireCellSelection: bool = true): bool {.cdecl, 
    importcpp: "ComputeBlockForSelection", header: "<wx/wx.h>".}
proc isWholeTable*(this: WxRichTextTableBlock; table: ptr WxRichTextTable): bool {.
    noSideEffect, cdecl, importcpp: "IsWholeTable", header: "<wx/wx.h>".}
proc getFocusedCell*(ctrl: ptr WxRichTextCtrl): ptr WxRichTextCell {.cdecl, 
    importcpp: "wxRichTextTableBlock::GetFocusedCell(@)", header: "<wx/wx.h>".}
proc colStart*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "ColStart", header: "<wx/wx.h>".}
proc colStart*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "ColStart", header: "<wx/wx.h>".}
proc colEnd*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "ColEnd", header: "<wx/wx.h>".}
proc colEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "ColEnd", header: "<wx/wx.h>".}
proc rowStart*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "RowStart", header: "<wx/wx.h>".}
proc rowStart*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "RowStart", header: "<wx/wx.h>".}
proc rowEnd*(this: var WxRichTextTableBlock): var cint {.cdecl, 
    importcpp: "RowEnd", header: "<wx/wx.h>".}
proc rowEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, cdecl, 
    importcpp: "RowEnd", header: "<wx/wx.h>".}

type 
  WxRichTextCommandId* {.size: sizeof(cint), 
                         importcpp: "wxRichTextAction::wxRichTextCommandId", 
                         header: "<wx/wx.h>".} = enum 
    wxRICHTEXT_INSERT, wxRICHTEXT_DELETE, wxRICHTEXT_CHANGE_ATTRIBUTES, 
    wxRICHTEXT_CHANGE_STYLE, wxRICHTEXT_CHANGE_PROPERTIES, 
    wxRICHTEXT_CHANGE_OBJECT



type 
  WxRichTextObjectAddress* {.importcpp: "wxRichTextObjectAddress", 
                             header: "<wx/wx.h>".} = object 
  

proc constructwxRichTextObjectAddress*(topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
                                       obj: ptr WxRichTextObject): WxRichTextObjectAddress {.
    cdecl, constructor, importcpp: "wxRichTextObjectAddress(@)", 
    header: "<wx/wx.h>".}
proc constructwxRichTextObjectAddress*(): WxRichTextObjectAddress {.cdecl, 
    constructor, importcpp: "wxRichTextObjectAddress(@)", header: "<wx/wx.h>".}
proc constructwxRichTextObjectAddress*(address: WxRichTextObjectAddress): WxRichTextObjectAddress {.
    cdecl, constructor, importcpp: "wxRichTextObjectAddress(@)", 
    header: "<wx/wx.h>".}
proc init*(this: var WxRichTextObjectAddress) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextObjectAddress; address: WxRichTextObjectAddress) {.
    cdecl, importcpp: "Copy", header: "<wx/wx.h>".}
proc getObject*(this: WxRichTextObjectAddress; 
                topLevelContainer: ptr WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "<wx/wx.h>".}
proc create*(this: var WxRichTextObjectAddress; 
             topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
             obj: ptr WxRichTextObject): bool {.cdecl, importcpp: "Create", 
    header: "<wx/wx.h>".}
proc getAddress*(this: var WxRichTextObjectAddress): var WxArrayInt {.cdecl, 
    importcpp: "GetAddress", header: "<wx/wx.h>".}
proc getAddress*(this: WxRichTextObjectAddress): WxArrayInt {.noSideEffect, 
    cdecl, importcpp: "GetAddress", header: "<wx/wx.h>".}
proc setAddress*(this: var WxRichTextObjectAddress; address: WxArrayInt) {.
    cdecl, importcpp: "SetAddress", header: "<wx/wx.h>".}
discard "forward decl of wxRichTextAction"
type 
  WxRichTextCommand* {.importcpp: "wxRichTextCommand", header: "<wx/wx.h>".} = object of WxCommand
  

proc constructwxRichTextCommand*(name: WxString; id: WxRichTextCommandId; 
                                 buffer: ptr WxRichTextBuffer; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 ctrl: ptr WxRichTextCtrl; 
                                 ignoreFirstTime: bool = false): WxRichTextCommand {.
    cdecl, constructor, importcpp: "wxRichTextCommand(@)", header: "<wx/wx.h>".}
proc constructwxRichTextCommand*(name: WxString): WxRichTextCommand {.cdecl, 
    constructor, importcpp: "wxRichTextCommand(@)", header: "<wx/wx.h>".}
proc destroywxRichTextCommand*(this: var WxRichTextCommand) {.cdecl, 
    importcpp: "#.~wxRichTextCommand()", header: "<wx/wx.h>".}
proc `do`*(this: var WxRichTextCommand): bool {.cdecl, importcpp: "Do", 
    header: "<wx/wx.h>".}
proc undo*(this: var WxRichTextCommand): bool {.cdecl, importcpp: "Undo", 
    header: "<wx/wx.h>".}
proc addAction*(this: var WxRichTextCommand; action: ptr WxRichTextAction) {.
    cdecl, importcpp: "AddAction", header: "<wx/wx.h>".}
proc clearActions*(this: var WxRichTextCommand) {.cdecl, 
    importcpp: "ClearActions", header: "<wx/wx.h>".}
proc getActions*(this: var WxRichTextCommand): var WxList {.cdecl, 
    importcpp: "GetActions", header: "<wx/wx.h>".}

type 
  WxRichTextAction* {.importcpp: "wxRichTextAction", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextAction*(cmd: ptr WxRichTextCommand; name: WxString; 
                                id: WxRichTextCommandId; 
                                buffer: ptr WxRichTextBuffer; 
                                container: ptr WxRichTextParagraphLayoutBox; 
                                ctrl: ptr WxRichTextCtrl; 
                                ignoreFirstTime: bool = false): WxRichTextAction {.
    cdecl, constructor, importcpp: "wxRichTextAction(@)", header: "<wx/wx.h>".}
proc destroywxRichTextAction*(this: var WxRichTextAction) {.cdecl, 
    importcpp: "#.~wxRichTextAction()", header: "<wx/wx.h>".}
proc `do`*(this: var WxRichTextAction): bool {.cdecl, importcpp: "Do", 
    header: "<wx/wx.h>".}
proc undo*(this: var WxRichTextAction): bool {.cdecl, importcpp: "Undo", 
    header: "<wx/wx.h>".}
proc updateAppearance*(this: var WxRichTextAction; caretPosition: clong; 
                       sendUpdateEvent: bool = false; 
                       optimizationLineCharPositions: ptr WxArrayInt = nil; 
                       optimizationLineYPositions: ptr WxArrayInt = nil; 
                       isDoCmd: bool = true) {.cdecl, 
    importcpp: "UpdateAppearance", header: "<wx/wx.h>".}
proc applyParagraphs*(this: var WxRichTextAction; 
                      fragment: WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "ApplyParagraphs", header: "<wx/wx.h>".}
proc getNewParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "GetNewParagraphs", header: "<wx/wx.h>".}
proc getOldParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "GetOldParagraphs", header: "<wx/wx.h>".}
proc getAttributes*(this: var WxRichTextAction): var WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: "<wx/wx.h>".}
proc getObject*(this: WxRichTextAction): ptr WxRichTextObject {.noSideEffect, 
    cdecl, importcpp: "GetObject", header: "<wx/wx.h>".}
proc storeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.
    cdecl, importcpp: "StoreObject", header: "<wx/wx.h>".}
proc setObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetObject", header: "<wx/wx.h>".}
proc makeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "MakeObject", header: "<wx/wx.h>".}
proc setOldAndNewObjects*(this: var WxRichTextAction; 
                          oldObj: ptr WxRichTextObject; 
                          newObj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetOldAndNewObjects", header: "<wx/wx.h>".}
proc calculateRefreshOptimizations*(this: var WxRichTextAction; 
    optimizationLineCharPositions: var WxArrayInt; 
                                    optimizationLineYPositions: var WxArrayInt) {.
    cdecl, importcpp: "CalculateRefreshOptimizations", header: "<wx/wx.h>".}
proc setPosition*(this: var WxRichTextAction; pos: clong) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc getPosition*(this: WxRichTextAction): clong {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextAction; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextAction): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc getContainerAddress*(this: var WxRichTextAction): var WxRichTextObjectAddress {.
    cdecl, importcpp: "GetContainerAddress", header: "<wx/wx.h>".}
proc getContainerAddress*(this: WxRichTextAction): WxRichTextObjectAddress {.
    noSideEffect, cdecl, importcpp: "GetContainerAddress", header: "<wx/wx.h>".}
proc setContainerAddress*(this: var WxRichTextAction; 
                          address: WxRichTextObjectAddress) {.cdecl, 
    importcpp: "SetContainerAddress", header: "<wx/wx.h>".}
proc setContainerAddress*(this: var WxRichTextAction; 
                          container: ptr WxRichTextParagraphLayoutBox; 
                          obj: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetContainerAddress", header: "<wx/wx.h>".}
proc getContainer*(this: WxRichTextAction): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: "<wx/wx.h>".}
proc getName*(this: WxRichTextAction): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc setIgnoreFirstTime*(this: var WxRichTextAction; b: bool) {.cdecl, 
    importcpp: "SetIgnoreFirstTime", header: "<wx/wx.h>".}
proc getIgnoreFirstTime*(this: WxRichTextAction): bool {.noSideEffect, cdecl, 
    importcpp: "GetIgnoreFirstTime", header: "<wx/wx.h>".}

const 
  wxRICHTEXT_HANDLER_INCLUDE_STYLESHEET* = 0x00000001


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_MEMORY* = 0x00000010


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_FILES* = 0x00000020


const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_BASE64* = 0x00000040


const 
  wxRICHTEXT_HANDLER_NO_HEADER_FOOTER* = 0x00000080


const 
  wxRICHTEXT_HANDLER_CONVERT_FACENAMES* = 0x00000100


type 
  WxRichTextFileHandler* {.importcpp: "wxRichTextFileHandler", 
                           header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextFileHandler*(name: WxString = wxEmptyString; 
                                     ext: WxString = wxEmptyString; 
                                     `type`: cint = 0): WxRichTextFileHandler {.
    cdecl, constructor, importcpp: "wxRichTextFileHandler(@)", 
    header: "<wx/wx.h>".}
proc loadFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               stream: var WxInputStream): bool {.cdecl, importcpp: "LoadFile", 
    header: "<wx/wx.h>".}
proc saveFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               stream: var WxOutputStream): bool {.cdecl, importcpp: "SaveFile", 
    header: "<wx/wx.h>".}
proc loadFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.cdecl, importcpp: "LoadFile", 
    header: "<wx/wx.h>".}
proc saveFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.cdecl, importcpp: "SaveFile", 
    header: "<wx/wx.h>".}
proc canHandle*(this: WxRichTextFileHandler; filename: WxString): bool {.
    noSideEffect, cdecl, importcpp: "CanHandle", header: "<wx/wx.h>".}
proc canSave*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: "<wx/wx.h>".}
proc canLoad*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: "<wx/wx.h>".}
proc isVisible*(this: WxRichTextFileHandler): bool {.noSideEffect, cdecl, 
    importcpp: "IsVisible", header: "<wx/wx.h>".}
proc setVisible*(this: var WxRichTextFileHandler; visible: bool) {.cdecl, 
    importcpp: "SetVisible", header: "<wx/wx.h>".}
proc setName*(this: var WxRichTextFileHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc setExtension*(this: var WxRichTextFileHandler; ext: WxString) {.cdecl, 
    importcpp: "SetExtension", header: "<wx/wx.h>".}
proc getExtension*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetExtension", header: "<wx/wx.h>".}
proc setType*(this: var WxRichTextFileHandler; `type`: cint) {.cdecl, 
    importcpp: "SetType", header: "<wx/wx.h>".}
proc getType*(this: WxRichTextFileHandler): cint {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "<wx/wx.h>".}
proc setFlags*(this: var WxRichTextFileHandler; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: "<wx/wx.h>".}
proc getFlags*(this: WxRichTextFileHandler): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "<wx/wx.h>".}
proc setEncoding*(this: var WxRichTextFileHandler; encoding: WxString) {.cdecl, 
    importcpp: "SetEncoding", header: "<wx/wx.h>".}
proc getEncoding*(this: WxRichTextFileHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetEncoding", header: "<wx/wx.h>".}

type 
  WxRichTextPlainTextHandler* {.importcpp: "wxRichTextPlainTextHandler", 
                                header: "<wx/wx.h>".} = object of WxRichTextFileHandler
  

proc constructwxRichTextPlainTextHandler*(name: WxString = wxT("Text"); 
    ext: WxString = wxT("txt"); 
    `type`: WxRichTextFileType = wxRICHTEXT_TYPE_TEXT): WxRichTextPlainTextHandler {.
    cdecl, constructor, importcpp: "wxRichTextPlainTextHandler(@)", 
    header: "<wx/wx.h>".}
proc canSave*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: "<wx/wx.h>".}
proc canLoad*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: "<wx/wx.h>".}

type 
  WxRichTextDrawingHandler* {.importcpp: "wxRichTextDrawingHandler", 
                              header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextDrawingHandler*(name: WxString = wxEmptyString): WxRichTextDrawingHandler {.
    cdecl, constructor, importcpp: "wxRichTextDrawingHandler(@)", 
    header: "<wx/wx.h>".}
proc hasVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    cdecl, importcpp: "HasVirtualAttributes", header: "<wx/wx.h>".}
proc getVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualAttributes", header: "<wx/wx.h>".}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingHandler; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: "<wx/wx.h>".}
proc getVirtualSubobjectAttributes*(this: WxRichTextDrawingHandler; 
                                    obj: ptr WxRichTextObject; 
                                    positions: var WxArrayInt; 
                                    attributes: var WxRichTextAttrArray): cint {.
    noSideEffect, cdecl, importcpp: "GetVirtualSubobjectAttributes", 
    header: "<wx/wx.h>".}
proc hasVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, cdecl, 
    importcpp: "HasVirtualText", header: "<wx/wx.h>".}
proc getVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, cdecl, importcpp: "GetVirtualText", header: "<wx/wx.h>".}
proc setName*(this: var WxRichTextDrawingHandler; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxRichTextDrawingHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}

type 
  WxRichTextBufferDataObject* {.importcpp: "wxRichTextBufferDataObject", 
                                header: "<wx/wx.h>".} = object of WxDataObjectSimple
  

proc constructwxRichTextBufferDataObject*(
    richTextBuffer: ptr WxRichTextBuffer = nil): WxRichTextBufferDataObject {.
    cdecl, constructor, importcpp: "wxRichTextBufferDataObject(@)", 
    header: "<wx/wx.h>".}
proc destroywxRichTextBufferDataObject*(this: var WxRichTextBufferDataObject) {.
    cdecl, importcpp: "#.~wxRichTextBufferDataObject()", header: "<wx/wx.h>".}
proc getRichTextBuffer*(this: var WxRichTextBufferDataObject): ptr WxRichTextBuffer {.
    cdecl, importcpp: "GetRichTextBuffer", header: "<wx/wx.h>".}
proc getRichTextBufferFormatId*(): ptr WxChar {.cdecl, 
    importcpp: "wxRichTextBufferDataObject::GetRichTextBufferFormatId(@)", 
    header: "<wx/wx.h>".}
proc getPreferredFormat*(this: WxRichTextBufferDataObject; dir: Direction): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: "<wx/wx.h>".}
proc getDataSize*(this: WxRichTextBufferDataObject): csize {.noSideEffect, 
    cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxRichTextBufferDataObject; pBuf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: "<wx/wx.h>".}
proc setData*(this: var WxRichTextBufferDataObject; len: csize; buf: pointer): bool {.
    cdecl, importcpp: "SetData", header: "<wx/wx.h>".}
proc getDataSize*(this: WxRichTextBufferDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: "<wx/wx.h>".}
proc getDataHere*(this: WxRichTextBufferDataObject; a3: WxDataFormat; 
                  buf: pointer): bool {.noSideEffect, cdecl, 
                                        importcpp: "GetDataHere", 
                                        header: "<wx/wx.h>".}
proc setData*(this: var WxRichTextBufferDataObject; a3: WxDataFormat; 
              len: csize; buf: pointer): bool {.cdecl, importcpp: "SetData", 
    header: "<wx/wx.h>".}

type 
  WxRichTextRenderer* {.importcpp: "wxRichTextRenderer", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxRichTextRenderer*(): WxRichTextRenderer {.cdecl, constructor, 
    importcpp: "wxRichTextRenderer(@)", header: "<wx/wx.h>".}
proc destroywxRichTextRenderer*(this: var WxRichTextRenderer) {.cdecl, 
    importcpp: "#.~wxRichTextRenderer()", header: "<wx/wx.h>".}
proc drawStandardBullet*(this: var WxRichTextRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawStandardBullet", header: "<wx/wx.h>".}
proc drawTextBullet*(this: var WxRichTextRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    cdecl, importcpp: "DrawTextBullet", header: "<wx/wx.h>".}
proc drawBitmapBullet*(this: var WxRichTextRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawBitmapBullet", header: "<wx/wx.h>".}
proc enumerateStandardBulletNames*(this: var WxRichTextRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    cdecl, importcpp: "EnumerateStandardBulletNames", header: "<wx/wx.h>".}

type 
  WxRichTextStdRenderer* {.importcpp: "wxRichTextStdRenderer", 
                           header: "<wx/wx.h>".} = object of WxRichTextRenderer
  

proc constructwxRichTextStdRenderer*(): WxRichTextStdRenderer {.cdecl, 
    constructor, importcpp: "wxRichTextStdRenderer(@)", header: "<wx/wx.h>".}
proc drawStandardBullet*(this: var WxRichTextStdRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawStandardBullet", header: "<wx/wx.h>".}
proc drawTextBullet*(this: var WxRichTextStdRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    cdecl, importcpp: "DrawTextBullet", header: "<wx/wx.h>".}
proc drawBitmapBullet*(this: var WxRichTextStdRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.cdecl, 
    importcpp: "DrawBitmapBullet", header: "<wx/wx.h>".}
proc enumerateStandardBulletNames*(this: var WxRichTextStdRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    cdecl, importcpp: "EnumerateStandardBulletNames", header: "<wx/wx.h>".}

proc wxRichTextHasStyle*(flags: cint; style: cint): bool {.cdecl.}

proc wxTextAttrEq*(attr1: WxRichTextAttr; attr2: WxRichTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttrEq(@)", header: "<wx/wx.h>".}
proc wxTextAttrEq*(attr1: WxRichTextAttr; attr2: WxRichTextAttr): bool {.cdecl, 
    importcpp: "wxTextAttrEq(@)", header: "<wx/wx.h>".}

proc wxRichTextApplyStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                           compareWith: ptr WxRichTextAttr = nil): bool {.cdecl, 
    importcpp: "wxRichTextApplyStyle(@)", header: "<wx/wx.h>".}

proc wxRichTextRemoveStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "wxRichTextRemoveStyle(@)", header: "<wx/wx.h>".}

proc wxRichTextCombineBitlists*(valueA: var cint; valueB: cint; 
                                flagsA: var cint; flagsB: cint): bool {.cdecl, 
    importcpp: "wxRichTextCombineBitlists(@)", header: "<wx/wx.h>".}

proc wxRichTextBitlistsEqPartial*(valueA: cint; valueB: cint; flags: cint): bool {.
    cdecl, importcpp: "wxRichTextBitlistsEqPartial(@)", header: "<wx/wx.h>".}

proc wxRichTextSplitParaCharStyles*(style: WxRichTextAttr; 
                                    parStyle: var WxRichTextAttr; 
                                    charStyle: var WxRichTextAttr): bool {.
    cdecl, importcpp: "wxRichTextSplitParaCharStyles(@)", header: "<wx/wx.h>".}

proc wxRichTextTabsEq*(tabs1: WxArrayInt; tabs2: WxArrayInt): bool {.cdecl, 
    importcpp: "wxRichTextTabsEq(@)", header: "<wx/wx.h>".}

proc wxRichTextDecimalToRoman*(n: clong): WxString {.cdecl, 
    importcpp: "wxRichTextDecimalToRoman(@)", header: "<wx/wx.h>".}

proc wxTextAttrCollectCommonAttributes*(currentStyle: var WxTextAttr; 
                                        attr: WxTextAttr; 
                                        clashingAttr: var WxTextAttr; 
                                        absentAttr: var WxTextAttr) {.cdecl, 
    importcpp: "wxTextAttrCollectCommonAttributes(@)", header: "<wx/wx.h>".}
proc wxRichTextModuleInit*() {.cdecl, importcpp: "wxRichTextModuleInit(@)", 
                               header: "<wx/wx.h>".}

