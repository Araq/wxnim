

const 
  wxRICHTEXT_BUFFERED_PAINTING* = 1

discard "forward decl of wxRichTextStyleDefinition"
const 
  wxRE_READONLY* = 0x00000010
  wxRE_MULTILINE* = 0x00000020
  wxRE_CENTRE_CARET* = 0x00008000
  wxRE_CENTER_CARET* = wxRE_CENTRE_CARET


const 
  wxRICHTEXT_SHIFT_DOWN* = 0x00000001
  wxRICHTEXT_CTRL_DOWN* = 0x00000002
  wxRICHTEXT_ALT_DOWN* = 0x00000004


const 
  wxRICHTEXT_EX_NO_GUIDELINES* = 0x00000100


template wxRICHTEXT_DEFAULT_OVERALL_SIZE*(): expr = 
  constructWxSize(- 1, - 1)

template wxRICHTEXT_DEFAULT_IMAGE_SIZE*(): expr = 
  constructWxSize(80, 80)

const 
  wxRICHTEXT_DEFAULT_SPACING* = 3
  wxRICHTEXT_DEFAULT_MARGIN* = 3

template wxRICHTEXT_DEFAULT_UNFOCUSSED_BACKGROUND*(): expr = 
  constructWxColour(175, 175, 175)

template wxRICHTEXT_DEFAULT_FOCUSSED_BACKGROUND*(): expr = 
  constructWxColour(140, 140, 140)

template wxRICHTEXT_DEFAULT_UNSELECTED_BACKGROUND*(): expr = 
  getColour(wxSYS_COLOUR_3DFACE)

template wxRICHTEXT_DEFAULT_TYPE_COLOUR*(): expr = 
  constructWxColour(0, 0, 200)

template wxRICHTEXT_DEFAULT_FOCUS_RECT_COLOUR*(): expr = 
  constructWxColour(100, 80, 80)

const 
  wxRICHTEXT_DEFAULT_CARET_WIDTH* = 2


const 
  wxRICHTEXT_DEFAULT_DELAYED_LAYOUT_THRESHOLD* = 20000


const 
  wxRICHTEXT_DEFAULT_LAYOUT_INTERVAL* = 50


type 
  WxRichTextCtrlSelectionState* {.size: sizeof(cint), importcpp: "wxRichTextStyleDefinition::wxRichTextCtrlSelectionState", 
                                  header: wxh.} = enum 
    wxRichTextCtrlSelectionStateNormal, 
    wxRichTextCtrlSelectionStateCommonAncestor



type 
  WxRichTextContextMenuPropertiesInfo* {.
      importcpp: "wxRichTextContextMenuPropertiesInfo", header: wxh.} = object 
    mLabels* {.importc: "m_labels".}: WxArrayString


proc constructwxRichTextContextMenuPropertiesInfo*(): WxRichTextContextMenuPropertiesInfo {.
    cdecl, constructor, importcpp: "wxRichTextContextMenuPropertiesInfo(@)", 
    header: wxh.}
proc init*(this: var WxRichTextContextMenuPropertiesInfo) {.cdecl, 
    importcpp: "Init", header: wxh.}
proc addItem*(this: var WxRichTextContextMenuPropertiesInfo; label: WxString; 
              obj: ptr WxRichTextObject): bool {.cdecl, importcpp: "AddItem", 
    header: wxh.}
proc addMenuItems*(this: WxRichTextContextMenuPropertiesInfo; menu: ptr WxMenu; 
                   startCmd: cint): cint {.noSideEffect, cdecl, 
    importcpp: "AddMenuItems", header: wxh.}
proc addItems*(this: var WxRichTextContextMenuPropertiesInfo; 
               ctrl: ptr WxRichTextCtrl; container: ptr WxRichTextObject; 
               obj: ptr WxRichTextObject): cint {.cdecl, importcpp: "AddItems", 
    header: wxh.}
proc clear*(this: var WxRichTextContextMenuPropertiesInfo) {.cdecl, 
    importcpp: "Clear", header: wxh.}
