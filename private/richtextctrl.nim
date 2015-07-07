#///////////////////////////////////////////////////////////////////////////
# Name:        wx/richtext/richtextctrl.h
# Purpose:     A rich edit control
# Author:      Julian Smart
# Modified by:
# Created:     2005-09-30
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

const 
  wxRICHTEXT_BUFFERED_PAINTING* = 1

discard "forward decl of wxRichTextStyleDefinition"
const 
  wxRE_READONLY* = 0x00000010
  wxRE_MULTILINE* = 0x00000020
  wxRE_CENTRE_CARET* = 0x00008000
  wxRE_CENTER_CARET* = wxRE_CENTRE_CARET

#*
#    Flags
#

const 
  wxRICHTEXT_SHIFT_DOWN* = 0x00000001
  wxRICHTEXT_CTRL_DOWN* = 0x00000002
  wxRICHTEXT_ALT_DOWN* = 0x00000004

#*
#    Extra flags
#
# Don't draw guide lines around boxes and tables

const 
  wxRICHTEXT_EX_NO_GUIDELINES* = 0x00000100

#
#    Defaults
#

const 
  wxRICHTEXT_DEFAULT_OVERALL_SIZE* = wxSize(- 1, - 1)
  wxRICHTEXT_DEFAULT_IMAGE_SIZE* = wxSize(80, 80)
  wxRICHTEXT_DEFAULT_SPACING* = 3
  wxRICHTEXT_DEFAULT_MARGIN* = 3
  wxRICHTEXT_DEFAULT_UNFOCUSSED_BACKGROUND* = wxColour(175, 175, 175)
  wxRICHTEXT_DEFAULT_FOCUSSED_BACKGROUND* = wxColour(140, 140, 140)
  wxRICHTEXT_DEFAULT_UNSELECTED_BACKGROUND* = getColour(wxSYS_COLOUR_3DFACE)
  wxRICHTEXT_DEFAULT_TYPE_COLOUR* = wxColour(0, 0, 200)
  wxRICHTEXT_DEFAULT_FOCUS_RECT_COLOUR* = wxColour(100, 80, 80)
  wxRICHTEXT_DEFAULT_CARET_WIDTH* = 2

# Minimum buffer size before delayed layout kicks in

const 
  wxRICHTEXT_DEFAULT_DELAYED_LAYOUT_THRESHOLD* = 20000

# Milliseconds before layout occurs after resize

const 
  wxRICHTEXT_DEFAULT_LAYOUT_INTERVAL* = 50

# Identifiers
# 

const 
  wxID_RICHTEXT_PROPERTIES1* = (wxID_HIGHEST + 1)
  wxID_RICHTEXT_PROPERTIES2* = (wxID_HIGHEST + 2)
  wxID_RICHTEXT_PROPERTIES3* = (wxID_HIGHEST + 3)

#
#    Normal selection occurs initially and as user drags within one container.
#    Common ancestor selection occurs when the user starts dragging across containers
#    that have a common ancestor, for example the cells in a table.
# 

type 
  WxRichTextCtrlSelectionState* = enum 
    wxRichTextCtrlSelectionStateNormal, 
    wxRichTextCtrlSelectionStateCommonAncestor


#*
#    @class wxRichTextContextMenuPropertiesInfo
#
#    wxRichTextContextMenuPropertiesInfo keeps track of objects that appear in the context menu,
#    whose properties are available to be edited.
# 

type 
  WxRichTextContextMenuPropertiesInfo* {.
      importcpp: "wxRichTextContextMenuPropertiesInfo", header: "wx.h".} = object #*
                                                                                  #        Constructor.
                                                                                  #    
    mObjects* {.importc: "m_objects".}: WxRichTextObjectPtrArray
    mLabels* {.importc: "m_labels".}: WxArrayString


proc constructwxRichTextContextMenuPropertiesInfo*(): WxRichTextContextMenuPropertiesInfo {.
    constructor, importcpp: "wxRichTextContextMenuPropertiesInfo(@)", 
    header: "wx.h".}
proc init*(this: var WxRichTextContextMenuPropertiesInfo) {.importcpp: "Init", 
    header: "wx.h".}
proc addItem*(this: var WxRichTextContextMenuPropertiesInfo; label: WxString; 
              obj: ptr WxRichTextObject): bool {.importcpp: "AddItem", 
    header: "wx.h".}
proc addMenuItems*(this: WxRichTextContextMenuPropertiesInfo; menu: ptr WxMenu; 
                   startCmd: cint = wxID_RICHTEXT_PROPERTIES1): cint {.
    noSideEffect, importcpp: "AddMenuItems", header: "wx.h".}
proc addItems*(this: var WxRichTextContextMenuPropertiesInfo; 
               ctrl: ptr WxRichTextCtrl; container: ptr WxRichTextObject; 
               obj: ptr WxRichTextObject): cint {.importcpp: "AddItems", 
    header: "wx.h".}
proc clear*(this: var WxRichTextContextMenuPropertiesInfo) {.importcpp: "Clear", 
    header: "wx.h".}
proc getLabel*(this: WxRichTextContextMenuPropertiesInfo; n: cint): WxString {.
    noSideEffect, importcpp: "GetLabel", header: "wx.h".}
proc getObject*(this: WxRichTextContextMenuPropertiesInfo; n: cint): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetObject", header: "wx.h".}
proc getObjects*(this: var WxRichTextContextMenuPropertiesInfo): var WxRichTextObjectPtrArray {.
    importcpp: "GetObjects", header: "wx.h".}
proc getObjects*(this: WxRichTextContextMenuPropertiesInfo): WxRichTextObjectPtrArray {.
    noSideEffect, importcpp: "GetObjects", header: "wx.h".}
proc getLabels*(this: var WxRichTextContextMenuPropertiesInfo): var WxArrayString {.
    importcpp: "GetLabels", header: "wx.h".}
proc getLabels*(this: WxRichTextContextMenuPropertiesInfo): WxArrayString {.
    noSideEffect, importcpp: "GetLabels", header: "wx.h".}
proc getCount*(this: WxRichTextContextMenuPropertiesInfo): cint {.noSideEffect, 
    importcpp: "GetCount", header: "wx.h".}
#*
#    @class wxRichTextCtrl
#
#    wxRichTextCtrl provides a generic, ground-up implementation of a text control
#    capable of showing multiple styles and images.
#
#    wxRichTextCtrl sends notification events: see wxRichTextEvent.
#
#    It also sends the standard wxTextCtrl events @c wxEVT_TEXT_ENTER and
#    @c wxEVT_TEXT, and wxTextUrlEvent when URL content is clicked.
#
#    For more information, see the @ref overview_richtextctrl.
#
#    @beginStyleTable
#    @style{wxRE_CENTRE_CARET}
#           The control will try to keep the caret line centred vertically while editing.
#           wxRE_CENTER_CARET is a synonym for this style.
#    @style{wxRE_MULTILINE}
#           The control will be multiline (mandatory).
#    @style{wxRE_READONLY}
#           The control will not be editable.
#    @endStyleTable
#
#    @library{wxrichtext}
#    @category{richtext}
#    @appearance{richtextctrl.png}
#
# 

