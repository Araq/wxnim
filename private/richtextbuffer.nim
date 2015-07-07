#///////////////////////////////////////////////////////////////////////////
# Name:        wx/richtext/richtextbuffer.h
# Purpose:     Buffer for wxRichTextCtrl
# Author:      Julian Smart
# Modified by:
# Created:     2005-09-30
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

#
#
#  Data structures
#  ===============
#
#  Data is represented by a hierarchy of objects, all derived from
#  wxRichTextObject.
#
#  The top of the hierarchy is the buffer, a kind of wxRichTextParagraphLayoutBox.
#  These boxes will allow flexible placement of text boxes on a page, but
#  for now there is a single box representing the document, and this box is
#  a wxRichTextParagraphLayoutBox which contains further wxRichTextParagraph
#  objects, each of which can include text and images.
#
#  Each object maintains a range (start and end position) measured
#  from the start of the main parent box.
#  A paragraph object knows its range, and a text fragment knows its range
#  too. So, a character or image in a page has a position relative to the
#  start of the document, and a character in an embedded text box has
#  a position relative to that text box. For now, we will not be dealing with
#  embedded objects but it's something to bear in mind for later.
#
#  Note that internally, a range (5,5) represents a range of one character.
#  In the public wx[Rich]TextCtrl API, this would be passed to e.g. SetSelection
#  as (5,6). A paragraph with one character might have an internal range of (0, 1)
#  since the end of the paragraph takes up one position.
#
#  Layout
#  ======
#
#  When Layout is called on an object, it is given a size which the object
#  must limit itself to, or one or more flexible directions (vertical
#  or horizontal). So for example a centered paragraph is given the page
#  width to play with (minus any margins), but can extend indefinitely
#  in the vertical direction. The implementation of Layout can then
#  cache the calculated size and position within the parent.
#
# 
#!
#  Includes
# 

# Compatibility
##define wxRichTextAttr wxTextAttr

const 
  wxTextAttrEx* = wxTextAttr

# Setting wxRICHTEXT_USE_OWN_CARET to 1 implements a
# caret reliably without using wxClientDC in case there
# are platform-specific problems with the generic caret.

const 
  wxRICHTEXT_USE_OWN_CARET* = 1

# Switch off for binary compatibility, on for faster drawing
# Note: this seems to be buggy (overzealous use of extents) so
# don't use for now

const 
  wxRICHTEXT_USE_OPTIMIZED_LINE_DRAWING* = 0

# The following two symbols determine whether an output implementation
# is present. To switch the relevant one on, set wxRICHTEXT_USE_XMLDOCUMENT_OUTPUT in
# richtextxml.cpp. By default, the faster direct output implementation is used.
# Include the wxXmlDocument implementation for output

const 
  wxRICHTEXT_HAVE_XMLDOCUMENT_OUTPUT* = 1

# Include the faster, direct implementation for output

const 
  wxRICHTEXT_HAVE_DIRECT_OUTPUT* = 1

#*
#    The line break character that can be embedded in content.
# 

var wxRichTextLineBreakChar* {.importcpp: "wxRichTextLineBreakChar", 
                               header: "wx.h".}: WxChar

#*
#    File types in wxRichText context.
# 

type 
  WxRichTextFileType* = enum 
    wxRICHTEXT_TYPE_ANY = 0, wxRICHTEXT_TYPE_TEXT, wxRICHTEXT_TYPE_XML, 
    wxRICHTEXT_TYPE_HTML, wxRICHTEXT_TYPE_RTF, wxRICHTEXT_TYPE_PDF


#
#  Forward declarations
# 

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

# Only lay out the part of the buffer that lies within
# the rect passed to Layout.

const 
  wxRICHTEXT_LAYOUT_SPECIFIED_RECT* = 0x00000010

#*
#    Flags to pass to Draw
# 
# Ignore paragraph cache optimization, e.g. for printing purposes
# where one line may be drawn higher (on the next page) compared
# with the previous line

const 
  wxRICHTEXT_DRAW_IGNORE_CACHE* = 0x00000001
  wxRICHTEXT_DRAW_SELECTED* = 0x00000002
  wxRICHTEXT_DRAW_PRINT* = 0x00000004
  wxRICHTEXT_DRAW_GUIDELINES* = 0x00000008

#*
#    Flags returned from hit-testing, or passed to hit-test function.
# 

type 
  WxRichTextHitTestFlags* = enum # The point was not on this object
    wxRICHTEXT_HITTEST_NONE = 0x00000001, # The point was before the position returned from HitTest
    wxRICHTEXT_HITTEST_BEFORE = 0x00000002, # The point was after the position returned from HitTest
    wxRICHTEXT_HITTEST_AFTER = 0x00000004, # The point was on the position returned from HitTest
    wxRICHTEXT_HITTEST_ON = 0x00000008, # The point was on space outside content
    wxRICHTEXT_HITTEST_OUTSIDE = 0x00000010, # Only do hit-testing at the current level (don't traverse into top-level objects)
    wxRICHTEXT_HITTEST_NO_NESTED_OBJECTS = 0x00000020, # Ignore floating objects
    wxRICHTEXT_HITTEST_NO_FLOATING_OBJECTS = 0x00000040, # Don't recurse into objects marked as atomic
    wxRICHTEXT_HITTEST_HONOUR_ATOMIC = 0x00000080


#*
#    Flags for GetRangeSize.
# 

const 
  wxRICHTEXT_FORMATTED* = 0x00000001
  wxRICHTEXT_UNFORMATTED* = 0x00000002
  wxRICHTEXT_CACHE_SIZE* = 0x00000004
  wxRICHTEXT_HEIGHT_ONLY* = 0x00000008

#*
#    Flags for SetStyle/SetListStyle.
# 

const 
  wxRICHTEXT_SETSTYLE_NONE* = 0x00000000

# Specifies that this operation should be undoable

const 
  wxRICHTEXT_SETSTYLE_WITH_UNDO* = 0x00000001

# Specifies that the style should not be applied if the
# combined style at this point is already the style in question.

const 
  wxRICHTEXT_SETSTYLE_OPTIMIZE* = 0x00000002

# Specifies that the style should only be applied to paragraphs,
# and not the content. This allows content styling to be
# preserved independently from that of e.g. a named paragraph style.

const 
  wxRICHTEXT_SETSTYLE_PARAGRAPHS_ONLY* = 0x00000004

# Specifies that the style should only be applied to characters,
# and not the paragraph. This allows content styling to be
# preserved independently from that of e.g. a named paragraph style.

const 
  wxRICHTEXT_SETSTYLE_CHARACTERS_ONLY* = 0x00000008

# For SetListStyle only: specifies starting from the given number, otherwise
# deduces number from existing attributes

const 
  wxRICHTEXT_SETSTYLE_RENUMBER* = 0x00000010

# For SetListStyle only: specifies the list level for all paragraphs, otherwise
# the current indentation will be used

const 
  wxRICHTEXT_SETSTYLE_SPECIFY_LEVEL* = 0x00000020

# Resets the existing style before applying the new style

const 
  wxRICHTEXT_SETSTYLE_RESET* = 0x00000040

# Removes the given style instead of applying it

const 
  wxRICHTEXT_SETSTYLE_REMOVE* = 0x00000080

#*
#    Flags for SetProperties.
# 

const 
  wxRICHTEXT_SETPROPERTIES_NONE* = 0x00000000

# Specifies that this operation should be undoable

const 
  wxRICHTEXT_SETPROPERTIES_WITH_UNDO* = 0x00000001

# Specifies that the properties should only be applied to paragraphs,
# and not the content.

const 
  wxRICHTEXT_SETPROPERTIES_PARAGRAPHS_ONLY* = 0x00000002

# Specifies that the properties should only be applied to characters,
# and not the paragraph.

const 
  wxRICHTEXT_SETPROPERTIES_CHARACTERS_ONLY* = 0x00000004

# Resets the existing properties before applying the new properties.

const 
  wxRICHTEXT_SETPROPERTIES_RESET* = 0x00000008

# Removes the given properties instead of applying them.

const 
  wxRICHTEXT_SETPROPERTIES_REMOVE* = 0x00000010

#*
#    Flags for object insertion.
# 

const 
  wxRICHTEXT_INSERT_NONE* = 0x00000000
  wxRICHTEXT_INSERT_WITH_PREVIOUS_PARAGRAPH_STYLE* = 0x00000001
  wxRICHTEXT_INSERT_INTERACTIVE* = 0x00000002

# A special flag telling the buffer to keep the first paragraph style
# as-is, when deleting a paragraph marker. In future we might pass a
# flag to InsertFragment and DeleteRange to indicate the appropriate mode.

const 
  wxTEXT_ATTR_KEEP_FIRST_PARA_STYLE* = 0x20000000

#*
#    Default superscript/subscript font multiplication factor.
# 

const 
  wxSCRIPT_MUL_FACTOR* = 1.5

#*
#    The type for wxTextAttrDimension flags.
# 

type 
  WxTextAttrDimensionFlags* = cushort

#*
#    Miscellaneous text box flags
# 

type 
  WxTextBoxAttrFlags* = enum 
    wxTEXT_BOX_ATTR_FLOAT = 0x00000001, wxTEXT_BOX_ATTR_CLEAR = 0x00000002, 
    wxTEXT_BOX_ATTR_COLLAPSE_BORDERS = 0x00000004, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT = 0x00000008, 
    wxTEXT_BOX_ATTR_BOX_STYLE_NAME = 0x00000010


#*
#    Whether a value is present, used in dimension flags.
# 

type 
  WxTextAttrValueFlags* = enum 
    wxTEXT_ATTR_VALUE_VALID = 0x00001000

const 
  wxTEXT_ATTR_VALUE_VALID_MASK = wxTEXT_ATTR_VALUE_VALID

#*
#    Units, included in the dimension value.
# 

type 
  WxTextAttrUnits* = enum 
    wxTEXT_ATTR_UNITS_TENTHS_MM = 0x00000001, 
    wxTEXT_ATTR_UNITS_PIXELS = 0x00000002, 
    wxTEXT_ATTR_UNITS_PERCENTAGE = 0x00000004, 
    wxTEXT_ATTR_UNITS_POINTS = 0x00000008, 
    wxTEXT_ATTR_UNITS_HUNDREDTHS_POINT = 0x00000100, 
    wxTEXT_ATTR_UNITS_MASK = 0x0000010F


#*
#    Position alternatives, included in the dimension flags.
# 

type 
  WxTextBoxAttrPosition* = enum 
    wxTEXT_BOX_ATTR_POSITION_STATIC = 0x00000000, # Default is static, i.e. as per normal layout
    wxTEXT_BOX_ATTR_POSITION_RELATIVE = 0x00000010, # Relative to the relevant edge
    wxTEXT_BOX_ATTR_POSITION_ABSOLUTE = 0x00000020, # Relative to the parent
    wxTEXT_BOX_ATTR_POSITION_FIXED = 0x00000040, # Relative to the top-level window
    wxTEXT_BOX_ATTR_POSITION_MASK = 0x000000F0


#*
#    @class wxTextAttrDimension
#
#    A class representing a rich text dimension, including units and position.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl,  wxTextAttrDimensions
#

type 
  WxTextAttrDimension* {.importcpp: "wxTextAttrDimension", header: "wx.h".} = object #*
                                                                                     #        Default constructor.
                                                                                     #    
    mValue* {.importc: "m_value".}: cint
    mFlags* {.importc: "m_flags".}: WxTextAttrDimensionFlags


proc constructwxTextAttrDimension*(): WxTextAttrDimension {.constructor, 
    importcpp: "wxTextAttrDimension(@)", header: "wx.h".}
proc constructwxTextAttrDimension*(value: cint; units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM): WxTextAttrDimension {.
    constructor, importcpp: "wxTextAttrDimension(@)", header: "wx.h".}
proc reset*(this: var WxTextAttrDimension) {.importcpp: "Reset", header: "wx.h".}
proc eqPartial*(this: WxTextAttrDimension; dim: WxTextAttrDimension; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextAttrDimension; dim: WxTextAttrDimension; 
            compareWith: ptr WxTextAttrDimension = nil): bool {.
    importcpp: "Apply", header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextAttrDimension; 
                              attr: WxTextAttrDimension; 
                              clashingAttr: var WxTextAttrDimension; 
                              absentAttr: var WxTextAttrDimension) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc `==`*(this: WxTextAttrDimension; dim: WxTextAttrDimension): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc getValue*(this: WxTextAttrDimension): cint {.noSideEffect, 
    importcpp: "GetValue", header: "wx.h".}
proc getValueMM*(this: WxTextAttrDimension): cfloat {.noSideEffect, 
    importcpp: "GetValueMM", header: "wx.h".}
proc setValueMM*(this: var WxTextAttrDimension; value: cfloat) {.
    importcpp: "SetValueMM", header: "wx.h".}
proc setValue*(this: var WxTextAttrDimension; value: cint) {.
    importcpp: "SetValue", header: "wx.h".}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               flags: WxTextAttrDimensionFlags) {.importcpp: "SetValue", 
    header: "wx.h".}
proc setValue*(this: var WxTextAttrDimension; value: cint; 
               units: WxTextAttrUnits) {.importcpp: "SetValue", header: "wx.h".}
proc setValue*(this: var WxTextAttrDimension; dim: WxTextAttrDimension) {.
    importcpp: "SetValue", header: "wx.h".}
proc getUnits*(this: WxTextAttrDimension): WxTextAttrUnits {.noSideEffect, 
    importcpp: "GetUnits", header: "wx.h".}
proc setUnits*(this: var WxTextAttrDimension; units: WxTextAttrUnits) {.
    importcpp: "SetUnits", header: "wx.h".}
proc getPosition*(this: WxTextAttrDimension): WxTextBoxAttrPosition {.
    noSideEffect, importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxTextAttrDimension; pos: WxTextBoxAttrPosition) {.
    importcpp: "SetPosition", header: "wx.h".}
proc isValid*(this: WxTextAttrDimension): bool {.noSideEffect, 
    importcpp: "IsValid", header: "wx.h".}
proc setValid*(this: var WxTextAttrDimension; b: bool) {.importcpp: "SetValid", 
    header: "wx.h".}
proc getFlags*(this: WxTextAttrDimension): WxTextAttrDimensionFlags {.
    noSideEffect, importcpp: "GetFlags", header: "wx.h".}
proc setFlags*(this: var WxTextAttrDimension; flags: WxTextAttrDimensionFlags) {.
    importcpp: "SetFlags", header: "wx.h".}
#*
#    @class wxTextAttrDimensions
#    A class for left, right, top and bottom dimensions.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl, wxTextAttrDimension
#

type 
  WxTextAttrDimensions* {.importcpp: "wxTextAttrDimensions", header: "wx.h".} = object #*
                                                                                       #        Default constructor.
                                                                                       #    
    mLeft* {.importc: "m_left".}: WxTextAttrDimension
    mTop* {.importc: "m_top".}: WxTextAttrDimension
    mRight* {.importc: "m_right".}: WxTextAttrDimension
    mBottom* {.importc: "m_bottom".}: WxTextAttrDimension


proc constructwxTextAttrDimensions*(): WxTextAttrDimensions {.constructor, 
    importcpp: "wxTextAttrDimensions(@)", header: "wx.h".}
proc reset*(this: var WxTextAttrDimensions) {.importcpp: "Reset", header: "wx.h".}
proc `==`*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc eqPartial*(this: WxTextAttrDimensions; dims: WxTextAttrDimensions; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextAttrDimensions; dims: WxTextAttrDimensions; 
            compareWith: ptr WxTextAttrDimensions = nil): bool {.
    importcpp: "Apply", header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextAttrDimensions; 
                              attr: WxTextAttrDimensions; 
                              clashingAttr: var WxTextAttrDimensions; 
                              absentAttr: var WxTextAttrDimensions) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc removeStyle*(this: var WxTextAttrDimensions; attr: WxTextAttrDimensions): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc getLeft*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetLeft", header: "wx.h".}
proc getLeft*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    importcpp: "GetLeft", header: "wx.h".}
proc getRight*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetRight", header: "wx.h".}
proc getRight*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    importcpp: "GetRight", header: "wx.h".}
proc getTop*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetTop", header: "wx.h".}
proc getTop*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    importcpp: "GetTop", header: "wx.h".}
proc getBottom*(this: WxTextAttrDimensions): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetBottom", header: "wx.h".}
proc getBottom*(this: var WxTextAttrDimensions): var WxTextAttrDimension {.
    importcpp: "GetBottom", header: "wx.h".}
proc isValid*(this: WxTextAttrDimensions): bool {.noSideEffect, 
    importcpp: "IsValid", header: "wx.h".}
#*
#    @class wxTextAttrSize
#    A class for representing width and height.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl, wxTextAttrDimension
#

type 
  WxTextAttrSize* {.importcpp: "wxTextAttrSize", header: "wx.h".} = object #*
                                                                           #        Default constructor.
                                                                           #    
    mWidth* {.importc: "m_width".}: WxTextAttrDimension
    mHeight* {.importc: "m_height".}: WxTextAttrDimension


proc constructwxTextAttrSize*(): WxTextAttrSize {.constructor, 
    importcpp: "wxTextAttrSize(@)", header: "wx.h".}
proc reset*(this: var WxTextAttrSize) {.importcpp: "Reset", header: "wx.h".}
proc `==`*(this: WxTextAttrSize; size: WxTextAttrSize): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "wx.h".}
proc eqPartial*(this: WxTextAttrSize; size: WxTextAttrSize; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextAttrSize; dims: WxTextAttrSize; 
            compareWith: ptr WxTextAttrSize = nil): bool {.importcpp: "Apply", 
    header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextAttrSize; attr: WxTextAttrSize; 
                              clashingAttr: var WxTextAttrSize; 
                              absentAttr: var WxTextAttrSize) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc removeStyle*(this: var WxTextAttrSize; attr: WxTextAttrSize): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc getWidth*(this: var WxTextAttrSize): var WxTextAttrDimension {.
    importcpp: "GetWidth", header: "wx.h".}
proc getWidth*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetWidth", header: "wx.h".}
proc setWidth*(this: var WxTextAttrSize; value: cint; 
               flags: WxTextAttrDimensionFlags) {.importcpp: "SetWidth", 
    header: "wx.h".}
proc setWidth*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    importcpp: "SetWidth", header: "wx.h".}
proc setWidth*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.
    importcpp: "SetWidth", header: "wx.h".}
proc getHeight*(this: var WxTextAttrSize): var WxTextAttrDimension {.
    importcpp: "GetHeight", header: "wx.h".}
proc getHeight*(this: WxTextAttrSize): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetHeight", header: "wx.h".}
proc setHeight*(this: var WxTextAttrSize; value: cint; 
                flags: WxTextAttrDimensionFlags) {.importcpp: "SetHeight", 
    header: "wx.h".}
proc setHeight*(this: var WxTextAttrSize; value: cint; units: WxTextAttrUnits) {.
    importcpp: "SetHeight", header: "wx.h".}
proc setHeight*(this: var WxTextAttrSize; dim: WxTextAttrDimension) {.
    importcpp: "SetHeight", header: "wx.h".}
proc isValid*(this: WxTextAttrSize): bool {.noSideEffect, importcpp: "IsValid", 
    header: "wx.h".}
#*
#    @class wxTextAttrDimensionConverter
#    A class to make it easier to convert dimensions.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl, wxTextAttrDimension
#

type 
  WxTextAttrDimensionConverter* {.importcpp: "wxTextAttrDimensionConverter", 
                                  header: "wx.h".} = object #*
                                                            #        Constructor.
                                                            #    
    mPpi* {.importc: "m_ppi".}: cint
    mScale* {.importc: "m_scale".}: cdouble
    mParentSize* {.importc: "m_parentSize".}: WxSize


proc constructwxTextAttrDimensionConverter*(dc: var WxDC; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", header: "wx.h".}
proc constructwxTextAttrDimensionConverter*(ppi: cint; scale: cdouble = 1.0; 
    parentSize: WxSize = wxDefaultSize): WxTextAttrDimensionConverter {.
    constructor, importcpp: "wxTextAttrDimensionConverter(@)", header: "wx.h".}
proc getPixels*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension; 
                direction: cint = wxHORIZONTAL): cint {.noSideEffect, 
    importcpp: "GetPixels", header: "wx.h".}
proc getTenthsMM*(this: WxTextAttrDimensionConverter; dim: WxTextAttrDimension): cint {.
    noSideEffect, importcpp: "GetTenthsMM", header: "wx.h".}
proc convertTenthsMMToPixels*(this: WxTextAttrDimensionConverter; units: cint): cint {.
    noSideEffect, importcpp: "ConvertTenthsMMToPixels", header: "wx.h".}
proc convertPixelsToTenthsMM*(this: WxTextAttrDimensionConverter; pixels: cint): cint {.
    noSideEffect, importcpp: "ConvertPixelsToTenthsMM", header: "wx.h".}
proc setScale*(this: var WxTextAttrDimensionConverter; scale: cdouble) {.
    importcpp: "SetScale", header: "wx.h".}
proc getScale*(this: WxTextAttrDimensionConverter): cdouble {.noSideEffect, 
    importcpp: "GetScale", header: "wx.h".}
proc setPPI*(this: var WxTextAttrDimensionConverter; ppi: cint) {.
    importcpp: "SetPPI", header: "wx.h".}
proc getPPI*(this: WxTextAttrDimensionConverter): cint {.noSideEffect, 
    importcpp: "GetPPI", header: "wx.h".}
proc setParentSize*(this: var WxTextAttrDimensionConverter; parentSize: WxSize) {.
    importcpp: "SetParentSize", header: "wx.h".}
proc getParentSize*(this: WxTextAttrDimensionConverter): WxSize {.noSideEffect, 
    importcpp: "GetParentSize", header: "wx.h".}
#*
#    Border styles, used with wxTextAttrBorder.
# 

type 
  WxTextAttrBorderStyle* = enum 
    wxTEXT_BOX_ATTR_BORDER_NONE = 0, wxTEXT_BOX_ATTR_BORDER_SOLID = 1, 
    wxTEXT_BOX_ATTR_BORDER_DOTTED = 2, wxTEXT_BOX_ATTR_BORDER_DASHED = 3, 
    wxTEXT_BOX_ATTR_BORDER_DOUBLE = 4, wxTEXT_BOX_ATTR_BORDER_GROOVE = 5, 
    wxTEXT_BOX_ATTR_BORDER_RIDGE = 6, wxTEXT_BOX_ATTR_BORDER_INSET = 7, 
    wxTEXT_BOX_ATTR_BORDER_OUTSET = 8


#*
#    Border style presence flags, used with wxTextAttrBorder.
# 

type 
  WxTextAttrBorderFlags* = enum 
    wxTEXT_BOX_ATTR_BORDER_STYLE = 0x00000001, 
    wxTEXT_BOX_ATTR_BORDER_COLOUR = 0x00000002


#*
#    Border width symbols for qualitative widths, used with wxTextAttrBorder.
# 

type 
  WxTextAttrBorderWidth* = enum 
    wxTEXT_BOX_ATTR_BORDER_THICK = - 3, wxTEXT_BOX_ATTR_BORDER_MEDIUM = - 2, 
    wxTEXT_BOX_ATTR_BORDER_THIN = - 1


#*
#    Float styles.
# 

type 
  WxTextBoxAttrFloatStyle* = enum 
    wxTEXT_BOX_ATTR_FLOAT_NONE = 0, wxTEXT_BOX_ATTR_FLOAT_LEFT = 1, 
    wxTEXT_BOX_ATTR_FLOAT_RIGHT = 2


#*
#    Clear styles.
# 

type 
  WxTextBoxAttrClearStyle* = enum 
    wxTEXT_BOX_ATTR_CLEAR_NONE = 0, wxTEXT_BOX_ATTR_CLEAR_LEFT = 1, 
    wxTEXT_BOX_ATTR_CLEAR_RIGHT = 2, wxTEXT_BOX_ATTR_CLEAR_BOTH = 3


#*
#    Collapse mode styles. TODO: can they be switched on per side?
# 

type 
  WxTextBoxAttrCollapseMode* = enum 
    wxTEXT_BOX_ATTR_COLLAPSE_NONE = 0, wxTEXT_BOX_ATTR_COLLAPSE_FULL = 1


#*
#    Vertical alignment values.
# 

type 
  WxTextBoxAttrVerticalAlignment* = enum 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_NONE = 0, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_TOP = 1, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_CENTRE = 2, 
    wxTEXT_BOX_ATTR_VERTICAL_ALIGNMENT_BOTTOM = 3


#*
#    @class wxTextAttrBorder
#    A class representing a rich text object border.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl, wxRichTextAttrBorders
#

type 
  WxTextAttrBorder* {.importcpp: "wxTextAttrBorder", header: "wx.h".} = object #*
                                                                               #        Default constructor.
                                                                               #    
    mBorderStyle* {.importc: "m_borderStyle".}: cint
    mBorderColour* {.importc: "m_borderColour".}: culong
    mBorderWidth* {.importc: "m_borderWidth".}: WxTextAttrDimension
    mFlags* {.importc: "m_flags".}: cint


proc constructwxTextAttrBorder*(): WxTextAttrBorder {.constructor, 
    importcpp: "wxTextAttrBorder(@)", header: "wx.h".}
proc `==`*(this: WxTextAttrBorder; border: WxTextAttrBorder): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc reset*(this: var WxTextAttrBorder) {.importcpp: "Reset", header: "wx.h".}
proc eqPartial*(this: WxTextAttrBorder; border: WxTextAttrBorder; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextAttrBorder; border: WxTextAttrBorder; 
            compareWith: ptr WxTextAttrBorder = nil): bool {.importcpp: "Apply", 
    header: "wx.h".}
proc removeStyle*(this: var WxTextAttrBorder; attr: WxTextAttrBorder): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextAttrBorder; 
                              attr: WxTextAttrBorder; 
                              clashingAttr: var WxTextAttrBorder; 
                              absentAttr: var WxTextAttrBorder) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc setStyle*(this: var WxTextAttrBorder; style: cint) {.importcpp: "SetStyle", 
    header: "wx.h".}
proc getStyle*(this: WxTextAttrBorder): cint {.noSideEffect, 
    importcpp: "GetStyle", header: "wx.h".}