proc getLabel*(this: WxRichTextContextMenuPropertiesInfo; n: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabel", header: wxh.}
proc getObject*(this: WxRichTextContextMenuPropertiesInfo; n: cint): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetObject", header: wxh.}
proc getLabels*(this: var WxRichTextContextMenuPropertiesInfo): var WxArrayString {.
    cdecl, importcpp: "GetLabels", header: wxh.}
proc getLabels*(this: WxRichTextContextMenuPropertiesInfo): WxArrayString {.
    noSideEffect, cdecl, importcpp: "GetLabels", header: wxh.}
proc getCount*(this: WxRichTextContextMenuPropertiesInfo): cint {.noSideEffect, 
    cdecl, importcpp: "GetCount", header: wxh.}

type 
  WxRichTextCtrl* {.importcpp: "wxRichTextCtrl", header: wxh.} = object of WxControl
  

proc constructwxRichTextCtrl*(): WxRichTextCtrl {.cdecl, constructor, 
    importcpp: "wxRichTextCtrl(@)", header: wxh.}
proc constructwxRichTextCtrl*(parent: ptr WxWindow; 
                              id: WxWindowID = WxWindowID(-1); 
                              value: WxString = wxEmptyString; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; 
                              style: clong = wxRE_MULTILINE; 
                              validator: WxValidator = wxDefaultValidator; 
                              name: WxString = constructWxString("text")): WxRichTextCtrl {.
    cdecl, constructor, importcpp: "wxRichTextCtrl(@)", header: wxh.}
proc destroywxRichTextCtrl*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "#.~wxRichTextCtrl()", header: wxh.}
proc create*(this: var WxRichTextCtrl; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(-1); value: WxString = wxEmptyString; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxRE_MULTILINE; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("text")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc init*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Init", header: wxh.}
proc getRange*(this: WxRichTextCtrl; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: wxh.}
proc getLineLength*(this: WxRichTextCtrl; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: wxh.}
proc getLineText*(this: WxRichTextCtrl; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: wxh.}
proc getNumberOfLines*(this: WxRichTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: wxh.}
proc isModified*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: wxh.}
proc isEditable*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: wxh.}
proc isSingleLine*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsSingleLine", header: wxh.}
proc isMultiLine*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsMultiLine", header: wxh.}
proc getSelection*(this: WxRichTextCtrl; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc getSelection*(this: WxRichTextCtrl): WxRichTextSelection {.noSideEffect, 
    cdecl, importcpp: "GetSelection", header: wxh.}
proc getSelection*(this: var WxRichTextCtrl): var WxRichTextSelection {.cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getStringSelection*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStringSelection", header: wxh.}
proc getFilename*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFilename", header: wxh.}
proc setFilename*(this: var WxRichTextCtrl; filename: WxString) {.cdecl, 
    importcpp: "SetFilename", header: wxh.}
proc setDelayedLayoutThreshold*(this: var WxRichTextCtrl; threshold: clong) {.
    cdecl, importcpp: "SetDelayedLayoutThreshold", header: wxh.}
proc getDelayedLayoutThreshold*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetDelayedLayoutThreshold", header: wxh.}
proc getFullLayoutRequired*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetFullLayoutRequired", header: wxh.}
proc setFullLayoutRequired*(this: var WxRichTextCtrl; b: bool) {.cdecl, 
    importcpp: "SetFullLayoutRequired", header: wxh.}
proc getFullLayoutTime*(this: WxRichTextCtrl): int64 {.noSideEffect, cdecl, 
    importcpp: "GetFullLayoutTime", header: wxh.}
proc setFullLayoutTime*(this: var WxRichTextCtrl; t: int64) {.cdecl, 
    importcpp: "SetFullLayoutTime", header: wxh.}
proc getFullLayoutSavedPosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetFullLayoutSavedPosition", header: wxh.}
proc setFullLayoutSavedPosition*(this: var WxRichTextCtrl; p: clong) {.cdecl, 
    importcpp: "SetFullLayoutSavedPosition", header: wxh.}
proc forceDelayedLayout*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "ForceDelayedLayout", header: wxh.}
proc setTextCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.cdecl, 
    importcpp: "SetTextCursor", header: wxh.}
proc getTextCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetTextCursor", header: wxh.}
proc setURLCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.cdecl, 
    importcpp: "SetURLCursor", header: wxh.}
proc getURLCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetURLCursor", header: wxh.}
proc getCaretAtLineStart*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetCaretAtLineStart", header: wxh.}
proc setCaretAtLineStart*(this: var WxRichTextCtrl; atStart: bool) {.cdecl, 
    importcpp: "SetCaretAtLineStart", header: wxh.}
proc getDragging*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetDragging", header: wxh.}
proc setDragging*(this: var WxRichTextCtrl; dragging: bool) {.cdecl, 
    importcpp: "SetDragging", header: wxh.}
proc getPreDrag*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetPreDrag", header: wxh.}
proc setPreDrag*(this: var WxRichTextCtrl; pd: bool) {.cdecl, 
    importcpp: "SetPreDrag", header: wxh.}
proc getDragStartPoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetDragStartPoint", header: wxh.}
proc setDragStartPoint*(this: var WxRichTextCtrl; sp: WxPoint) {.cdecl, 
    importcpp: "SetDragStartPoint", header: wxh.}
proc getContextMenu*(this: WxRichTextCtrl): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetContextMenu", header: wxh.}
proc setContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetContextMenu", header: wxh.}
proc getSelectionAnchor*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetSelectionAnchor", header: wxh.}
proc setSelectionAnchor*(this: var WxRichTextCtrl; anchor: clong) {.cdecl, 
    importcpp: "SetSelectionAnchor", header: wxh.}
proc getSelectionAnchorObject*(this: WxRichTextCtrl): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetSelectionAnchorObject", header: wxh.}
proc setSelectionAnchorObject*(this: var WxRichTextCtrl; 
                               anchor: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetSelectionAnchorObject", header: wxh.}
proc getContextMenuPropertiesInfo*(this: var WxRichTextCtrl): var WxRichTextContextMenuPropertiesInfo {.
    cdecl, importcpp: "GetContextMenuPropertiesInfo", header: wxh.}
proc getContextMenuPropertiesInfo*(this: WxRichTextCtrl): WxRichTextContextMenuPropertiesInfo {.
    noSideEffect, cdecl, importcpp: "GetContextMenuPropertiesInfo", header: wxh.}
proc getFocusObject*(this: WxRichTextCtrl): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetFocusObject", header: wxh.}
proc storeFocusObject*(this: var WxRichTextCtrl; 
                       obj: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "StoreFocusObject", header: wxh.}
proc setFocusObject*(this: var WxRichTextCtrl; 
                     obj: ptr WxRichTextParagraphLayoutBox; 
                     setCaretPosition: bool = true): bool {.cdecl, 
    importcpp: "SetFocusObject", header: wxh.}
proc invalidate*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Invalidate", 
    header: wxh.}