type 
  WxRichTextCtrl* {.importcpp: "wxRichTextCtrl", header: "wx.h".} = object of WxControl # 
                                                                                        # Constructors
                                                                                        #
                                                                                        #*
                                                                                        #        
                                                                                        #        Default 
                                                                                        #        constructor.
                                                                                        #    
                                                                                        # 
                                                                                        # implement 
                                                                                        # the 
                                                                                        # wxTextEntry 
                                                                                        # pure 
                                                                                        # virtual 
                                                                                        # method
                                                                                        #
                                                                                        #*
                                                                                        #        
                                                                                        #        Currently 
                                                                                        #        this 
                                                                                        #        simply 
                                                                                        #        returns 
                                                                                        #        @c 
                                                                                        #        wxSize(10, 
                                                                                        #        10).
                                                                                        #    
                                                                                        #
                                                                                        #/ 
                                                                                        #Text 
                                                                                        #buffer
    wxRichTextCtrl* {.importc: "wxRichTextCtrl".}: Declare_Dynamic_Class
    mBuffer* {.importc: "m_buffer".}: WxRichTextBuffer
    mContextMenu* {.importc: "m_contextMenu".}: ptr WxMenu #/ Caret position (1 less than the character position, so -1 is the
                                                           #/ first caret position).
    mCaretPosition* {.importc: "m_caretPosition".}: clong #/ Caret position when the default formatting has been changed. As
                                                          #/ soon as this position changes, we no longer reflect the default style
                                                          #/ in the UI.
    mCaretPositionForDefaultStyle* {.importc: "m_caretPositionForDefaultStyle".}: clong #/ Selection range in character positions. -2, -2 means no selection.
    mSelection* {.importc: "m_selection".}: WxRichTextSelection
    mSelectionState* {.importc: "m_selectionState".}: WxRichTextCtrlSelectionState #/ Anchor so we know how to extend the selection
                                                                                   #/ It's a caret position since it's between two characters.
    mSelectionAnchor* {.importc: "m_selectionAnchor".}: clong #/ Anchor object if selecting multiple container objects, such as grid cells.
    mSelectionAnchorObject* {.importc: "m_selectionAnchorObject".}: ptr WxRichTextObject #/ Are we editable?
    mEditable* {.importc: "m_editable".}: bool #/ Can we use virtual attributes and virtual text?
    mUseVirtualAttributes* {.importc: "m_useVirtualAttributes".}: bool #/ Is the vertical scrollbar enabled?
    mVerticalScrollbarEnabled* {.importc: "m_verticalScrollbarEnabled".}: bool #/ Are we showing the caret position at the start of a line
                                                                               #/ instead of at the end of the previous one?
    mCaretAtLineStart* {.importc: "m_caretAtLineStart".}: bool #/ Are we dragging (i.e. extending) a selection?
    mDragging* {.importc: "m_dragging".}: bool #/ Are we trying to start Drag'n'Drop?
    mPreDrag* {.importc: "m_preDrag".}: bool #/ Initial position when starting Drag'n'Drop
    mDragStartPoint* {.importc: "m_dragStartPoint".}: WxPoint #/ Initial time when starting Drag'n'Drop
    mDragStartTime* {.importc: "m_dragStartTime".}: WxDateTime #/ Do we need full layout in idle?
    mFullLayoutRequired* {.importc: "m_fullLayoutRequired".}: bool
    mFullLayoutTime* {.importc: "m_fullLayoutTime".}: WxLongLong
    mFullLayoutSavedPosition* {.importc: "m_fullLayoutSavedPosition".}: clong #/ Threshold for doing delayed layout
    mDelayedLayoutThreshold* {.importc: "m_delayedLayoutThreshold".}: clong #/ Cursors
    mTextCursor* {.importc: "m_textCursor".}: WxCursor
    mUrlCursor* {.importc: "m_urlCursor".}: WxCursor
    mContextMenuPropertiesInfo* {.importc: "m_contextMenuPropertiesInfo".}: WxRichTextContextMenuPropertiesInfo #/ The object that currently has the editing focus
    mFocusObject* {.importc: "m_focusObject".}: ptr WxRichTextParagraphLayoutBox #/ An overall scale factor
    mScale* {.importc: "m_scale".}: cdouble


proc constructwxRichTextCtrl*(): WxRichTextCtrl {.constructor, 
    importcpp: "wxRichTextCtrl(@)", header: "wx.h".}
proc constructwxRichTextCtrl*(parent: ptr WxWindow; id: WxWindowID = - 1; 
                              value: WxString = wxEmptyString; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; 
                              style: clong = wxRE_MULTILINE; 
                              validator: WxValidator = wxDefaultValidator; 
                              name: WxString = wxTextCtrlNameStr): WxRichTextCtrl {.
    constructor, importcpp: "wxRichTextCtrl(@)", header: "wx.h".}
proc destroywxRichTextCtrl*(this: var WxRichTextCtrl) {.
    importcpp: "#.~wxRichTextCtrl()", header: "wx.h".}
proc create*(this: var WxRichTextCtrl; parent: ptr WxWindow; 
             id: WxWindowID = - 1; value: WxString = wxEmptyString; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxRE_MULTILINE; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = wxTextCtrlNameStr): bool {.importcpp: "Create", 
    header: "wx.h".}
proc init*(this: var WxRichTextCtrl) {.importcpp: "Init", header: "wx.h".}
proc getRange*(this: WxRichTextCtrl; `from`: clong; to: clong): WxString {.
    noSideEffect, importcpp: "GetRange", header: "wx.h".}
proc getLineLength*(this: WxRichTextCtrl; lineNo: clong): cint {.noSideEffect, 
    importcpp: "GetLineLength", header: "wx.h".}
proc getLineText*(this: WxRichTextCtrl; lineNo: clong): WxString {.noSideEffect, 
    importcpp: "GetLineText", header: "wx.h".}
proc getNumberOfLines*(this: WxRichTextCtrl): cint {.noSideEffect, 
    importcpp: "GetNumberOfLines", header: "wx.h".}
proc isModified*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsModified", header: "wx.h".}
proc isEditable*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsEditable", header: "wx.h".}
proc isSingleLine*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsSingleLine", header: "wx.h".}
proc isMultiLine*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsMultiLine", header: "wx.h".}
proc getSelection*(this: WxRichTextCtrl; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, importcpp: "GetSelection", header: "wx.h".}
proc getSelection*(this: WxRichTextCtrl): WxRichTextSelection {.noSideEffect, 
    importcpp: "GetSelection", header: "wx.h".}
proc getSelection*(this: var WxRichTextCtrl): var WxRichTextSelection {.
    importcpp: "GetSelection", header: "wx.h".}
proc getStringSelection*(this: WxRichTextCtrl): WxString {.noSideEffect, 
    importcpp: "GetStringSelection", header: "wx.h".}
proc getFilename*(this: WxRichTextCtrl): WxString {.noSideEffect, 
    importcpp: "GetFilename", header: "wx.h".}
proc setFilename*(this: var WxRichTextCtrl; filename: WxString) {.
    importcpp: "SetFilename", header: "wx.h".}
proc setDelayedLayoutThreshold*(this: var WxRichTextCtrl; threshold: clong) {.
    importcpp: "SetDelayedLayoutThreshold", header: "wx.h".}
proc getDelayedLayoutThreshold*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetDelayedLayoutThreshold", header: "wx.h".}
proc getFullLayoutRequired*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetFullLayoutRequired", header: "wx.h".}
proc setFullLayoutRequired*(this: var WxRichTextCtrl; b: bool) {.
    importcpp: "SetFullLayoutRequired", header: "wx.h".}
proc getFullLayoutTime*(this: WxRichTextCtrl): WxLongLong {.noSideEffect, 
    importcpp: "GetFullLayoutTime", header: "wx.h".}
proc setFullLayoutTime*(this: var WxRichTextCtrl; t: WxLongLong) {.
    importcpp: "SetFullLayoutTime", header: "wx.h".}
proc getFullLayoutSavedPosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetFullLayoutSavedPosition", header: "wx.h".}
proc setFullLayoutSavedPosition*(this: var WxRichTextCtrl; p: clong) {.
    importcpp: "SetFullLayoutSavedPosition", header: "wx.h".}
proc forceDelayedLayout*(this: var WxRichTextCtrl) {.
    importcpp: "ForceDelayedLayout", header: "wx.h".}
proc setTextCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.
    importcpp: "SetTextCursor", header: "wx.h".}
proc getTextCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, 
    importcpp: "GetTextCursor", header: "wx.h".}
proc setURLCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.
    importcpp: "SetURLCursor", header: "wx.h".}
proc getURLCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, 
    importcpp: "GetURLCursor", header: "wx.h".}
proc getCaretAtLineStart*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetCaretAtLineStart", header: "wx.h".}
proc setCaretAtLineStart*(this: var WxRichTextCtrl; atStart: bool) {.
    importcpp: "SetCaretAtLineStart", header: "wx.h".}
proc getDragging*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetDragging", header: "wx.h".}
proc setDragging*(this: var WxRichTextCtrl; dragging: bool) {.
    importcpp: "SetDragging", header: "wx.h".}