proc setColour*(this: var WxTextAttrBorder; colour: culong) {.
    importcpp: "SetColour", header: "wx.h".}
proc setColour*(this: var WxTextAttrBorder; colour: WxColour) {.
    importcpp: "SetColour", header: "wx.h".}
proc getColourLong*(this: WxTextAttrBorder): culong {.noSideEffect, 
    importcpp: "GetColourLong", header: "wx.h".}
proc getColour*(this: WxTextAttrBorder): WxColour {.noSideEffect, 
    importcpp: "GetColour", header: "wx.h".}
proc getWidth*(this: var WxTextAttrBorder): var WxTextAttrDimension {.
    importcpp: "GetWidth", header: "wx.h".}
proc getWidth*(this: WxTextAttrBorder): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetWidth", header: "wx.h".}
proc setWidth*(this: var WxTextAttrBorder; width: WxTextAttrDimension) {.
    importcpp: "SetWidth", header: "wx.h".}
proc setWidth*(this: var WxTextAttrBorder; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.
    importcpp: "SetWidth", header: "wx.h".}
proc hasStyle*(this: WxTextAttrBorder): bool {.noSideEffect, 
    importcpp: "HasStyle", header: "wx.h".}
proc hasColour*(this: WxTextAttrBorder): bool {.noSideEffect, 
    importcpp: "HasColour", header: "wx.h".}
proc hasWidth*(this: WxTextAttrBorder): bool {.noSideEffect, 
    importcpp: "HasWidth", header: "wx.h".}
proc isValid*(this: WxTextAttrBorder): bool {.noSideEffect, 
    importcpp: "IsValid", header: "wx.h".}
proc makeValid*(this: var WxTextAttrBorder) {.importcpp: "MakeValid", 
    header: "wx.h".}
proc isDefault*(this: WxTextAttrBorder): bool {.noSideEffect, 
    importcpp: "IsDefault", header: "wx.h".}
proc getFlags*(this: WxTextAttrBorder): cint {.noSideEffect, 
    importcpp: "GetFlags", header: "wx.h".}
proc setFlags*(this: var WxTextAttrBorder; flags: cint) {.importcpp: "SetFlags", 
    header: "wx.h".}
proc addFlag*(this: var WxTextAttrBorder; flag: cint) {.importcpp: "AddFlag", 
    header: "wx.h".}
proc removeFlag*(this: var WxTextAttrBorder; flag: cint) {.
    importcpp: "RemoveFlag", header: "wx.h".}
#*
#    @class wxTextAttrBorders
#    A class representing a rich text object's borders.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl, wxRichTextAttrBorder
#

type 
  WxTextAttrBorders* {.importcpp: "wxTextAttrBorders", header: "wx.h".} = object #*
                                                                                 #        Default constructor.
                                                                                 #    
    mLeft* {.importc: "m_left".}: WxTextAttrBorder
    mRight* {.importc: "m_right".}: WxTextAttrBorder
    mTop* {.importc: "m_top".}: WxTextAttrBorder
    mBottom* {.importc: "m_bottom".}: WxTextAttrBorder


proc constructwxTextAttrBorders*(): WxTextAttrBorders {.constructor, 
    importcpp: "wxTextAttrBorders(@)", header: "wx.h".}
proc `==`*(this: WxTextAttrBorders; borders: WxTextAttrBorders): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc setStyle*(this: var WxTextAttrBorders; style: cint) {.
    importcpp: "SetStyle", header: "wx.h".}
proc setColour*(this: var WxTextAttrBorders; colour: culong) {.
    importcpp: "SetColour", header: "wx.h".}
proc setColour*(this: var WxTextAttrBorders; colour: WxColour) {.
    importcpp: "SetColour", header: "wx.h".}
proc setWidth*(this: var WxTextAttrBorders; width: WxTextAttrDimension) {.
    importcpp: "SetWidth", header: "wx.h".}
proc setWidth*(this: var WxTextAttrBorders; value: cint; 
               units: WxTextAttrUnits = wxTEXT_ATTR_UNITS_TENTHS_MM) {.
    importcpp: "SetWidth", header: "wx.h".}
proc reset*(this: var WxTextAttrBorders) {.importcpp: "Reset", header: "wx.h".}
proc eqPartial*(this: WxTextAttrBorders; borders: WxTextAttrBorders; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextAttrBorders; borders: WxTextAttrBorders; 
            compareWith: ptr WxTextAttrBorders = nil): bool {.
    importcpp: "Apply", header: "wx.h".}
proc removeStyle*(this: var WxTextAttrBorders; attr: WxTextAttrBorders): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextAttrBorders; 
                              attr: WxTextAttrBorders; 
                              clashingAttr: var WxTextAttrBorders; 
                              absentAttr: var WxTextAttrBorders) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc isValid*(this: WxTextAttrBorders): bool {.noSideEffect, 
    importcpp: "IsValid", header: "wx.h".}
proc isDefault*(this: WxTextAttrBorders): bool {.noSideEffect, 
    importcpp: "IsDefault", header: "wx.h".}
proc getLeft*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetLeft", header: "wx.h".}
proc getLeft*(this: var WxTextAttrBorders): var WxTextAttrBorder {.
    importcpp: "GetLeft", header: "wx.h".}
proc getRight*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetRight", header: "wx.h".}
proc getRight*(this: var WxTextAttrBorders): var WxTextAttrBorder {.
    importcpp: "GetRight", header: "wx.h".}
proc getTop*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetTop", header: "wx.h".}
proc getTop*(this: var WxTextAttrBorders): var WxTextAttrBorder {.
    importcpp: "GetTop", header: "wx.h".}
proc getBottom*(this: WxTextAttrBorders): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetBottom", header: "wx.h".}
proc getBottom*(this: var WxTextAttrBorders): var WxTextAttrBorder {.
    importcpp: "GetBottom", header: "wx.h".}
#*
#    @class wxTextBoxAttr
#    A class representing the box attributes of a rich text object.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxRichTextCtrl
#

type 
  WxTextBoxAttr* {.importcpp: "wxTextBoxAttr", header: "wx.h".} = object #*
                                                                         #        Default constructor.
                                                                         #    
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


proc constructwxTextBoxAttr*(): WxTextBoxAttr {.constructor, 
    importcpp: "wxTextBoxAttr(@)", header: "wx.h".}
proc constructwxTextBoxAttr*(attr: WxTextBoxAttr): WxTextBoxAttr {.constructor, 
    importcpp: "wxTextBoxAttr(@)", header: "wx.h".}
proc init*(this: var WxTextBoxAttr) {.importcpp: "Init", header: "wx.h".}
proc reset*(this: var WxTextBoxAttr) {.importcpp: "Reset", header: "wx.h".}
proc `==`*(this: WxTextBoxAttr; attr: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "wx.h".}
proc eqPartial*(this: WxTextBoxAttr; attr: WxTextBoxAttr; weakTest: bool = true): bool {.
    noSideEffect, importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxTextBoxAttr; style: WxTextBoxAttr; 
            compareWith: ptr WxTextBoxAttr = nil): bool {.importcpp: "Apply", 
    header: "wx.h".}
proc collectCommonAttributes*(this: var WxTextBoxAttr; attr: WxTextBoxAttr; 
                              clashingAttr: var WxTextBoxAttr; 
                              absentAttr: var WxTextBoxAttr) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc removeStyle*(this: var WxTextBoxAttr; attr: WxTextBoxAttr): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc setFlags*(this: var WxTextBoxAttr; flags: cint) {.importcpp: "SetFlags", 
    header: "wx.h".}
proc getFlags*(this: WxTextBoxAttr): cint {.noSideEffect, importcpp: "GetFlags", 
    header: "wx.h".}
proc hasFlag*(this: WxTextBoxAttr; flag: WxTextBoxAttrFlags): bool {.
    noSideEffect, importcpp: "HasFlag", header: "wx.h".}
proc removeFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.
    importcpp: "RemoveFlag", header: "wx.h".}
proc addFlag*(this: var WxTextBoxAttr; flag: WxTextBoxAttrFlags) {.
    importcpp: "AddFlag", header: "wx.h".}
proc isDefault*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "IsDefault", header: "wx.h".}
proc getFloatMode*(this: WxTextBoxAttr): WxTextBoxAttrFloatStyle {.noSideEffect, 
    importcpp: "GetFloatMode", header: "wx.h".}
proc setFloatMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrFloatStyle) {.
    importcpp: "SetFloatMode", header: "wx.h".}
proc hasFloatMode*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "HasFloatMode", header: "wx.h".}
proc isFloating*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "IsFloating", header: "wx.h".}
proc getClearMode*(this: WxTextBoxAttr): WxTextBoxAttrClearStyle {.noSideEffect, 
    importcpp: "GetClearMode", header: "wx.h".}
proc setClearMode*(this: var WxTextBoxAttr; mode: WxTextBoxAttrClearStyle) {.
    importcpp: "SetClearMode", header: "wx.h".}
proc hasClearMode*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "HasClearMode", header: "wx.h".}
proc getCollapseBorders*(this: WxTextBoxAttr): WxTextBoxAttrCollapseMode {.
    noSideEffect, importcpp: "GetCollapseBorders", header: "wx.h".}
proc setCollapseBorders*(this: var WxTextBoxAttr; 
                         collapse: WxTextBoxAttrCollapseMode) {.
    importcpp: "SetCollapseBorders", header: "wx.h".}
proc hasCollapseBorders*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "HasCollapseBorders", header: "wx.h".}
proc getVerticalAlignment*(this: WxTextBoxAttr): WxTextBoxAttrVerticalAlignment {.
    noSideEffect, importcpp: "GetVerticalAlignment", header: "wx.h".}
proc setVerticalAlignment*(this: var WxTextBoxAttr; 
                           verticalAlignment: WxTextBoxAttrVerticalAlignment) {.
    importcpp: "SetVerticalAlignment", header: "wx.h".}
proc hasVerticalAlignment*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "HasVerticalAlignment", header: "wx.h".}
proc getMargins*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.
    importcpp: "GetMargins", header: "wx.h".}
proc getMargins*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    importcpp: "GetMargins", header: "wx.h".}
proc getLeftMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetLeftMargin", header: "wx.h".}
proc getLeftMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetLeftMargin", header: "wx.h".}
proc getRightMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetRightMargin", header: "wx.h".}
proc getRightMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetRightMargin", header: "wx.h".}
proc getTopMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetTopMargin", header: "wx.h".}
proc getTopMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetTopMargin", header: "wx.h".}
proc getBottomMargin*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetBottomMargin", header: "wx.h".}
proc getBottomMargin*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetBottomMargin", header: "wx.h".}
proc getPosition*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.
    importcpp: "GetPosition", header: "wx.h".}
proc getPosition*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    importcpp: "GetPosition", header: "wx.h".}
proc getLeft*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetLeft", header: "wx.h".}
proc getLeft*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetLeft", header: "wx.h".}
proc getRight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetRight", header: "wx.h".}
proc getRight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetRight", header: "wx.h".}
proc getTop*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetTop", header: "wx.h".}
proc getTop*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetTop", header: "wx.h".}
proc getBottom*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetBottom", header: "wx.h".}
proc getBottom*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetBottom", header: "wx.h".}
proc getPadding*(this: var WxTextBoxAttr): var WxTextAttrDimensions {.
    importcpp: "GetPadding", header: "wx.h".}
proc getPadding*(this: WxTextBoxAttr): WxTextAttrDimensions {.noSideEffect, 
    importcpp: "GetPadding", header: "wx.h".}
proc getLeftPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetLeftPadding", header: "wx.h".}
proc getLeftPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetLeftPadding", header: "wx.h".}
proc getRightPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetRightPadding", header: "wx.h".}
proc getRightPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetRightPadding", header: "wx.h".}
proc getTopPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetTopPadding", header: "wx.h".}
proc getTopPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetTopPadding", header: "wx.h".}
proc getBottomPadding*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetBottomPadding", header: "wx.h".}
proc getBottomPadding*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetBottomPadding", header: "wx.h".}
proc getBorder*(this: var WxTextBoxAttr): var WxTextAttrBorders {.
    importcpp: "GetBorder", header: "wx.h".}
proc getBorder*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, 
    importcpp: "GetBorder", header: "wx.h".}
proc getLeftBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetLeftBorder", header: "wx.h".}
proc getLeftBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetLeftBorder", header: "wx.h".}
proc getTopBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetTopBorder", header: "wx.h".}
proc getTopBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetTopBorder", header: "wx.h".}
proc getRightBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetRightBorder", header: "wx.h".}
proc getRightBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetRightBorder", header: "wx.h".}
proc getBottomBorder*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetBottomBorder", header: "wx.h".}
proc getBottomBorder*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetBottomBorder", header: "wx.h".}
proc getOutline*(this: var WxTextBoxAttr): var WxTextAttrBorders {.
    importcpp: "GetOutline", header: "wx.h".}
proc getOutline*(this: WxTextBoxAttr): WxTextAttrBorders {.noSideEffect, 
    importcpp: "GetOutline", header: "wx.h".}
proc getLeftOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetLeftOutline", header: "wx.h".}
proc getLeftOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetLeftOutline", header: "wx.h".}
proc getTopOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetTopOutline", header: "wx.h".}
proc getTopOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetTopOutline", header: "wx.h".}
proc getRightOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetRightOutline", header: "wx.h".}
proc getRightOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetRightOutline", header: "wx.h".}
proc getBottomOutline*(this: var WxTextBoxAttr): var WxTextAttrBorder {.
    importcpp: "GetBottomOutline", header: "wx.h".}
proc getBottomOutline*(this: WxTextBoxAttr): WxTextAttrBorder {.noSideEffect, 
    importcpp: "GetBottomOutline", header: "wx.h".}
proc getSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.
    importcpp: "GetSize", header: "wx.h".}
proc getSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, 
    importcpp: "GetSize", header: "wx.h".}
proc getMinSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.
    importcpp: "GetMinSize", header: "wx.h".}
proc getMinSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, 
    importcpp: "GetMinSize", header: "wx.h".}
proc getMaxSize*(this: var WxTextBoxAttr): var WxTextAttrSize {.
    importcpp: "GetMaxSize", header: "wx.h".}
proc getMaxSize*(this: WxTextBoxAttr): WxTextAttrSize {.noSideEffect, 
    importcpp: "GetMaxSize", header: "wx.h".}
proc setSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.
    importcpp: "SetSize", header: "wx.h".}
proc setMinSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.
    importcpp: "SetMinSize", header: "wx.h".}
proc setMaxSize*(this: var WxTextBoxAttr; sz: WxTextAttrSize) {.
    importcpp: "SetMaxSize", header: "wx.h".}
proc getWidth*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetWidth", header: "wx.h".}
proc getWidth*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetWidth", header: "wx.h".}
proc getHeight*(this: var WxTextBoxAttr): var WxTextAttrDimension {.
    importcpp: "GetHeight", header: "wx.h".}
proc getHeight*(this: WxTextBoxAttr): WxTextAttrDimension {.noSideEffect, 
    importcpp: "GetHeight", header: "wx.h".}
proc getBoxStyleName*(this: WxTextBoxAttr): WxString {.noSideEffect, 
    importcpp: "GetBoxStyleName", header: "wx.h".}
proc setBoxStyleName*(this: var WxTextBoxAttr; name: WxString) {.
    importcpp: "SetBoxStyleName", header: "wx.h".}
proc hasBoxStyleName*(this: WxTextBoxAttr): bool {.noSideEffect, 
    importcpp: "HasBoxStyleName", header: "wx.h".}
#*
#    @class wxRichTextAttr
#    A class representing enhanced attributes for rich text objects.
#    This adds a wxTextBoxAttr member to the basic wxTextAttr class.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextAttr, wxTextBoxAttr, wxRichTextCtrl
#

type 
  WxRichTextAttr* {.importcpp: "wxRichTextAttr", header: "wx.h".} = object of WxTextAttr #*
                                                                                         #        Constructor taking a wxTextAttr.
                                                                                         #    
    mTextBoxAttr* {.importc: "m_textBoxAttr".}: WxTextBoxAttr


proc constructwxRichTextAttr*(attr: WxTextAttr): WxRichTextAttr {.constructor, 
    importcpp: "wxRichTextAttr(@)", header: "wx.h".}
proc constructwxRichTextAttr*(attr: WxRichTextAttr): WxRichTextAttr {.
    constructor, importcpp: "wxRichTextAttr(@)", header: "wx.h".}
proc constructwxRichTextAttr*(): WxRichTextAttr {.constructor, 
    importcpp: "wxRichTextAttr(@)", header: "wx.h".}
proc copy*(this: var WxRichTextAttr; attr: WxRichTextAttr) {.importcpp: "Copy", 
    header: "wx.h".}
proc `==`*(this: WxRichTextAttr; attr: WxRichTextAttr): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "wx.h".}
proc eqPartial*(this: WxRichTextAttr; attr: WxRichTextAttr; 
                weakTest: bool = true): bool {.noSideEffect, 
    importcpp: "EqPartial", header: "wx.h".}
proc apply*(this: var WxRichTextAttr; style: WxRichTextAttr; 
            compareWith: ptr WxRichTextAttr = nil): bool {.importcpp: "Apply", 
    header: "wx.h".}
proc collectCommonAttributes*(this: var WxRichTextAttr; attr: WxRichTextAttr; 
                              clashingAttr: var WxRichTextAttr; 
                              absentAttr: var WxRichTextAttr) {.
    importcpp: "CollectCommonAttributes", header: "wx.h".}
proc removeStyle*(this: var WxRichTextAttr; attr: WxRichTextAttr): bool {.
    importcpp: "RemoveStyle", header: "wx.h".}
proc getTextBoxAttr*(this: var WxRichTextAttr): var WxTextBoxAttr {.
    importcpp: "GetTextBoxAttr", header: "wx.h".}
proc getTextBoxAttr*(this: WxRichTextAttr): WxTextBoxAttr {.noSideEffect, 
    importcpp: "GetTextBoxAttr", header: "wx.h".}
proc setTextBoxAttr*(this: var WxRichTextAttr; attr: WxTextBoxAttr) {.
    importcpp: "SetTextBoxAttr", header: "wx.h".}
proc isDefault*(this: WxRichTextAttr): bool {.noSideEffect, 
    importcpp: "IsDefault", header: "wx.h".}
type 
  WxRichTextAttrArray* {.importcpp: "wxRichTextAttrArray", header: "wx.h".} = object of WxArrayPtrVoid
  

proc constructwxRichTextAttrArray*(): WxRichTextAttrArray {.constructor, 
    importcpp: "wxRichTextAttrArray(@)", header: "wx.h".}
proc constructwxRichTextAttrArray*(src: WxRichTextAttrArray): WxRichTextAttrArray {.
    constructor, importcpp: "wxRichTextAttrArray(@)", header: "wx.h".}
proc destroywxRichTextAttrArray*(this: var WxRichTextAttrArray) {.
    importcpp: "#.~wxRichTextAttrArray()", header: "wx.h".}
proc alloc*(this: var WxRichTextAttrArray; count: csize) {.importcpp: "Alloc", 
    header: "wx.h".}
proc reserve*(this: var WxRichTextAttrArray; count: csize) {.
    importcpp: "reserve", header: "wx.h".}
proc getCount*(this: WxRichTextAttrArray): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc size*(this: WxRichTextAttrArray): csize {.noSideEffect, importcpp: "size", 
    header: "wx.h".}
proc isEmpty*(this: WxRichTextAttrArray): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc empty*(this: WxRichTextAttrArray): bool {.noSideEffect, importcpp: "empty", 
    header: "wx.h".}
proc count*(this: WxRichTextAttrArray): csize {.noSideEffect, 
    importcpp: "Count", header: "wx.h".}
proc shrink*(this: var WxRichTextAttrArray) {.importcpp: "Shrink", 
    header: "wx.h".}
proc `[]`*(this: WxRichTextAttrArray; uiIndex: csize): var WxRichTextAttr {.
    noSideEffect, importcpp: "#[@]", header: "wx.h".}
proc item*(this: WxRichTextAttrArray; uiIndex: csize): var WxRichTextAttr {.
    noSideEffect, importcpp: "Item", header: "wx.h".}
proc last*(this: WxRichTextAttrArray): var WxRichTextAttr {.noSideEffect, 
    importcpp: "Last", header: "wx.h".}
proc index*(this: WxRichTextAttrArray; lItem: WxRichTextAttr; 
            bFromEnd: bool = false): cint {.noSideEffect, importcpp: "Index", 
    header: "wx.h".}
proc add*(this: var WxRichTextAttrArray; pItem: ptr WxRichTextAttr) {.
    importcpp: "Add", header: "wx.h".}
proc insert*(this: var WxRichTextAttrArray; lItem: WxRichTextAttr; 
             uiIndex: csize; nInsert: csize = 1) {.importcpp: "Insert", 
    header: "wx.h".}
proc insert*(this: var WxRichTextAttrArray; pItem: ptr WxRichTextAttr; 
             uiIndex: csize) {.importcpp: "Insert", header: "wx.h".}
proc empty*(this: var WxRichTextAttrArray) {.importcpp: "Empty", header: "wx.h".}
proc clear*(this: var WxRichTextAttrArray) {.importcpp: "Clear", header: "wx.h".}
proc detach*(this: var WxRichTextAttrArray; uiIndex: csize): ptr WxRichTextAttr {.
    importcpp: "Detach", header: "wx.h".}
proc removeAt*(this: var WxRichTextAttrArray; uiIndex: csize) {.
    importcpp: "RemoveAt", header: "wx.h".}
type 
  WxRichTextVariantArray* {.importcpp: "wxRichTextVariantArray", header: "wx.h".} = object of WxArrayPtrVoid
  

proc constructwxRichTextVariantArray*(): WxRichTextVariantArray {.constructor, 
    importcpp: "wxRichTextVariantArray(@)", header: "wx.h".}
proc constructwxRichTextVariantArray*(src: WxRichTextVariantArray): WxRichTextVariantArray {.
    constructor, importcpp: "wxRichTextVariantArray(@)", header: "wx.h".}
proc destroywxRichTextVariantArray*(this: var WxRichTextVariantArray) {.
    importcpp: "#.~wxRichTextVariantArray()", header: "wx.h".}
proc alloc*(this: var WxRichTextVariantArray; count: csize) {.
    importcpp: "Alloc", header: "wx.h".}
proc reserve*(this: var WxRichTextVariantArray; count: csize) {.
    importcpp: "reserve", header: "wx.h".}
proc getCount*(this: WxRichTextVariantArray): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc size*(this: WxRichTextVariantArray): csize {.noSideEffect, 
    importcpp: "size", header: "wx.h".}
proc isEmpty*(this: WxRichTextVariantArray): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc empty*(this: WxRichTextVariantArray): bool {.noSideEffect, 
    importcpp: "empty", header: "wx.h".}
proc count*(this: WxRichTextVariantArray): csize {.noSideEffect, 
    importcpp: "Count", header: "wx.h".}
proc shrink*(this: var WxRichTextVariantArray) {.importcpp: "Shrink", 
    header: "wx.h".}
proc `[]`*(this: WxRichTextVariantArray; uiIndex: csize): var WxVariant {.
    noSideEffect, importcpp: "#[@]", header: "wx.h".}
proc item*(this: WxRichTextVariantArray; uiIndex: csize): var WxVariant {.
    noSideEffect, importcpp: "Item", header: "wx.h".}
proc last*(this: WxRichTextVariantArray): var WxVariant {.noSideEffect, 
    importcpp: "Last", header: "wx.h".}
proc index*(this: WxRichTextVariantArray; lItem: WxVariant; 
            bFromEnd: bool = false): cint {.noSideEffect, importcpp: "Index", 
    header: "wx.h".}
proc add*(this: var WxRichTextVariantArray; pItem: ptr WxVariant) {.
    importcpp: "Add", header: "wx.h".}
proc insert*(this: var WxRichTextVariantArray; lItem: WxVariant; uiIndex: csize; 
             nInsert: csize = 1) {.importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxRichTextVariantArray; pItem: ptr WxVariant; 
             uiIndex: csize) {.importcpp: "Insert", header: "wx.h".}
proc empty*(this: var WxRichTextVariantArray) {.importcpp: "Empty", 
    header: "wx.h".}
proc clear*(this: var WxRichTextVariantArray) {.importcpp: "Clear", 
    header: "wx.h".}
proc detach*(this: var WxRichTextVariantArray; uiIndex: csize): ptr WxVariant {.
    importcpp: "Detach", header: "wx.h".}
proc removeAt*(this: var WxRichTextVariantArray; uiIndex: csize) {.
    importcpp: "RemoveAt", header: "wx.h".}
type 
  WxRichTextRectArray* {.importcpp: "wxRichTextRectArray", header: "wx.h".} = object of WxArrayPtrVoid
  

proc constructwxRichTextRectArray*(): WxRichTextRectArray {.constructor, 
    importcpp: "wxRichTextRectArray(@)", header: "wx.h".}
proc constructwxRichTextRectArray*(src: WxRichTextRectArray): WxRichTextRectArray {.
    constructor, importcpp: "wxRichTextRectArray(@)", header: "wx.h".}
proc destroywxRichTextRectArray*(this: var WxRichTextRectArray) {.
    importcpp: "#.~wxRichTextRectArray()", header: "wx.h".}
proc alloc*(this: var WxRichTextRectArray; count: csize) {.importcpp: "Alloc", 
    header: "wx.h".}
proc reserve*(this: var WxRichTextRectArray; count: csize) {.
    importcpp: "reserve", header: "wx.h".}
proc getCount*(this: WxRichTextRectArray): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc size*(this: WxRichTextRectArray): csize {.noSideEffect, importcpp: "size", 
    header: "wx.h".}
proc isEmpty*(this: WxRichTextRectArray): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc empty*(this: WxRichTextRectArray): bool {.noSideEffect, importcpp: "empty", 
    header: "wx.h".}
proc count*(this: WxRichTextRectArray): csize {.noSideEffect, 
    importcpp: "Count", header: "wx.h".}
proc shrink*(this: var WxRichTextRectArray) {.importcpp: "Shrink", 
    header: "wx.h".}
proc `[]`*(this: WxRichTextRectArray; uiIndex: csize): var WxRect {.
    noSideEffect, importcpp: "#[@]", header: "wx.h".}