proc clear*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Clear", header: wxh.}
proc replace*(this: var WxRichTextCtrl; `from`: clong; to: clong; 
              value: WxString) {.cdecl, importcpp: "Replace", header: wxh.}
proc remove*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc doLoadFile*(this: var WxRichTextCtrl; file: WxString; 
                 fileType: WxRichTextFileType): bool {.cdecl, 
    importcpp: "DoLoadFile", header: wxh.}
proc doSaveFile*(this: var WxRichTextCtrl; file: WxString = wxEmptyString; 
                 fileType = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "DoSaveFile", header: wxh.}
proc setHandlerFlags*(this: var WxRichTextCtrl; flags: cint) {.cdecl, 
    importcpp: "SetHandlerFlags", header: wxh.}
proc getHandlerFlags*(this: WxRichTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetHandlerFlags", header: wxh.}
proc markDirty*(this: var WxRichTextCtrl) {.cdecl, importcpp: "MarkDirty", 
    header: wxh.}
proc discardEdits*(this: var WxRichTextCtrl) {.cdecl, importcpp: "DiscardEdits", 
    header: wxh.}
proc setMaxLength*(this: var WxRichTextCtrl; len: culong) {.cdecl, 
    importcpp: "SetMaxLength", header: wxh.}
proc writeText*(this: var WxRichTextCtrl; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: wxh.}
proc appendText*(this: var WxRichTextCtrl; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: wxh.}
proc getStyle*(this: var WxRichTextCtrl; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: wxh.}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr): bool {.cdecl, importcpp: "GetStyle", 
    header: wxh.}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr; 
               container: ptr WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxRichTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxRichTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc setStyle*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
               textAttr: WxRichTextAttr; flags = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.
    cdecl, importcpp: "SetStyle", header: wxh.}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxTextAttr): bool {.cdecl, 
    importcpp: "GetStyleForRange", header: wxh.}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "GetStyleForRange", header: wxh.}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr; 
                       container: ptr WxRichTextParagraphLayoutBox): bool {.
    cdecl, importcpp: "GetStyleForRange", header: wxh.}
proc setStyleEx*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 style: WxRichTextAttr; flags = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.
    cdecl, importcpp: "SetStyleEx", header: wxh.}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "GetUncombinedStyle", header: wxh.}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr; 
                         container: ptr WxRichTextParagraphLayoutBox): bool {.
    cdecl, importcpp: "GetUncombinedStyle", header: wxh.}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: wxh.}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: wxh.}
proc getDefaultStyleEx*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, 
    cdecl, importcpp: "GetDefaultStyleEx", header: wxh.}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags = wxRICHTEXT_SETSTYLE_WITH_UNDO; startFrom: cint = 1; 
                   specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "SetListStyle", header: wxh.}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   defName: WxString; flags = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "SetListStyle", header: wxh.}
proc clearListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                     flags = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "ClearListStyle", header: wxh.}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: wxh.}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: wxh.}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: wxh.}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: wxh.}
proc setProperties*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                    properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    cdecl, importcpp: "SetProperties", header: wxh.}
proc delete*(this: var WxRichTextCtrl; range: WxRichTextRange): bool {.cdecl, 
    importcpp: "Delete", header: wxh.}
proc xYToPosition*(this: WxRichTextCtrl; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: wxh.}
proc positionToXY*(this: WxRichTextCtrl; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: wxh.}
proc showPosition*(this: var WxRichTextCtrl; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: wxh.}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
proc findContainerAtPoint*(this: var WxRichTextCtrl; pt: WxPoint; 
                           position: var clong; hit: var cint; 
                           hitObj: ptr WxRichTextObject; flags: cint = 0): ptr WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "FindContainerAtPoint", header: wxh.}
proc copy*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Copy", header: wxh.}
proc cut*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Cut", header: wxh.}
proc paste*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Paste", header: wxh.}
proc deleteSelection*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "DeleteSelection", header: wxh.}
proc canCopy*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanCopy", header: wxh.}
proc canCut*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanCut", header: wxh.}
proc canPaste*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanPaste", header: wxh.}
proc canDeleteSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanDeleteSelection", header: wxh.}
proc undo*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Undo", header: wxh.}
proc redo*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Redo", header: wxh.}
proc canUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanUndo", header: wxh.}
proc canRedo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanRedo", header: wxh.}
proc setInsertionPoint*(this: var WxRichTextCtrl; pos: clong) {.cdecl, 
    importcpp: "SetInsertionPoint", header: wxh.}
proc setInsertionPointEnd*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "SetInsertionPointEnd", header: wxh.}
proc getInsertionPoint*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: wxh.}
proc getLastPosition*(this: WxRichTextCtrl): WxTextPos {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: wxh.}
proc setSelection*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc setSelection*(this: var WxRichTextCtrl; sel: WxRichTextSelection) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc setEditable*(this: var WxRichTextCtrl; editable: bool) {.cdecl, 
    importcpp: "SetEditable", header: wxh.}