proc getPreDrag*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetPreDrag", header: "wx.h".}
proc setPreDrag*(this: var WxRichTextCtrl; pd: bool) {.importcpp: "SetPreDrag", 
    header: "wx.h".}
proc getDragStartPoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, 
    importcpp: "GetDragStartPoint", header: "wx.h".}
proc setDragStartPoint*(this: var WxRichTextCtrl; sp: WxPoint) {.
    importcpp: "SetDragStartPoint", header: "wx.h".}
proc getDragStartTime*(this: WxRichTextCtrl): WxDateTime {.noSideEffect, 
    importcpp: "GetDragStartTime", header: "wx.h".}
proc setDragStartTime*(this: var WxRichTextCtrl; st: WxDateTime) {.
    importcpp: "SetDragStartTime", header: "wx.h".}
proc getBufferBitmap*(this: WxRichTextCtrl): WxBitmap {.noSideEffect, 
    importcpp: "GetBufferBitmap", header: "wx.h".}
proc getBufferBitmap*(this: var WxRichTextCtrl): var WxBitmap {.
    importcpp: "GetBufferBitmap", header: "wx.h".}
proc getContextMenu*(this: WxRichTextCtrl): ptr WxMenu {.noSideEffect, 
    importcpp: "GetContextMenu", header: "wx.h".}
proc setContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu) {.
    importcpp: "SetContextMenu", header: "wx.h".}
proc getSelectionAnchor*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetSelectionAnchor", header: "wx.h".}
proc setSelectionAnchor*(this: var WxRichTextCtrl; anchor: clong) {.
    importcpp: "SetSelectionAnchor", header: "wx.h".}
proc getSelectionAnchorObject*(this: WxRichTextCtrl): ptr WxRichTextObject {.
    noSideEffect, importcpp: "GetSelectionAnchorObject", header: "wx.h".}
proc setSelectionAnchorObject*(this: var WxRichTextCtrl; 
                               anchor: ptr WxRichTextObject) {.
    importcpp: "SetSelectionAnchorObject", header: "wx.h".}
proc getContextMenuPropertiesInfo*(this: var WxRichTextCtrl): var WxRichTextContextMenuPropertiesInfo {.
    importcpp: "GetContextMenuPropertiesInfo", header: "wx.h".}
proc getContextMenuPropertiesInfo*(this: WxRichTextCtrl): WxRichTextContextMenuPropertiesInfo {.
    noSideEffect, importcpp: "GetContextMenuPropertiesInfo", header: "wx.h".}
proc getFocusObject*(this: WxRichTextCtrl): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetFocusObject", header: "wx.h".}
proc storeFocusObject*(this: var WxRichTextCtrl; 
                       obj: ptr WxRichTextParagraphLayoutBox) {.
    importcpp: "StoreFocusObject", header: "wx.h".}
proc setFocusObject*(this: var WxRichTextCtrl; 
                     obj: ptr WxRichTextParagraphLayoutBox; 
                     setCaretPosition: bool = true): bool {.
    importcpp: "SetFocusObject", header: "wx.h".}
proc invalidate*(this: var WxRichTextCtrl) {.importcpp: "Invalidate", 
    header: "wx.h".}
proc clear*(this: var WxRichTextCtrl) {.importcpp: "Clear", header: "wx.h".}
proc replace*(this: var WxRichTextCtrl; `from`: clong; to: clong; 
              value: WxString) {.importcpp: "Replace", header: "wx.h".}
proc remove*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.
    importcpp: "Remove", header: "wx.h".}
proc loadFile*(this: var WxRichTextCtrl; file: WxString; 
               `type`: cint = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc saveFile*(this: var WxRichTextCtrl; file: WxString = wxEmptyString; 
               `type`: cint = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "SaveFile", header: "wx.h".}
proc doSaveFile*(this: var WxRichTextCtrl; file: WxString = wxEmptyString; 
                 fileType: cint = wxRICHTEXT_TYPE_ANY): bool {.
    importcpp: "DoSaveFile", header: "wx.h".}
proc setHandlerFlags*(this: var WxRichTextCtrl; flags: cint) {.
    importcpp: "SetHandlerFlags", header: "wx.h".}
proc getHandlerFlags*(this: WxRichTextCtrl): cint {.noSideEffect, 
    importcpp: "GetHandlerFlags", header: "wx.h".}
proc markDirty*(this: var WxRichTextCtrl) {.importcpp: "MarkDirty", 
    header: "wx.h".}
proc discardEdits*(this: var WxRichTextCtrl) {.importcpp: "DiscardEdits", 
    header: "wx.h".}
proc setMaxLength*(this: var WxRichTextCtrl; len: culong) {.
    importcpp: "SetMaxLength", header: "wx.h".}
proc writeText*(this: var WxRichTextCtrl; text: WxString) {.
    importcpp: "WriteText", header: "wx.h".}
proc appendText*(this: var WxRichTextCtrl; text: WxString) {.
    importcpp: "AppendText", header: "wx.h".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; style: var WxTextAttr): bool {.
    importcpp: "GetStyle", header: "wx.h".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr): bool {.importcpp: "GetStyle", 
    header: "wx.h".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr; 
               container: ptr WxRichTextParagraphLayoutBox): bool {.
    importcpp: "GetStyle", header: "wx.h".}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.importcpp: "SetStyle", header: "wx.h".}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxRichTextAttr): bool {.importcpp: "SetStyle", 
    header: "wx.h".}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxTextAttr): bool {.importcpp: "SetStyle", header: "wx.h".}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxRichTextAttr): bool {.importcpp: "SetStyle", 
    header: "wx.h".}
proc setStyle*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
               textAttr: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.
    importcpp: "SetStyle", header: "wx.h".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxTextAttr): bool {.
    importcpp: "GetStyleForRange", header: "wx.h".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr): bool {.
    importcpp: "GetStyleForRange", header: "wx.h".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr; 
                       container: ptr WxRichTextParagraphLayoutBox): bool {.
    importcpp: "GetStyleForRange", header: "wx.h".}
proc setStyleEx*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 style: WxRichTextAttr; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    importcpp: "SetStyleEx", header: "wx.h".}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr): bool {.
    importcpp: "GetUncombinedStyle", header: "wx.h".}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr; 
                         container: ptr WxRichTextParagraphLayoutBox): bool {.
    importcpp: "GetUncombinedStyle", header: "wx.h".}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxTextAttr): bool {.
    importcpp: "SetDefaultStyle", header: "wx.h".}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.
    importcpp: "SetDefaultStyle", header: "wx.h".}
proc getDefaultStyleEx*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, 
    importcpp: "GetDefaultStyleEx", header: "wx.h".}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "SetListStyle", header: "wx.h".}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   defName: WxString; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "SetListStyle", header: "wx.h".}
proc clearListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                     flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    importcpp: "ClearListStyle", header: "wx.h".}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "NumberList", header: "wx.h".}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    importcpp: "NumberList", header: "wx.h".}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.importcpp: "PromoteList", 
    header: "wx.h".}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.importcpp: "PromoteList", 
    header: "wx.h".}
proc setProperties*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                    properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    importcpp: "SetProperties", header: "wx.h".}
proc delete*(this: var WxRichTextCtrl; range: WxRichTextRange): bool {.
    importcpp: "Delete", header: "wx.h".}
proc xYToPosition*(this: WxRichTextCtrl; x: clong; y: clong): clong {.
    noSideEffect, importcpp: "XYToPosition", header: "wx.h".}
proc positionToXY*(this: WxRichTextCtrl; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, importcpp: "PositionToXY", header: "wx.h".}
proc showPosition*(this: var WxRichTextCtrl; pos: clong) {.
    importcpp: "ShowPosition", header: "wx.h".}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, importcpp: "HitTest", header: "wx.h".}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    importcpp: "HitTest", header: "wx.h".}
proc findContainerAtPoint*(this: var WxRichTextCtrl; pt: WxPoint; 
                           position: var clong; hit: var cint; 
                           hitObj: ptr WxRichTextObject; flags: cint = 0): ptr WxRichTextParagraphLayoutBox {.
    importcpp: "FindContainerAtPoint", header: "wx.h".}