proc item*(this: WxRichTextRectArray; uiIndex: csize): var WxRect {.
    noSideEffect, importcpp: "Item", header: "wx.h".}
proc last*(this: WxRichTextRectArray): var WxRect {.noSideEffect, 
    importcpp: "Last", header: "wx.h".}
proc index*(this: WxRichTextRectArray; lItem: WxRect; bFromEnd: bool = false): cint {.
    noSideEffect, importcpp: "Index", header: "wx.h".}
proc add*(this: var WxRichTextRectArray; pItem: ptr WxRect) {.importcpp: "Add", 
    header: "wx.h".}
proc insert*(this: var WxRichTextRectArray; lItem: WxRect; uiIndex: csize; 
             nInsert: csize = 1) {.importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxRichTextRectArray; pItem: ptr WxRect; uiIndex: csize) {.
    importcpp: "Insert", header: "wx.h".}
proc empty*(this: var WxRichTextRectArray) {.importcpp: "Empty", header: "wx.h".}
proc clear*(this: var WxRichTextRectArray) {.importcpp: "Clear", header: "wx.h".}
proc detach*(this: var WxRichTextRectArray; uiIndex: csize): ptr WxRect {.
    importcpp: "Detach", header: "wx.h".}
proc removeAt*(this: var WxRichTextRectArray; uiIndex: csize) {.
    importcpp: "RemoveAt", header: "wx.h".}
#*
#    @class wxRichTextProperties
#    A simple property class using wxVariants. This is used to give each rich text object the
#    ability to store custom properties that can be used by the application.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextObject, wxRichTextCtrl
#

type 
  WxRichTextProperties* {.importcpp: "wxRichTextProperties", header: "wx.h".} = object of WxObject #*
                                                                                                   #        Default constructor.
                                                                                                   #    
    wxRichTextProperties* {.importc: "wxRichTextProperties".}: Declare_Dynamic_Class
    mProperties* {.importc: "m_properties".}: WxRichTextVariantArray


proc constructwxRichTextProperties*(): WxRichTextProperties {.constructor, 
    importcpp: "wxRichTextProperties(@)", header: "wx.h".}
proc constructwxRichTextProperties*(props: WxRichTextProperties): WxRichTextProperties {.
    constructor, importcpp: "wxRichTextProperties(@)", header: "wx.h".}
proc `==`*(this: WxRichTextProperties; props: WxRichTextProperties): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc copy*(this: var WxRichTextProperties; props: WxRichTextProperties) {.
    importcpp: "Copy", header: "wx.h".}
proc `[]`*(this: WxRichTextProperties; idx: csize): WxVariant {.noSideEffect, 
    importcpp: "#[@]", header: "wx.h".}
proc `[]`*(this: var WxRichTextProperties; idx: csize): var WxVariant {.
    importcpp: "#[@]", header: "wx.h".}
proc clear*(this: var WxRichTextProperties) {.importcpp: "Clear", header: "wx.h".}
proc getProperties*(this: WxRichTextProperties): WxRichTextVariantArray {.
    noSideEffect, importcpp: "GetProperties", header: "wx.h".}
proc getProperties*(this: var WxRichTextProperties): var WxRichTextVariantArray {.
    importcpp: "GetProperties", header: "wx.h".}
proc setProperties*(this: var WxRichTextProperties; 
                    props: WxRichTextVariantArray) {.importcpp: "SetProperties", 
    header: "wx.h".}
proc getPropertyNames*(this: WxRichTextProperties): WxArrayString {.
    noSideEffect, importcpp: "GetPropertyNames", header: "wx.h".}
proc getCount*(this: WxRichTextProperties): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc hasProperty*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, importcpp: "HasProperty", header: "wx.h".}
proc find*(this: WxRichTextProperties; name: WxString): cint {.noSideEffect, 
    importcpp: "Find", header: "wx.h".}
proc remove*(this: var WxRichTextProperties; name: WxString): bool {.
    importcpp: "Remove", header: "wx.h".}
proc getProperty*(this: WxRichTextProperties; name: WxString): WxVariant {.
    noSideEffect, importcpp: "GetProperty", header: "wx.h".}
proc findOrCreateProperty*(this: var WxRichTextProperties; name: WxString): ptr WxVariant {.
    importcpp: "FindOrCreateProperty", header: "wx.h".}
proc getPropertyString*(this: WxRichTextProperties; name: WxString): WxString {.
    noSideEffect, importcpp: "GetPropertyString", header: "wx.h".}
proc getPropertyLong*(this: WxRichTextProperties; name: WxString): clong {.
    noSideEffect, importcpp: "GetPropertyLong", header: "wx.h".}
proc getPropertyBool*(this: WxRichTextProperties; name: WxString): bool {.
    noSideEffect, importcpp: "GetPropertyBool", header: "wx.h".}
proc getPropertyDouble*(this: WxRichTextProperties; name: WxString): cdouble {.
    noSideEffect, importcpp: "GetPropertyDouble", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; variant: WxVariant) {.
    importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  variant: WxVariant) {.importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: WxString) {.importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; 
                  value: ptr WxChar) {.importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: clong) {.
    importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: cdouble) {.
    importcpp: "SetProperty", header: "wx.h".}
proc setProperty*(this: var WxRichTextProperties; name: WxString; value: bool) {.
    importcpp: "SetProperty", header: "wx.h".}
proc removeProperties*(this: var WxRichTextProperties; 
                       properties: WxRichTextProperties) {.
    importcpp: "RemoveProperties", header: "wx.h".}
proc mergeProperties*(this: var WxRichTextProperties; 
                      properties: WxRichTextProperties) {.
    importcpp: "MergeProperties", header: "wx.h".}
#*
#    @class wxRichTextFontTable
#    Manages quick access to a pool of fonts for rendering rich text.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextFontTable* {.importcpp: "wxRichTextFontTable", header: "wx.h".} = object of WxObject #*
                                                                                                 #        Default constructor.
                                                                                                 #    
    mFontScale* {.importc: "m_fontScale".}: cdouble
    wxRichTextFontTable* {.importc: "wxRichTextFontTable".}: Declare_Dynamic_Class


proc constructwxRichTextFontTable*(): WxRichTextFontTable {.constructor, 
    importcpp: "wxRichTextFontTable(@)", header: "wx.h".}
proc constructwxRichTextFontTable*(table: WxRichTextFontTable): WxRichTextFontTable {.
    constructor, importcpp: "wxRichTextFontTable(@)", header: "wx.h".}
proc destroywxRichTextFontTable*(this: var WxRichTextFontTable) {.
    importcpp: "#.~wxRichTextFontTable()", header: "wx.h".}
proc isOk*(this: WxRichTextFontTable): bool {.noSideEffect, importcpp: "IsOk", 
    header: "wx.h".}
proc findFont*(this: var WxRichTextFontTable; fontSpec: WxRichTextAttr): WxFont {.
    importcpp: "FindFont", header: "wx.h".}
proc clear*(this: var WxRichTextFontTable) {.importcpp: "Clear", header: "wx.h".}
proc `==`*(this: WxRichTextFontTable; table: WxRichTextFontTable): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc setFontScale*(this: var WxRichTextFontTable; fontScale: cdouble) {.
    importcpp: "SetFontScale", header: "wx.h".}
#*
#    @class wxRichTextRange
#
#    This stores beginning and end positions for a range of data.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextRange* {.importcpp: "wxRichTextRange", header: "wx.h".} = object # 
                                                                             # Constructors
                                                                             #*
                                                                             #        
                                                                             #        Default 
                                                                             #        constructor.
                                                                             #    
    mStart* {.importc: "m_start".}: clong
    mEnd* {.importc: "m_end".}: clong


proc constructwxRichTextRange*(): WxRichTextRange {.constructor, 
    importcpp: "wxRichTextRange(@)", header: "wx.h".}
proc constructwxRichTextRange*(start: clong; `end`: clong): WxRichTextRange {.
    constructor, importcpp: "wxRichTextRange(@)", header: "wx.h".}
proc constructwxRichTextRange*(range: WxRichTextRange): WxRichTextRange {.
    constructor, importcpp: "wxRichTextRange(@)", header: "wx.h".}
proc destroywxRichTextRange*(this: var WxRichTextRange) {.
    importcpp: "#.~wxRichTextRange()", header: "wx.h".}
proc `==`*(this: WxRichTextRange; range: WxRichTextRange): bool {.noSideEffect, 
    importcpp: "(# == #)", header: "wx.h".}
proc `-`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, importcpp: "(# - #)", header: "wx.h".}
proc `+`*(this: WxRichTextRange; range: WxRichTextRange): WxRichTextRange {.
    noSideEffect, importcpp: "(# + #)", header: "wx.h".}
proc setRange*(this: var WxRichTextRange; start: clong; `end`: clong) {.
    importcpp: "SetRange", header: "wx.h".}
proc setStart*(this: var WxRichTextRange; start: clong) {.importcpp: "SetStart", 
    header: "wx.h".}
proc getStart*(this: WxRichTextRange): clong {.noSideEffect, 
    importcpp: "GetStart", header: "wx.h".}
proc setEnd*(this: var WxRichTextRange; `end`: clong) {.importcpp: "SetEnd", 
    header: "wx.h".}
proc getEnd*(this: WxRichTextRange): clong {.noSideEffect, importcpp: "GetEnd", 
    header: "wx.h".}
proc isOutside*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, importcpp: "IsOutside", header: "wx.h".}
proc isWithin*(this: WxRichTextRange; range: WxRichTextRange): bool {.
    noSideEffect, importcpp: "IsWithin", header: "wx.h".}
proc contains*(this: WxRichTextRange; pos: clong): bool {.noSideEffect, 
    importcpp: "Contains", header: "wx.h".}
proc limitTo*(this: var WxRichTextRange; range: WxRichTextRange): bool {.
    importcpp: "LimitTo", header: "wx.h".}
proc getLength*(this: WxRichTextRange): clong {.noSideEffect, 
    importcpp: "GetLength", header: "wx.h".}
proc swap*(this: var WxRichTextRange) {.importcpp: "Swap", header: "wx.h".}
proc toInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, 
    importcpp: "ToInternal", header: "wx.h".}
proc fromInternal*(this: WxRichTextRange): WxRichTextRange {.noSideEffect, 
    importcpp: "FromInternal", header: "wx.h".}
type 
  WxRichTextRangeArray* {.importcpp: "wxRichTextRangeArray", header: "wx.h".} = object of WxArrayPtrVoid
  

proc constructwxRichTextRangeArray*(): WxRichTextRangeArray {.constructor, 
    importcpp: "wxRichTextRangeArray(@)", header: "wx.h".}
proc constructwxRichTextRangeArray*(src: WxRichTextRangeArray): WxRichTextRangeArray {.
    constructor, importcpp: "wxRichTextRangeArray(@)", header: "wx.h".}
proc destroywxRichTextRangeArray*(this: var WxRichTextRangeArray) {.
    importcpp: "#.~wxRichTextRangeArray()", header: "wx.h".}
proc alloc*(this: var WxRichTextRangeArray; count: csize) {.importcpp: "Alloc", 
    header: "wx.h".}
proc reserve*(this: var WxRichTextRangeArray; count: csize) {.
    importcpp: "reserve", header: "wx.h".}
proc getCount*(this: WxRichTextRangeArray): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc size*(this: WxRichTextRangeArray): csize {.noSideEffect, importcpp: "size", 
    header: "wx.h".}
proc isEmpty*(this: WxRichTextRangeArray): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc empty*(this: WxRichTextRangeArray): bool {.noSideEffect, 
    importcpp: "empty", header: "wx.h".}
proc count*(this: WxRichTextRangeArray): csize {.noSideEffect, 
    importcpp: "Count", header: "wx.h".}
proc shrink*(this: var WxRichTextRangeArray) {.importcpp: "Shrink", 
    header: "wx.h".}
proc `[]`*(this: WxRichTextRangeArray; uiIndex: csize): var WxRichTextRange {.
    noSideEffect, importcpp: "#[@]", header: "wx.h".}
proc item*(this: WxRichTextRangeArray; uiIndex: csize): var WxRichTextRange {.
    noSideEffect, importcpp: "Item", header: "wx.h".}
proc last*(this: WxRichTextRangeArray): var WxRichTextRange {.noSideEffect, 
    importcpp: "Last", header: "wx.h".}
proc index*(this: WxRichTextRangeArray; lItem: WxRichTextRange; 
            bFromEnd: bool = false): cint {.noSideEffect, importcpp: "Index", 
    header: "wx.h".}
proc add*(this: var WxRichTextRangeArray; pItem: ptr WxRichTextRange) {.
    importcpp: "Add", header: "wx.h".}
proc insert*(this: var WxRichTextRangeArray; lItem: WxRichTextRange; 
             uiIndex: csize; nInsert: csize = 1) {.importcpp: "Insert", 
    header: "wx.h".}
proc insert*(this: var WxRichTextRangeArray; pItem: ptr WxRichTextRange; 
             uiIndex: csize) {.importcpp: "Insert", header: "wx.h".}
proc empty*(this: var WxRichTextRangeArray) {.importcpp: "Empty", header: "wx.h".}
proc clear*(this: var WxRichTextRangeArray) {.importcpp: "Clear", header: "wx.h".}
proc detach*(this: var WxRichTextRangeArray; uiIndex: csize): ptr WxRichTextRange {.
    importcpp: "Detach", header: "wx.h".}
proc removeAt*(this: var WxRichTextRangeArray; uiIndex: csize) {.
    importcpp: "RemoveAt", header: "wx.h".}
const 
  wxRICHTEXT_ALL* = wxRichTextRange(- 2, - 2)
  wxRICHTEXT_NONE* = wxRichTextRange(- 1, - 1)
  wxRICHTEXT_NO_SELECTION* = wxRichTextRange(- 2, - 2)

#*
#    @class wxRichTextSelection
#
#    Stores selection information. The selection does not have to be contiguous, though currently non-contiguous
#    selections are only supported for a range of table cells (a geometric block of cells can consist
#    of a set of non-contiguous positions).
#
#    The selection consists of an array of ranges, and the container that is the context for the selection. It
#    follows that a single selection object can only represent ranges with the same parent container.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextSelection* {.importcpp: "wxRichTextSelection", header: "wx.h".} = object #*
                                                                                     #        Copy constructor.
                                                                                     #    
    mRanges* {.importc: "m_ranges".}: WxRichTextRangeArray
    mContainer* {.importc: "m_container".}: ptr WxRichTextParagraphLayoutBox


proc constructwxRichTextSelection*(sel: WxRichTextSelection): WxRichTextSelection {.
    constructor, importcpp: "wxRichTextSelection(@)", header: "wx.h".}
proc constructwxRichTextSelection*(range: WxRichTextRange; 
                                   container: ptr WxRichTextParagraphLayoutBox): WxRichTextSelection {.
    constructor, importcpp: "wxRichTextSelection(@)", header: "wx.h".}
proc constructwxRichTextSelection*(): WxRichTextSelection {.constructor, 
    importcpp: "wxRichTextSelection(@)", header: "wx.h".}
proc reset*(this: var WxRichTextSelection) {.importcpp: "Reset", header: "wx.h".}
proc set*(this: var WxRichTextSelection; range: WxRichTextRange; 
          container: ptr WxRichTextParagraphLayoutBox) {.importcpp: "Set", 
    header: "wx.h".}
proc add*(this: var WxRichTextSelection; range: WxRichTextRange) {.
    importcpp: "Add", header: "wx.h".}
proc set*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray; 
          container: ptr WxRichTextParagraphLayoutBox) {.importcpp: "Set", 
    header: "wx.h".}
proc copy*(this: var WxRichTextSelection; sel: WxRichTextSelection) {.
    importcpp: "Copy", header: "wx.h".}
proc `==`*(this: WxRichTextSelection; sel: WxRichTextSelection): bool {.
    noSideEffect, importcpp: "(# == #)", header: "wx.h".}
proc `[]`*(this: WxRichTextSelection; i: csize): WxRichTextRange {.noSideEffect, 
    importcpp: "#[@]", header: "wx.h".}
proc getRanges*(this: var WxRichTextSelection): var WxRichTextRangeArray {.
    importcpp: "GetRanges", header: "wx.h".}
proc getRanges*(this: WxRichTextSelection): WxRichTextRangeArray {.noSideEffect, 
    importcpp: "GetRanges", header: "wx.h".}
proc setRanges*(this: var WxRichTextSelection; ranges: WxRichTextRangeArray) {.
    importcpp: "SetRanges", header: "wx.h".}
proc getCount*(this: WxRichTextSelection): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc getRange*(this: WxRichTextSelection; i: csize): WxRichTextRange {.
    noSideEffect, importcpp: "GetRange", header: "wx.h".}
proc getRange*(this: WxRichTextSelection): WxRichTextRange {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc setRange*(this: var WxRichTextSelection; range: WxRichTextRange) {.
    importcpp: "SetRange", header: "wx.h".}
proc getContainer*(this: WxRichTextSelection): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetContainer", header: "wx.h".}
proc setContainer*(this: var WxRichTextSelection; 
                   container: ptr WxRichTextParagraphLayoutBox) {.
    importcpp: "SetContainer", header: "wx.h".}
proc isValid*(this: WxRichTextSelection): bool {.noSideEffect, 
    importcpp: "IsValid", header: "wx.h".}
proc getSelectionForObject*(this: WxRichTextSelection; obj: ptr WxRichTextObject): WxRichTextRangeArray {.
    noSideEffect, importcpp: "GetSelectionForObject", header: "wx.h".}
proc withinSelection*(this: WxRichTextSelection; pos: clong; 
                      obj: ptr WxRichTextObject): bool {.noSideEffect, 
    importcpp: "WithinSelection", header: "wx.h".}
proc withinSelection*(this: WxRichTextSelection; pos: clong): bool {.
    noSideEffect, importcpp: "WithinSelection", header: "wx.h".}
proc withinSelection*(pos: clong; ranges: WxRichTextRangeArray): bool {.
    importcpp: "wxRichTextSelection::WithinSelection(@)", header: "wx.h".}
proc withinSelection*(range: WxRichTextRange; ranges: WxRichTextRangeArray): bool {.
    importcpp: "wxRichTextSelection::WithinSelection(@)", header: "wx.h".}
#*
#    @class wxRichTextDrawingContext
#
#    A class for passing information to drawing and measuring functions.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextDrawingContext* {.importcpp: "wxRichTextDrawingContext", 
                              header: "wx.h".} = object of WxObject #*
                                                                    #        Pass the buffer to the context so the context can retrieve information
                                                                    #        such as virtual attributes.
                                                                    #    
    wxRichTextDrawingContext* {.importc: "wxRichTextDrawingContext".}: Declare_Class
    mBuffer* {.importc: "m_buffer".}: ptr WxRichTextBuffer
    mEnableVirtualAttributes* {.importc: "m_enableVirtualAttributes".}: bool


proc constructwxRichTextDrawingContext*(buffer: ptr WxRichTextBuffer): WxRichTextDrawingContext {.
    constructor, importcpp: "wxRichTextDrawingContext(@)", header: "wx.h".}
proc init*(this: var WxRichTextDrawingContext) {.importcpp: "Init", 
    header: "wx.h".}
proc hasVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    importcpp: "HasVirtualAttributes", header: "wx.h".}
proc getVirtualAttributes*(this: WxRichTextDrawingContext; 
                           obj: ptr WxRichTextObject): WxRichTextAttr {.
    noSideEffect, importcpp: "GetVirtualAttributes", header: "wx.h".}
proc applyVirtualAttributes*(this: WxRichTextDrawingContext; 
                             attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, importcpp: "ApplyVirtualAttributes", header: "wx.h".}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingContext; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: "wx.h".}
proc getVirtualSubobjectAttributes*(this: WxRichTextDrawingContext; 
                                    obj: ptr WxRichTextObject; 
                                    positions: var WxArrayInt; 
                                    attributes: var WxRichTextAttrArray): cint {.
    noSideEffect, importcpp: "GetVirtualSubobjectAttributes", header: "wx.h".}
proc hasVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, 
    importcpp: "HasVirtualText", header: "wx.h".}
proc getVirtualText*(this: WxRichTextDrawingContext; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, importcpp: "GetVirtualText", header: "wx.h".}
proc enableVirtualAttributes*(this: var WxRichTextDrawingContext; b: bool) {.
    importcpp: "EnableVirtualAttributes", header: "wx.h".}
proc getVirtualAttributesEnabled*(this: WxRichTextDrawingContext): bool {.
    noSideEffect, importcpp: "GetVirtualAttributesEnabled", header: "wx.h".}
#*
#    @class wxRichTextObject
#
#    This is the base for drawable rich text objects.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextObject* {.importcpp: "wxRichTextObject", header: "wx.h".} = object of WxObject #*
                                                                                           #        Constructor, taking an optional parent pointer.
                                                                                           #    
    wxRichTextObject* {.importc: "wxRichTextObject".}: Declare_Class
    mSize* {.importc: "m_size".}: WxSize
    mMaxSize* {.importc: "m_maxSize".}: WxSize
    mMinSize* {.importc: "m_minSize".}: WxSize
    mPos* {.importc: "m_pos".}: WxPoint
    mDescent* {.importc: "m_descent".}: cint # Descent for this object (if any)
    mRefCount* {.importc: "m_refCount".}: cint
    mShow* {.importc: "m_show".}: bool
    mParent* {.importc: "m_parent".}: ptr WxRichTextObject # The range of this object (start position to end position)
    mRange* {.importc: "m_range".}: WxRichTextRange # The internal range of this object, if it's a top-level object with its own range space
    mOwnRange* {.importc: "m_ownRange".}: WxRichTextRange # Attributes
    mAttributes* {.importc: "m_attributes".}: WxRichTextAttr # Properties
    mProperties* {.importc: "m_properties".}: WxRichTextProperties


proc constructwxRichTextObject*(parent: ptr WxRichTextObject = nil): WxRichTextObject {.
    constructor, importcpp: "wxRichTextObject(@)", header: "wx.h".}
proc destroywxRichTextObject*(this: var WxRichTextObject) {.
    importcpp: "#.~wxRichTextObject()", header: "wx.h".}
proc draw*(this: var WxRichTextObject; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextObject; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc hitTest*(this: var WxRichTextObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc findPosition*(this: var WxRichTextObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    importcpp: "FindPosition", header: "wx.h".}
proc getBestSize*(this: WxRichTextObject): WxSize {.noSideEffect, 
    importcpp: "GetBestSize", header: "wx.h".}
proc getRangeSize*(this: WxRichTextObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc doSplit*(this: var WxRichTextObject; pos: clong): ptr WxRichTextObject {.
    importcpp: "DoSplit", header: "wx.h".}
proc calculateRange*(this: var WxRichTextObject; start: clong; `end`: var clong) {.
    importcpp: "CalculateRange", header: "wx.h".}
proc deleteRange*(this: var WxRichTextObject; range: WxRichTextRange): bool {.
    importcpp: "DeleteRange", header: "wx.h".}
proc isEmpty*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc isFloatable*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsFloatable", header: "wx.h".}
proc isFloating*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsFloating", header: "wx.h".}
proc getFloatDirection*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetFloatDirection", header: "wx.h".}
proc getTextForRange*(this: WxRichTextObject; range: WxRichTextRange): WxString {.
    noSideEffect, importcpp: "GetTextForRange", header: "wx.h".}
proc canMerge*(this: WxRichTextObject; `object`: ptr WxRichTextObject; 
               context: var WxRichTextDrawingContext): bool {.noSideEffect, 
    importcpp: "CanMerge", header: "wx.h".}
proc merge*(this: var WxRichTextObject; `object`: ptr WxRichTextObject; 
            context: var WxRichTextDrawingContext): bool {.importcpp: "Merge", 
    header: "wx.h".}
proc canSplit*(this: WxRichTextObject; context: var WxRichTextDrawingContext): bool {.
    noSideEffect, importcpp: "CanSplit", header: "wx.h".}
proc split*(this: var WxRichTextObject; context: var WxRichTextDrawingContext): ptr WxRichTextObject {.
    importcpp: "Split", header: "wx.h".}
proc dump*(this: var WxRichTextObject; stream: var WxTextOutputStream) {.
    importcpp: "Dump", header: "wx.h".}
proc canEditProperties*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextObject; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextObject): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc acceptsFocus*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc importFromXML*(this: var WxRichTextObject; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.importcpp: "ImportFromXML", 
    header: "wx.h".}
proc exportXML*(this: var WxRichTextObject; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextObject; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc usesParagraphAttributes*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "UsesParagraphAttributes", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextObject): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc invalidate*(this: var WxRichTextObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    importcpp: "Invalidate", header: "wx.h".}
proc handlesChildSelections*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "HandlesChildSelections", header: "wx.h".}
proc getSelection*(this: WxRichTextObject; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, importcpp: "GetSelection", header: "wx.h".}
proc getCachedSize*(this: WxRichTextObject): WxSize {.noSideEffect, 
    importcpp: "GetCachedSize", header: "wx.h".}
proc setCachedSize*(this: var WxRichTextObject; sz: WxSize) {.
    importcpp: "SetCachedSize", header: "wx.h".}
proc getMaxSize*(this: WxRichTextObject): WxSize {.noSideEffect, 
    importcpp: "GetMaxSize", header: "wx.h".}
proc setMaxSize*(this: var WxRichTextObject; sz: WxSize) {.
    importcpp: "SetMaxSize", header: "wx.h".}
proc getMinSize*(this: WxRichTextObject): WxSize {.noSideEffect, 
    importcpp: "GetMinSize", header: "wx.h".}
proc setMinSize*(this: var WxRichTextObject; sz: WxSize) {.
    importcpp: "SetMinSize", header: "wx.h".}
proc getNaturalSize*(this: WxRichTextObject): WxTextAttrSize {.noSideEffect, 
    importcpp: "GetNaturalSize", header: "wx.h".}
proc getPosition*(this: WxRichTextObject): WxPoint {.noSideEffect, 
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxRichTextObject; pos: WxPoint) {.
    importcpp: "SetPosition", header: "wx.h".}
proc getAbsolutePosition*(this: WxRichTextObject): WxPoint {.noSideEffect, 
    importcpp: "GetAbsolutePosition", header: "wx.h".}
proc getRect*(this: WxRichTextObject): WxRect {.noSideEffect, 
    importcpp: "GetRect", header: "wx.h".}
proc setRange*(this: var WxRichTextObject; range: WxRichTextRange) {.
    importcpp: "SetRange", header: "wx.h".}
proc getRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc getRange*(this: var WxRichTextObject): var WxRichTextRange {.
    importcpp: "GetRange", header: "wx.h".}
proc setOwnRange*(this: var WxRichTextObject; range: WxRichTextRange) {.
    importcpp: "SetOwnRange", header: "wx.h".}
proc getOwnRange*(this: WxRichTextObject): WxRichTextRange {.noSideEffect, 
    importcpp: "GetOwnRange", header: "wx.h".}
proc getOwnRange*(this: var WxRichTextObject): var WxRichTextRange {.
    importcpp: "GetOwnRange", header: "wx.h".}
proc getOwnRangeIfTopLevel*(this: WxRichTextObject): WxRichTextRange {.
    noSideEffect, importcpp: "GetOwnRangeIfTopLevel", header: "wx.h".}
proc isComposite*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsComposite", header: "wx.h".}
proc isAtomic*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsAtomic", header: "wx.h".}
proc getParent*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "GetParent", header: "wx.h".}
proc setParent*(this: var WxRichTextObject; parent: ptr WxRichTextObject) {.
    importcpp: "SetParent", header: "wx.h".}