proc hasSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: wxh.}
proc hasUnfocusedSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "HasUnfocusedSelection", header: wxh.}
proc writeImage*(this: var WxRichTextCtrl; image: WxImage; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    cdecl, importcpp: "WriteImage", header: wxh.}
proc writeImage*(this: var WxRichTextCtrl; bitmap: WxBitmap; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    cdecl, importcpp: "WriteImage", header: wxh.}
proc writeImage*(this: var WxRichTextCtrl; filename: WxString; 
                 bitmapType: WxBitmapType; 
                 textAttr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    cdecl, importcpp: "WriteImage", header: wxh.}
proc writeImage*(this: var WxRichTextCtrl; imageBlock: WxRichTextImageBlock; 
                 textAttr: WxRichTextAttr = constructWxRichTextAttr()): bool {.
    cdecl, importcpp: "WriteImage", header: wxh.}
proc writeTextBox*(this: var WxRichTextCtrl; 
                   textAttr: WxRichTextAttr = constructWxRichTextAttr()): ptr WxRichTextBox {.
    cdecl, importcpp: "WriteTextBox", header: wxh.}
proc writeField*(this: var WxRichTextCtrl; fieldType: WxString; 
                 properties: WxRichTextProperties; 
                 textAttr: WxRichTextAttr = constructWxRichTextAttr()): ptr WxRichTextField {.
    cdecl, importcpp: "WriteField", header: wxh.}
proc writeTable*(this: var WxRichTextCtrl; rows: cint; cols: cint; 
                 tableAttr: WxRichTextAttr = constructWxRichTextAttr(); 
                 cellAttr: WxRichTextAttr = constructWxRichTextAttr()): ptr WxRichTextTable {.
    cdecl, importcpp: "WriteTable", header: wxh.}
proc newline*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "Newline", 
    header: wxh.}
proc lineBreak*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "LineBreak", 
    header: wxh.}
proc setBasicStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr) {.cdecl, 
    importcpp: "SetBasicStyle", header: wxh.}
proc getBasicStyle*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, cdecl, 
    importcpp: "GetBasicStyle", header: wxh.}
proc beginStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.cdecl, 
    importcpp: "BeginStyle", header: wxh.}
proc endStyle*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndStyle", 
    header: wxh.}
proc endAllStyles*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndAllStyles", header: wxh.}
proc beginBold*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "BeginBold", 
    header: wxh.}
proc endBold*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndBold", 
    header: wxh.}
proc beginItalic*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginItalic", header: wxh.}
proc endItalic*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndItalic", 
    header: wxh.}
proc beginUnderline*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginUnderline", header: wxh.}
proc endUnderline*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndUnderline", header: wxh.}
proc beginFontSize*(this: var WxRichTextCtrl; pointSize: cint): bool {.cdecl, 
    importcpp: "BeginFontSize", header: wxh.}
proc endFontSize*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndFontSize", header: wxh.}
proc beginFont*(this: var WxRichTextCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "BeginFont", header: wxh.}
proc endFont*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndFont", 
    header: wxh.}
proc beginTextColour*(this: var WxRichTextCtrl; colour: WxColour): bool {.cdecl, 
    importcpp: "BeginTextColour", header: wxh.}
proc endTextColour*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndTextColour", header: wxh.}
proc beginAlignment*(this: var WxRichTextCtrl; alignment: WxTextAttrAlignment): bool {.
    cdecl, importcpp: "BeginAlignment", header: wxh.}
proc endAlignment*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndAlignment", header: wxh.}
proc beginLeftIndent*(this: var WxRichTextCtrl; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.cdecl, 
    importcpp: "BeginLeftIndent", header: wxh.}
proc endLeftIndent*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndLeftIndent", header: wxh.}
proc beginRightIndent*(this: var WxRichTextCtrl; rightIndent: cint): bool {.
    cdecl, importcpp: "BeginRightIndent", header: wxh.}
proc endRightIndent*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndRightIndent", header: wxh.}
proc beginParagraphSpacing*(this: var WxRichTextCtrl; before: cint; after: cint): bool {.
    cdecl, importcpp: "BeginParagraphSpacing", header: wxh.}
proc endParagraphSpacing*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndParagraphSpacing", header: wxh.}
proc beginLineSpacing*(this: var WxRichTextCtrl; lineSpacing: cint): bool {.
    cdecl, importcpp: "BeginLineSpacing", header: wxh.}
proc endLineSpacing*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndLineSpacing", header: wxh.}
proc beginNumberedBullet*(this: var WxRichTextCtrl; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint; bulletStyle: cint = cast[cint](wxTEXT_ATTR_BULLET_STYLE_ARABIC) or
    cast[cint](wxTEXT_ATTR_BULLET_STYLE_PERIOD)): bool {.cdecl, 
    importcpp: "BeginNumberedBullet", header: wxh.}
proc endNumberedBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndNumberedBullet", header: wxh.}
proc beginSymbolBullet*(this: var WxRichTextCtrl; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint; 
                        bulletStyle = wxTEXT_ATTR_BULLET_STYLE_SYMBOL): bool {.
    cdecl, importcpp: "BeginSymbolBullet", header: wxh.}
proc endSymbolBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndSymbolBullet", header: wxh.}
proc beginStandardBullet*(this: var WxRichTextCtrl; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint; 
                          bulletStyle = wxTEXT_ATTR_BULLET_STYLE_STANDARD): bool {.
    cdecl, importcpp: "BeginStandardBullet", header: wxh.}