proc onDrop*(this: var WxRichTextCtrl; x: WxCoord; y: WxCoord; 
             def: WxDragResult; dataObj: ptr WxDataObject) {.
    importcpp: "OnDrop", header: "wx.h".}
proc copy*(this: var WxRichTextCtrl) {.importcpp: "Copy", header: "wx.h".}
proc cut*(this: var WxRichTextCtrl) {.importcpp: "Cut", header: "wx.h".}
proc paste*(this: var WxRichTextCtrl) {.importcpp: "Paste", header: "wx.h".}
proc deleteSelection*(this: var WxRichTextCtrl) {.importcpp: "DeleteSelection", 
    header: "wx.h".}
proc canCopy*(this: WxRichTextCtrl): bool {.noSideEffect, importcpp: "CanCopy", 
    header: "wx.h".}
proc canCut*(this: WxRichTextCtrl): bool {.noSideEffect, importcpp: "CanCut", 
    header: "wx.h".}
proc canPaste*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "CanPaste", header: "wx.h".}
proc canDeleteSelection*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "CanDeleteSelection", header: "wx.h".}
proc undo*(this: var WxRichTextCtrl) {.importcpp: "Undo", header: "wx.h".}
proc redo*(this: var WxRichTextCtrl) {.importcpp: "Redo", header: "wx.h".}
proc canUndo*(this: WxRichTextCtrl): bool {.noSideEffect, importcpp: "CanUndo", 
    header: "wx.h".}
proc canRedo*(this: WxRichTextCtrl): bool {.noSideEffect, importcpp: "CanRedo", 
    header: "wx.h".}
proc setInsertionPoint*(this: var WxRichTextCtrl; pos: clong) {.
    importcpp: "SetInsertionPoint", header: "wx.h".}
proc setInsertionPointEnd*(this: var WxRichTextCtrl) {.
    importcpp: "SetInsertionPointEnd", header: "wx.h".}
proc getInsertionPoint*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetInsertionPoint", header: "wx.h".}
proc getLastPosition*(this: WxRichTextCtrl): WxTextPos {.noSideEffect, 
    importcpp: "GetLastPosition", header: "wx.h".}
proc setSelection*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.
    importcpp: "SetSelection", header: "wx.h".}
proc setSelection*(this: var WxRichTextCtrl; sel: WxRichTextSelection) {.
    importcpp: "SetSelection", header: "wx.h".}
proc setEditable*(this: var WxRichTextCtrl; editable: bool) {.
    importcpp: "SetEditable", header: "wx.h".}
proc hasSelection*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "HasSelection", header: "wx.h".}
proc hasUnfocusedSelection*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "HasUnfocusedSelection", header: "wx.h".}
proc writeImage*(this: var WxRichTextCtrl; image: WxImage; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "WriteImage", header: "wx.h".}
proc writeImage*(this: var WxRichTextCtrl; bitmap: WxBitmap; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "WriteImage", header: "wx.h".}
proc writeImage*(this: var WxRichTextCtrl; filename: WxString; 
                 bitmapType: WxBitmapType; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "WriteImage", header: "wx.h".}
proc writeImage*(this: var WxRichTextCtrl; imageBlock: WxRichTextImageBlock; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.
    importcpp: "WriteImage", header: "wx.h".}
proc writeTextBox*(this: var WxRichTextCtrl; 
                   textAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextBox {.
    importcpp: "WriteTextBox", header: "wx.h".}
proc writeField*(this: var WxRichTextCtrl; fieldType: WxString; 
                 properties: WxRichTextProperties; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextField {.
    importcpp: "WriteField", header: "wx.h".}
proc writeTable*(this: var WxRichTextCtrl; rows: cint; cols: cint; 
                 tableAttr: WxRichTextAttr = wxRichTextAttr(); 
                 cellAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextTable {.
    importcpp: "WriteTable", header: "wx.h".}
proc newline*(this: var WxRichTextCtrl): bool {.importcpp: "Newline", 
    header: "wx.h".}
proc lineBreak*(this: var WxRichTextCtrl): bool {.importcpp: "LineBreak", 
    header: "wx.h".}
proc setBasicStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr) {.
    importcpp: "SetBasicStyle", header: "wx.h".}
proc getBasicStyle*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, 
    importcpp: "GetBasicStyle", header: "wx.h".}
proc beginStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.
    importcpp: "BeginStyle", header: "wx.h".}
proc endStyle*(this: var WxRichTextCtrl): bool {.importcpp: "EndStyle", 
    header: "wx.h".}
proc endAllStyles*(this: var WxRichTextCtrl): bool {.importcpp: "EndAllStyles", 
    header: "wx.h".}
proc beginBold*(this: var WxRichTextCtrl): bool {.importcpp: "BeginBold", 
    header: "wx.h".}
proc endBold*(this: var WxRichTextCtrl): bool {.importcpp: "EndBold", 
    header: "wx.h".}
proc beginItalic*(this: var WxRichTextCtrl): bool {.importcpp: "BeginItalic", 
    header: "wx.h".}
proc endItalic*(this: var WxRichTextCtrl): bool {.importcpp: "EndItalic", 
    header: "wx.h".}
proc beginUnderline*(this: var WxRichTextCtrl): bool {.
    importcpp: "BeginUnderline", header: "wx.h".}
proc endUnderline*(this: var WxRichTextCtrl): bool {.importcpp: "EndUnderline", 
    header: "wx.h".}
proc beginFontSize*(this: var WxRichTextCtrl; pointSize: cint): bool {.
    importcpp: "BeginFontSize", header: "wx.h".}
proc endFontSize*(this: var WxRichTextCtrl): bool {.importcpp: "EndFontSize", 
    header: "wx.h".}
proc beginFont*(this: var WxRichTextCtrl; font: WxFont): bool {.
    importcpp: "BeginFont", header: "wx.h".}
proc endFont*(this: var WxRichTextCtrl): bool {.importcpp: "EndFont", 
    header: "wx.h".}
proc beginTextColour*(this: var WxRichTextCtrl; colour: WxColour): bool {.
    importcpp: "BeginTextColour", header: "wx.h".}
proc endTextColour*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndTextColour", header: "wx.h".}
proc beginAlignment*(this: var WxRichTextCtrl; alignment: WxTextAttrAlignment): bool {.
    importcpp: "BeginAlignment", header: "wx.h".}
proc endAlignment*(this: var WxRichTextCtrl): bool {.importcpp: "EndAlignment", 
    header: "wx.h".}
proc beginLeftIndent*(this: var WxRichTextCtrl; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.
    importcpp: "BeginLeftIndent", header: "wx.h".}
proc endLeftIndent*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndLeftIndent", header: "wx.h".}
proc beginRightIndent*(this: var WxRichTextCtrl; rightIndent: cint): bool {.
    importcpp: "BeginRightIndent", header: "wx.h".}
proc endRightIndent*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndRightIndent", header: "wx.h".}
proc beginParagraphSpacing*(this: var WxRichTextCtrl; before: cint; after: cint): bool {.
    importcpp: "BeginParagraphSpacing", header: "wx.h".}
proc endParagraphSpacing*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndParagraphSpacing", header: "wx.h".}
proc beginLineSpacing*(this: var WxRichTextCtrl; lineSpacing: cint): bool {.
    importcpp: "BeginLineSpacing", header: "wx.h".}
proc endLineSpacing*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndLineSpacing", header: "wx.h".}
proc beginNumberedBullet*(this: var WxRichTextCtrl; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint; bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_ARABIC or
    wxTEXT_ATTR_BULLET_STYLE_PERIOD): bool {.importcpp: "BeginNumberedBullet", 
    header: "wx.h".}
proc endNumberedBullet*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndNumberedBullet", header: "wx.h".}
proc beginSymbolBullet*(this: var WxRichTextCtrl; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint; 
                        bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_SYMBOL): bool {.
    importcpp: "BeginSymbolBullet", header: "wx.h".}
proc endSymbolBullet*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndSymbolBullet", header: "wx.h".}
proc beginStandardBullet*(this: var WxRichTextCtrl; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint; 
                          bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_STANDARD): bool {.
    importcpp: "BeginStandardBullet", header: "wx.h".}