proc getContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetContainer", header: "wx.h".}
proc getParentContainer*(this: WxRichTextObject): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetParentContainer", header: "wx.h".}
proc setMargins*(this: var WxRichTextObject; margin: cint) {.
    importcpp: "SetMargins", header: "wx.h".}
proc setMargins*(this: var WxRichTextObject; leftMargin: cint; 
                 rightMargin: cint; topMargin: cint; bottomMargin: cint) {.
    importcpp: "SetMargins", header: "wx.h".}
proc getLeftMargin*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetLeftMargin", header: "wx.h".}
proc getRightMargin*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetRightMargin", header: "wx.h".}
proc getTopMargin*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetTopMargin", header: "wx.h".}
proc getBottomMargin*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetBottomMargin", header: "wx.h".}
proc getAvailableContentArea*(this: WxRichTextObject; dc: var WxDC; 
                              context: var WxRichTextDrawingContext; 
                              outerRect: WxRect): WxRect {.noSideEffect, 
    importcpp: "GetAvailableContentArea", header: "wx.h".}
proc layoutToBestSize*(this: var WxRichTextObject; dc: var WxDC; 
                       context: var WxRichTextDrawingContext; 
                       buffer: ptr WxRichTextBuffer; parentAttr: WxRichTextAttr; 
                       attr: WxRichTextAttr; availableParentSpace: WxRect; 
                       availableContainerSpace: WxRect; style: cint): bool {.
    importcpp: "LayoutToBestSize", header: "wx.h".}
proc adjustAttributes*(this: var WxRichTextObject; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.
    importcpp: "AdjustAttributes", header: "wx.h".}
proc setAttributes*(this: var WxRichTextObject; attr: WxRichTextAttr) {.
    importcpp: "SetAttributes", header: "wx.h".}
proc getAttributes*(this: WxRichTextObject): WxRichTextAttr {.noSideEffect, 
    importcpp: "GetAttributes", header: "wx.h".}
proc getAttributes*(this: var WxRichTextObject): var WxRichTextAttr {.
    importcpp: "GetAttributes", header: "wx.h".}
proc getProperties*(this: var WxRichTextObject): var WxRichTextProperties {.
    importcpp: "GetProperties", header: "wx.h".}
proc getProperties*(this: WxRichTextObject): WxRichTextProperties {.
    noSideEffect, importcpp: "GetProperties", header: "wx.h".}
proc setProperties*(this: var WxRichTextObject; props: WxRichTextProperties) {.
    importcpp: "SetProperties", header: "wx.h".}
proc setDescent*(this: var WxRichTextObject; descent: cint) {.
    importcpp: "SetDescent", header: "wx.h".}
proc getDescent*(this: WxRichTextObject): cint {.noSideEffect, 
    importcpp: "GetDescent", header: "wx.h".}
proc getBuffer*(this: WxRichTextObject): ptr WxRichTextBuffer {.noSideEffect, 
    importcpp: "GetBuffer", header: "wx.h".}
proc setName*(this: var WxRichTextObject; name: WxString) {.
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxRichTextObject): WxString {.noSideEffect, 
    importcpp: "GetName", header: "wx.h".}
proc isTopLevel*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsTopLevel", header: "wx.h".}
proc isShown*(this: WxRichTextObject): bool {.noSideEffect, 
    importcpp: "IsShown", header: "wx.h".}
proc show*(this: var WxRichTextObject; show: bool) {.importcpp: "Show", 
    header: "wx.h".}
proc clone*(this: WxRichTextObject): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc copy*(this: var WxRichTextObject; obj: WxRichTextObject) {.
    importcpp: "Copy", header: "wx.h".}
proc reference*(this: var WxRichTextObject) {.importcpp: "Reference", 
    header: "wx.h".}
proc dereference*(this: var WxRichTextObject) {.importcpp: "Dereference", 
    header: "wx.h".}
proc move*(this: var WxRichTextObject; pt: WxPoint) {.importcpp: "Move", 
    header: "wx.h".}
proc convertTenthsMMToPixels*(this: WxRichTextObject; dc: var WxDC; units: cint): cint {.
    noSideEffect, importcpp: "ConvertTenthsMMToPixels", header: "wx.h".}
proc convertTenthsMMToPixels*(ppi: cint; units: cint; scale: cdouble = 1.0): cint {.
    importcpp: "wxRichTextObject::ConvertTenthsMMToPixels(@)", header: "wx.h".}
proc convertPixelsToTenthsMM*(this: WxRichTextObject; dc: var WxDC; pixels: cint): cint {.
    noSideEffect, importcpp: "ConvertPixelsToTenthsMM", header: "wx.h".}
proc convertPixelsToTenthsMM*(ppi: cint; pixels: cint; scale: cdouble = 1.0): cint {.
    importcpp: "wxRichTextObject::ConvertPixelsToTenthsMM(@)", header: "wx.h".}
proc drawBoxAttributes*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                        attr: WxRichTextAttr; boxRect: WxRect; flags: cint = 0; 
                        obj: ptr WxRichTextObject = nil): bool {.
    importcpp: "wxRichTextObject::DrawBoxAttributes(@)", header: "wx.h".}
proc drawBorder*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                 attr: WxTextAttrBorders; rect: WxRect; flags: cint = 0): bool {.
    importcpp: "wxRichTextObject::DrawBorder(@)", header: "wx.h".}
proc getBoxRects*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                  attr: WxRichTextAttr; marginRect: var WxRect; 
                  borderRect: var WxRect; contentRect: var WxRect; 
                  paddingRect: var WxRect; outlineRect: var WxRect): bool {.
    importcpp: "wxRichTextObject::GetBoxRects(@)", header: "wx.h".}
proc getTotalMargin*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                     attr: WxRichTextAttr; leftMargin: var cint; 
                     rightMargin: var cint; topMargin: var cint; 
                     bottomMargin: var cint): bool {.
    importcpp: "wxRichTextObject::GetTotalMargin(@)", header: "wx.h".}
proc adjustAvailableSpace*(dc: var WxDC; buffer: ptr WxRichTextBuffer; 
                           parentAttr: WxRichTextAttr; 
                           childAttr: WxRichTextAttr; 
                           availableParentSpace: WxRect; 
                           availableContainerSpace: WxRect): WxRect {.
    importcpp: "wxRichTextObject::AdjustAvailableSpace(@)", header: "wx.h".}
wx_Declare_List_With_Decl(wxRichTextObject, wxRichTextObjectList, class)
#*
#    @class wxRichTextCompositeObject
#
#    Objects of this class can contain other objects.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextObject, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextCompositeObject* {.importcpp: "wxRichTextCompositeObject", 
                               header: "wx.h".} = object of WxRichTextObject # 
                                                                             # Constructors
    wxRichTextCompositeObject* {.importc: "wxRichTextCompositeObject".}: Declare_Class
    mChildren* {.importc: "m_children".}: WxRichTextObjectList


proc constructwxRichTextCompositeObject*(parent: ptr WxRichTextObject = nil): WxRichTextCompositeObject {.
    constructor, importcpp: "wxRichTextCompositeObject(@)", header: "wx.h".}
proc destroywxRichTextCompositeObject*(this: var WxRichTextCompositeObject) {.
    importcpp: "#.~wxRichTextCompositeObject()", header: "wx.h".}
proc hitTest*(this: var WxRichTextCompositeObject; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc findPosition*(this: var WxRichTextCompositeObject; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    importcpp: "FindPosition", header: "wx.h".}
proc calculateRange*(this: var WxRichTextCompositeObject; start: clong; 
                     `end`: var clong) {.importcpp: "CalculateRange", 
    header: "wx.h".}
proc deleteRange*(this: var WxRichTextCompositeObject; range: WxRichTextRange): bool {.
    importcpp: "DeleteRange", header: "wx.h".}
proc getTextForRange*(this: WxRichTextCompositeObject; range: WxRichTextRange): WxString {.
    noSideEffect, importcpp: "GetTextForRange", header: "wx.h".}
proc getRangeSize*(this: WxRichTextCompositeObject; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc dump*(this: var WxRichTextCompositeObject; stream: var WxTextOutputStream) {.
    importcpp: "Dump", header: "wx.h".}
proc invalidate*(this: var WxRichTextCompositeObject; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    importcpp: "Invalidate", header: "wx.h".}
proc getChildren*(this: var WxRichTextCompositeObject): var WxRichTextObjectList {.
    importcpp: "GetChildren", header: "wx.h".}
proc getChildren*(this: WxRichTextCompositeObject): WxRichTextObjectList {.
    noSideEffect, importcpp: "GetChildren", header: "wx.h".}
proc getChildCount*(this: WxRichTextCompositeObject): csize {.noSideEffect, 
    importcpp: "GetChildCount", header: "wx.h".}
proc getChild*(this: WxRichTextCompositeObject; n: csize): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetChild", header: "wx.h".}
proc isComposite*(this: WxRichTextCompositeObject): bool {.noSideEffect, 
    importcpp: "IsComposite", header: "wx.h".}
proc isAtomic*(this: WxRichTextCompositeObject): bool {.noSideEffect, 
    importcpp: "IsAtomic", header: "wx.h".}
proc isEmpty*(this: WxRichTextCompositeObject): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc getChildAtPosition*(this: WxRichTextCompositeObject; pos: clong): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetChildAtPosition", header: "wx.h".}
proc copy*(this: var WxRichTextCompositeObject; obj: WxRichTextCompositeObject) {.
    importcpp: "Copy", header: "wx.h".}
proc appendChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject): csize {.
    importcpp: "AppendChild", header: "wx.h".}
proc insertChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; inFrontOf: ptr WxRichTextObject): bool {.
    importcpp: "InsertChild", header: "wx.h".}
proc removeChild*(this: var WxRichTextCompositeObject; 
                  child: ptr WxRichTextObject; deleteChild: bool = false): bool {.
    importcpp: "RemoveChild", header: "wx.h".}
proc deleteChildren*(this: var WxRichTextCompositeObject): bool {.
    importcpp: "DeleteChildren", header: "wx.h".}
proc defragment*(this: var WxRichTextCompositeObject; 
                 context: var WxRichTextDrawingContext; 
                 range: WxRichTextRange = wxRICHTEXT_ALL): bool {.
    importcpp: "Defragment", header: "wx.h".}
proc move*(this: var WxRichTextCompositeObject; pt: WxPoint) {.
    importcpp: "Move", header: "wx.h".}
#*
#    @class wxRichTextParagraphLayoutBox
#
#    This class knows how to lay out paragraphs.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextCompositeObject, wxRichTextObject, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextParagraphLayoutBox* {.importcpp: "wxRichTextParagraphLayoutBox", 
                                  header: "wx.h".} = object of WxRichTextCompositeObject # 
                                                                                         # Constructors
    wxRichTextParagraphLayoutBox* {.importc: "wxRichTextParagraphLayoutBox".}: Declare_Dynamic_Class
    mCtrl* {.importc: "m_ctrl".}: ptr WxRichTextCtrl
    mDefaultAttributes* {.importc: "m_defaultAttributes".}: WxRichTextAttr # The 
                                                                           # invalidated range that will need full 
                                                                           # layout
    mInvalidRange* {.importc: "m_invalidRange".}: WxRichTextRange # Is the last paragraph partial or complete?
    mPartialParagraph* {.importc: "m_partialParagraph".}: bool # The floating layout state
    mFloatCollector* {.importc: "m_floatCollector".}: ptr WxRichTextFloatCollector


proc constructwxRichTextParagraphLayoutBox*(parent: ptr WxRichTextObject = nil): WxRichTextParagraphLayoutBox {.
    constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", header: "wx.h".}
proc constructwxRichTextParagraphLayoutBox*(obj: WxRichTextParagraphLayoutBox): WxRichTextParagraphLayoutBox {.
    constructor, importcpp: "wxRichTextParagraphLayoutBox(@)", header: "wx.h".}
proc destroywxRichTextParagraphLayoutBox*(this: var WxRichTextParagraphLayoutBox) {.
    importcpp: "#.~wxRichTextParagraphLayoutBox()", header: "wx.h".}
proc hitTest*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc draw*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc deleteRange*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange): bool {.
    importcpp: "DeleteRange", header: "wx.h".}
proc getTextForRange*(this: WxRichTextParagraphLayoutBox; range: WxRichTextRange): WxString {.
    noSideEffect, importcpp: "GetTextForRange", header: "wx.h".}
proc importFromXML*(this: var WxRichTextParagraphLayoutBox; 
                    buffer: ptr WxRichTextBuffer; node: ptr WxXmlNode; 
                    handler: ptr WxRichTextXMLHandler; recurse: ptr bool): bool {.
    importcpp: "ImportFromXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextParagraphLayoutBox; 
                stream: var WxOutputStream; indent: cint; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextParagraphLayoutBox; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextParagraphLayoutBox): WxString {.
    noSideEffect, importcpp: "GetXMLNodeName", header: "wx.h".}
proc acceptsFocus*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc setRichTextCtrl*(this: var WxRichTextParagraphLayoutBox; 
                      ctrl: ptr WxRichTextCtrl) {.importcpp: "SetRichTextCtrl", 
    header: "wx.h".}
proc getRichTextCtrl*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextCtrl {.
    noSideEffect, importcpp: "GetRichTextCtrl", header: "wx.h".}
proc setPartialParagraph*(this: var WxRichTextParagraphLayoutBox; 
                          partialPara: bool) {.importcpp: "SetPartialParagraph", 
    header: "wx.h".}
proc getPartialParagraph*(this: WxRichTextParagraphLayoutBox): bool {.
    noSideEffect, importcpp: "GetPartialParagraph", header: "wx.h".}
proc getStyleSheet*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextStyleSheet {.
    noSideEffect, importcpp: "GetStyleSheet", header: "wx.h".}
proc isTopLevel*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    importcpp: "IsTopLevel", header: "wx.h".}
proc insertParagraphsWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                               buffer: ptr WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "InsertParagraphsWithUndo", header: "wx.h".}
proc insertTextWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                         buffer: ptr WxRichTextBuffer; pos: clong; 
                         text: WxString; ctrl: ptr WxRichTextCtrl; 
                         flags: cint = 0): bool {.
    importcpp: "InsertTextWithUndo", header: "wx.h".}
proc insertNewlineWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                            buffer: ptr WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "InsertNewlineWithUndo", header: "wx.h".}
proc insertImageWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): bool {.
    importcpp: "InsertImageWithUndo", header: "wx.h".}
proc insertFieldWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          buffer: ptr WxRichTextBuffer; pos: clong; 
                          fieldType: WxString; properties: WxRichTextProperties; 
                          ctrl: ptr WxRichTextCtrl; flags: cint; 
                          textAttr: WxRichTextAttr): ptr WxRichTextField {.
    importcpp: "InsertFieldWithUndo", header: "wx.h".}
proc getStyleForNewParagraph*(this: WxRichTextParagraphLayoutBox; 
                              buffer: ptr WxRichTextBuffer; pos: clong; 
                              caretPosition: bool = false; 
                              lookUpNewParaStyle: bool = false): WxRichTextAttr {.
    noSideEffect, importcpp: "GetStyleForNewParagraph", header: "wx.h".}
proc insertObjectWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                           buffer: ptr WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint = 0): ptr WxRichTextObject {.
    importcpp: "InsertObjectWithUndo", header: "wx.h".}
proc deleteRangeWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                          range: WxRichTextRange; ctrl: ptr WxRichTextCtrl; 
                          buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "DeleteRangeWithUndo", header: "wx.h".}
proc drawFloats*(this: var WxRichTextParagraphLayoutBox; dc: var WxDC; 
                 context: var WxRichTextDrawingContext; range: WxRichTextRange; 
                 selection: WxRichTextSelection; rect: WxRect; descent: cint; 
                 style: cint) {.importcpp: "DrawFloats", header: "wx.h".}
proc moveAnchoredObjectToParagraph*(this: var WxRichTextParagraphLayoutBox; 
                                    `from`: ptr WxRichTextParagraph; 
                                    to: ptr WxRichTextParagraph; 
                                    obj: ptr WxRichTextObject) {.
    importcpp: "MoveAnchoredObjectToParagraph", header: "wx.h".}
proc init*(this: var WxRichTextParagraphLayoutBox) {.importcpp: "Init", 
    header: "wx.h".}
proc clear*(this: var WxRichTextParagraphLayoutBox) {.importcpp: "Clear", 
    header: "wx.h".}
proc reset*(this: var WxRichTextParagraphLayoutBox) {.importcpp: "Reset", 
    header: "wx.h".}
proc addParagraph*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    importcpp: "AddParagraph", header: "wx.h".}
proc addImage*(this: var WxRichTextParagraphLayoutBox; image: WxImage; 
               paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    importcpp: "AddImage", header: "wx.h".}
proc addParagraphs*(this: var WxRichTextParagraphLayoutBox; text: WxString; 
                    paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    importcpp: "AddParagraphs", header: "wx.h".}
proc getLineAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                        caretPosition: bool = false): ptr WxRichTextLine {.
    noSideEffect, importcpp: "GetLineAtPosition", header: "wx.h".}
proc getLineAtYPosition*(this: WxRichTextParagraphLayoutBox; y: cint): ptr WxRichTextLine {.
    noSideEffect, importcpp: "GetLineAtYPosition", header: "wx.h".}
proc getParagraphAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                             caretPosition: bool = false): ptr WxRichTextParagraph {.
    noSideEffect, importcpp: "GetParagraphAtPosition", header: "wx.h".}
proc getLineSizeAtPosition*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                            caretPosition: bool = false): WxSize {.noSideEffect, 
    importcpp: "GetLineSizeAtPosition", header: "wx.h".}
proc getVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; pos: clong; 
                           caretPosition: bool = false; 
                           startOfLine: bool = false): clong {.noSideEffect, 
    importcpp: "GetVisibleLineNumber", header: "wx.h".}
proc getLineForVisibleLineNumber*(this: WxRichTextParagraphLayoutBox; 
                                  lineNumber: clong): ptr WxRichTextLine {.
    noSideEffect, importcpp: "GetLineForVisibleLineNumber", header: "wx.h".}
proc getLeafObjectAtPosition*(this: WxRichTextParagraphLayoutBox; 
                              position: clong): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetLeafObjectAtPosition", header: "wx.h".}
proc getParagraphAtLine*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): ptr WxRichTextParagraph {.
    noSideEffect, importcpp: "GetParagraphAtLine", header: "wx.h".}
proc getParagraphForLine*(this: WxRichTextParagraphLayoutBox; 
                          line: ptr WxRichTextLine): ptr WxRichTextParagraph {.
    noSideEffect, importcpp: "GetParagraphForLine", header: "wx.h".}
proc getParagraphLength*(this: WxRichTextParagraphLayoutBox; 
                         paragraphNumber: clong): cint {.noSideEffect, 
    importcpp: "GetParagraphLength", header: "wx.h".}
proc getParagraphCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, importcpp: "GetParagraphCount", header: "wx.h".}
proc getLineCount*(this: WxRichTextParagraphLayoutBox): cint {.noSideEffect, 
    importcpp: "GetLineCount", header: "wx.h".}
proc getParagraphText*(this: WxRichTextParagraphLayoutBox; 
                       paragraphNumber: clong): WxString {.noSideEffect, 
    importcpp: "GetParagraphText", header: "wx.h".}
proc xYToPosition*(this: WxRichTextParagraphLayoutBox; x: clong; y: clong): clong {.
    noSideEffect, importcpp: "XYToPosition", header: "wx.h".}
proc positionToXY*(this: WxRichTextParagraphLayoutBox; pos: clong; x: ptr clong; 
                   y: ptr clong): bool {.noSideEffect, 
    importcpp: "PositionToXY", header: "wx.h".}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
               style: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    importcpp: "SetStyle", header: "wx.h".}
proc setStyle*(this: var WxRichTextParagraphLayoutBox; 
               obj: ptr WxRichTextObject; textAttr: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.
    importcpp: "SetStyle", header: "wx.h".}
proc getStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
               style: var WxRichTextAttr): bool {.importcpp: "GetStyle", 
    header: "wx.h".}
proc getUncombinedStyle*(this: var WxRichTextParagraphLayoutBox; 
                         position: clong; style: var WxRichTextAttr): bool {.
    importcpp: "GetUncombinedStyle", header: "wx.h".}
proc doGetStyle*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                 style: var WxRichTextAttr; combineStyles: bool = true): bool {.
    importcpp: "DoGetStyle", header: "wx.h".}
proc getStyleForRange*(this: var WxRichTextParagraphLayoutBox; 
                       range: WxRichTextRange; style: var WxRichTextAttr): bool {.
    importcpp: "GetStyleForRange", header: "wx.h".}
proc collectStyle*(this: var WxRichTextParagraphLayoutBox; 
                   currentStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                   clashingAttr: var WxRichTextAttr; 
                   absentAttr: var WxRichTextAttr): bool {.
    importcpp: "CollectStyle", header: "wx.h".}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "SetListStyle", header: "wx.h".}
proc setListStyle*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; defName: WxString; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "SetListStyle", header: "wx.h".}
proc clearListStyle*(this: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange; 
                     flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    importcpp: "ClearListStyle", header: "wx.h".}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "NumberList", header: "wx.h".}
proc numberList*(this: var WxRichTextParagraphLayoutBox; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "NumberList", header: "wx.h".}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.importcpp: "PromoteList", 
    header: "wx.h".}
proc promoteList*(this: var WxRichTextParagraphLayoutBox; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.importcpp: "PromoteList", 
    header: "wx.h".}
proc doNumberList*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; promotionRange: WxRichTextRange; 
                   promoteBy: cint; def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "DoNumberList", header: "wx.h".}
proc findNextParagraphNumber*(this: WxRichTextParagraphLayoutBox; 
                              previousParagraph: ptr WxRichTextParagraph; 
                              attr: var WxRichTextAttr): bool {.noSideEffect, 
    importcpp: "FindNextParagraphNumber", header: "wx.h".}
proc setProperties*(this: var WxRichTextParagraphLayoutBox; 
                    range: WxRichTextRange; properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    importcpp: "SetProperties", header: "wx.h".}
proc setObjectPropertiesWithUndo*(this: var WxRichTextParagraphLayoutBox; 
                                  obj: var WxRichTextObject; 
                                  properties: WxRichTextProperties; 
                                  objToSet: ptr WxRichTextObject = nil): bool {.
    importcpp: "SetObjectPropertiesWithUndo", header: "wx.h".}
proc hasCharacterAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, importcpp: "HasCharacterAttributes", header: "wx.h".}
proc hasParagraphAttributes*(this: WxRichTextParagraphLayoutBox; 
                             range: WxRichTextRange; style: WxRichTextAttr): bool {.
    noSideEffect, importcpp: "HasParagraphAttributes", header: "wx.h".}
proc clone*(this: WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, importcpp: "Clone", header: "wx.h".}
proc prepareContent*(this: var WxRichTextParagraphLayoutBox; 
                     container: var WxRichTextParagraphLayoutBox) {.
    importcpp: "PrepareContent", header: "wx.h".}
proc insertFragment*(this: var WxRichTextParagraphLayoutBox; position: clong; 
                     fragment: var WxRichTextParagraphLayoutBox): bool {.
    importcpp: "InsertFragment", header: "wx.h".}
proc copyFragment*(this: var WxRichTextParagraphLayoutBox; 
                   range: WxRichTextRange; 
                   fragment: var WxRichTextParagraphLayoutBox): bool {.
    importcpp: "CopyFragment", header: "wx.h".}
proc applyStyleSheet*(this: var WxRichTextParagraphLayoutBox; 
                      styleSheet: ptr WxRichTextStyleSheet): bool {.
    importcpp: "ApplyStyleSheet", header: "wx.h".}
proc copy*(this: var WxRichTextParagraphLayoutBox; 
           obj: WxRichTextParagraphLayoutBox) {.importcpp: "Copy", 
    header: "wx.h".}
proc updateRanges*(this: var WxRichTextParagraphLayoutBox) {.
    importcpp: "UpdateRanges", header: "wx.h".}
proc getText*(this: WxRichTextParagraphLayoutBox): WxString {.noSideEffect, 
    importcpp: "GetText", header: "wx.h".}
proc setDefaultStyle*(this: var WxRichTextParagraphLayoutBox; 
                      style: WxRichTextAttr): bool {.
    importcpp: "SetDefaultStyle", header: "wx.h".}
proc getDefaultStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, importcpp: "GetDefaultStyle", header: "wx.h".}
proc setBasicStyle*(this: var WxRichTextParagraphLayoutBox; 
                    style: WxRichTextAttr) {.importcpp: "SetBasicStyle", 
    header: "wx.h".}
proc getBasicStyle*(this: WxRichTextParagraphLayoutBox): WxRichTextAttr {.
    noSideEffect, importcpp: "GetBasicStyle", header: "wx.h".}