proc endStandardBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndStandardBullet", header: wxh.}
proc beginCharacterStyle*(this: var WxRichTextCtrl; characterStyle: WxString): bool {.
    cdecl, importcpp: "BeginCharacterStyle", header: wxh.}
proc endCharacterStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndCharacterStyle", header: wxh.}
proc beginParagraphStyle*(this: var WxRichTextCtrl; paragraphStyle: WxString): bool {.
    cdecl, importcpp: "BeginParagraphStyle", header: wxh.}
proc endParagraphStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndParagraphStyle", header: wxh.}
proc beginListStyle*(this: var WxRichTextCtrl; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.cdecl, 
    importcpp: "BeginListStyle", header: wxh.}
proc endListStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndListStyle", header: wxh.}
proc beginURL*(this: var WxRichTextCtrl; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "BeginURL", header: wxh.}
proc endURL*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndURL", 
    header: wxh.}
proc setDefaultStyleToCursorStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "SetDefaultStyleToCursorStyle", header: wxh.}
proc selectNone*(this: var WxRichTextCtrl) {.cdecl, importcpp: "SelectNone", 
    header: wxh.}
proc selectWord*(this: var WxRichTextCtrl; position: clong): bool {.cdecl, 
    importcpp: "SelectWord", header: wxh.}
proc getSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetSelectionRange", header: wxh.}
proc setSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    cdecl, importcpp: "SetSelectionRange", header: wxh.}
proc getInternalSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetInternalSelectionRange", header: wxh.}
proc setInternalSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    cdecl, importcpp: "SetInternalSelectionRange", header: wxh.}
proc addParagraph*(this: var WxRichTextCtrl; text: WxString): WxRichTextRange {.
    cdecl, importcpp: "AddParagraph", header: wxh.}
proc addImage*(this: var WxRichTextCtrl; image: WxImage): WxRichTextRange {.
    cdecl, importcpp: "AddImage", header: wxh.}
proc layoutContent*(this: var WxRichTextCtrl; onlyVisibleRect: bool = false): bool {.
    cdecl, importcpp: "LayoutContent", header: wxh.}
proc moveCaret*(this: var WxRichTextCtrl; pos: clong; 
                showAtLineStart: bool = false; 
                container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    cdecl, importcpp: "MoveCaret", header: wxh.}
proc moveRight*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveRight", header: wxh.}
proc moveLeft*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveLeft", header: wxh.}
proc moveUp*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveUp", header: wxh.}
proc moveDown*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveDown", header: wxh.}
proc moveToLineEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveToLineEnd", header: wxh.}
proc moveToLineStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveToLineStart", header: wxh.}
proc moveToParagraphEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveToParagraphEnd", header: wxh.}
proc moveToParagraphStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveToParagraphStart", header: wxh.}
proc moveHome*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveHome", header: wxh.}
proc moveEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveEnd", header: wxh.}
proc pageUp*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "PageUp", header: wxh.}
proc pageDown*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "PageDown", header: wxh.}
proc wordLeft*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "WordLeft", header: wxh.}
proc wordRight*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "WordRight", header: wxh.}
proc getBuffer*(this: var WxRichTextCtrl): var WxRichTextBuffer {.cdecl, 
    importcpp: "GetBuffer", header: wxh.}
proc getBuffer*(this: WxRichTextCtrl): WxRichTextBuffer {.noSideEffect, cdecl, 
    importcpp: "GetBuffer", header: wxh.}
proc beginBatchUndo*(this: var WxRichTextCtrl; cmdName: WxString): bool {.cdecl, 
    importcpp: "BeginBatchUndo", header: wxh.}
proc endBatchUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndBatchUndo", header: wxh.}
proc batchingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "BatchingUndo", header: wxh.}
proc beginSuppressUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginSuppressUndo", header: wxh.}
proc endSuppressUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndSuppressUndo", header: wxh.}
proc suppressingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "SuppressingUndo", header: wxh.}
proc hasCharacterAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCharacterAttributes", header: wxh.}
proc hasParagraphAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphAttributes", header: wxh.}
proc isSelectionBold*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionBold", header: wxh.}
proc isSelectionItalics*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionItalics", header: wxh.}
proc isSelectionUnderlined*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionUnderlined", header: wxh.}
proc doesSelectionHaveTextEffectFlag*(this: var WxRichTextCtrl; flag: cint): bool {.
    cdecl, importcpp: "DoesSelectionHaveTextEffectFlag", header: wxh.}
proc isSelectionAligned*(this: var WxRichTextCtrl; 
                         alignment: WxTextAttrAlignment): bool {.cdecl, 
    importcpp: "IsSelectionAligned", header: wxh.}
proc applyBoldToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyBoldToSelection", header: wxh.}
proc applyItalicToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyItalicToSelection", header: wxh.}
proc applyUnderlineToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyUnderlineToSelection", header: wxh.}
proc applyTextEffectToSelection*(this: var WxRichTextCtrl; flags: cint): bool {.
    cdecl, importcpp: "ApplyTextEffectToSelection", header: wxh.}
proc applyAlignmentToSelection*(this: var WxRichTextCtrl; 
                                alignment: WxTextAttrAlignment): bool {.cdecl, 
    importcpp: "ApplyAlignmentToSelection", header: wxh.}
proc applyStyle*(this: var WxRichTextCtrl; def: ptr WxRichTextStyleDefinition): bool {.
    cdecl, importcpp: "ApplyStyle", header: wxh.}