proc endStandardBullet*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndStandardBullet", header: "wx.h".}
proc beginCharacterStyle*(this: var WxRichTextCtrl; characterStyle: WxString): bool {.
    importcpp: "BeginCharacterStyle", header: "wx.h".}
proc endCharacterStyle*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndCharacterStyle", header: "wx.h".}
proc beginParagraphStyle*(this: var WxRichTextCtrl; paragraphStyle: WxString): bool {.
    importcpp: "BeginParagraphStyle", header: "wx.h".}
proc endParagraphStyle*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndParagraphStyle", header: "wx.h".}
proc beginListStyle*(this: var WxRichTextCtrl; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.
    importcpp: "BeginListStyle", header: "wx.h".}
proc endListStyle*(this: var WxRichTextCtrl): bool {.importcpp: "EndListStyle", 
    header: "wx.h".}
proc beginURL*(this: var WxRichTextCtrl; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.
    importcpp: "BeginURL", header: "wx.h".}
proc endURL*(this: var WxRichTextCtrl): bool {.importcpp: "EndURL", 
    header: "wx.h".}
proc setDefaultStyleToCursorStyle*(this: var WxRichTextCtrl): bool {.
    importcpp: "SetDefaultStyleToCursorStyle", header: "wx.h".}
proc selectNone*(this: var WxRichTextCtrl) {.importcpp: "SelectNone", 
    header: "wx.h".}
proc selectWord*(this: var WxRichTextCtrl; position: clong): bool {.
    importcpp: "SelectWord", header: "wx.h".}
proc getSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.noSideEffect, 
    importcpp: "GetSelectionRange", header: "wx.h".}
proc setSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    importcpp: "SetSelectionRange", header: "wx.h".}
proc getInternalSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.
    noSideEffect, importcpp: "GetInternalSelectionRange", header: "wx.h".}
proc setInternalSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    importcpp: "SetInternalSelectionRange", header: "wx.h".}
proc addParagraph*(this: var WxRichTextCtrl; text: WxString): WxRichTextRange {.
    importcpp: "AddParagraph", header: "wx.h".}
proc addImage*(this: var WxRichTextCtrl; image: WxImage): WxRichTextRange {.
    importcpp: "AddImage", header: "wx.h".}
proc layoutContent*(this: var WxRichTextCtrl; onlyVisibleRect: bool = false): bool {.
    importcpp: "LayoutContent", header: "wx.h".}
proc moveCaret*(this: var WxRichTextCtrl; pos: clong; 
                showAtLineStart: bool = false; 
                container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    importcpp: "MoveCaret", header: "wx.h".}
proc moveRight*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    importcpp: "MoveRight", header: "wx.h".}
proc moveLeft*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    importcpp: "MoveLeft", header: "wx.h".}
proc moveUp*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    importcpp: "MoveUp", header: "wx.h".}
proc moveDown*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    importcpp: "MoveDown", header: "wx.h".}
proc moveToLineEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveToLineEnd", header: "wx.h".}
proc moveToLineStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveToLineStart", header: "wx.h".}
proc moveToParagraphEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveToParagraphEnd", header: "wx.h".}
proc moveToParagraphStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveToParagraphStart", header: "wx.h".}
proc moveHome*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveHome", header: "wx.h".}
proc moveEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    importcpp: "MoveEnd", header: "wx.h".}
proc pageUp*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    importcpp: "PageUp", header: "wx.h".}
proc pageDown*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    importcpp: "PageDown", header: "wx.h".}
proc wordLeft*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    importcpp: "WordLeft", header: "wx.h".}
proc wordRight*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    importcpp: "WordRight", header: "wx.h".}
proc getBuffer*(this: var WxRichTextCtrl): var WxRichTextBuffer {.
    importcpp: "GetBuffer", header: "wx.h".}
proc getBuffer*(this: WxRichTextCtrl): WxRichTextBuffer {.noSideEffect, 
    importcpp: "GetBuffer", header: "wx.h".}
proc beginBatchUndo*(this: var WxRichTextCtrl; cmdName: WxString): bool {.
    importcpp: "BeginBatchUndo", header: "wx.h".}
proc endBatchUndo*(this: var WxRichTextCtrl): bool {.importcpp: "EndBatchUndo", 
    header: "wx.h".}
proc batchingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "BatchingUndo", header: "wx.h".}
proc beginSuppressUndo*(this: var WxRichTextCtrl): bool {.
    importcpp: "BeginSuppressUndo", header: "wx.h".}
proc endSuppressUndo*(this: var WxRichTextCtrl): bool {.
    importcpp: "EndSuppressUndo", header: "wx.h".}
proc suppressingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "SuppressingUndo", header: "wx.h".}
proc hasCharacterAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, 
    importcpp: "HasCharacterAttributes", header: "wx.h".}
proc hasParagraphAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, 
    importcpp: "HasParagraphAttributes", header: "wx.h".}
proc isSelectionBold*(this: var WxRichTextCtrl): bool {.
    importcpp: "IsSelectionBold", header: "wx.h".}
proc isSelectionItalics*(this: var WxRichTextCtrl): bool {.
    importcpp: "IsSelectionItalics", header: "wx.h".}
proc isSelectionUnderlined*(this: var WxRichTextCtrl): bool {.
    importcpp: "IsSelectionUnderlined", header: "wx.h".}
proc doesSelectionHaveTextEffectFlag*(this: var WxRichTextCtrl; flag: cint): bool {.
    importcpp: "DoesSelectionHaveTextEffectFlag", header: "wx.h".}
proc isSelectionAligned*(this: var WxRichTextCtrl; 
                         alignment: WxTextAttrAlignment): bool {.
    importcpp: "IsSelectionAligned", header: "wx.h".}
proc applyBoldToSelection*(this: var WxRichTextCtrl): bool {.
    importcpp: "ApplyBoldToSelection", header: "wx.h".}
proc applyItalicToSelection*(this: var WxRichTextCtrl): bool {.
    importcpp: "ApplyItalicToSelection", header: "wx.h".}
proc applyUnderlineToSelection*(this: var WxRichTextCtrl): bool {.
    importcpp: "ApplyUnderlineToSelection", header: "wx.h".}
proc applyTextEffectToSelection*(this: var WxRichTextCtrl; flags: cint): bool {.
    importcpp: "ApplyTextEffectToSelection", header: "wx.h".}
proc applyAlignmentToSelection*(this: var WxRichTextCtrl; 
                                alignment: WxTextAttrAlignment): bool {.
    importcpp: "ApplyAlignmentToSelection", header: "wx.h".}
proc applyStyle*(this: var WxRichTextCtrl; def: ptr WxRichTextStyleDefinition): bool {.
    importcpp: "ApplyStyle", header: "wx.h".}
proc setStyleSheet*(this: var WxRichTextCtrl; 
                    styleSheet: ptr WxRichTextStyleSheet) {.
    importcpp: "SetStyleSheet", header: "wx.h".}
proc getStyleSheet*(this: WxRichTextCtrl): ptr WxRichTextStyleSheet {.
    noSideEffect, importcpp: "GetStyleSheet", header: "wx.h".}
proc pushStyleSheet*(this: var WxRichTextCtrl; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.
    importcpp: "PushStyleSheet", header: "wx.h".}
proc popStyleSheet*(this: var WxRichTextCtrl): ptr WxRichTextStyleSheet {.
    importcpp: "PopStyleSheet", header: "wx.h".}
proc applyStyleSheet*(this: var WxRichTextCtrl; 
                      styleSheet: ptr WxRichTextStyleSheet = nil): bool {.
    importcpp: "ApplyStyleSheet", header: "wx.h".}
proc showContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; pt: WxPoint; 
                      addPropertyCommands: bool = true): bool {.
    importcpp: "ShowContextMenu", header: "wx.h".}
proc prepareContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; 
                         pt: WxPoint; addPropertyCommands: bool = true): cint {.
    importcpp: "PrepareContextMenu", header: "wx.h".}
proc canEditProperties*(this: WxRichTextCtrl; obj: ptr WxRichTextObject): bool {.
    noSideEffect, importcpp: "CanEditProperties", header: "wx.h".}