proc invalidate*(this: var WxRichTextParagraphLayoutBox; 
                 invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    importcpp: "Invalidate", header: "wx.h".}
proc doInvalidate*(this: var WxRichTextParagraphLayoutBox; 
                   invalidRange: WxRichTextRange) {.importcpp: "DoInvalidate", 
    header: "wx.h".}
proc invalidateHierarchy*(this: var WxRichTextParagraphLayoutBox; 
                          invalidRange: WxRichTextRange = wxRICHTEXT_ALL) {.
    importcpp: "InvalidateHierarchy", header: "wx.h".}
proc updateFloatingObjects*(this: var WxRichTextParagraphLayoutBox; 
                            availableRect: WxRect; 
                            untilObj: ptr WxRichTextObject = nil): bool {.
    importcpp: "UpdateFloatingObjects", header: "wx.h".}
proc getInvalidRange*(this: WxRichTextParagraphLayoutBox; 
                      wholeParagraphs: bool = false): WxRichTextRange {.
    noSideEffect, importcpp: "GetInvalidRange", header: "wx.h".}
proc isDirty*(this: WxRichTextParagraphLayoutBox): bool {.noSideEffect, 
    importcpp: "IsDirty", header: "wx.h".}
proc getFloatCollector*(this: var WxRichTextParagraphLayoutBox): ptr WxRichTextFloatCollector {.
    importcpp: "GetFloatCollector", header: "wx.h".}
proc getFloatingObjectCount*(this: WxRichTextParagraphLayoutBox): cint {.
    noSideEffect, importcpp: "GetFloatingObjectCount", header: "wx.h".}
proc getFloatingObjects*(this: WxRichTextParagraphLayoutBox; 
                         objects: var WxRichTextObjectList): bool {.
    noSideEffect, importcpp: "GetFloatingObjects", header: "wx.h".}
#*
#    @class wxRichTextBox
#
#    This class implements a floating or inline text box, containing paragraphs.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextParagraphLayoutBox, wxRichTextObject, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextBox* {.importcpp: "wxRichTextBox", header: "wx.h".} = object of WxRichTextParagraphLayoutBox # 
                                                                                                         # Constructors
                                                                                                         #
                                                                                                         #*
                                                                                                         #        
                                                                                                         #        Default 
                                                                                                         #        constructor; 
                                                                                                         #        optionally 
                                                                                                         #        pass 
                                                                                                         #        the 
                                                                                                         #        parent 
                                                                                                         #        object.
                                                                                                         #    
    wxRichTextBox* {.importc: "wxRichTextBox".}: Declare_Dynamic_Class


proc constructwxRichTextBox*(parent: ptr WxRichTextObject = nil): WxRichTextBox {.
    constructor, importcpp: "wxRichTextBox(@)", header: "wx.h".}
proc constructwxRichTextBox*(obj: WxRichTextBox): WxRichTextBox {.constructor, 
    importcpp: "wxRichTextBox(@)", header: "wx.h".}
proc draw*(this: var WxRichTextBox; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextBox): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc canEditProperties*(this: WxRichTextBox): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextBox; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextBox): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc clone*(this: WxRichTextBox): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc copy*(this: var WxRichTextBox; obj: WxRichTextBox) {.importcpp: "Copy", 
    header: "wx.h".}
#*
#    @class wxRichTextField
#
#    This class implements the general concept of a field, an object that represents
#    additional functionality such as a footnote, a bookmark, a page number, a table
#    of contents, and so on. Extra information (such as a bookmark name) can be stored
#    in the object properties.
#
#    Drawing, layout, and property editing is delegated to classes derived
#    from wxRichTextFieldType, such as instances of wxRichTextFieldTypeStandard; this makes
#    the use of fields an efficient method of introducing extra functionality, since
#    most of the information required to draw a field (such as a bitmap) is kept centrally
#    in a single field type definition.
#
#    The FieldType property, accessed by SetFieldType/GetFieldType, is used to retrieve
#    the field type definition. So be careful not to overwrite this property.
#
#    wxRichTextField is derived from wxRichTextParagraphLayoutBox, which means that it
#    can contain its own read-only content, refreshed when the application calls the UpdateField
#    function. Whether a field is treated as a composite or a single graphic is determined
#    by the field type definition. If using wxRichTextFieldTypeStandard, passing the display
#    type wxRICHTEXT_FIELD_STYLE_COMPOSITE to the field type definition causes the field
#    to behave like a composite; the other display styles display a simple graphic.
#    When implementing a composite field, you will still need to derive from wxRichTextFieldTypeStandard
#    or wxRichTextFieldType, if only to implement UpdateField to refresh the field content
#    appropriately. wxRichTextFieldTypeStandard is only one possible implementation, but
#    covers common needs especially for simple, static fields using text or a bitmap.
#
#    Register field types on application initialisation with the static function
#    wxRichTextBuffer::AddFieldType. They will be deleted automatically on
#    application exit.
#
#    An application can write a field to a control with wxRichTextCtrl::WriteField,
#    taking a field type, the properties for the field, and optional attributes.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextFieldTypeStandard, wxRichTextFieldType, wxRichTextParagraphLayoutBox, wxRichTextProperties, wxRichTextCtrl
#

type 
  WxRichTextField* {.importcpp: "wxRichTextField", header: "wx.h".} = object of WxRichTextParagraphLayoutBox # 
                                                                                                             # Constructors
                                                                                                             #
                                                                                                             #*
                                                                                                             #        
                                                                                                             #        Default 
                                                                                                             #        constructor; 
                                                                                                             #        optionally 
                                                                                                             #        pass 
                                                                                                             #        the 
                                                                                                             #        parent 
                                                                                                             #        object.
                                                                                                             #    
    wxRichTextField* {.importc: "wxRichTextField".}: Declare_Dynamic_Class


proc constructwxRichTextField*(fieldType: WxString = wxEmptyString; 
                               parent: ptr WxRichTextObject = nil): WxRichTextField {.
    constructor, importcpp: "wxRichTextField(@)", header: "wx.h".}
proc constructwxRichTextField*(obj: WxRichTextField): WxRichTextField {.
    constructor, importcpp: "wxRichTextField(@)", header: "wx.h".}
proc draw*(this: var WxRichTextField; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextField; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextField; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextField): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc canEditProperties*(this: WxRichTextField): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextField; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextField): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc acceptsFocus*(this: WxRichTextField): bool {.noSideEffect, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc calculateRange*(this: var WxRichTextField; start: clong; `end`: var clong) {.
    importcpp: "CalculateRange", header: "wx.h".}
proc isAtomic*(this: WxRichTextField): bool {.noSideEffect, 
    importcpp: "IsAtomic", header: "wx.h".}
proc isEmpty*(this: WxRichTextField): bool {.noSideEffect, importcpp: "IsEmpty", 
    header: "wx.h".}
proc isTopLevel*(this: WxRichTextField): bool {.noSideEffect, 
    importcpp: "IsTopLevel", header: "wx.h".}
proc setFieldType*(this: var WxRichTextField; fieldType: WxString) {.
    importcpp: "SetFieldType", header: "wx.h".}
proc getFieldType*(this: WxRichTextField): WxString {.noSideEffect, 
    importcpp: "GetFieldType", header: "wx.h".}
proc updateField*(this: var WxRichTextField; buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "UpdateField", header: "wx.h".}
proc clone*(this: WxRichTextField): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc copy*(this: var WxRichTextField; obj: WxRichTextField) {.importcpp: "Copy", 
    header: "wx.h".}
#*
#    @class wxRichTextFieldType
#
#    The base class for custom field types. Each type definition handles one
#    field type. Override functions to provide drawing, layout, updating and
#    property editing functionality for a field.
#
#    Register field types on application initialisation with the static function
#    wxRichTextBuffer::AddFieldType. They will be deleted automatically on
#    application exit.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextFieldTypeStandard, wxRichTextField, wxRichTextCtrl
#

type 
  WxRichTextFieldType* {.importcpp: "wxRichTextFieldType", header: "wx.h".} = object of WxObject #*
                                                                                                 #        Creates a field type definition.
                                                                                                 #    
    wxRichTextFieldType* {.importc: "wxRichTextFieldType".}: Declare_Class
    mName* {.importc: "m_name".}: WxString


proc constructwxRichTextFieldType*(name: WxString = wxEmptyString): WxRichTextFieldType {.
    constructor, importcpp: "wxRichTextFieldType(@)", header: "wx.h".}
proc constructwxRichTextFieldType*(fieldType: WxRichTextFieldType): WxRichTextFieldType {.
    constructor, importcpp: "wxRichTextFieldType(@)", header: "wx.h".}
proc copy*(this: var WxRichTextFieldType; fieldType: WxRichTextFieldType) {.
    importcpp: "Copy", header: "wx.h".}
proc draw*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextFieldType; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc canEditProperties*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextFieldType; obj: ptr WxRichTextField; 
                     parent: ptr WxWindow; buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): WxString {.
    noSideEffect, importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc updateField*(this: var WxRichTextFieldType; buffer: ptr WxRichTextBuffer; 
                  obj: ptr WxRichTextField): bool {.importcpp: "UpdateField", 
    header: "wx.h".}
proc isTopLevel*(this: WxRichTextFieldType; obj: ptr WxRichTextField): bool {.
    noSideEffect, importcpp: "IsTopLevel", header: "wx.h".}
proc setName*(this: var WxRichTextFieldType; name: WxString) {.
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxRichTextFieldType): WxString {.noSideEffect, 
    importcpp: "GetName", header: "wx.h".}
wx_Declare_String_Hash_Map(ptr wxRichTextFieldType, wxRichTextFieldTypeHashMap)
#*
#    @class wxRichTextFieldTypeStandard
#
#    A field type that can handle fields with text or bitmap labels, with a small range
#    of styles for implementing rectangular fields and fields that can be used for start
#    and end tags.
#
#    The border, text and background colours can be customised; the default is
#    white text on a black background.
#
#    The following display styles can be used.
#
#    @beginStyleTable
#    @style{wxRICHTEXT_FIELD_STYLE_COMPOSITE}
#           Creates a composite field; you will probably need to derive a new class to implement UpdateField.
#    @style{wxRICHTEXT_FIELD_STYLE_RECTANGLE}
#           Shows a rounded rectangle background.
#    @style{wxRICHTEXT_FIELD_STYLE_NO_BORDER}
#           Suppresses the background and border; mostly used with a bitmap label.
#    @style{wxRICHTEXT_FIELD_STYLE_START_TAG}
#           Shows a start tag background, with the pointy end facing right.
#    @style{wxRICHTEXT_FIELD_STYLE_END_TAG}
#           Shows an end tag background, with the pointy end facing left.
#    @endStyleTable
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextFieldType, wxRichTextField, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextFieldTypeStandard* {.importcpp: "wxRichTextFieldTypeStandard", 
                                 header: "wx.h".} = object of WxRichTextFieldType # 
                                                                                  # Display 
                                                                                  # style 
                                                                                  # types
    wxRichTextFieldTypeStandard* {.importc: "wxRichTextFieldTypeStandard".}: Declare_Class
    mLabel* {.importc: "m_label".}: WxString
    mDisplayStyle* {.importc: "m_displayStyle".}: cint
    mFont* {.importc: "m_font".}: WxFont
    mTextColour* {.importc: "m_textColour".}: WxColour
    mBorderColour* {.importc: "m_borderColour".}: WxColour
    mBackgroundColour* {.importc: "m_backgroundColour".}: WxColour
    mVerticalPadding* {.importc: "m_verticalPadding".}: cint
    mHorizontalPadding* {.importc: "m_horizontalPadding".}: cint
    mHorizontalMargin* {.importc: "m_horizontalMargin".}: cint
    mVerticalMargin* {.importc: "m_verticalMargin".}: cint
    mBitmap* {.importc: "m_bitmap".}: WxBitmap


const 
  wxRICHTEXT_FIELD_STYLE_COMPOSITE* = 0x00000001
  wxRICHTEXT_FIELD_STYLE_RECTANGLE* = 0x00000002
  wxRICHTEXT_FIELD_STYLE_NO_BORDER* = 0x00000004
  wxRICHTEXT_FIELD_STYLE_START_TAG* = 0x00000008
  wxRICHTEXT_FIELD_STYLE_END_TAG* = 0x00000010

proc constructwxRichTextFieldTypeStandard*(name: WxString; label: WxString; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_RECTANGLE): WxRichTextFieldTypeStandard {.
    constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: "wx.h".}
proc constructwxRichTextFieldTypeStandard*(name: WxString; bitmap: WxBitmap; 
    displayStyle: cint = wxRICHTEXT_FIELD_STYLE_NO_BORDER): WxRichTextFieldTypeStandard {.
    constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: "wx.h".}
proc constructwxRichTextFieldTypeStandard*(): WxRichTextFieldTypeStandard {.
    constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: "wx.h".}
proc constructwxRichTextFieldTypeStandard*(field: WxRichTextFieldTypeStandard): WxRichTextFieldTypeStandard {.
    constructor, importcpp: "wxRichTextFieldTypeStandard(@)", header: "wx.h".}
proc init*(this: var WxRichTextFieldTypeStandard) {.importcpp: "Init", 
    header: "wx.h".}
proc copy*(this: var WxRichTextFieldTypeStandard; 
           field: WxRichTextFieldTypeStandard) {.importcpp: "Copy", 
    header: "wx.h".}
proc draw*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
           dc: var WxDC; context: var WxRichTextDrawingContext; 
           range: WxRichTextRange; selection: WxRichTextSelection; rect: WxRect; 
           descent: cint; style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
             dc: var WxDC; context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
                   range: WxRichTextRange; size: var WxSize; descent: var cint; 
                   dc: var WxDC; context: var WxRichTextDrawingContext; 
                   flags: cint; position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc getSize*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField; 
              dc: var WxDC; context: var WxRichTextDrawingContext; style: cint): WxSize {.
    noSideEffect, importcpp: "GetSize", header: "wx.h".}
proc isTopLevel*(this: WxRichTextFieldTypeStandard; obj: ptr WxRichTextField): bool {.
    noSideEffect, importcpp: "IsTopLevel", header: "wx.h".}
proc setLabel*(this: var WxRichTextFieldTypeStandard; label: WxString) {.
    importcpp: "SetLabel", header: "wx.h".}
proc getLabel*(this: WxRichTextFieldTypeStandard): WxString {.noSideEffect, 
    importcpp: "GetLabel", header: "wx.h".}
proc setBitmap*(this: var WxRichTextFieldTypeStandard; bitmap: WxBitmap) {.
    importcpp: "SetBitmap", header: "wx.h".}
proc getBitmap*(this: WxRichTextFieldTypeStandard): WxBitmap {.noSideEffect, 
    importcpp: "GetBitmap", header: "wx.h".}
proc getDisplayStyle*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    importcpp: "GetDisplayStyle", header: "wx.h".}
proc setDisplayStyle*(this: var WxRichTextFieldTypeStandard; displayStyle: cint) {.
    importcpp: "SetDisplayStyle", header: "wx.h".}
proc getFont*(this: WxRichTextFieldTypeStandard): WxFont {.noSideEffect, 
    importcpp: "GetFont", header: "wx.h".}
proc setFont*(this: var WxRichTextFieldTypeStandard; font: WxFont) {.
    importcpp: "SetFont", header: "wx.h".}
proc getTextColour*(this: WxRichTextFieldTypeStandard): WxColour {.noSideEffect, 
    importcpp: "GetTextColour", header: "wx.h".}
proc setTextColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    importcpp: "SetTextColour", header: "wx.h".}
proc getBorderColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, importcpp: "GetBorderColour", header: "wx.h".}
proc setBorderColour*(this: var WxRichTextFieldTypeStandard; colour: WxColour) {.
    importcpp: "SetBorderColour", header: "wx.h".}
proc getBackgroundColour*(this: WxRichTextFieldTypeStandard): WxColour {.
    noSideEffect, importcpp: "GetBackgroundColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxRichTextFieldTypeStandard; 
                          colour: WxColour) {.importcpp: "SetBackgroundColour", 
    header: "wx.h".}
proc setVerticalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    importcpp: "SetVerticalPadding", header: "wx.h".}
proc getVerticalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, importcpp: "GetVerticalPadding", header: "wx.h".}
proc setHorizontalPadding*(this: var WxRichTextFieldTypeStandard; padding: cint) {.
    importcpp: "SetHorizontalPadding", header: "wx.h".}
proc getHorizontalPadding*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, importcpp: "GetHorizontalPadding", header: "wx.h".}
proc setHorizontalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    importcpp: "SetHorizontalMargin", header: "wx.h".}
proc getHorizontalMargin*(this: WxRichTextFieldTypeStandard): cint {.
    noSideEffect, importcpp: "GetHorizontalMargin", header: "wx.h".}
proc setVerticalMargin*(this: var WxRichTextFieldTypeStandard; margin: cint) {.
    importcpp: "SetVerticalMargin", header: "wx.h".}
proc getVerticalMargin*(this: WxRichTextFieldTypeStandard): cint {.noSideEffect, 
    importcpp: "GetVerticalMargin", header: "wx.h".}
#*
#    @class wxRichTextLine
#
#    This object represents a line in a paragraph, and stores
#    offsets from the start of the paragraph representing the
#    start and end positions of the line.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextLine* {.importcpp: "wxRichTextLine", header: "wx.h".} = object # 
                                                                           # Constructors
                                                                           # The range of the line 
                                                                           # (start 
                                                                           # position to end 
                                                                           # position)
                                                                           # This is 
                                                                           # relative to the 
                                                                           # parent 
                                                                           # paragraph.
    mRange* {.importc: "m_range".}: WxRichTextRange # Size and position measured relative to top of paragraph
    mPos* {.importc: "m_pos".}: WxPoint
    mSize* {.importc: "m_size".}: WxSize # Maximum descent for this line (location of text baseline)
    mDescent* {.importc: "m_descent".}: cint # The parent object
    mParent* {.importc: "m_parent".}: ptr WxRichTextParagraph
    mObjectSizes* {.importc: "m_objectSizes".}: WxArrayInt


proc constructwxRichTextLine*(parent: ptr WxRichTextParagraph): WxRichTextLine {.
    constructor, importcpp: "wxRichTextLine(@)", header: "wx.h".}
proc constructwxRichTextLine*(obj: WxRichTextLine): WxRichTextLine {.
    constructor, importcpp: "wxRichTextLine(@)", header: "wx.h".}
proc destroywxRichTextLine*(this: var WxRichTextLine) {.
    importcpp: "#.~wxRichTextLine()", header: "wx.h".}
proc setRange*(this: var WxRichTextLine; range: WxRichTextRange) {.
    importcpp: "SetRange", header: "wx.h".}
proc setRange*(this: var WxRichTextLine; `from`: clong; to: clong) {.
    importcpp: "SetRange", header: "wx.h".}
proc getParent*(this: var WxRichTextLine): ptr WxRichTextParagraph {.
    importcpp: "GetParent", header: "wx.h".}
proc getRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc getRange*(this: var WxRichTextLine): var WxRichTextRange {.
    importcpp: "GetRange", header: "wx.h".}
proc getAbsoluteRange*(this: WxRichTextLine): WxRichTextRange {.noSideEffect, 
    importcpp: "GetAbsoluteRange", header: "wx.h".}
proc getSize*(this: WxRichTextLine): WxSize {.noSideEffect, 
    importcpp: "GetSize", header: "wx.h".}
proc setSize*(this: var WxRichTextLine; sz: WxSize) {.importcpp: "SetSize", 
    header: "wx.h".}
proc getPosition*(this: WxRichTextLine): WxPoint {.noSideEffect, 
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxRichTextLine; pos: WxPoint) {.
    importcpp: "SetPosition", header: "wx.h".}
proc getAbsolutePosition*(this: WxRichTextLine): WxPoint {.noSideEffect, 
    importcpp: "GetAbsolutePosition", header: "wx.h".}
proc getRect*(this: WxRichTextLine): WxRect {.noSideEffect, 
    importcpp: "GetRect", header: "wx.h".}
proc setDescent*(this: var WxRichTextLine; descent: cint) {.
    importcpp: "SetDescent", header: "wx.h".}
proc getDescent*(this: WxRichTextLine): cint {.noSideEffect, 
    importcpp: "GetDescent", header: "wx.h".}
proc getObjectSizes*(this: var WxRichTextLine): var WxArrayInt {.
    importcpp: "GetObjectSizes", header: "wx.h".}
proc getObjectSizes*(this: WxRichTextLine): WxArrayInt {.noSideEffect, 
    importcpp: "GetObjectSizes", header: "wx.h".}
proc init*(this: var WxRichTextLine; parent: ptr WxRichTextParagraph) {.
    importcpp: "Init", header: "wx.h".}
proc copy*(this: var WxRichTextLine; obj: WxRichTextLine) {.importcpp: "Copy", 
    header: "wx.h".}