proc setStyleSheet*(this: var WxRichTextCtrl; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextCtrl): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc pushStyleSheet*(this: var WxRichTextCtrl; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "PushStyleSheet", header: wxh.}
proc popStyleSheet*(this: var WxRichTextCtrl): ptr WxRichTextStyleSheet {.cdecl, 
    importcpp: "PopStyleSheet", header: wxh.}
proc applyStyleSheet*(this: var WxRichTextCtrl; 
                      styleSheet: ptr WxRichTextStyleSheet = nil): bool {.cdecl, 
    importcpp: "ApplyStyleSheet", header: wxh.}
proc showContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; pt: WxPoint; 
                      addPropertyCommands: bool = true): bool {.cdecl, 
    importcpp: "ShowContextMenu", header: wxh.}
proc prepareContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; 
                         pt: WxPoint; addPropertyCommands: bool = true): cint {.
    cdecl, importcpp: "PrepareContextMenu", header: wxh.}
proc canEditProperties*(this: WxRichTextCtrl; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "CanEditProperties", header: wxh.}
proc editProperties*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
                     parent: ptr WxWindow): bool {.cdecl, 
    importcpp: "EditProperties", header: wxh.}
proc getPropertiesMenuLabel*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject): WxString {.
    cdecl, importcpp: "GetPropertiesMenuLabel", header: wxh.}
proc prepareContent*(this: var WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "PrepareContent", header: wxh.}
proc canDeleteRange*(this: WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange): bool {.noSideEffect, cdecl, 
    importcpp: "CanDeleteRange", header: wxh.}
proc canInsertContent*(this: WxRichTextCtrl; 
                       container: var WxRichTextParagraphLayoutBox; pos: clong): bool {.
    noSideEffect, cdecl, importcpp: "CanInsertContent", header: wxh.}
proc enableVerticalScrollbar*(this: var WxRichTextCtrl; enable: bool) {.cdecl, 
    importcpp: "EnableVerticalScrollbar", header: wxh.}
proc getVerticalScrollbarEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    cdecl, importcpp: "GetVerticalScrollbarEnabled", header: wxh.}
proc setFontScale*(this: var WxRichTextCtrl; fontScale: cdouble; 
                   refresh: bool = false) {.cdecl, importcpp: "SetFontScale", 
    header: wxh.}
proc getFontScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetFontScale", header: wxh.}
proc setDimensionScale*(this: var WxRichTextCtrl; dimScale: cdouble; 
                        refresh: bool = false) {.cdecl, 
    importcpp: "SetDimensionScale", header: wxh.}
proc getDimensionScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDimensionScale", header: wxh.}
proc setScale*(this: var WxRichTextCtrl; scale: cdouble; refresh: bool = false) {.
    cdecl, importcpp: "SetScale", header: wxh.}
proc getScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScale", header: wxh.}
proc getUnscaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetUnscaledPoint", header: wxh.}
proc getScaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "GetScaledPoint", header: wxh.}
proc getUnscaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetUnscaledSize", header: wxh.}
proc getScaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetScaledSize", header: wxh.}
proc getUnscaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.
    noSideEffect, cdecl, importcpp: "GetUnscaledRect", header: wxh.}
proc getScaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetScaledRect", header: wxh.}
proc getVirtualAttributesEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    cdecl, importcpp: "GetVirtualAttributesEnabled", header: wxh.}
proc enableVirtualAttributes*(this: var WxRichTextCtrl; b: bool) {.cdecl, 
    importcpp: "EnableVirtualAttributes", header: wxh.}
proc command*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc onDropFiles*(this: var WxRichTextCtrl; event: var WxDropFilesEvent) {.
    cdecl, importcpp: "OnDropFiles", header: wxh.}
proc onCaptureLost*(this: var WxRichTextCtrl; event: var WxMouseCaptureLostEvent) {.
    cdecl, importcpp: "OnCaptureLost", header: wxh.}
proc onSysColourChanged*(this: var WxRichTextCtrl; 
                         event: var WxSysColourChangedEvent) {.cdecl, 
    importcpp: "OnSysColourChanged", header: wxh.}
proc onCut*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCut", header: wxh.}
proc onCopy*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCopy", header: wxh.}
proc onPaste*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPaste", header: wxh.}
proc onUndo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUndo", header: wxh.}
proc onRedo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRedo", header: wxh.}
proc onSelectAll*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSelectAll", header: wxh.}
proc onProperties*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnProperties", header: wxh.}
proc onClear*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnClear", header: wxh.}
proc onUpdateCut*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCut", header: wxh.}
proc onUpdateCopy*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateCopy", header: wxh.}
proc onUpdatePaste*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdatePaste", header: wxh.}
proc onUpdateUndo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateUndo", header: wxh.}
proc onUpdateRedo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateRedo", header: wxh.}
proc onUpdateSelectAll*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateSelectAll", header: wxh.}
proc onUpdateProperties*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateProperties", header: wxh.}
proc onUpdateClear*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateClear", header: wxh.}
proc onContextMenu*(this: var WxRichTextCtrl; event: var WxContextMenuEvent) {.
    cdecl, importcpp: "OnContextMenu", header: wxh.}
proc onPaint*(this: var WxRichTextCtrl; event: var WxPaintEvent) {.cdecl, 
    importcpp: "OnPaint", header: wxh.}