proc editProperties*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
                     parent: ptr WxWindow): bool {.importcpp: "EditProperties", 
    header: "wx.h".}
proc getPropertiesMenuLabel*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject): WxString {.
    importcpp: "GetPropertiesMenuLabel", header: "wx.h".}
proc prepareContent*(this: var WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox) {.
    importcpp: "PrepareContent", header: "wx.h".}
proc canDeleteRange*(this: WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange): bool {.noSideEffect, 
    importcpp: "CanDeleteRange", header: "wx.h".}
proc canInsertContent*(this: WxRichTextCtrl; 
                       container: var WxRichTextParagraphLayoutBox; pos: clong): bool {.
    noSideEffect, importcpp: "CanInsertContent", header: "wx.h".}
proc enableVerticalScrollbar*(this: var WxRichTextCtrl; enable: bool) {.
    importcpp: "EnableVerticalScrollbar", header: "wx.h".}
proc getVerticalScrollbarEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetVerticalScrollbarEnabled", header: "wx.h".}
proc setFontScale*(this: var WxRichTextCtrl; fontScale: cdouble; 
                   refresh: bool = false) {.importcpp: "SetFontScale", 
    header: "wx.h".}
proc getFontScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, 
    importcpp: "GetFontScale", header: "wx.h".}
proc setDimensionScale*(this: var WxRichTextCtrl; dimScale: cdouble; 
                        refresh: bool = false) {.importcpp: "SetDimensionScale", 
    header: "wx.h".}
proc getDimensionScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, 
    importcpp: "GetDimensionScale", header: "wx.h".}
proc setScale*(this: var WxRichTextCtrl; scale: cdouble; refresh: bool = false) {.
    importcpp: "SetScale", header: "wx.h".}
proc getScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, 
    importcpp: "GetScale", header: "wx.h".}
proc getUnscaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.
    noSideEffect, importcpp: "GetUnscaledPoint", header: "wx.h".}
proc getScaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.noSideEffect, 
    importcpp: "GetScaledPoint", header: "wx.h".}
proc getUnscaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    importcpp: "GetUnscaledSize", header: "wx.h".}
proc getScaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    importcpp: "GetScaledSize", header: "wx.h".}
proc getUnscaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.
    noSideEffect, importcpp: "GetUnscaledRect", header: "wx.h".}
proc getScaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.noSideEffect, 
    importcpp: "GetScaledRect", header: "wx.h".}
proc getVirtualAttributesEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "GetVirtualAttributesEnabled", header: "wx.h".}
proc enableVirtualAttributes*(this: var WxRichTextCtrl; b: bool) {.
    importcpp: "EnableVirtualAttributes", header: "wx.h".}
proc command*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "Command", header: "wx.h".}
proc onDropFiles*(this: var WxRichTextCtrl; event: var WxDropFilesEvent) {.
    importcpp: "OnDropFiles", header: "wx.h".}
proc onCaptureLost*(this: var WxRichTextCtrl; event: var WxMouseCaptureLostEvent) {.
    importcpp: "OnCaptureLost", header: "wx.h".}
proc onSysColourChanged*(this: var WxRichTextCtrl; 
                         event: var WxSysColourChangedEvent) {.
    importcpp: "OnSysColourChanged", header: "wx.h".}
proc onCut*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnCut", header: "wx.h".}
proc onCopy*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnCopy", header: "wx.h".}
proc onPaste*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnPaste", header: "wx.h".}
proc onUndo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnUndo", header: "wx.h".}
proc onRedo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnRedo", header: "wx.h".}
proc onSelectAll*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnSelectAll", header: "wx.h".}
proc onProperties*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnProperties", header: "wx.h".}
proc onClear*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.
    importcpp: "OnClear", header: "wx.h".}
proc onUpdateCut*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateCut", header: "wx.h".}
proc onUpdateCopy*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateCopy", header: "wx.h".}
proc onUpdatePaste*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdatePaste", header: "wx.h".}
proc onUpdateUndo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateUndo", header: "wx.h".}
proc onUpdateRedo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateRedo", header: "wx.h".}
proc onUpdateSelectAll*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateSelectAll", header: "wx.h".}
proc onUpdateProperties*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateProperties", header: "wx.h".}
proc onUpdateClear*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    importcpp: "OnUpdateClear", header: "wx.h".}
proc onContextMenu*(this: var WxRichTextCtrl; event: var WxContextMenuEvent) {.
    importcpp: "OnContextMenu", header: "wx.h".}
proc onPaint*(this: var WxRichTextCtrl; event: var WxPaintEvent) {.
    importcpp: "OnPaint", header: "wx.h".}
proc onEraseBackground*(this: var WxRichTextCtrl; event: var WxEraseEvent) {.
    importcpp: "OnEraseBackground", header: "wx.h".}
proc onLeftClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnLeftClick", header: "wx.h".}
proc onLeftUp*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnLeftUp", header: "wx.h".}
proc onMoveMouse*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnMoveMouse", header: "wx.h".}
proc onLeftDClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnLeftDClick", header: "wx.h".}
proc onMiddleClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnMiddleClick", header: "wx.h".}
proc onRightClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.
    importcpp: "OnRightClick", header: "wx.h".}
proc onChar*(this: var WxRichTextCtrl; event: var WxKeyEvent) {.
    importcpp: "OnChar", header: "wx.h".}
proc onSize*(this: var WxRichTextCtrl; event: var WxSizeEvent) {.
    importcpp: "OnSize", header: "wx.h".}
proc onSetFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.
    importcpp: "OnSetFocus", header: "wx.h".}
proc onKillFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.
    importcpp: "OnKillFocus", header: "wx.h".}
proc onIdle*(this: var WxRichTextCtrl; event: var WxIdleEvent) {.
    importcpp: "OnIdle", header: "wx.h".}
proc onScroll*(this: var WxRichTextCtrl; event: var WxScrollWinEvent) {.
    importcpp: "OnScroll", header: "wx.h".}
proc setFont*(this: var WxRichTextCtrl; font: WxFont): bool {.
    importcpp: "SetFont", header: "wx.h".}
proc setupScrollbars*(this: var WxRichTextCtrl; atTop: bool = false) {.
    importcpp: "SetupScrollbars", header: "wx.h".}
proc keyboardNavigate*(this: var WxRichTextCtrl; keyCode: cint; flags: cint): bool {.
    importcpp: "KeyboardNavigate", header: "wx.h".}
proc paintBackground*(this: var WxRichTextCtrl; dc: var WxDC) {.
    importcpp: "PaintBackground", header: "wx.h".}
proc paintAboveContent*(this: var WxRichTextCtrl; dc: var WxDC) {.
    importcpp: "PaintAboveContent", header: "wx.h".}
proc doWriteText*(this: var WxRichTextCtrl; value: WxString; flags: cint = 0) {.
    importcpp: "DoWriteText", header: "wx.h".}
proc shouldInheritColours*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "ShouldInheritColours", header: "wx.h".}
proc positionCaret*(this: var WxRichTextCtrl; 
                    container: ptr WxRichTextParagraphLayoutBox = nil) {.
    importcpp: "PositionCaret", header: "wx.h".}
proc extendSelection*(this: var WxRichTextCtrl; oldPosition: clong; 
                      newPosition: clong; flags: cint): bool {.
    importcpp: "ExtendSelection", header: "wx.h".}
proc scrollIntoView*(this: var WxRichTextCtrl; position: clong; keyCode: cint): bool {.
    importcpp: "ScrollIntoView", header: "wx.h".}
proc refreshForSelectionChange*(this: var WxRichTextCtrl; 
                                oldSelection: WxRichTextSelection; 
                                newSelection: WxRichTextSelection): bool {.
    importcpp: "RefreshForSelectionChange", header: "wx.h".}
proc setCaretPosition*(this: var WxRichTextCtrl; position: clong; 
                       showAtLineStart: bool = false) {.
    importcpp: "SetCaretPosition", header: "wx.h".}
proc getCaretPosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetCaretPosition", header: "wx.h".}
proc getAdjustedCaretPosition*(this: WxRichTextCtrl; caretPos: clong): clong {.
    noSideEffect, importcpp: "GetAdjustedCaretPosition", header: "wx.h".}