proc clone*(this: WxRichTextLine): ptr WxRichTextLine {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
wx_Declare_List_With_Decl(wxRichTextLine, wxRichTextLineList, class)
#*
#    @class wxRichTextParagraph
#
#    This object represents a single paragraph containing various objects such as text content, images, and further paragraph layout objects.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextParagraph* {.importcpp: "wxRichTextParagraph", header: "wx.h".} = object of WxRichTextCompositeObject # 
                                                                                                                  # Constructors
                                                                                                                  #
                                                                                                                  #*
                                                                                                                  #        
                                                                                                                  #        Constructor 
                                                                                                                  #        taking 
                                                                                                                  #        a 
                                                                                                                  #        parent 
                                                                                                                  #        and 
                                                                                                                  #        style.
                                                                                                                  #    
                                                                                                                  # 
                                                                                                                  # The 
                                                                                                                  # lines 
                                                                                                                  # that 
                                                                                                                  # make 
                                                                                                                  # up 
                                                                                                                  # the 
                                                                                                                  # wrapped 
                                                                                                                  # paragraph
    wxRichTextParagraph* {.importc: "wxRichTextParagraph".}: Declare_Dynamic_Class
    mCachedLines* {.importc: "m_cachedLines".}: WxRichTextLineList # Default tabstops
  

proc constructwxRichTextParagraph*(parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    constructor, importcpp: "wxRichTextParagraph(@)", header: "wx.h".}
proc constructwxRichTextParagraph*(text: WxString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   paraStyle: ptr WxRichTextAttr = nil; 
                                   charStyle: ptr WxRichTextAttr = nil): WxRichTextParagraph {.
    constructor, importcpp: "wxRichTextParagraph(@)", header: "wx.h".}
proc destroywxRichTextParagraph*(this: var WxRichTextParagraph) {.
    importcpp: "#.~wxRichTextParagraph()", header: "wx.h".}
proc constructwxRichTextParagraph*(obj: WxRichTextParagraph): WxRichTextParagraph {.
    constructor, importcpp: "wxRichTextParagraph(@)", header: "wx.h".}
proc draw*(this: var WxRichTextParagraph; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextParagraph; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextParagraph; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc findPosition*(this: var WxRichTextParagraph; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    importcpp: "FindPosition", header: "wx.h".}
proc hitTest*(this: var WxRichTextParagraph; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc calculateRange*(this: var WxRichTextParagraph; start: clong; 
                     `end`: var clong) {.importcpp: "CalculateRange", 
    header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextParagraph): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc getLines*(this: var WxRichTextParagraph): var WxRichTextLineList {.
    importcpp: "GetLines", header: "wx.h".}
proc copy*(this: var WxRichTextParagraph; obj: WxRichTextParagraph) {.
    importcpp: "Copy", header: "wx.h".}
proc clone*(this: WxRichTextParagraph): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc clearLines*(this: var WxRichTextParagraph) {.importcpp: "ClearLines", 
    header: "wx.h".}
proc applyParagraphStyle*(this: var WxRichTextParagraph; 
                          line: ptr WxRichTextLine; attr: WxRichTextAttr; 
                          rect: WxRect; dc: var WxDC) {.
    importcpp: "ApplyParagraphStyle", header: "wx.h".}
proc insertText*(this: var WxRichTextParagraph; pos: clong; text: WxString): bool {.
    importcpp: "InsertText", header: "wx.h".}
proc splitAt*(this: var WxRichTextParagraph; pos: clong; 
              previousObject: ptr ptr WxRichTextObject = nil): ptr WxRichTextObject {.
    importcpp: "SplitAt", header: "wx.h".}
proc moveToList*(this: var WxRichTextParagraph; obj: ptr WxRichTextObject; 
                 list: var WxList) {.importcpp: "MoveToList", header: "wx.h".}
proc moveFromList*(this: var WxRichTextParagraph; list: var WxList) {.
    importcpp: "MoveFromList", header: "wx.h".}
proc getContiguousPlainText*(this: var WxRichTextParagraph; text: var WxString; 
                             range: WxRichTextRange; fromStart: bool = true): bool {.
    importcpp: "GetContiguousPlainText", header: "wx.h".}
proc findWrapPosition*(this: var WxRichTextParagraph; range: WxRichTextRange; 
                       dc: var WxDC; context: var WxRichTextDrawingContext; 
                       availableSpace: cint; wrapPosition: var clong; 
                       partialExtents: ptr WxArrayInt): bool {.
    importcpp: "FindWrapPosition", header: "wx.h".}
proc findObjectAtPosition*(this: var WxRichTextParagraph; position: clong): ptr WxRichTextObject {.
    importcpp: "FindObjectAtPosition", header: "wx.h".}
proc getBulletText*(this: var WxRichTextParagraph): WxString {.
    importcpp: "GetBulletText", header: "wx.h".}
proc allocateLine*(this: var WxRichTextParagraph; pos: cint): ptr WxRichTextLine {.
    importcpp: "AllocateLine", header: "wx.h".}
proc clearUnusedLines*(this: var WxRichTextParagraph; lineCount: cint): bool {.
    importcpp: "ClearUnusedLines", header: "wx.h".}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            contentStyle: WxRichTextAttr; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, importcpp: "GetCombinedAttributes", header: "wx.h".}
proc getCombinedAttributes*(this: WxRichTextParagraph; 
                            includingBoxAttr: bool = false): WxRichTextAttr {.
    noSideEffect, importcpp: "GetCombinedAttributes", header: "wx.h".}
proc getFirstLineBreakPosition*(this: var WxRichTextParagraph; pos: clong): clong {.
    importcpp: "GetFirstLineBreakPosition", header: "wx.h".}
proc initDefaultTabs*() {.importcpp: "wxRichTextParagraph::InitDefaultTabs(@)", 
                          header: "wx.h".}
proc clearDefaultTabs*() {.importcpp: "wxRichTextParagraph::ClearDefaultTabs(@)", 
                           header: "wx.h".}
proc getDefaultTabs*(): WxArrayInt {.importcpp: "wxRichTextParagraph::GetDefaultTabs(@)", 
                                     header: "wx.h".}
proc layoutFloat*(this: var WxRichTextParagraph; dc: var WxDC; 
                  context: var WxRichTextDrawingContext; rect: WxRect; 
                  parentRect: WxRect; style: cint; 
                  floatCollector: ptr WxRichTextFloatCollector) {.
    importcpp: "LayoutFloat", header: "wx.h".}
#*
#    @class wxRichTextPlainText
#
#    This object represents a single piece of text.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextPlainText* {.importcpp: "wxRichTextPlainText", header: "wx.h".} = object of WxRichTextObject # 
                                                                                                         # Constructors
                                                                                                         #
                                                                                                         #*
                                                                                                         #        
                                                                                                         #        Constructor.
                                                                                                         #    
    wxRichTextPlainText* {.importc: "wxRichTextPlainText".}: Declare_Dynamic_Class
    mText* {.importc: "m_text".}: WxString


proc constructwxRichTextPlainText*(text: WxString = wxEmptyString; 
                                   parent: ptr WxRichTextObject = nil; 
                                   style: ptr WxRichTextAttr = nil): WxRichTextPlainText {.
    constructor, importcpp: "wxRichTextPlainText(@)", header: "wx.h".}
proc constructwxRichTextPlainText*(obj: WxRichTextPlainText): WxRichTextPlainText {.
    constructor, importcpp: "wxRichTextPlainText(@)", header: "wx.h".}
proc draw*(this: var WxRichTextPlainText; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextPlainText; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc adjustAttributes*(this: var WxRichTextPlainText; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.
    importcpp: "AdjustAttributes", header: "wx.h".}
proc getRangeSize*(this: WxRichTextPlainText; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc getTextForRange*(this: WxRichTextPlainText; range: WxRichTextRange): WxString {.
    noSideEffect, importcpp: "GetTextForRange", header: "wx.h".}
proc doSplit*(this: var WxRichTextPlainText; pos: clong): ptr WxRichTextObject {.
    importcpp: "DoSplit", header: "wx.h".}
proc calculateRange*(this: var WxRichTextPlainText; start: clong; 
                     `end`: var clong) {.importcpp: "CalculateRange", 
    header: "wx.h".}
proc deleteRange*(this: var WxRichTextPlainText; range: WxRichTextRange): bool {.
    importcpp: "DeleteRange", header: "wx.h".}
proc isEmpty*(this: WxRichTextPlainText): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc canMerge*(this: WxRichTextPlainText; `object`: ptr WxRichTextObject; 
               context: var WxRichTextDrawingContext): bool {.noSideEffect, 
    importcpp: "CanMerge", header: "wx.h".}
proc merge*(this: var WxRichTextPlainText; `object`: ptr WxRichTextObject; 
            context: var WxRichTextDrawingContext): bool {.importcpp: "Merge", 
    header: "wx.h".}
proc dump*(this: var WxRichTextPlainText; stream: var WxTextOutputStream) {.
    importcpp: "Dump", header: "wx.h".}
proc canSplit*(this: WxRichTextPlainText; context: var WxRichTextDrawingContext): bool {.
    noSideEffect, importcpp: "CanSplit", header: "wx.h".}
proc split*(this: var WxRichTextPlainText; context: var WxRichTextDrawingContext): ptr WxRichTextObject {.
    importcpp: "Split", header: "wx.h".}
proc getFirstLineBreakPosition*(this: var WxRichTextPlainText; pos: clong): clong {.
    importcpp: "GetFirstLineBreakPosition", header: "wx.h".}
proc usesParagraphAttributes*(this: WxRichTextPlainText): bool {.noSideEffect, 
    importcpp: "UsesParagraphAttributes", header: "wx.h".}
proc importFromXML*(this: var WxRichTextPlainText; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.importcpp: "ImportFromXML", 
    header: "wx.h".}
proc exportXML*(this: var WxRichTextPlainText; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextPlainText; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextPlainText): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc getText*(this: WxRichTextPlainText): WxString {.noSideEffect, 
    importcpp: "GetText", header: "wx.h".}
proc setText*(this: var WxRichTextPlainText; text: WxString) {.
    importcpp: "SetText", header: "wx.h".}
proc copy*(this: var WxRichTextPlainText; obj: WxRichTextPlainText) {.
    importcpp: "Copy", header: "wx.h".}
proc clone*(this: WxRichTextPlainText): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
#*
#    @class wxRichTextImageBlock
#
#    This class stores information about an image, in binary in-memory form.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextImageBlock* {.importcpp: "wxRichTextImageBlock", header: "wx.h".} = object of WxObject #*
                                                                                                   #        Constructor.
                                                                                                   #    
                                                                                                   # Size in bytes of the image stored.
                                                                                                   # This is in the raw, original form such as a JPEG file.
    mData* {.importc: "m_data".}: ptr cuchar
    mDataSize* {.importc: "m_dataSize".}: csize
    mImageType* {.importc: "m_imageType".}: WxBitmapType


proc constructwxRichTextImageBlock*(): WxRichTextImageBlock {.constructor, 
    importcpp: "wxRichTextImageBlock(@)", header: "wx.h".}
proc constructwxRichTextImageBlock*(`block`: WxRichTextImageBlock): WxRichTextImageBlock {.
    constructor, importcpp: "wxRichTextImageBlock(@)", header: "wx.h".}
proc destroywxRichTextImageBlock*(this: var WxRichTextImageBlock) {.
    importcpp: "#.~wxRichTextImageBlock()", header: "wx.h".}
proc init*(this: var WxRichTextImageBlock) {.importcpp: "Init", header: "wx.h".}
proc clear*(this: var WxRichTextImageBlock) {.importcpp: "Clear", header: "wx.h".}
proc makeImageBlock*(this: var WxRichTextImageBlock; filename: WxString; 
                     imageType: WxBitmapType; image: var WxImage; 
                     convertToJPEG: bool = true): bool {.
    importcpp: "MakeImageBlock", header: "wx.h".}
proc makeImageBlock*(this: var WxRichTextImageBlock; image: var WxImage; 
                     imageType: WxBitmapType; quality: cint = 80): bool {.
    importcpp: "MakeImageBlock", header: "wx.h".}
proc makeImageBlockDefaultQuality*(this: var WxRichTextImageBlock; 
                                   image: WxImage; imageType: WxBitmapType): bool {.
    importcpp: "MakeImageBlockDefaultQuality", header: "wx.h".}
proc doMakeImageBlock*(this: var WxRichTextImageBlock; image: WxImage; 
                       imageType: WxBitmapType): bool {.
    importcpp: "DoMakeImageBlock", header: "wx.h".}
proc write*(this: var WxRichTextImageBlock; filename: WxString): bool {.
    importcpp: "Write", header: "wx.h".}
proc writeHex*(this: var WxRichTextImageBlock; stream: var WxOutputStream): bool {.
    importcpp: "WriteHex", header: "wx.h".}
proc readHex*(this: var WxRichTextImageBlock; stream: var WxInputStream; 
              length: cint; imageType: WxBitmapType): bool {.
    importcpp: "ReadHex", header: "wx.h".}
proc copy*(this: var WxRichTextImageBlock; `block`: WxRichTextImageBlock) {.
    importcpp: "Copy", header: "wx.h".}
proc load*(this: var WxRichTextImageBlock; image: var WxImage): bool {.
    importcpp: "Load", header: "wx.h".}
proc getData*(this: WxRichTextImageBlock): ptr cuchar {.noSideEffect, 
    importcpp: "GetData", header: "wx.h".}
proc getDataSize*(this: WxRichTextImageBlock): csize {.noSideEffect, 
    importcpp: "GetDataSize", header: "wx.h".}
proc getImageType*(this: WxRichTextImageBlock): WxBitmapType {.noSideEffect, 
    importcpp: "GetImageType", header: "wx.h".}
proc setData*(this: var WxRichTextImageBlock; image: ptr cuchar) {.
    importcpp: "SetData", header: "wx.h".}
proc setDataSize*(this: var WxRichTextImageBlock; size: csize) {.
    importcpp: "SetDataSize", header: "wx.h".}
proc setImageType*(this: var WxRichTextImageBlock; imageType: WxBitmapType) {.
    importcpp: "SetImageType", header: "wx.h".}
proc isOk*(this: WxRichTextImageBlock): bool {.noSideEffect, importcpp: "IsOk", 
    header: "wx.h".}
proc ok*(this: WxRichTextImageBlock): bool {.noSideEffect, importcpp: "Ok", 
    header: "wx.h".}
proc getExtension*(this: WxRichTextImageBlock): WxString {.noSideEffect, 
    importcpp: "GetExtension", header: "wx.h".}
proc readBlock*(stream: var WxInputStream; size: csize): ptr cuchar {.
    importcpp: "wxRichTextImageBlock::ReadBlock(@)", header: "wx.h".}
proc readBlock*(filename: WxString; size: csize): ptr cuchar {.
    importcpp: "wxRichTextImageBlock::ReadBlock(@)", header: "wx.h".}
proc writeBlock*(stream: var WxOutputStream; `block`: ptr cuchar; size: csize): bool {.
    importcpp: "wxRichTextImageBlock::WriteBlock(@)", header: "wx.h".}
proc writeBlock*(filename: WxString; `block`: ptr cuchar; size: csize): bool {.
    importcpp: "wxRichTextImageBlock::WriteBlock(@)", header: "wx.h".}
#*
#    @class wxRichTextImage
#
#    This class implements a graphic object.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl, wxRichTextImageBlock
#

type 
  WxRichTextImage* {.importcpp: "wxRichTextImage", header: "wx.h".} = object of WxRichTextObject # 
                                                                                                 # Constructors
                                                                                                 #
                                                                                                 #*
                                                                                                 #        
                                                                                                 #        Default 
                                                                                                 #        constructor.
                                                                                                 #    
    wxRichTextImage* {.importc: "wxRichTextImage".}: Declare_Dynamic_Class
    mImageBlock* {.importc: "m_imageBlock".}: WxRichTextImageBlock
    mImageCache* {.importc: "m_imageCache".}: WxBitmap
    mOriginalImageSize* {.importc: "m_originalImageSize".}: WxSize


proc constructwxRichTextImage*(parent: ptr WxRichTextObject = nil): WxRichTextImage {.
    constructor, importcpp: "wxRichTextImage(@)", header: "wx.h".}
proc constructwxRichTextImage*(image: WxImage; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    constructor, importcpp: "wxRichTextImage(@)", header: "wx.h".}
proc constructwxRichTextImage*(imageBlock: WxRichTextImageBlock; 
                               parent: ptr WxRichTextObject = nil; 
                               charStyle: ptr WxRichTextAttr = nil): WxRichTextImage {.
    constructor, importcpp: "wxRichTextImage(@)", header: "wx.h".}
proc constructwxRichTextImage*(obj: WxRichTextImage): WxRichTextImage {.
    constructor, importcpp: "wxRichTextImage(@)", header: "wx.h".}
proc destroywxRichTextImage*(this: var WxRichTextImage) {.
    importcpp: "#.~wxRichTextImage()", header: "wx.h".}
proc init*(this: var WxRichTextImage) {.importcpp: "Init", header: "wx.h".}
proc draw*(this: var WxRichTextImage; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc layout*(this: var WxRichTextImage; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextImage; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc getNaturalSize*(this: WxRichTextImage): WxTextAttrSize {.noSideEffect, 
    importcpp: "GetNaturalSize", header: "wx.h".}
proc isEmpty*(this: WxRichTextImage): bool {.noSideEffect, importcpp: "IsEmpty", 
    header: "wx.h".}
proc canEditProperties*(this: WxRichTextImage): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextImage; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextImage): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc usesParagraphAttributes*(this: WxRichTextImage): bool {.noSideEffect, 
    importcpp: "UsesParagraphAttributes", header: "wx.h".}
proc importFromXML*(this: var WxRichTextImage; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.importcpp: "ImportFromXML", 
    header: "wx.h".}
proc exportXML*(this: var WxRichTextImage; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextImage; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc isFloatable*(this: WxRichTextImage): bool {.noSideEffect, 
    importcpp: "IsFloatable", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextImage): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc getImageCache*(this: WxRichTextImage): WxBitmap {.noSideEffect, 
    importcpp: "GetImageCache", header: "wx.h".}
proc setImageCache*(this: var WxRichTextImage; bitmap: WxBitmap) {.
    importcpp: "SetImageCache", header: "wx.h".}
proc resetImageCache*(this: var WxRichTextImage) {.importcpp: "ResetImageCache", 
    header: "wx.h".}
proc getImageBlock*(this: var WxRichTextImage): var WxRichTextImageBlock {.
    importcpp: "GetImageBlock", header: "wx.h".}
proc copy*(this: var WxRichTextImage; obj: WxRichTextImage) {.importcpp: "Copy", 
    header: "wx.h".}
proc clone*(this: WxRichTextImage): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc loadImageCache*(this: var WxRichTextImage; dc: var WxDC; 
                     resetCache: bool = false; 
                     parentSize: WxSize = wxDefaultSize): bool {.
    importcpp: "LoadImageCache", header: "wx.h".}
proc getOriginalImageSize*(this: WxRichTextImage): WxSize {.noSideEffect, 
    importcpp: "GetOriginalImageSize", header: "wx.h".}
proc setOriginalImageSize*(this: var WxRichTextImage; sz: WxSize) {.
    importcpp: "SetOriginalImageSize", header: "wx.h".}
discard "forward decl of wxRichTextCommand"
discard "forward decl of wxRichTextAction"
type 
  WxRichTextBuffer* {.importcpp: "wxRichTextBuffer", header: "wx.h".} = object of WxRichTextParagraphLayoutBox # 
                                                                                                               # Constructors
                                                                                                               #
                                                                                                               #*
                                                                                                               #        
                                                                                                               #        Default 
                                                                                                               #        constructor.
                                                                                                               #    
                                                                                                               #
                                                                                                               #/ 
                                                                                                               #Command 
                                                                                                               #processor
    wxRichTextBuffer* {.importc: "wxRichTextBuffer".}: Declare_Dynamic_Class
    mCommandProcessor* {.importc: "m_commandProcessor".}: ptr WxCommandProcessor #/ Table storing fonts
    mFontTable* {.importc: "m_fontTable".}: WxRichTextFontTable #/ Has been modified?
    mModified* {.importc: "m_modified".}: bool #/ Collapsed command stack
    mBatchedCommandDepth* {.importc: "m_batchedCommandDepth".}: cint #/ Name for collapsed command
    mBatchedCommandsName* {.importc: "m_batchedCommandsName".}: WxString #/ Current collapsed command accumulating actions
    mBatchedCommand* {.importc: "m_batchedCommand".}: ptr WxRichTextCommand #/ Whether to suppress undo
    mSuppressUndo* {.importc: "m_suppressUndo".}: cint #/ Style sheet, if any
    mStyleSheet* {.importc: "m_styleSheet".}: ptr WxRichTextStyleSheet #/ List of event handlers that will be notified of events
    mEventHandlers* {.importc: "m_eventHandlers".}: WxList #/ Stack of attributes for convenience functions
    mAttributeStack* {.importc: "m_attributeStack".}: WxList #/ Flags to be passed to handlers
    mHandlerFlags* {.importc: "m_handlerFlags".}: cint #/ File handlers
                                                       #/ Drawing handlers
                                                       #/ Field types
                                                       #/ Renderer
                                                       #/ Minimum margin between bullet and paragraph in 10ths of a mm
                                                       #/ Factor to multiply by character height to get a reasonable bullet size
                                                       #/ Floating layout mode, @true by default
                                                       #/ Scaling factor in use: needed to calculate correct dimensions when printing
    mScale* {.importc: "m_scale".}: cdouble #/ Font scale for adjusting the text size when editing
    mFontScale* {.importc: "m_fontScale".}: cdouble #/ Dimension scale for reducing redundant whitespace when editing
    mDimensionScale* {.importc: "m_dimensionScale".}: cdouble


proc constructwxRichTextBuffer*(): WxRichTextBuffer {.constructor, 
    importcpp: "wxRichTextBuffer(@)", header: "wx.h".}
proc constructwxRichTextBuffer*(obj: WxRichTextBuffer): WxRichTextBuffer {.
    constructor, importcpp: "wxRichTextBuffer(@)", header: "wx.h".}
proc destroywxRichTextBuffer*(this: var WxRichTextBuffer) {.
    importcpp: "#.~wxRichTextBuffer()", header: "wx.h".}
proc getCommandProcessor*(this: WxRichTextBuffer): ptr WxCommandProcessor {.
    noSideEffect, importcpp: "GetCommandProcessor", header: "wx.h".}
proc setStyleSheet*(this: var WxRichTextBuffer; 
                    styleSheet: ptr WxRichTextStyleSheet) {.
    importcpp: "SetStyleSheet", header: "wx.h".}
proc getStyleSheet*(this: WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    noSideEffect, importcpp: "GetStyleSheet", header: "wx.h".}
proc setStyleSheetAndNotify*(this: var WxRichTextBuffer; 
                             sheet: ptr WxRichTextStyleSheet): bool {.
    importcpp: "SetStyleSheetAndNotify", header: "wx.h".}
proc pushStyleSheet*(this: var WxRichTextBuffer; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.
    importcpp: "PushStyleSheet", header: "wx.h".}
proc popStyleSheet*(this: var WxRichTextBuffer): ptr WxRichTextStyleSheet {.
    importcpp: "PopStyleSheet", header: "wx.h".}
proc getFontTable*(this: var WxRichTextBuffer): var WxRichTextFontTable {.
    importcpp: "GetFontTable", header: "wx.h".}
proc getFontTable*(this: WxRichTextBuffer): WxRichTextFontTable {.noSideEffect, 
    importcpp: "GetFontTable", header: "wx.h".}
proc setFontTable*(this: var WxRichTextBuffer; table: WxRichTextFontTable) {.
    importcpp: "SetFontTable", header: "wx.h".}
proc setFontScale*(this: var WxRichTextBuffer; fontScale: cdouble) {.
    importcpp: "SetFontScale", header: "wx.h".}
proc getFontScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, 
    importcpp: "GetFontScale", header: "wx.h".}
proc setDimensionScale*(this: var WxRichTextBuffer; dimScale: cdouble) {.
    importcpp: "SetDimensionScale", header: "wx.h".}
proc getDimensionScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, 
    importcpp: "GetDimensionScale", header: "wx.h".}
proc init*(this: var WxRichTextBuffer) {.importcpp: "Init", header: "wx.h".}
proc resetAndClearCommands*(this: var WxRichTextBuffer) {.
    importcpp: "ResetAndClearCommands", header: "wx.h".}
proc loadFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: var WxRichTextBuffer; filename: WxString; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "SaveFile", header: "wx.h".}
proc loadFile*(this: var WxRichTextBuffer; stream: var WxInputStream; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: var WxRichTextBuffer; stream: var WxOutputStream; 
               `type`: WxRichTextFileType = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "SaveFile", header: "wx.h".}
proc setHandlerFlags*(this: var WxRichTextBuffer; flags: cint) {.
    importcpp: "SetHandlerFlags", header: "wx.h".}
proc getHandlerFlags*(this: WxRichTextBuffer): cint {.noSideEffect, 
    importcpp: "GetHandlerFlags", header: "wx.h".}
proc addParagraph*(this: var WxRichTextBuffer; text: WxString; 
                   paraStyle: ptr WxRichTextAttr = nil): WxRichTextRange {.
    importcpp: "AddParagraph", header: "wx.h".}
proc beginBatchUndo*(this: var WxRichTextBuffer; cmdName: WxString): bool {.
    importcpp: "BeginBatchUndo", header: "wx.h".}
proc endBatchUndo*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndBatchUndo", header: "wx.h".}
proc batchingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, 
    importcpp: "BatchingUndo", header: "wx.h".}
proc submitAction*(this: var WxRichTextBuffer; action: ptr WxRichTextAction): bool {.
    importcpp: "SubmitAction", header: "wx.h".}
proc getBatchedCommand*(this: WxRichTextBuffer): ptr WxRichTextCommand {.
    noSideEffect, importcpp: "GetBatchedCommand", header: "wx.h".}
proc beginSuppressUndo*(this: var WxRichTextBuffer): bool {.
    importcpp: "BeginSuppressUndo", header: "wx.h".}
proc endSuppressUndo*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndSuppressUndo", header: "wx.h".}
proc suppressingUndo*(this: WxRichTextBuffer): bool {.noSideEffect, 
    importcpp: "SuppressingUndo", header: "wx.h".}
proc copyToClipboard*(this: var WxRichTextBuffer; range: WxRichTextRange): bool {.
    importcpp: "CopyToClipboard", header: "wx.h".}
proc pasteFromClipboard*(this: var WxRichTextBuffer; position: clong): bool {.
    importcpp: "PasteFromClipboard", header: "wx.h".}
proc canPasteFromClipboard*(this: WxRichTextBuffer): bool {.noSideEffect, 
    importcpp: "CanPasteFromClipboard", header: "wx.h".}
proc beginStyle*(this: var WxRichTextBuffer; style: WxRichTextAttr): bool {.
    importcpp: "BeginStyle", header: "wx.h".}
proc endStyle*(this: var WxRichTextBuffer): bool {.importcpp: "EndStyle", 
    header: "wx.h".}
proc endAllStyles*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndAllStyles", header: "wx.h".}
proc clearStyleStack*(this: var WxRichTextBuffer) {.
    importcpp: "ClearStyleStack", header: "wx.h".}
proc getStyleStackSize*(this: WxRichTextBuffer): csize {.noSideEffect, 
    importcpp: "GetStyleStackSize", header: "wx.h".}
proc beginBold*(this: var WxRichTextBuffer): bool {.importcpp: "BeginBold", 
    header: "wx.h".}
proc endBold*(this: var WxRichTextBuffer): bool {.importcpp: "EndBold", 
    header: "wx.h".}
proc beginItalic*(this: var WxRichTextBuffer): bool {.importcpp: "BeginItalic", 
    header: "wx.h".}
proc endItalic*(this: var WxRichTextBuffer): bool {.importcpp: "EndItalic", 
    header: "wx.h".}
proc beginUnderline*(this: var WxRichTextBuffer): bool {.
    importcpp: "BeginUnderline", header: "wx.h".}
proc endUnderline*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndUnderline", header: "wx.h".}
proc beginFontSize*(this: var WxRichTextBuffer; pointSize: cint): bool {.
    importcpp: "BeginFontSize", header: "wx.h".}
proc endFontSize*(this: var WxRichTextBuffer): bool {.importcpp: "EndFontSize", 
    header: "wx.h".}
proc beginFont*(this: var WxRichTextBuffer; font: WxFont): bool {.
    importcpp: "BeginFont", header: "wx.h".}
proc endFont*(this: var WxRichTextBuffer): bool {.importcpp: "EndFont", 
    header: "wx.h".}
proc beginTextColour*(this: var WxRichTextBuffer; colour: WxColour): bool {.
    importcpp: "BeginTextColour", header: "wx.h".}
proc endTextColour*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndTextColour", header: "wx.h".}
proc beginAlignment*(this: var WxRichTextBuffer; alignment: WxTextAttrAlignment): bool {.
    importcpp: "BeginAlignment", header: "wx.h".}
proc endAlignment*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndAlignment", header: "wx.h".}
proc beginLeftIndent*(this: var WxRichTextBuffer; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.
    importcpp: "BeginLeftIndent", header: "wx.h".}
proc endLeftIndent*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndLeftIndent", header: "wx.h".}
proc beginRightIndent*(this: var WxRichTextBuffer; rightIndent: cint): bool {.
    importcpp: "BeginRightIndent", header: "wx.h".}
proc endRightIndent*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndRightIndent", header: "wx.h".}
proc beginParagraphSpacing*(this: var WxRichTextBuffer; before: cint; 
                            after: cint): bool {.
    importcpp: "BeginParagraphSpacing", header: "wx.h".}
proc endParagraphSpacing*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndParagraphSpacing", header: "wx.h".}
proc beginLineSpacing*(this: var WxRichTextBuffer; lineSpacing: cint): bool {.
    importcpp: "BeginLineSpacing", header: "wx.h".}
proc endLineSpacing*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndLineSpacing", header: "wx.h".}
proc beginNumberedBullet*(this: var WxRichTextBuffer; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint; bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_ARABIC or
    wxTEXT_ATTR_BULLET_STYLE_PERIOD): bool {.importcpp: "BeginNumberedBullet", 
    header: "wx.h".}
proc endNumberedBullet*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndNumberedBullet", header: "wx.h".}
proc beginSymbolBullet*(this: var WxRichTextBuffer; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint; 
                        bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_SYMBOL): bool {.
    importcpp: "BeginSymbolBullet", header: "wx.h".}
proc endSymbolBullet*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndSymbolBullet", header: "wx.h".}
proc beginStandardBullet*(this: var WxRichTextBuffer; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint; 
                          bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_STANDARD): bool {.
    importcpp: "BeginStandardBullet", header: "wx.h".}
proc endStandardBullet*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndStandardBullet", header: "wx.h".}
proc beginCharacterStyle*(this: var WxRichTextBuffer; characterStyle: WxString): bool {.
    importcpp: "BeginCharacterStyle", header: "wx.h".}
proc endCharacterStyle*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndCharacterStyle", header: "wx.h".}
proc beginParagraphStyle*(this: var WxRichTextBuffer; paragraphStyle: WxString): bool {.
    importcpp: "BeginParagraphStyle", header: "wx.h".}
proc endParagraphStyle*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndParagraphStyle", header: "wx.h".}
proc beginListStyle*(this: var WxRichTextBuffer; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.
    importcpp: "BeginListStyle", header: "wx.h".}
proc endListStyle*(this: var WxRichTextBuffer): bool {.
    importcpp: "EndListStyle", header: "wx.h".}
proc beginURL*(this: var WxRichTextBuffer; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.
    importcpp: "BeginURL", header: "wx.h".}
proc endURL*(this: var WxRichTextBuffer): bool {.importcpp: "EndURL", 
    header: "wx.h".}
proc addEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler): bool {.
    importcpp: "AddEventHandler", header: "wx.h".}
proc removeEventHandler*(this: var WxRichTextBuffer; handler: ptr WxEvtHandler; 
                         deleteHandler: bool = false): bool {.
    importcpp: "RemoveEventHandler", header: "wx.h".}
proc clearEventHandlers*(this: var WxRichTextBuffer) {.
    importcpp: "ClearEventHandlers", header: "wx.h".}
proc sendEvent*(this: var WxRichTextBuffer; event: var WxEvent; 
                sendToAll: bool = true): bool {.importcpp: "SendEvent", 
    header: "wx.h".}
proc hitTest*(this: var WxRichTextBuffer; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc copy*(this: var WxRichTextBuffer; obj: WxRichTextBuffer) {.
    importcpp: "Copy", header: "wx.h".}
proc clone*(this: WxRichTextBuffer): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc insertParagraphsWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                               paragraphs: WxRichTextParagraphLayoutBox; 
                               ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "InsertParagraphsWithUndo", header: "wx.h".}
proc insertTextWithUndo*(this: var WxRichTextBuffer; pos: clong; text: WxString; 
                         ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "InsertTextWithUndo", header: "wx.h".}
proc insertNewlineWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                            ctrl: ptr WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "InsertNewlineWithUndo", header: "wx.h".}
proc insertImageWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                          imageBlock: WxRichTextImageBlock; 
                          ctrl: ptr WxRichTextCtrl; flags: cint = 0; 
                          textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "InsertImageWithUndo", header: "wx.h".}