proc onEraseBackground*(this: var WxRichTextCtrl; event: var WxEraseEvent) {.
    cdecl, importcpp: "OnEraseBackground", header: wxh.}
proc onLeftClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftClick", header: wxh.}
proc onLeftUp*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftUp", header: wxh.}
proc onMoveMouse*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMoveMouse", header: wxh.}
proc onLeftDClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftDClick", header: wxh.}
proc onMiddleClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMiddleClick", header: wxh.}
proc onRightClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnRightClick", header: wxh.}
proc onChar*(this: var WxRichTextCtrl; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnChar", header: wxh.}
proc onSize*(this: var WxRichTextCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: wxh.}
proc onSetFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnSetFocus", header: wxh.}
proc onKillFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnKillFocus", header: wxh.}
proc onIdle*(this: var WxRichTextCtrl; event: var WxIdleEvent) {.cdecl, 
    importcpp: "OnIdle", header: wxh.}
proc onScroll*(this: var WxRichTextCtrl; event: var WxScrollWinEvent) {.cdecl, 
    importcpp: "OnScroll", header: wxh.}
proc setFont*(this: var WxRichTextCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setupScrollbars*(this: var WxRichTextCtrl; atTop: bool = false) {.cdecl, 
    importcpp: "SetupScrollbars", header: wxh.}
proc keyboardNavigate*(this: var WxRichTextCtrl; keyCode: cint; flags: cint): bool {.
    cdecl, importcpp: "KeyboardNavigate", header: wxh.}
proc paintBackground*(this: var WxRichTextCtrl; dc: var WxDC) {.cdecl, 
    importcpp: "PaintBackground", header: wxh.}
proc paintAboveContent*(this: var WxRichTextCtrl; dc: var WxDC) {.cdecl, 
    importcpp: "PaintAboveContent", header: wxh.}
proc doWriteText*(this: var WxRichTextCtrl; value: WxString; flags: cint = 0) {.
    cdecl, importcpp: "DoWriteText", header: wxh.}
proc shouldInheritColours*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc positionCaret*(this: var WxRichTextCtrl; 
                    container: ptr WxRichTextParagraphLayoutBox = nil) {.cdecl, 
    importcpp: "PositionCaret", header: wxh.}
proc extendSelection*(this: var WxRichTextCtrl; oldPosition: clong; 
                      newPosition: clong; flags: cint): bool {.cdecl, 
    importcpp: "ExtendSelection", header: wxh.}
proc scrollIntoView*(this: var WxRichTextCtrl; position: clong; keyCode: cint): bool {.
    cdecl, importcpp: "ScrollIntoView", header: wxh.}
proc refreshForSelectionChange*(this: var WxRichTextCtrl; 
                                oldSelection: WxRichTextSelection; 
                                newSelection: WxRichTextSelection): bool {.
    cdecl, importcpp: "RefreshForSelectionChange", header: wxh.}
proc setCaretPosition*(this: var WxRichTextCtrl; position: clong; 
                       showAtLineStart: bool = false) {.cdecl, 
    importcpp: "SetCaretPosition", header: wxh.}
proc getCaretPosition*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetCaretPosition", header: wxh.}
proc getAdjustedCaretPosition*(this: WxRichTextCtrl; caretPos: clong): clong {.
    noSideEffect, cdecl, importcpp: "GetAdjustedCaretPosition", header: wxh.}
proc moveCaretForward*(this: var WxRichTextCtrl; oldPosition: clong) {.cdecl, 
    importcpp: "MoveCaretForward", header: wxh.}
proc moveCaretBack*(this: var WxRichTextCtrl; oldPosition: clong) {.cdecl, 
    importcpp: "MoveCaretBack", header: wxh.}
proc getCaretPositionForIndex*(this: var WxRichTextCtrl; position: clong; 
                               rect: var WxRect; container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    cdecl, importcpp: "GetCaretPositionForIndex", header: wxh.}
proc getVisibleLineForCaretPosition*(this: WxRichTextCtrl; caretPosition: clong): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetVisibleLineForCaretPosition", 
    header: wxh.}
proc deleteSelectedContent*(this: var WxRichTextCtrl; newPos: ptr clong = nil): bool {.
    cdecl, importcpp: "DeleteSelectedContent", header: wxh.}
proc getPhysicalPoint*(this: WxRichTextCtrl; ptLogical: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetPhysicalPoint", header: wxh.}
proc getLogicalPoint*(this: WxRichTextCtrl; ptPhysical: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetLogicalPoint", header: wxh.}
proc findNextWordPosition*(this: WxRichTextCtrl; direction: cint = 1): clong {.
    noSideEffect, cdecl, importcpp: "FindNextWordPosition", header: wxh.}
proc isPositionVisible*(this: WxRichTextCtrl; pos: clong): bool {.noSideEffect, 
    cdecl, importcpp: "IsPositionVisible", header: wxh.}
proc getFirstVisiblePosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetFirstVisiblePosition", header: wxh.}
proc getCaretPositionForDefaultStyle*(this: WxRichTextCtrl): clong {.
    noSideEffect, cdecl, importcpp: "GetCaretPositionForDefaultStyle", 
    header: wxh.}
proc setCaretPositionForDefaultStyle*(this: var WxRichTextCtrl; pos: clong) {.
    cdecl, importcpp: "SetCaretPositionForDefaultStyle", header: wxh.}
proc isDefaultStyleShowing*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefaultStyleShowing", header: wxh.}
proc setAndShowDefaultStyle*(this: var WxRichTextCtrl; attr: WxRichTextAttr) {.
    cdecl, importcpp: "SetAndShowDefaultStyle", header: wxh.}
proc getFirstVisiblePoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetFirstVisiblePoint", header: wxh.}
proc processBackKey*(this: var WxRichTextCtrl; event: var WxKeyEvent; 
                     flags: cint): bool {.cdecl, importcpp: "ProcessBackKey", 
    header: wxh.}
proc findRangeForList*(this: var WxRichTextCtrl; pos: clong; 
                       isNumberedList: var bool): WxRichTextRange {.cdecl, 
    importcpp: "FindRangeForList", header: wxh.}
proc setCaretPositionAfterClick*(this: var WxRichTextCtrl; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 position: clong; hitTestFlags: cint; 
                                 extendSelection: bool = false): bool {.cdecl, 
    importcpp: "SetCaretPositionAfterClick", header: wxh.}
proc findCaretPositionForCharacterPosition*(this: var WxRichTextCtrl; 
    position: clong; hitTestFlags: cint; 
    container: ptr WxRichTextParagraphLayoutBox; caretLineStart: var bool): clong {.
    cdecl, importcpp: "FindCaretPositionForCharacterPosition", header: wxh.}
proc processMouseMovement*(this: var WxRichTextCtrl; 
                           container: ptr WxRichTextParagraphLayoutBox; 
                           obj: ptr WxRichTextObject; position: clong; 
                           pos: WxPoint): bool {.cdecl, 
    importcpp: "ProcessMouseMovement", header: wxh.}
proc getAvailableFontNames*(): WxArrayString {.cdecl, 
    importcpp: "wxRichTextCtrl::GetAvailableFontNames(@)", header: wxh.}
proc clearAvailableFontNames*() {.cdecl, importcpp: "wxRichTextCtrl::ClearAvailableFontNames(@)", 
                                  header: wxh.}
proc doGetValue*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "DoGetValue", header: wxh.}

type 
  WxRichTextEvent* {.importcpp: "wxRichTextEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxRichTextEvent*(commandType: WxEventType = wxEVT_NULL; 
                               winid: cint = 0): WxRichTextEvent {.cdecl, 
    constructor, importcpp: "wxRichTextEvent(@)", header: wxh.}
proc constructwxRichTextEvent*(event: WxRichTextEvent): WxRichTextEvent {.cdecl, 
    constructor, importcpp: "wxRichTextEvent(@)", header: wxh.}
proc getPosition*(this: WxRichTextEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxRichTextEvent; pos: clong) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getFlags*(this: WxRichTextEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc setFlags*(this: var WxRichTextEvent; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc getOldStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetOldStyleSheet", header: wxh.}
proc setOldStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetOldStyleSheet", header: wxh.}
proc getNewStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetNewStyleSheet", header: wxh.}
proc setNewStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetNewStyleSheet", header: wxh.}
proc getRange*(this: WxRichTextEvent): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc setRange*(this: var WxRichTextEvent; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getCharacter*(this: WxRichTextEvent): WxChar {.noSideEffect, cdecl, 
    importcpp: "GetCharacter", header: wxh.}
proc setCharacter*(this: var WxRichTextEvent; ch: WxChar) {.cdecl, 
    importcpp: "SetCharacter", header: wxh.}
proc getContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: wxh.}
proc setContainer*(this: var WxRichTextEvent; 
                   container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetContainer", header: wxh.}
proc getOldContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetOldContainer", header: wxh.}
proc setOldContainer*(this: var WxRichTextEvent; 
                      container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetOldContainer", header: wxh.}
proc clone*(this: WxRichTextEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

var wxEVT_RICHTEXT_LEFT_CLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_CLICK", 
                                 header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_RIGHT_CLICK* {.importcpp: "wxEVT_RICHTEXT_RIGHT_CLICK", 
                                  header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_MIDDLE_CLICK* {.importcpp: "wxEVT_RICHTEXT_MIDDLE_CLICK", 
                                   header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_LEFT_DCLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_DCLICK", 
                                  header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_RETURN* {.importcpp: "wxEVT_RICHTEXT_RETURN", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CHARACTER* {.importcpp: "wxEVT_RICHTEXT_CHARACTER", 
                                header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_CONSUMING_CHARACTER* {.
    importcpp: "wxEVT_RICHTEXT_CONSUMING_CHARACTER", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_DELETE* {.importcpp: "wxEVT_RICHTEXT_DELETE", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGING", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGED", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACING", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACED", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_INSERTED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_INSERTED", 
                                       header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_DELETED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_DELETED", 
                                      header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLE_CHANGED* {.importcpp: "wxEVT_RICHTEXT_STYLE_CHANGED", 
                                    header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_PROPERTIES_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_PROPERTIES_CHANGED", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_SELECTION_CHANGED* {.importcpp: "wxEVT_RICHTEXT_SELECTION_CHANGED", 
                                        header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_BUFFER_RESET* {.importcpp: "wxEVT_RICHTEXT_BUFFER_RESET", 
                                   header: wxh.}: WxEventTypeTag[WxRichTextEvent]

var wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED", header: wxh.}: WxEventTypeTag[
    WxRichTextEvent]

type 
  WxRichTextEventFunction* = proc (a2: var WxRichTextEvent) {.cdecl.}