proc moveCaretForward*(this: var WxRichTextCtrl; oldPosition: clong) {.
    importcpp: "MoveCaretForward", header: "wx.h".}
proc moveCaretBack*(this: var WxRichTextCtrl; oldPosition: clong) {.
    importcpp: "MoveCaretBack", header: "wx.h".}
proc getCaretPositionForIndex*(this: var WxRichTextCtrl; position: clong; 
                               rect: var WxRect; container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    importcpp: "GetCaretPositionForIndex", header: "wx.h".}
proc getVisibleLineForCaretPosition*(this: WxRichTextCtrl; caretPosition: clong): ptr WxRichTextLine {.
    noSideEffect, importcpp: "GetVisibleLineForCaretPosition", header: "wx.h".}
proc getCommandProcessor*(this: WxRichTextCtrl): ptr WxCommandProcessor {.
    noSideEffect, importcpp: "GetCommandProcessor", header: "wx.h".}
proc deleteSelectedContent*(this: var WxRichTextCtrl; newPos: ptr clong = nil): bool {.
    importcpp: "DeleteSelectedContent", header: "wx.h".}
proc getPhysicalPoint*(this: WxRichTextCtrl; ptLogical: WxPoint): WxPoint {.
    noSideEffect, importcpp: "GetPhysicalPoint", header: "wx.h".}
proc getLogicalPoint*(this: WxRichTextCtrl; ptPhysical: WxPoint): WxPoint {.
    noSideEffect, importcpp: "GetLogicalPoint", header: "wx.h".}
proc findNextWordPosition*(this: WxRichTextCtrl; direction: cint = 1): clong {.
    noSideEffect, importcpp: "FindNextWordPosition", header: "wx.h".}
proc isPositionVisible*(this: WxRichTextCtrl; pos: clong): bool {.noSideEffect, 
    importcpp: "IsPositionVisible", header: "wx.h".}
proc getFirstVisiblePosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    importcpp: "GetFirstVisiblePosition", header: "wx.h".}
proc getCaretPositionForDefaultStyle*(this: WxRichTextCtrl): clong {.
    noSideEffect, importcpp: "GetCaretPositionForDefaultStyle", header: "wx.h".}
proc setCaretPositionForDefaultStyle*(this: var WxRichTextCtrl; pos: clong) {.
    importcpp: "SetCaretPositionForDefaultStyle", header: "wx.h".}
proc isDefaultStyleShowing*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsDefaultStyleShowing", header: "wx.h".}
proc setAndShowDefaultStyle*(this: var WxRichTextCtrl; attr: WxRichTextAttr) {.
    importcpp: "SetAndShowDefaultStyle", header: "wx.h".}
proc getFirstVisiblePoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, 
    importcpp: "GetFirstVisiblePoint", header: "wx.h".}
proc getValue*(this: WxRichTextCtrl): WxString {.noSideEffect, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxRichTextCtrl; value: WxString) {.
    importcpp: "SetValue", header: "wx.h".}
proc freeze*(this: var WxRichTextCtrl) {.importcpp: "Freeze", header: "wx.h".}
proc thaw*(this: var WxRichTextCtrl) {.importcpp: "Thaw", header: "wx.h".}
proc isFrozen*(this: WxRichTextCtrl): bool {.noSideEffect, 
    importcpp: "IsFrozen", header: "wx.h".}
proc processBackKey*(this: var WxRichTextCtrl; event: var WxKeyEvent; 
                     flags: cint): bool {.importcpp: "ProcessBackKey", 
    header: "wx.h".}
proc findRangeForList*(this: var WxRichTextCtrl; pos: clong; 
                       isNumberedList: var bool): WxRichTextRange {.
    importcpp: "FindRangeForList", header: "wx.h".}
proc setCaretPositionAfterClick*(this: var WxRichTextCtrl; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 position: clong; hitTestFlags: cint; 
                                 extendSelection: bool = false): bool {.
    importcpp: "SetCaretPositionAfterClick", header: "wx.h".}
proc findCaretPositionForCharacterPosition*(this: var WxRichTextCtrl; 
    position: clong; hitTestFlags: cint; 
    container: ptr WxRichTextParagraphLayoutBox; caretLineStart: var bool): clong {.
    importcpp: "FindCaretPositionForCharacterPosition", header: "wx.h".}
proc processMouseMovement*(this: var WxRichTextCtrl; 
                           container: ptr WxRichTextParagraphLayoutBox; 
                           obj: ptr WxRichTextObject; position: clong; 
                           pos: WxPoint): bool {.
    importcpp: "ProcessMouseMovement", header: "wx.h".}
proc getAvailableFontNames*(): WxArrayString {.
    importcpp: "wxRichTextCtrl::GetAvailableFontNames(@)", header: "wx.h".}
proc clearAvailableFontNames*() {.importcpp: "wxRichTextCtrl::ClearAvailableFontNames(@)", 
                                  header: "wx.h".}
proc doGetValue*(this: WxRichTextCtrl): WxString {.noSideEffect, 
    importcpp: "DoGetValue", header: "wx.h".}
type 
  WxRichTextDropSource* {.importcpp: "wxRichTextDropSource", header: "wx.h".} = object of WxDropSource
    mRtc* {.importc: "m_rtc".}: ptr WxRichTextCtrl


proc constructwxRichTextDropSource*(data: var WxDataObject; 
                                    tc: ptr WxRichTextCtrl): WxRichTextDropSource {.
    constructor, importcpp: "wxRichTextDropSource(@)", header: "wx.h".}
type 
  WxRichTextDropTarget* {.importcpp: "wxRichTextDropTarget", header: "wx.h".} = object of WxDropTarget
    mRtc* {.importc: "m_rtc".}: ptr WxRichTextCtrl


proc constructwxRichTextDropTarget*(tc: ptr WxRichTextCtrl): WxRichTextDropTarget {.
    constructor, importcpp: "wxRichTextDropTarget(@)", header: "wx.h".}
proc onData*(this: var WxRichTextDropTarget; x: WxCoord; y: WxCoord; 
             def: WxDragResult): WxDragResult {.importcpp: "OnData", 
    header: "wx.h".}