proc insertObjectWithUndo*(this: var WxRichTextBuffer; pos: clong; 
                           `object`: ptr WxRichTextObject; 
                           ctrl: ptr WxRichTextCtrl; flags: cint): ptr WxRichTextObject {.
    importcpp: "InsertObjectWithUndo", header: "wx.h".}
proc deleteRangeWithUndo*(this: var WxRichTextBuffer; range: WxRichTextRange; 
                          ctrl: ptr WxRichTextCtrl): bool {.
    importcpp: "DeleteRangeWithUndo", header: "wx.h".}
proc modify*(this: var WxRichTextBuffer; modify: bool = true) {.
    importcpp: "Modify", header: "wx.h".}
proc isModified*(this: WxRichTextBuffer): bool {.noSideEffect, 
    importcpp: "IsModified", header: "wx.h".}
proc dump*(this: var WxRichTextBuffer) {.importcpp: "Dump", header: "wx.h".}
proc dump*(this: var WxRichTextBuffer; stream: var WxTextOutputStream) {.
    importcpp: "Dump", header: "wx.h".}
proc getHandlers*(): var WxList {.importcpp: "wxRichTextBuffer::GetHandlers(@)", 
                                  header: "wx.h".}
proc addHandler*(handler: ptr WxRichTextFileHandler) {.
    importcpp: "wxRichTextBuffer::AddHandler(@)", header: "wx.h".}
proc insertHandler*(handler: ptr WxRichTextFileHandler) {.
    importcpp: "wxRichTextBuffer::InsertHandler(@)", header: "wx.h".}
proc removeHandler*(name: WxString): bool {.
    importcpp: "wxRichTextBuffer::RemoveHandler(@)", header: "wx.h".}
proc findHandler*(name: WxString): ptr WxRichTextFileHandler {.
    importcpp: "wxRichTextBuffer::FindHandler(@)", header: "wx.h".}
proc findHandler*(extension: WxString; imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    importcpp: "wxRichTextBuffer::FindHandler(@)", header: "wx.h".}
proc findHandlerFilenameOrType*(filename: WxString; 
                                imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    importcpp: "wxRichTextBuffer::FindHandlerFilenameOrType(@)", header: "wx.h".}
proc findHandler*(imageType: WxRichTextFileType): ptr WxRichTextFileHandler {.
    importcpp: "wxRichTextBuffer::FindHandler(@)", header: "wx.h".}
proc getExtWildcard*(combine: bool = false; save: bool = false; 
                     types: ptr WxArrayInt = nil): WxString {.
    importcpp: "wxRichTextBuffer::GetExtWildcard(@)", header: "wx.h".}
proc cleanUpHandlers*() {.importcpp: "wxRichTextBuffer::CleanUpHandlers(@)", 
                          header: "wx.h".}
proc initStandardHandlers*() {.importcpp: "wxRichTextBuffer::InitStandardHandlers(@)", 
                               header: "wx.h".}
proc getDrawingHandlers*(): var WxList {.
    importcpp: "wxRichTextBuffer::GetDrawingHandlers(@)", header: "wx.h".}
proc addDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.
    importcpp: "wxRichTextBuffer::AddDrawingHandler(@)", header: "wx.h".}
proc insertDrawingHandler*(handler: ptr WxRichTextDrawingHandler) {.
    importcpp: "wxRichTextBuffer::InsertDrawingHandler(@)", header: "wx.h".}
proc removeDrawingHandler*(name: WxString): bool {.
    importcpp: "wxRichTextBuffer::RemoveDrawingHandler(@)", header: "wx.h".}
proc findDrawingHandler*(name: WxString): ptr WxRichTextDrawingHandler {.
    importcpp: "wxRichTextBuffer::FindDrawingHandler(@)", header: "wx.h".}
proc cleanUpDrawingHandlers*() {.importcpp: "wxRichTextBuffer::CleanUpDrawingHandlers(@)", 
                                 header: "wx.h".}
proc getFieldTypes*(): var WxRichTextFieldTypeHashMap {.
    importcpp: "wxRichTextBuffer::GetFieldTypes(@)", header: "wx.h".}
proc addFieldType*(fieldType: ptr WxRichTextFieldType) {.
    importcpp: "wxRichTextBuffer::AddFieldType(@)", header: "wx.h".}
proc removeFieldType*(name: WxString): bool {.
    importcpp: "wxRichTextBuffer::RemoveFieldType(@)", header: "wx.h".}
proc findFieldType*(name: WxString): ptr WxRichTextFieldType {.
    importcpp: "wxRichTextBuffer::FindFieldType(@)", header: "wx.h".}
proc cleanUpFieldTypes*() {.importcpp: "wxRichTextBuffer::CleanUpFieldTypes(@)", 
                            header: "wx.h".}
proc getRenderer*(): ptr WxRichTextRenderer {.
    importcpp: "wxRichTextBuffer::GetRenderer(@)", header: "wx.h".}
proc setRenderer*(renderer: ptr WxRichTextRenderer) {.
    importcpp: "wxRichTextBuffer::SetRenderer(@)", header: "wx.h".}
proc getBulletRightMargin*(): cint {.importcpp: "wxRichTextBuffer::GetBulletRightMargin(@)", 
                                     header: "wx.h".}
proc setBulletRightMargin*(margin: cint) {.
    importcpp: "wxRichTextBuffer::SetBulletRightMargin(@)", header: "wx.h".}
proc getBulletProportion*(): cfloat {.importcpp: "wxRichTextBuffer::GetBulletProportion(@)", 
                                      header: "wx.h".}
proc setBulletProportion*(prop: cfloat) {.
    importcpp: "wxRichTextBuffer::SetBulletProportion(@)", header: "wx.h".}
proc getScale*(this: WxRichTextBuffer): cdouble {.noSideEffect, 
    importcpp: "GetScale", header: "wx.h".}
proc setScale*(this: var WxRichTextBuffer; scale: cdouble) {.
    importcpp: "SetScale", header: "wx.h".}
proc setFloatingLayoutMode*(mode: bool) {.
    importcpp: "wxRichTextBuffer::SetFloatingLayoutMode(@)", header: "wx.h".}
proc getFloatingLayoutMode*(): bool {.importcpp: "wxRichTextBuffer::GetFloatingLayoutMode(@)", 
                                      header: "wx.h".}
#*
#    @class wxRichTextCell
#
#    wxRichTextCell is the cell in a table.
# 

type 
  WxRichTextCell* {.importcpp: "wxRichTextCell", header: "wx.h".} = object of WxRichTextBox # 
                                                                                            # Constructors
                                                                                            #
                                                                                            #*
                                                                                            #        
                                                                                            #        Default 
                                                                                            #        constructor; 
                                                                                            #        optionally 
                                                                                            #        pass 
                                                                                            #        the 
                                                                                            #        parent 
                                                                                            #        object.
                                                                                            #    
    wxRichTextCell* {.importc: "wxRichTextCell".}: Declare_Dynamic_Class


proc constructwxRichTextCell*(parent: ptr WxRichTextObject = nil): WxRichTextCell {.
    constructor, importcpp: "wxRichTextCell(@)", header: "wx.h".}
proc constructwxRichTextCell*(obj: WxRichTextCell): WxRichTextCell {.
    constructor, importcpp: "wxRichTextCell(@)", header: "wx.h".}
proc draw*(this: var WxRichTextCell; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc hitTest*(this: var WxRichTextCell; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc adjustAttributes*(this: var WxRichTextCell; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.
    importcpp: "AdjustAttributes", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextCell): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc canEditProperties*(this: WxRichTextCell): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextCell; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextCell): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc getColSpan*(this: WxRichTextCell): cint {.noSideEffect, 
    importcpp: "GetColSpan", header: "wx.h".}
proc setColSpan*(this: var WxRichTextCell; span: clong) {.
    importcpp: "SetColSpan", header: "wx.h".}
proc getRowSpan*(this: WxRichTextCell): cint {.noSideEffect, 
    importcpp: "GetRowSpan", header: "wx.h".}
proc setRowSpan*(this: var WxRichTextCell; span: clong) {.
    importcpp: "SetRowSpan", header: "wx.h".}
proc clone*(this: WxRichTextCell): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc copy*(this: var WxRichTextCell; obj: WxRichTextCell) {.importcpp: "Copy", 
    header: "wx.h".}
#*
#    @class wxRichTextTable
#
#    wxRichTextTable represents a table with arbitrary columns and rows.
# 

wx_Define_Array_Ptr(ptr wxRichTextObject, wxRichTextObjectPtrArray)
type 
  WxRichTextObjectPtrArrayArray* {.importcpp: "wxRichTextObjectPtrArrayArray", 
                                   header: "wx.h".} = object of WxArrayPtrVoid
  

proc constructwxRichTextObjectPtrArrayArray*(): WxRichTextObjectPtrArrayArray {.
    constructor, importcpp: "wxRichTextObjectPtrArrayArray(@)", header: "wx.h".}
proc constructwxRichTextObjectPtrArrayArray*(src: WxRichTextObjectPtrArrayArray): WxRichTextObjectPtrArrayArray {.
    constructor, importcpp: "wxRichTextObjectPtrArrayArray(@)", header: "wx.h".}
proc destroywxRichTextObjectPtrArrayArray*(
    this: var WxRichTextObjectPtrArrayArray) {.
    importcpp: "#.~wxRichTextObjectPtrArrayArray()", header: "wx.h".}
proc alloc*(this: var WxRichTextObjectPtrArrayArray; count: csize) {.
    importcpp: "Alloc", header: "wx.h".}
proc reserve*(this: var WxRichTextObjectPtrArrayArray; count: csize) {.
    importcpp: "reserve", header: "wx.h".}
proc getCount*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
proc size*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, 
    importcpp: "size", header: "wx.h".}
proc isEmpty*(this: WxRichTextObjectPtrArrayArray): bool {.noSideEffect, 
    importcpp: "IsEmpty", header: "wx.h".}
proc empty*(this: WxRichTextObjectPtrArrayArray): bool {.noSideEffect, 
    importcpp: "empty", header: "wx.h".}
proc count*(this: WxRichTextObjectPtrArrayArray): csize {.noSideEffect, 
    importcpp: "Count", header: "wx.h".}
proc shrink*(this: var WxRichTextObjectPtrArrayArray) {.importcpp: "Shrink", 
    header: "wx.h".}
proc `[]`*(this: WxRichTextObjectPtrArrayArray; uiIndex: csize): var WxRichTextObjectPtrArray {.
    noSideEffect, importcpp: "#[@]", header: "wx.h".}
proc item*(this: WxRichTextObjectPtrArrayArray; uiIndex: csize): var WxRichTextObjectPtrArray {.
    noSideEffect, importcpp: "Item", header: "wx.h".}
proc last*(this: WxRichTextObjectPtrArrayArray): var WxRichTextObjectPtrArray {.
    noSideEffect, importcpp: "Last", header: "wx.h".}
proc index*(this: WxRichTextObjectPtrArrayArray; 
            lItem: WxRichTextObjectPtrArray; bFromEnd: bool = false): cint {.
    noSideEffect, importcpp: "Index", header: "wx.h".}
proc add*(this: var WxRichTextObjectPtrArrayArray; 
          pItem: ptr WxRichTextObjectPtrArray) {.importcpp: "Add", 
    header: "wx.h".}
proc insert*(this: var WxRichTextObjectPtrArrayArray; 
             lItem: WxRichTextObjectPtrArray; uiIndex: csize; nInsert: csize = 1) {.
    importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxRichTextObjectPtrArrayArray; 
             pItem: ptr WxRichTextObjectPtrArray; uiIndex: csize) {.
    importcpp: "Insert", header: "wx.h".}
proc empty*(this: var WxRichTextObjectPtrArrayArray) {.importcpp: "Empty", 
    header: "wx.h".}
proc clear*(this: var WxRichTextObjectPtrArrayArray) {.importcpp: "Clear", 
    header: "wx.h".}
proc detach*(this: var WxRichTextObjectPtrArrayArray; uiIndex: csize): ptr WxRichTextObjectPtrArray {.
    importcpp: "Detach", header: "wx.h".}
proc removeAt*(this: var WxRichTextObjectPtrArrayArray; uiIndex: csize) {.
    importcpp: "RemoveAt", header: "wx.h".}
type 
  WxRichTextTable* {.importcpp: "wxRichTextTable", header: "wx.h".} = object of WxRichTextBox # 
                                                                                              # Constructors
                                                                                              #
                                                                                              #*
                                                                                              #        
                                                                                              #        Default 
                                                                                              #        constructor; 
                                                                                              #        optionally 
                                                                                              #        pass 
                                                                                              #        the 
                                                                                              #        parent 
                                                                                              #        object.
                                                                                              #    
    wxRichTextTable* {.importc: "wxRichTextTable".}: Declare_Dynamic_Class
    mRowCount* {.importc: "m_rowCount".}: cint
    mColCount* {.importc: "m_colCount".}: cint # An array of rows, each of which is a wxRichTextObjectPtrArray containing
                                               # the cell objects. The cell objects are also children of this object.
                                               # Problem: if boxes are immediate children of a box, this will cause problems
                                               # with wxRichTextParagraphLayoutBox functions (and functions elsewhere) that
                                               # expect to find just paragraphs. May have to adjust the way we handle the
                                               # hierarchy to accept non-paragraph objects in a paragraph layout box.
                                               # We'll be overriding much wxRichTextParagraphLayoutBox functionality so this
                                               # may not be such a problem. Perhaps the table should derive from a different
                                               # class?
    mCells* {.importc: "m_cells".}: WxRichTextObjectPtrArrayArray


proc constructwxRichTextTable*(parent: ptr WxRichTextObject = nil): WxRichTextTable {.
    constructor, importcpp: "wxRichTextTable(@)", header: "wx.h".}
proc constructwxRichTextTable*(obj: WxRichTextTable): WxRichTextTable {.
    constructor, importcpp: "wxRichTextTable(@)", header: "wx.h".}
proc draw*(this: var WxRichTextTable; dc: var WxDC; 
           context: var WxRichTextDrawingContext; range: WxRichTextRange; 
           selection: WxRichTextSelection; rect: WxRect; descent: cint; 
           style: cint): bool {.importcpp: "Draw", header: "wx.h".}
proc hitTest*(this: var WxRichTextTable; dc: var WxDC; 
              context: var WxRichTextDrawingContext; pt: WxPoint; 
              textPosition: var clong; obj: ptr ptr WxRichTextObject; 
              contextObj: ptr ptr WxRichTextObject; flags: cint = 0): cint {.
    importcpp: "HitTest", header: "wx.h".}
proc adjustAttributes*(this: var WxRichTextTable; attr: var WxRichTextAttr; 
                       context: var WxRichTextDrawingContext): bool {.
    importcpp: "AdjustAttributes", header: "wx.h".}
proc getXMLNodeName*(this: WxRichTextTable): WxString {.noSideEffect, 
    importcpp: "GetXMLNodeName", header: "wx.h".}
proc layout*(this: var WxRichTextTable; dc: var WxDC; 
             context: var WxRichTextDrawingContext; rect: WxRect; 
             parentRect: WxRect; style: cint): bool {.importcpp: "Layout", 
    header: "wx.h".}
proc getRangeSize*(this: WxRichTextTable; range: WxRichTextRange; 
                   size: var WxSize; descent: var cint; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; flags: cint; 
                   position: WxPoint = wxPoint(0, 0); 
                   parentSize: WxSize = wxDefaultSize; 
                   partialExtents: ptr WxArrayInt = nil): bool {.noSideEffect, 
    importcpp: "GetRangeSize", header: "wx.h".}
proc deleteRange*(this: var WxRichTextTable; range: WxRichTextRange): bool {.
    importcpp: "DeleteRange", header: "wx.h".}
proc getTextForRange*(this: WxRichTextTable; range: WxRichTextRange): WxString {.
    noSideEffect, importcpp: "GetTextForRange", header: "wx.h".}
proc importFromXML*(this: var WxRichTextTable; buffer: ptr WxRichTextBuffer; 
                    node: ptr WxXmlNode; handler: ptr WxRichTextXMLHandler; 
                    recurse: ptr bool): bool {.importcpp: "ImportFromXML", 
    header: "wx.h".}
proc exportXML*(this: var WxRichTextTable; stream: var WxOutputStream; 
                indent: cint; handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc exportXML*(this: var WxRichTextTable; parent: ptr WxXmlNode; 
                handler: ptr WxRichTextXMLHandler): bool {.
    importcpp: "ExportXML", header: "wx.h".}
proc findPosition*(this: var WxRichTextTable; dc: var WxDC; 
                   context: var WxRichTextDrawingContext; index: clong; 
                   pt: var WxPoint; height: ptr cint; forceLineStart: bool): bool {.
    importcpp: "FindPosition", header: "wx.h".}
proc calculateRange*(this: var WxRichTextTable; start: clong; `end`: var clong) {.
    importcpp: "CalculateRange", header: "wx.h".}
proc handlesChildSelections*(this: WxRichTextTable): bool {.noSideEffect, 
    importcpp: "HandlesChildSelections", header: "wx.h".}
proc getSelection*(this: WxRichTextTable; start: clong; `end`: clong): WxRichTextSelection {.
    noSideEffect, importcpp: "GetSelection", header: "wx.h".}
proc canEditProperties*(this: WxRichTextTable): bool {.noSideEffect, 
    importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextTable; parent: ptr WxWindow; 
                     buffer: ptr WxRichTextBuffer): bool {.
    importcpp: "EditProperties", header: "wx.h".}
proc getPropertiesMenuLabel*(this: WxRichTextTable): WxString {.noSideEffect, 
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc acceptsFocus*(this: WxRichTextTable): bool {.noSideEffect, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc getCells*(this: WxRichTextTable): WxRichTextObjectPtrArrayArray {.
    noSideEffect, importcpp: "GetCells", header: "wx.h".}
proc getCells*(this: var WxRichTextTable): var WxRichTextObjectPtrArrayArray {.
    importcpp: "GetCells", header: "wx.h".}
proc getRowCount*(this: WxRichTextTable): cint {.noSideEffect, 
    importcpp: "GetRowCount", header: "wx.h".}
proc setRowCount*(this: var WxRichTextTable; count: cint) {.
    importcpp: "SetRowCount", header: "wx.h".}
proc getColumnCount*(this: WxRichTextTable): cint {.noSideEffect, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc setColumnCount*(this: var WxRichTextTable; count: cint) {.
    importcpp: "SetColumnCount", header: "wx.h".}
proc getCell*(this: WxRichTextTable; row: cint; col: cint): ptr WxRichTextCell {.
    noSideEffect, importcpp: "GetCell", header: "wx.h".}
proc getCell*(this: WxRichTextTable; pos: clong): ptr WxRichTextCell {.
    noSideEffect, importcpp: "GetCell", header: "wx.h".}
proc getCellRowColumnPosition*(this: WxRichTextTable; pos: clong; row: var cint; 
                               col: var cint): bool {.noSideEffect, 
    importcpp: "GetCellRowColumnPosition", header: "wx.h".}
proc getFocusedCell*(this: WxRichTextTable): WxPosition {.noSideEffect, 
    importcpp: "GetFocusedCell", header: "wx.h".}
proc clearTable*(this: var WxRichTextTable) {.importcpp: "ClearTable", 
    header: "wx.h".}
proc createTable*(this: var WxRichTextTable; rows: cint; cols: cint): bool {.
    importcpp: "CreateTable", header: "wx.h".}
proc setCellStyle*(this: var WxRichTextTable; selection: WxRichTextSelection; 
                   style: WxRichTextAttr; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    importcpp: "SetCellStyle", header: "wx.h".}
proc deleteRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1): bool {.
    importcpp: "DeleteRows", header: "wx.h".}
proc deleteColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1): bool {.
    importcpp: "DeleteColumns", header: "wx.h".}
proc addRows*(this: var WxRichTextTable; startRow: cint; noRows: cint = 1; 
              attr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "AddRows", header: "wx.h".}
proc addColumns*(this: var WxRichTextTable; startCol: cint; noCols: cint = 1; 
                 attr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "AddColumns", header: "wx.h".}
proc clone*(this: WxRichTextTable): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
proc copy*(this: var WxRichTextTable; obj: WxRichTextTable) {.importcpp: "Copy", 
    header: "wx.h".}
#* @class wxRichTextTableBlock
#
#    Stores the coordinates for a block of cells.
# 

type 
  WxRichTextTableBlock* {.importcpp: "wxRichTextTableBlock", header: "wx.h".} = object 
    mColStart* {.importc: "m_colStart".}: cint
    mColEnd* {.importc: "m_colEnd".}: cint
    mRowStart* {.importc: "m_rowStart".}: cint
    mRowEnd* {.importc: "m_rowEnd".}: cint


proc constructwxRichTextTableBlock*(): WxRichTextTableBlock {.constructor, 
    importcpp: "wxRichTextTableBlock(@)", header: "wx.h".}
proc constructwxRichTextTableBlock*(colStart: cint; colEnd: cint; 
                                    rowStart: cint; rowEnd: cint): WxRichTextTableBlock {.
    constructor, importcpp: "wxRichTextTableBlock(@)", header: "wx.h".}
proc constructwxRichTextTableBlock*(`block`: WxRichTextTableBlock): WxRichTextTableBlock {.
    constructor, importcpp: "wxRichTextTableBlock(@)", header: "wx.h".}
proc init*(this: var WxRichTextTableBlock) {.importcpp: "Init", header: "wx.h".}
proc copy*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock) {.
    importcpp: "Copy", header: "wx.h".}
proc `==`*(this: var WxRichTextTableBlock; `block`: WxRichTextTableBlock): bool {.
    importcpp: "(# == #)", header: "wx.h".}
proc computeBlockForSelection*(this: var WxRichTextTableBlock; 
                               table: ptr WxRichTextTable; 
                               ctrl: ptr WxRichTextCtrl; 
                               requireCellSelection: bool = true): bool {.
    importcpp: "ComputeBlockForSelection", header: "wx.h".}
proc isWholeTable*(this: WxRichTextTableBlock; table: ptr WxRichTextTable): bool {.
    noSideEffect, importcpp: "IsWholeTable", header: "wx.h".}
proc getFocusedCell*(ctrl: ptr WxRichTextCtrl): ptr WxRichTextCell {.
    importcpp: "wxRichTextTableBlock::GetFocusedCell(@)", header: "wx.h".}
proc colStart*(this: var WxRichTextTableBlock): var cint {.
    importcpp: "ColStart", header: "wx.h".}
proc colStart*(this: WxRichTextTableBlock): cint {.noSideEffect, 
    importcpp: "ColStart", header: "wx.h".}
proc colEnd*(this: var WxRichTextTableBlock): var cint {.importcpp: "ColEnd", 
    header: "wx.h".}
proc colEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, 
    importcpp: "ColEnd", header: "wx.h".}
proc rowStart*(this: var WxRichTextTableBlock): var cint {.
    importcpp: "RowStart", header: "wx.h".}
proc rowStart*(this: WxRichTextTableBlock): cint {.noSideEffect, 
    importcpp: "RowStart", header: "wx.h".}
proc rowEnd*(this: var WxRichTextTableBlock): var cint {.importcpp: "RowEnd", 
    header: "wx.h".}
proc rowEnd*(this: WxRichTextTableBlock): cint {.noSideEffect, 
    importcpp: "RowEnd", header: "wx.h".}
#*
#    The command identifiers for Do/Undo.
#

type 
  WxRichTextCommandId* = enum 
    wxRICHTEXT_INSERT, wxRICHTEXT_DELETE, wxRICHTEXT_CHANGE_ATTRIBUTES, 
    wxRICHTEXT_CHANGE_STYLE, wxRICHTEXT_CHANGE_PROPERTIES, 
    wxRICHTEXT_CHANGE_OBJECT


#*
#    @class wxRichTextObjectAddress
#
#    A class for specifying an object anywhere in an object hierarchy,
#    without using a pointer, necessary since wxRTC commands may delete
#    and recreate sub-objects so physical object addresses change. An array
#    of positions (one per hierarchy level) is used.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextCommand
#

type 
  WxRichTextObjectAddress* {.importcpp: "wxRichTextObjectAddress", 
                             header: "wx.h".} = object #*
                                                       #        Creates the address given a container and an object.
                                                       #    
    mAddress* {.importc: "m_address".}: WxArrayInt