#*
#    @class wxRichTextEvent
#
#    This is the event class for wxRichTextCtrl notifications.
#
#    @beginEventTable{wxRichTextEvent}
#    @event{EVT_RICHTEXT_LEFT_CLICK(id, func)}
#        Process a @c wxEVT_RICHTEXT_LEFT_CLICK event, generated when the user
#        releases the left mouse button over an object.
#    @event{EVT_RICHTEXT_RIGHT_CLICK(id, func)}
#        Process a @c wxEVT_RICHTEXT_RIGHT_CLICK event, generated when the user
#        releases the right mouse button over an object.
#    @event{EVT_RICHTEXT_MIDDLE_CLICK(id, func)}
#        Process a @c wxEVT_RICHTEXT_MIDDLE_CLICK event, generated when the user
#        releases the middle mouse button over an object.
#    @event{EVT_RICHTEXT_LEFT_DCLICK(id, func)}
#        Process a @c wxEVT_RICHTEXT_LEFT_DCLICK event, generated when the user
#        double-clicks an object.
#    @event{EVT_RICHTEXT_RETURN(id, func)}
#        Process a @c wxEVT_RICHTEXT_RETURN event, generated when the user
#        presses the return key. Valid event functions: GetFlags, GetPosition.
#    @event{EVT_RICHTEXT_CHARACTER(id, func)}
#        Process a @c wxEVT_RICHTEXT_CHARACTER event, generated when the user
#        presses a character key. Valid event functions: GetFlags, GetPosition, GetCharacter.
#    @event{EVT_RICHTEXT_CONSUMING_CHARACTER(id, func)}
#        Process a @c wxEVT_RICHTEXT_CONSUMING_CHARACTER event, generated when the user
#        presses a character key but before it is processed and inserted into the control.
#        Call Veto to prevent normal processing. Valid event functions: GetFlags, GetPosition,
#        GetCharacter, Veto.
#    @event{EVT_RICHTEXT_DELETE(id, func)}
#        Process a @c wxEVT_RICHTEXT_DELETE event, generated when the user
#        presses the backspace or delete key. Valid event functions: GetFlags, GetPosition.
#    @event{EVT_RICHTEXT_STYLE_CHANGED(id, func)}
#        Process a @c wxEVT_RICHTEXT_STYLE_CHANGED event, generated when
#        styling has been applied to the control. Valid event functions: GetPosition, GetRange.
#    @event{EVT_RICHTEXT_STYLESHEET_CHANGED(id, func)}
#        Process a @c wxEVT_RICHTEXT_STYLESHEET_CHANGING event, generated
#        when the control's stylesheet has changed, for example the user added,
#        edited or deleted a style. Valid event functions: GetRange, GetPosition.
#    @event{EVT_RICHTEXT_STYLESHEET_REPLACING(id, func)}
#        Process a @c wxEVT_RICHTEXT_STYLESHEET_REPLACING event, generated
#        when the control's stylesheet is about to be replaced, for example when
#        a file is loaded into the control.
#        Valid event functions: Veto, GetOldStyleSheet, GetNewStyleSheet.
#    @event{EVT_RICHTEXT_STYLESHEET_REPLACED(id, func)}
#        Process a @c wxEVT_RICHTEXT_STYLESHEET_REPLACED event, generated
#        when the control's stylesheet has been replaced, for example when a file
#        is loaded into the control.
#        Valid event functions: GetOldStyleSheet, GetNewStyleSheet.
#    @event{EVT_RICHTEXT_PROPERTIES_CHANGED(id, func)}
#        Process a @c wxEVT_RICHTEXT_PROPERTIES_CHANGED event, generated when
#        properties have been applied to the control. Valid event functions: GetPosition, GetRange.
#    @event{EVT_RICHTEXT_CONTENT_INSERTED(id, func)}
#        Process a @c wxEVT_RICHTEXT_CONTENT_INSERTED event, generated when
#        content has been inserted into the control.
#        Valid event functions: GetPosition, GetRange.
#    @event{EVT_RICHTEXT_CONTENT_DELETED(id, func)}
#        Process a @c wxEVT_RICHTEXT_CONTENT_DELETED event, generated when
#        content has been deleted from the control.
#        Valid event functions: GetPosition, GetRange.
#    @event{EVT_RICHTEXT_BUFFER_RESET(id, func)}
#        Process a @c wxEVT_RICHTEXT_BUFFER_RESET event, generated when the
#        buffer has been reset by deleting all content.
#        You can use this to set a default style for the first new paragraph.
#    @event{EVT_RICHTEXT_SELECTION_CHANGED(id, func)}
#        Process a @c wxEVT_RICHTEXT_SELECTION_CHANGED event, generated when the
#        selection range has changed.
#    @event{EVT_RICHTEXT_FOCUS_OBJECT_CHANGED(id, func)}
#        Process a @c wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED event, generated when the
#        current focus object has changed.
#    @endEventTable
#
#    @library{wxrichtext}
#    @category{events,richtext}
#

type 
  WxRichTextEvent* {.importcpp: "wxRichTextEvent", header: "wx.h".} = object of WxNotifyEvent #*
                                                                                              #        Constructor.
                                                                                              #
                                                                                              #        @param commandType
                                                                                              #            The type of the event.
                                                                                              #        @param id
                                                                                              #            Window identifier. The value @c wxID_ANY indicates a default value.
                                                                                              #    
    mFlags* {.importc: "m_flags".}: cint
    mPosition* {.importc: "m_position".}: clong
    mOldStyleSheet* {.importc: "m_oldStyleSheet".}: ptr WxRichTextStyleSheet
    mNewStyleSheet* {.importc: "m_newStyleSheet".}: ptr WxRichTextStyleSheet
    mRange* {.importc: "m_range".}: WxRichTextRange
    mChar* {.importc: "m_char".}: WxChar
    mContainer* {.importc: "m_container".}: ptr WxRichTextParagraphLayoutBox
    mOldContainer* {.importc: "m_oldContainer".}: ptr WxRichTextParagraphLayoutBox
    wxRichTextEvent* {.importc: "wxRichTextEvent".}: Declare_Dynamic_Class_No_Assign


proc constructwxRichTextEvent*(commandType: WxEventType = wxEVT_NULL; 
                               winid: cint = 0): WxRichTextEvent {.constructor, 
    importcpp: "wxRichTextEvent(@)", header: "wx.h".}
proc constructwxRichTextEvent*(event: WxRichTextEvent): WxRichTextEvent {.
    constructor, importcpp: "wxRichTextEvent(@)", header: "wx.h".}
proc getPosition*(this: WxRichTextEvent): clong {.noSideEffect, 
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxRichTextEvent; pos: clong) {.
    importcpp: "SetPosition", header: "wx.h".}
proc getFlags*(this: WxRichTextEvent): cint {.noSideEffect, 
    importcpp: "GetFlags", header: "wx.h".}
proc setFlags*(this: var WxRichTextEvent; flags: cint) {.importcpp: "SetFlags", 
    header: "wx.h".}
proc getOldStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, importcpp: "GetOldStyleSheet", header: "wx.h".}
proc setOldStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.
    importcpp: "SetOldStyleSheet", header: "wx.h".}
proc getNewStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, importcpp: "GetNewStyleSheet", header: "wx.h".}
proc setNewStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.
    importcpp: "SetNewStyleSheet", header: "wx.h".}
proc getRange*(this: WxRichTextEvent): WxRichTextRange {.noSideEffect, 
    importcpp: "GetRange", header: "wx.h".}
proc setRange*(this: var WxRichTextEvent; range: WxRichTextRange) {.
    importcpp: "SetRange", header: "wx.h".}
proc getCharacter*(this: WxRichTextEvent): WxChar {.noSideEffect, 
    importcpp: "GetCharacter", header: "wx.h".}
proc setCharacter*(this: var WxRichTextEvent; ch: WxChar) {.
    importcpp: "SetCharacter", header: "wx.h".}
proc getContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetContainer", header: "wx.h".}
proc setContainer*(this: var WxRichTextEvent; 
                   container: ptr WxRichTextParagraphLayoutBox) {.
    importcpp: "SetContainer", header: "wx.h".}
proc getOldContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, importcpp: "GetOldContainer", header: "wx.h".}
proc setOldContainer*(this: var WxRichTextEvent; 
                      container: ptr WxRichTextParagraphLayoutBox) {.
    importcpp: "SetOldContainer", header: "wx.h".}
proc clone*(this: WxRichTextEvent): ptr WxEvent {.noSideEffect, 
    importcpp: "Clone", header: "wx.h".}
#!
#  wxRichTextCtrl events
# 

var wxEVT_RICHTEXT_LEFT_CLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_CLICK", 
                                 header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_RIGHT_CLICK* {.importcpp: "wxEVT_RICHTEXT_RIGHT_CLICK", 
                                  header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_MIDDLE_CLICK* {.importcpp: "wxEVT_RICHTEXT_MIDDLE_CLICK", 
                                   header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_LEFT_DCLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_DCLICK", 
                                  header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_RETURN* {.importcpp: "wxEVT_RICHTEXT_RETURN", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CHARACTER* {.importcpp: "wxEVT_RICHTEXT_CHARACTER", 
                                header: "wx.h".}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_CONSUMING_CHARACTER* {.
    importcpp: "wxEVT_RICHTEXT_CONSUMING_CHARACTER", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_DELETE* {.importcpp: "wxEVT_RICHTEXT_DELETE", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGING", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACING", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACED", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_INSERTED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_INSERTED", 
                                       header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_DELETED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_DELETED", 
                                      header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLE_CHANGED* {.importcpp: "wxEVT_RICHTEXT_STYLE_CHANGED", 
                                    header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_PROPERTIES_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_PROPERTIES_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_SELECTION_CHANGED* {.importcpp: "wxEVT_RICHTEXT_SELECTION_CHANGED", 
                                        header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_BUFFER_RESET* {.importcpp: "wxEVT_RICHTEXT_BUFFER_RESET", 
                                   header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxRichTextEvent]

# old wxEVT_COMMAND_* constants

# _WX_RICHTEXTCTRL_H_