proc constructwxRichTextObjectAddress*(topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
                                       obj: ptr WxRichTextObject): WxRichTextObjectAddress {.
    constructor, importcpp: "wxRichTextObjectAddress(@)", header: "wx.h".}
proc constructwxRichTextObjectAddress*(): WxRichTextObjectAddress {.constructor, 
    importcpp: "wxRichTextObjectAddress(@)", header: "wx.h".}
proc constructwxRichTextObjectAddress*(address: WxRichTextObjectAddress): WxRichTextObjectAddress {.
    constructor, importcpp: "wxRichTextObjectAddress(@)", header: "wx.h".}
proc init*(this: var WxRichTextObjectAddress) {.importcpp: "Init", 
    header: "wx.h".}
proc copy*(this: var WxRichTextObjectAddress; address: WxRichTextObjectAddress) {.
    importcpp: "Copy", header: "wx.h".}
proc getObject*(this: WxRichTextObjectAddress; 
                topLevelContainer: ptr WxRichTextParagraphLayoutBox): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetObject", header: "wx.h".}
proc create*(this: var WxRichTextObjectAddress; 
             topLevelContainer: ptr WxRichTextParagraphLayoutBox; 
             obj: ptr WxRichTextObject): bool {.importcpp: "Create", 
    header: "wx.h".}
proc getAddress*(this: var WxRichTextObjectAddress): var WxArrayInt {.
    importcpp: "GetAddress", header: "wx.h".}
proc getAddress*(this: WxRichTextObjectAddress): WxArrayInt {.noSideEffect, 
    importcpp: "GetAddress", header: "wx.h".}
proc setAddress*(this: var WxRichTextObjectAddress; address: WxArrayInt) {.
    importcpp: "SetAddress", header: "wx.h".}
discard "forward decl of wxRichTextAction"
type 
  WxRichTextCommand* {.importcpp: "wxRichTextCommand", header: "wx.h".} = object of WxCommand #*
                                                                                              #        Constructor for one action.
                                                                                              #    
    mActions* {.importc: "m_actions".}: WxList


proc constructwxRichTextCommand*(name: WxString; id: WxRichTextCommandId; 
                                 buffer: ptr WxRichTextBuffer; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 ctrl: ptr WxRichTextCtrl; 
                                 ignoreFirstTime: bool = false): WxRichTextCommand {.
    constructor, importcpp: "wxRichTextCommand(@)", header: "wx.h".}
proc constructwxRichTextCommand*(name: WxString): WxRichTextCommand {.
    constructor, importcpp: "wxRichTextCommand(@)", header: "wx.h".}
proc destroywxRichTextCommand*(this: var WxRichTextCommand) {.
    importcpp: "#.~wxRichTextCommand()", header: "wx.h".}
proc `do`*(this: var WxRichTextCommand): bool {.importcpp: "Do", header: "wx.h".}
proc undo*(this: var WxRichTextCommand): bool {.importcpp: "Undo", 
    header: "wx.h".}
proc addAction*(this: var WxRichTextCommand; action: ptr WxRichTextAction) {.
    importcpp: "AddAction", header: "wx.h".}
proc clearActions*(this: var WxRichTextCommand) {.importcpp: "ClearActions", 
    header: "wx.h".}
proc getActions*(this: var WxRichTextCommand): var WxList {.
    importcpp: "GetActions", header: "wx.h".}
#*
#    @class wxRichTextAction
#
#    Implements a part of a command.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextCommand
#

type 
  WxRichTextAction* {.importcpp: "wxRichTextAction", header: "wx.h".} = object of WxObject #*
                                                                                           #        Constructor. @a buffer is the top-level buffer, while @a container is the object within
                                                                                           #        which the action is taking place. In the simplest case, they are the same.
                                                                                           #    
                                                                                           # Action name
    mName* {.importc: "m_name".}: WxString # Buffer
    mBuffer* {.importc: "m_buffer".}: ptr WxRichTextBuffer # The address (nested position) of the container being manipulated.
                                                           # This is necessary because objects are deleted, and we can't
                                                           # therefore store actual pointers.
    mContainerAddress* {.importc: "m_containerAddress".}: WxRichTextObjectAddress # 
                                                                                  # Control
    mCtrl* {.importc: "m_ctrl".}: ptr WxRichTextCtrl # Stores the new paragraphs
    mNewParagraphs* {.importc: "m_newParagraphs".}: WxRichTextParagraphLayoutBox # 
                                                                                 # Stores 
                                                                                 # the 
                                                                                 # old 
                                                                                 # paragraphs
    mOldParagraphs* {.importc: "m_oldParagraphs".}: WxRichTextParagraphLayoutBox # 
                                                                                 # Stores 
                                                                                 # an 
                                                                                 # object 
                                                                                 # to 
                                                                                 # replace 
                                                                                 # the 
                                                                                 # one 
                                                                                 # at 
                                                                                 # the 
                                                                                 # position
                                                                                 # 
                                                                                 # defined 
                                                                                 # by 
                                                                                 # the 
                                                                                 # container 
                                                                                 # address 
                                                                                 # and 
                                                                                 # the 
                                                                                 # action's 
                                                                                 # range 
                                                                                 # start 
                                                                                 # position.
    mObject* {.importc: "m_object".}: ptr WxRichTextObject # Stores the attributes
    mAttributes* {.importc: "m_attributes".}: WxRichTextAttr # The address of the object being manipulated (used for changing an individual object or its attributes)
    mObjectAddress* {.importc: "m_objectAddress".}: WxRichTextObjectAddress # 
                                                                            # Stores the old 
                                                                            # attributes
                                                                            # 
                                                                            # wxRichTextAttr                  
                                                                            # m_oldAttributes;
                                                                            # The 
                                                                            # affected 
                                                                            # range
    mRange* {.importc: "m_range".}: WxRichTextRange # The insertion point for this command
    mPosition* {.importc: "m_position".}: clong # Ignore 1st 'Do' operation because we already did it
    mIgnoreThis* {.importc: "m_ignoreThis".}: bool # The command identifier
    mCmdId* {.importc: "m_cmdId".}: WxRichTextCommandId


proc constructwxRichTextAction*(cmd: ptr WxRichTextCommand; name: WxString; 
                                id: WxRichTextCommandId; 
                                buffer: ptr WxRichTextBuffer; 
                                container: ptr WxRichTextParagraphLayoutBox; 
                                ctrl: ptr WxRichTextCtrl; 
                                ignoreFirstTime: bool = false): WxRichTextAction {.
    constructor, importcpp: "wxRichTextAction(@)", header: "wx.h".}
proc destroywxRichTextAction*(this: var WxRichTextAction) {.
    importcpp: "#.~wxRichTextAction()", header: "wx.h".}
proc `do`*(this: var WxRichTextAction): bool {.importcpp: "Do", header: "wx.h".}
proc undo*(this: var WxRichTextAction): bool {.importcpp: "Undo", header: "wx.h".}
proc updateAppearance*(this: var WxRichTextAction; caretPosition: clong; 
                       sendUpdateEvent: bool = false; 
                       optimizationLineCharPositions: ptr WxArrayInt = nil; 
                       optimizationLineYPositions: ptr WxArrayInt = nil; 
                       isDoCmd: bool = true) {.importcpp: "UpdateAppearance", 
    header: "wx.h".}
proc applyParagraphs*(this: var WxRichTextAction; 
                      fragment: WxRichTextParagraphLayoutBox) {.
    importcpp: "ApplyParagraphs", header: "wx.h".}
proc getNewParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    importcpp: "GetNewParagraphs", header: "wx.h".}
proc getOldParagraphs*(this: var WxRichTextAction): var WxRichTextParagraphLayoutBox {.
    importcpp: "GetOldParagraphs", header: "wx.h".}
proc getAttributes*(this: var WxRichTextAction): var WxRichTextAttr {.
    importcpp: "GetAttributes", header: "wx.h".}
proc getObject*(this: WxRichTextAction): ptr WxRichTextObject {.noSideEffect, 
    importcpp: "GetObject", header: "wx.h".}
proc storeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.
    importcpp: "StoreObject", header: "wx.h".}
proc setObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.
    importcpp: "SetObject", header: "wx.h".}
proc makeObject*(this: var WxRichTextAction; obj: ptr WxRichTextObject) {.
    importcpp: "MakeObject", header: "wx.h".}
proc setOldAndNewObjects*(this: var WxRichTextAction; 
                          oldObj: ptr WxRichTextObject; 
                          newObj: ptr WxRichTextObject) {.
    importcpp: "SetOldAndNewObjects", header: "wx.h".}
proc calculateRefreshOptimizations*(this: var WxRichTextAction; 
    optimizationLineCharPositions: var WxArrayInt; 
                                    optimizationLineYPositions: var WxArrayInt) {.
    importcpp: "CalculateRefreshOptimizations", header: "wx.h".}
proc setPosition*(this: var WxRichTextAction; pos: clong) {.
    importcpp: "SetPosition", header: "wx.h".}
proc getPosition*(this: WxRichTextAction): clong {.noSideEffect, 
    importcpp: "GetPosition", header: "wx.h".}
proc setRange*(this: var WxRichTextAction; range: WxRichTextRange) {.
    importcpp: "SetRange", header: "wx.h".}
proc getRange*(this: WxRichTextAction): WxRichTextRange {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc getContainerAddress*(this: var WxRichTextAction): var WxRichTextObjectAddress {.
    importcpp: "GetContainerAddress", header: "wx.h".}
proc getContainerAddress*(this: WxRichTextAction): WxRichTextObjectAddress {.
    noSideEffect, importcpp: "GetContainerAddress", header: "wx.h".}
proc setContainerAddress*(this: var WxRichTextAction; 
                          address: WxRichTextObjectAddress) {.
    importcpp: "SetContainerAddress", header: "wx.h".}
proc setContainerAddress*(this: var WxRichTextAction; 
                          container: ptr WxRichTextParagraphLayoutBox; 
                          obj: ptr WxRichTextObject) {.
    importcpp: "SetContainerAddress", header: "wx.h".}
proc getContainer*(this: WxRichTextAction): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetContainer", header: "wx.h".}
proc getName*(this: WxRichTextAction): WxString {.noSideEffect, 
    importcpp: "GetName", header: "wx.h".}
proc setIgnoreFirstTime*(this: var WxRichTextAction; b: bool) {.
    importcpp: "SetIgnoreFirstTime", header: "wx.h".}
proc getIgnoreFirstTime*(this: WxRichTextAction): bool {.noSideEffect, 
    importcpp: "GetIgnoreFirstTime", header: "wx.h".}
#!
#  Handler flags
# 
# Include style sheet when loading and saving

const 
  wxRICHTEXT_HANDLER_INCLUDE_STYLESHEET* = 0x00000001

# Save images to memory file system in HTML handler

const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_MEMORY* = 0x00000010

# Save images to files in HTML handler

const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_FILES* = 0x00000020

# Save images as inline base64 data in HTML handler

const 
  wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_BASE64* = 0x00000040

# Don't write header and footer (or BODY), so we can include the fragment
# in a larger document

const 
  wxRICHTEXT_HANDLER_NO_HEADER_FOOTER* = 0x00000080

# Convert the more common face names to names that will work on the current platform
# in a larger document

const 
  wxRICHTEXT_HANDLER_CONVERT_FACENAMES* = 0x00000100

#*
#    @class wxRichTextFileHandler
#
#    The base class for file handlers.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextFileHandler* {.importcpp: "wxRichTextFileHandler", header: "wx.h".} = object of WxObject #*
                                                                                                     #        Creates a file handler object.
                                                                                                     #    
                                                                                                     #*
                                                                                                     #        Override to load content from @a stream into @a buffer.
                                                                                                     #    
    wxRichTextFileHandler* {.importc: "wxRichTextFileHandler".}: Declare_Class
    mName* {.importc: "m_name".}: WxString
    mEncoding* {.importc: "m_encoding".}: WxString
    mExtension* {.importc: "m_extension".}: WxString
    mType* {.importc: "m_type".}: cint
    mFlags* {.importc: "m_flags".}: cint
    mVisible* {.importc: "m_visible".}: bool


proc constructwxRichTextFileHandler*(name: WxString = wxEmptyString; 
                                     ext: WxString = wxEmptyString; 
                                     `type`: cint = 0): WxRichTextFileHandler {.
    constructor, importcpp: "wxRichTextFileHandler(@)", header: "wx.h".}
proc loadFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               stream: var WxInputStream): bool {.importcpp: "LoadFile", 
    header: "wx.h".}
proc saveFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               stream: var WxOutputStream): bool {.importcpp: "SaveFile", 
    header: "wx.h".}
proc loadFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: var WxRichTextFileHandler; buffer: ptr WxRichTextBuffer; 
               filename: WxString): bool {.importcpp: "SaveFile", header: "wx.h".}
proc canHandle*(this: WxRichTextFileHandler; filename: WxString): bool {.
    noSideEffect, importcpp: "CanHandle", header: "wx.h".}
proc canSave*(this: WxRichTextFileHandler): bool {.noSideEffect, 
    importcpp: "CanSave", header: "wx.h".}
proc canLoad*(this: WxRichTextFileHandler): bool {.noSideEffect, 
    importcpp: "CanLoad", header: "wx.h".}
proc isVisible*(this: WxRichTextFileHandler): bool {.noSideEffect, 
    importcpp: "IsVisible", header: "wx.h".}
proc setVisible*(this: var WxRichTextFileHandler; visible: bool) {.
    importcpp: "SetVisible", header: "wx.h".}
proc setName*(this: var WxRichTextFileHandler; name: WxString) {.
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxRichTextFileHandler): WxString {.noSideEffect, 
    importcpp: "GetName", header: "wx.h".}
proc setExtension*(this: var WxRichTextFileHandler; ext: WxString) {.
    importcpp: "SetExtension", header: "wx.h".}
proc getExtension*(this: WxRichTextFileHandler): WxString {.noSideEffect, 
    importcpp: "GetExtension", header: "wx.h".}
proc setType*(this: var WxRichTextFileHandler; `type`: cint) {.
    importcpp: "SetType", header: "wx.h".}
proc getType*(this: WxRichTextFileHandler): cint {.noSideEffect, 
    importcpp: "GetType", header: "wx.h".}
proc setFlags*(this: var WxRichTextFileHandler; flags: cint) {.
    importcpp: "SetFlags", header: "wx.h".}
proc getFlags*(this: WxRichTextFileHandler): cint {.noSideEffect, 
    importcpp: "GetFlags", header: "wx.h".}
proc setEncoding*(this: var WxRichTextFileHandler; encoding: WxString) {.
    importcpp: "SetEncoding", header: "wx.h".}
proc getEncoding*(this: WxRichTextFileHandler): WxString {.noSideEffect, 
    importcpp: "GetEncoding", header: "wx.h".}
#*
#    @class wxRichTextPlainTextHandler
#
#    Implements saving a buffer to plain text.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextFileHandler, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextPlainTextHandler* {.importcpp: "wxRichTextPlainTextHandler", 
                                header: "wx.h".} = object of WxRichTextFileHandler
    wxRichTextPlainTextHandler* {.importc: "wxRichTextPlainTextHandler".}: Declare_Class


proc constructwxRichTextPlainTextHandler*(name: WxString = wxT("Text"); 
    ext: WxString = wxT("txt"); 
    `type`: WxRichTextFileType = wxRICHTEXT_TYPE_TEXT): WxRichTextPlainTextHandler {.
    constructor, importcpp: "wxRichTextPlainTextHandler(@)", header: "wx.h".}
proc canSave*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, 
    importcpp: "CanSave", header: "wx.h".}
proc canLoad*(this: WxRichTextPlainTextHandler): bool {.noSideEffect, 
    importcpp: "CanLoad", header: "wx.h".}
#*
#    @class wxRichTextDrawingHandler
#
#    The base class for custom drawing handlers.
#    Currently, drawing handlers can provide virtual attributes.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextDrawingHandler* {.importcpp: "wxRichTextDrawingHandler", 
                              header: "wx.h".} = object of WxObject #*
                                                                    #        Creates a drawing handler object.
                                                                    #    
    wxRichTextDrawingHandler* {.importc: "wxRichTextDrawingHandler".}: Declare_Class
    mName* {.importc: "m_name".}: WxString


proc constructwxRichTextDrawingHandler*(name: WxString = wxEmptyString): WxRichTextDrawingHandler {.
    constructor, importcpp: "wxRichTextDrawingHandler(@)", header: "wx.h".}
proc hasVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           obj: ptr WxRichTextObject): bool {.noSideEffect, 
    importcpp: "HasVirtualAttributes", header: "wx.h".}
proc getVirtualAttributes*(this: WxRichTextDrawingHandler; 
                           attr: var WxRichTextAttr; obj: ptr WxRichTextObject): bool {.
    noSideEffect, importcpp: "GetVirtualAttributes", header: "wx.h".}
proc getVirtualSubobjectAttributesCount*(this: WxRichTextDrawingHandler; 
    obj: ptr WxRichTextObject): cint {.noSideEffect, importcpp: "GetVirtualSubobjectAttributesCount", 
                                       header: "wx.h".}
proc getVirtualSubobjectAttributes*(this: WxRichTextDrawingHandler; 
                                    obj: ptr WxRichTextObject; 
                                    positions: var WxArrayInt; 
                                    attributes: var WxRichTextAttrArray): cint {.
    noSideEffect, importcpp: "GetVirtualSubobjectAttributes", header: "wx.h".}
proc hasVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText): bool {.noSideEffect, 
    importcpp: "HasVirtualText", header: "wx.h".}
proc getVirtualText*(this: WxRichTextDrawingHandler; 
                     obj: ptr WxRichTextPlainText; text: var WxString): bool {.
    noSideEffect, importcpp: "GetVirtualText", header: "wx.h".}
proc setName*(this: var WxRichTextDrawingHandler; name: WxString) {.
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxRichTextDrawingHandler): WxString {.noSideEffect, 
    importcpp: "GetName", header: "wx.h".}
#*
#    @class wxRichTextBufferDataObject
#
#    Implements a rich text data object for clipboard transfer.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxDataObjectSimple, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextBufferDataObject* {.importcpp: "wxRichTextBufferDataObject", 
                                header: "wx.h".} = object of WxDataObjectSimple #*
                                                                                #        The constructor doesn't copy the pointer, so it shouldn't go away while this object
                                                                                #        is alive.
                                                                                #    
    mFormatRichTextBuffer* {.importc: "m_formatRichTextBuffer".}: WxDataFormat # 
                                                                               # our 
                                                                               # custom 
                                                                               # format
    mRichTextBuffer* {.importc: "m_richTextBuffer".}: ptr WxRichTextBuffer # our data
                                                                           # our 
                                                                           # format id
  

proc constructwxRichTextBufferDataObject*(
    richTextBuffer: ptr WxRichTextBuffer = nil): WxRichTextBufferDataObject {.
    constructor, importcpp: "wxRichTextBufferDataObject(@)", header: "wx.h".}
proc destroywxRichTextBufferDataObject*(this: var WxRichTextBufferDataObject) {.
    importcpp: "#.~wxRichTextBufferDataObject()", header: "wx.h".}
proc getRichTextBuffer*(this: var WxRichTextBufferDataObject): ptr WxRichTextBuffer {.
    importcpp: "GetRichTextBuffer", header: "wx.h".}
proc getRichTextBufferFormatId*(): ptr WxChar {.
    importcpp: "wxRichTextBufferDataObject::GetRichTextBufferFormatId(@)", 
    header: "wx.h".}
proc getPreferredFormat*(this: WxRichTextBufferDataObject; dir: Direction): WxDataFormat {.
    noSideEffect, importcpp: "GetPreferredFormat", header: "wx.h".}
proc getDataSize*(this: WxRichTextBufferDataObject): csize {.noSideEffect, 
    importcpp: "GetDataSize", header: "wx.h".}
proc getDataHere*(this: WxRichTextBufferDataObject; pBuf: pointer): bool {.
    noSideEffect, importcpp: "GetDataHere", header: "wx.h".}
proc setData*(this: var WxRichTextBufferDataObject; len: csize; buf: pointer): bool {.
    importcpp: "SetData", header: "wx.h".}
proc getDataSize*(this: WxRichTextBufferDataObject; a3: WxDataFormat): csize {.
    noSideEffect, importcpp: "GetDataSize", header: "wx.h".}
proc getDataHere*(this: WxRichTextBufferDataObject; a3: WxDataFormat; 
                  buf: pointer): bool {.noSideEffect, importcpp: "GetDataHere", 
                                        header: "wx.h".}
proc setData*(this: var WxRichTextBufferDataObject; a3: WxDataFormat; 
              len: csize; buf: pointer): bool {.importcpp: "SetData", 
    header: "wx.h".}
#*
#    @class wxRichTextRenderer
#
#    This class isolates some common drawing functionality.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextRenderer* {.importcpp: "wxRichTextRenderer", header: "wx.h".} = object of WxObject #*
                                                                                               #        Constructor.
                                                                                               #    
  

proc constructwxRichTextRenderer*(): WxRichTextRenderer {.constructor, 
    importcpp: "wxRichTextRenderer(@)", header: "wx.h".}
proc destroywxRichTextRenderer*(this: var WxRichTextRenderer) {.
    importcpp: "#.~wxRichTextRenderer()", header: "wx.h".}
proc drawStandardBullet*(this: var WxRichTextRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.
    importcpp: "DrawStandardBullet", header: "wx.h".}
proc drawTextBullet*(this: var WxRichTextRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    importcpp: "DrawTextBullet", header: "wx.h".}
proc drawBitmapBullet*(this: var WxRichTextRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.
    importcpp: "DrawBitmapBullet", header: "wx.h".}
proc enumerateStandardBulletNames*(this: var WxRichTextRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    importcpp: "EnumerateStandardBulletNames", header: "wx.h".}
#*
#    @class wxRichTextStdRenderer
#
#    The standard renderer for drawing bullets.
#
#    @library{wxrichtext}
#    @category{richtext}
#
#    @see wxRichTextRenderer, wxRichTextBuffer, wxRichTextCtrl
#

type 
  WxRichTextStdRenderer* {.importcpp: "wxRichTextStdRenderer", header: "wx.h".} = object of WxRichTextRenderer #*
                                                                                                               #        Constructor.
                                                                                                               #    
  

proc constructwxRichTextStdRenderer*(): WxRichTextStdRenderer {.constructor, 
    importcpp: "wxRichTextStdRenderer(@)", header: "wx.h".}
proc drawStandardBullet*(this: var WxRichTextStdRenderer; 
                         paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                         attr: WxRichTextAttr; rect: WxRect): bool {.
    importcpp: "DrawStandardBullet", header: "wx.h".}
proc drawTextBullet*(this: var WxRichTextStdRenderer; 
                     paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                     attr: WxRichTextAttr; rect: WxRect; text: WxString): bool {.
    importcpp: "DrawTextBullet", header: "wx.h".}
proc drawBitmapBullet*(this: var WxRichTextStdRenderer; 
                       paragraph: ptr WxRichTextParagraph; dc: var WxDC; 
                       attr: WxRichTextAttr; rect: WxRect): bool {.
    importcpp: "DrawBitmapBullet", header: "wx.h".}
proc enumerateStandardBulletNames*(this: var WxRichTextStdRenderer; 
                                   bulletNames: var WxArrayString): bool {.
    importcpp: "EnumerateStandardBulletNames", header: "wx.h".}
#!
#  Utilities
# 
# 

proc wxRichTextHasStyle*(flags: cint; style: cint): bool {.inline.}
#/ Compare two attribute objects

proc wxTextAttrEq*(attr1: WxRichTextAttr; attr2: WxRichTextAttr): bool {.
    importcpp: "wxTextAttrEq(@)", header: "wx.h".}
proc wxTextAttrEq*(attr1: WxRichTextAttr; attr2: WxRichTextAttr): bool {.
    importcpp: "wxTextAttrEq(@)", header: "wx.h".}
#/ Apply one style to another

proc wxRichTextApplyStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr; 
                           compareWith: ptr WxRichTextAttr = nil): bool {.
    importcpp: "wxRichTextApplyStyle(@)", header: "wx.h".}
# Remove attributes

proc wxRichTextRemoveStyle*(destStyle: var WxRichTextAttr; style: WxRichTextAttr): bool {.
    importcpp: "wxRichTextRemoveStyle(@)", header: "wx.h".}
#/ Combine two bitlists

proc wxRichTextCombineBitlists*(valueA: var cint; valueB: cint; 
                                flagsA: var cint; flagsB: cint): bool {.
    importcpp: "wxRichTextCombineBitlists(@)", header: "wx.h".}
#/ Compare two bitlists

proc wxRichTextBitlistsEqPartial*(valueA: cint; valueB: cint; flags: cint): bool {.
    importcpp: "wxRichTextBitlistsEqPartial(@)", header: "wx.h".}
#/ Split into paragraph and character styles

proc wxRichTextSplitParaCharStyles*(style: WxRichTextAttr; 
                                    parStyle: var WxRichTextAttr; 
                                    charStyle: var WxRichTextAttr): bool {.
    importcpp: "wxRichTextSplitParaCharStyles(@)", header: "wx.h".}
#/ Compare tabs

proc wxRichTextTabsEq*(tabs1: WxArrayInt; tabs2: WxArrayInt): bool {.
    importcpp: "wxRichTextTabsEq(@)", header: "wx.h".}
#/ Convert a decimal to Roman numerals

proc wxRichTextDecimalToRoman*(n: clong): WxString {.
    importcpp: "wxRichTextDecimalToRoman(@)", header: "wx.h".}
# Collects the attributes that are common to a range of content, building up a note of
# which attributes are absent in some objects and which clash in some objects.

proc wxTextAttrCollectCommonAttributes*(currentStyle: var WxTextAttr; 
                                        attr: WxTextAttr; 
                                        clashingAttr: var WxTextAttr; 
                                        absentAttr: var WxTextAttr) {.
    importcpp: "wxTextAttrCollectCommonAttributes(@)", header: "wx.h".}
proc wxRichTextModuleInit*() {.importcpp: "wxRichTextModuleInit(@)", 
                               header: "wx.h".}
# wxUSE_RICHTEXT

# _WX_RICHTEXTBUFFER_H_
