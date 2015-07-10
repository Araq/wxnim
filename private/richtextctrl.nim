

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


const 
  wxRICHTEXT_DEFAULT_DELAYED_LAYOUT_THRESHOLD* = 20000


const 
  wxRICHTEXT_DEFAULT_LAYOUT_INTERVAL* = 50


const 
  wxID_RICHTEXT_PROPERTIES1* = (wxID_HIGHEST + 1)
  wxID_RICHTEXT_PROPERTIES2* = (wxID_HIGHEST + 2)
  wxID_RICHTEXT_PROPERTIES3* = (wxID_HIGHEST + 3)


type 
  WxRichTextCtrlSelectionState* {.size: sizeof(cint), importcpp: "wxRichTextStyleDefinition::wxRichTextCtrlSelectionState", 
                                  header: "<wx/wx.h>".} = enum 
    wxRichTextCtrlSelectionStateNormal, 
    wxRichTextCtrlSelectionStateCommonAncestor



type 
  WxRichTextContextMenuPropertiesInfo* {.
      importcpp: "wxRichTextContextMenuPropertiesInfo", header: "<wx/wx.h>".} = object 
    mObjects* {.importc: "m_objects".}: WxRichTextObjectPtrArray
    mLabels* {.importc: "m_labels".}: WxArrayString


proc constructwxRichTextContextMenuPropertiesInfo*(): WxRichTextContextMenuPropertiesInfo {.
    cdecl, constructor, importcpp: "wxRichTextContextMenuPropertiesInfo(@)", 
    header: "<wx/wx.h>".}
proc init*(this: var WxRichTextContextMenuPropertiesInfo) {.cdecl, 
    importcpp: "Init", header: "<wx/wx.h>".}
proc addItem*(this: var WxRichTextContextMenuPropertiesInfo; label: WxString; 
              obj: ptr WxRichTextObject): bool {.cdecl, importcpp: "AddItem", 
    header: "<wx/wx.h>".}
proc addMenuItems*(this: WxRichTextContextMenuPropertiesInfo; menu: ptr WxMenu; 
                   startCmd: cint = wxID_RICHTEXT_PROPERTIES1): cint {.
    noSideEffect, cdecl, importcpp: "AddMenuItems", header: "<wx/wx.h>".}
proc addItems*(this: var WxRichTextContextMenuPropertiesInfo; 
               ctrl: ptr WxRichTextCtrl; container: ptr WxRichTextObject; 
               obj: ptr WxRichTextObject): cint {.cdecl, importcpp: "AddItems", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextContextMenuPropertiesInfo) {.cdecl, 
    importcpp: "Clear", header: "<wx/wx.h>".}
proc getLabel*(this: WxRichTextContextMenuPropertiesInfo; n: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabel", header: "<wx/wx.h>".}
proc getObject*(this: WxRichTextContextMenuPropertiesInfo; n: cint): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "<wx/wx.h>".}
proc getObjects*(this: var WxRichTextContextMenuPropertiesInfo): var WxRichTextObjectPtrArray {.
    cdecl, importcpp: "GetObjects", header: "<wx/wx.h>".}
proc getObjects*(this: WxRichTextContextMenuPropertiesInfo): WxRichTextObjectPtrArray {.
    noSideEffect, cdecl, importcpp: "GetObjects", header: "<wx/wx.h>".}
proc getLabels*(this: var WxRichTextContextMenuPropertiesInfo): var WxArrayString {.
    cdecl, importcpp: "GetLabels", header: "<wx/wx.h>".}
proc getLabels*(this: WxRichTextContextMenuPropertiesInfo): WxArrayString {.
    noSideEffect, cdecl, importcpp: "GetLabels", header: "<wx/wx.h>".}
proc getCount*(this: WxRichTextContextMenuPropertiesInfo): cint {.noSideEffect, 
    cdecl, importcpp: "GetCount", header: "<wx/wx.h>".}

type 
  WxRichTextCtrl* {.importcpp: "wxRichTextCtrl", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxRichTextCtrl*(): WxRichTextCtrl {.cdecl, constructor, 
    importcpp: "wxRichTextCtrl(@)", header: "<wx/wx.h>".}
proc constructwxRichTextCtrl*(parent: ptr WxWindow; id: WxWindowID = - 1; 
                              value: WxString = wxEmptyString; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; 
                              style: clong = wxRE_MULTILINE; 
                              validator: WxValidator = wxDefaultValidator; 
                              name: WxString = constructWxString("text")): WxRichTextCtrl {.
    cdecl, constructor, importcpp: "wxRichTextCtrl(@)", header: "<wx/wx.h>".}
proc destroywxRichTextCtrl*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "#.~wxRichTextCtrl()", header: "<wx/wx.h>".}
proc create*(this: var WxRichTextCtrl; parent: ptr WxWindow; 
             id: WxWindowID = - 1; value: WxString = wxEmptyString; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxRE_MULTILINE; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("text")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Init", 
                                       header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextCtrl; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: "<wx/wx.h>".}
proc getLineLength*(this: WxRichTextCtrl; lineNo: clong): cint {.noSideEffect, 
    cdecl, importcpp: "GetLineLength", header: "<wx/wx.h>".}
proc getLineText*(this: WxRichTextCtrl; lineNo: clong): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLineText", header: "<wx/wx.h>".}
proc getNumberOfLines*(this: WxRichTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetNumberOfLines", header: "<wx/wx.h>".}
proc isModified*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsModified", header: "<wx/wx.h>".}
proc isEditable*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: "<wx/wx.h>".}
proc isSingleLine*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsSingleLine", header: "<wx/wx.h>".}
proc isMultiLine*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsMultiLine", header: "<wx/wx.h>".}
proc getSelection*(this: WxRichTextCtrl; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getSelection*(this: WxRichTextCtrl): WxRichTextSelection {.noSideEffect, 
    cdecl, importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getSelection*(this: var WxRichTextCtrl): var WxRichTextSelection {.cdecl, 
    importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getStringSelection*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStringSelection", header: "<wx/wx.h>".}
proc getFilename*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFilename", header: "<wx/wx.h>".}
proc setFilename*(this: var WxRichTextCtrl; filename: WxString) {.cdecl, 
    importcpp: "SetFilename", header: "<wx/wx.h>".}
proc setDelayedLayoutThreshold*(this: var WxRichTextCtrl; threshold: clong) {.
    cdecl, importcpp: "SetDelayedLayoutThreshold", header: "<wx/wx.h>".}
proc getDelayedLayoutThreshold*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetDelayedLayoutThreshold", header: "<wx/wx.h>".}
proc getFullLayoutRequired*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetFullLayoutRequired", header: "<wx/wx.h>".}
proc setFullLayoutRequired*(this: var WxRichTextCtrl; b: bool) {.cdecl, 
    importcpp: "SetFullLayoutRequired", header: "<wx/wx.h>".}
proc getFullLayoutTime*(this: WxRichTextCtrl): int64 {.noSideEffect, cdecl, 
    importcpp: "GetFullLayoutTime", header: "<wx/wx.h>".}
proc setFullLayoutTime*(this: var WxRichTextCtrl; t: int64) {.cdecl, 
    importcpp: "SetFullLayoutTime", header: "<wx/wx.h>".}
proc getFullLayoutSavedPosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetFullLayoutSavedPosition", header: "<wx/wx.h>".}
proc setFullLayoutSavedPosition*(this: var WxRichTextCtrl; p: clong) {.cdecl, 
    importcpp: "SetFullLayoutSavedPosition", header: "<wx/wx.h>".}
proc forceDelayedLayout*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "ForceDelayedLayout", header: "<wx/wx.h>".}
proc setTextCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.cdecl, 
    importcpp: "SetTextCursor", header: "<wx/wx.h>".}
proc getTextCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetTextCursor", header: "<wx/wx.h>".}
proc setURLCursor*(this: var WxRichTextCtrl; cursor: WxCursor) {.cdecl, 
    importcpp: "SetURLCursor", header: "<wx/wx.h>".}
proc getURLCursor*(this: WxRichTextCtrl): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetURLCursor", header: "<wx/wx.h>".}
proc getCaretAtLineStart*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetCaretAtLineStart", header: "<wx/wx.h>".}
proc setCaretAtLineStart*(this: var WxRichTextCtrl; atStart: bool) {.cdecl, 
    importcpp: "SetCaretAtLineStart", header: "<wx/wx.h>".}
proc getDragging*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetDragging", header: "<wx/wx.h>".}
proc setDragging*(this: var WxRichTextCtrl; dragging: bool) {.cdecl, 
    importcpp: "SetDragging", header: "<wx/wx.h>".}
proc getPreDrag*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "GetPreDrag", header: "<wx/wx.h>".}
proc setPreDrag*(this: var WxRichTextCtrl; pd: bool) {.cdecl, 
    importcpp: "SetPreDrag", header: "<wx/wx.h>".}
proc getDragStartPoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetDragStartPoint", header: "<wx/wx.h>".}
proc setDragStartPoint*(this: var WxRichTextCtrl; sp: WxPoint) {.cdecl, 
    importcpp: "SetDragStartPoint", header: "<wx/wx.h>".}
proc getDragStartTime*(this: WxRichTextCtrl): WxDateTime {.noSideEffect, cdecl, 
    importcpp: "GetDragStartTime", header: "<wx/wx.h>".}
proc setDragStartTime*(this: var WxRichTextCtrl; st: WxDateTime) {.cdecl, 
    importcpp: "SetDragStartTime", header: "<wx/wx.h>".}
proc getBufferBitmap*(this: WxRichTextCtrl): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBufferBitmap", header: "<wx/wx.h>".}
proc getBufferBitmap*(this: var WxRichTextCtrl): var WxBitmap {.cdecl, 
    importcpp: "GetBufferBitmap", header: "<wx/wx.h>".}
proc getContextMenu*(this: WxRichTextCtrl): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetContextMenu", header: "<wx/wx.h>".}
proc setContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetContextMenu", header: "<wx/wx.h>".}
proc getSelectionAnchor*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetSelectionAnchor", header: "<wx/wx.h>".}
proc setSelectionAnchor*(this: var WxRichTextCtrl; anchor: clong) {.cdecl, 
    importcpp: "SetSelectionAnchor", header: "<wx/wx.h>".}
proc getSelectionAnchorObject*(this: WxRichTextCtrl): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetSelectionAnchorObject", 
    header: "<wx/wx.h>".}
proc setSelectionAnchorObject*(this: var WxRichTextCtrl; 
                               anchor: ptr WxRichTextObject) {.cdecl, 
    importcpp: "SetSelectionAnchorObject", header: "<wx/wx.h>".}
proc getContextMenuPropertiesInfo*(this: var WxRichTextCtrl): var WxRichTextContextMenuPropertiesInfo {.
    cdecl, importcpp: "GetContextMenuPropertiesInfo", header: "<wx/wx.h>".}
proc getContextMenuPropertiesInfo*(this: WxRichTextCtrl): WxRichTextContextMenuPropertiesInfo {.
    noSideEffect, cdecl, importcpp: "GetContextMenuPropertiesInfo", 
    header: "<wx/wx.h>".}
proc getFocusObject*(this: WxRichTextCtrl): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetFocusObject", header: "<wx/wx.h>".}
proc storeFocusObject*(this: var WxRichTextCtrl; 
                       obj: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "StoreFocusObject", header: "<wx/wx.h>".}
proc setFocusObject*(this: var WxRichTextCtrl; 
                     obj: ptr WxRichTextParagraphLayoutBox; 
                     setCaretPosition: bool = true): bool {.cdecl, 
    importcpp: "SetFocusObject", header: "<wx/wx.h>".}
proc invalidate*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Invalidate", 
    header: "<wx/wx.h>".}
proc clear*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Clear", 
                                        header: "<wx/wx.h>".}
proc replace*(this: var WxRichTextCtrl; `from`: clong; to: clong; 
              value: WxString) {.cdecl, importcpp: "Replace", 
                                 header: "<wx/wx.h>".}
proc remove*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc loadFile*(this: var WxRichTextCtrl; file: WxString; 
               `type`: cint = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "LoadFile", header: "<wx/wx.h>".}
proc saveFile*(this: var WxRichTextCtrl; file: WxString = wxEmptyString; 
               `type`: cint = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "SaveFile", header: "<wx/wx.h>".}
proc doSaveFile*(this: var WxRichTextCtrl; file: WxString = wxEmptyString; 
                 fileType: cint = wxRICHTEXT_TYPE_ANY): bool {.cdecl, 
    importcpp: "DoSaveFile", header: "<wx/wx.h>".}
proc setHandlerFlags*(this: var WxRichTextCtrl; flags: cint) {.cdecl, 
    importcpp: "SetHandlerFlags", header: "<wx/wx.h>".}
proc getHandlerFlags*(this: WxRichTextCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetHandlerFlags", header: "<wx/wx.h>".}
proc markDirty*(this: var WxRichTextCtrl) {.cdecl, importcpp: "MarkDirty", 
    header: "<wx/wx.h>".}
proc discardEdits*(this: var WxRichTextCtrl) {.cdecl, importcpp: "DiscardEdits", 
    header: "<wx/wx.h>".}
proc setMaxLength*(this: var WxRichTextCtrl; len: culong) {.cdecl, 
    importcpp: "SetMaxLength", header: "<wx/wx.h>".}
proc writeText*(this: var WxRichTextCtrl; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: "<wx/wx.h>".}
proc appendText*(this: var WxRichTextCtrl; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: "<wx/wx.h>".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; style: var WxTextAttr): bool {.
    cdecl, importcpp: "GetStyle", header: "<wx/wx.h>".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr): bool {.cdecl, importcpp: "GetStyle", 
    header: "<wx/wx.h>".}
proc getStyle*(this: var WxRichTextCtrl; position: clong; 
               style: var WxRichTextAttr; 
               container: ptr WxRichTextParagraphLayoutBox): bool {.cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextCtrl; start: clong; `end`: clong; 
               style: WxRichTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
               style: WxRichTextAttr): bool {.cdecl, importcpp: "SetStyle", 
    header: "<wx/wx.h>".}
proc setStyle*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
               textAttr: WxRichTextAttr; 
               flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO) {.cdecl, 
    importcpp: "SetStyle", header: "<wx/wx.h>".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxTextAttr): bool {.cdecl, 
    importcpp: "GetStyleForRange", header: "<wx/wx.h>".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "GetStyleForRange", header: "<wx/wx.h>".}
proc getStyleForRange*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                       style: var WxRichTextAttr; 
                       container: ptr WxRichTextParagraphLayoutBox): bool {.
    cdecl, importcpp: "GetStyleForRange", header: "<wx/wx.h>".}
proc setStyleEx*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 style: WxRichTextAttr; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "SetStyleEx", header: "<wx/wx.h>".}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr): bool {.cdecl, 
    importcpp: "GetUncombinedStyle", header: "<wx/wx.h>".}
proc getUncombinedStyle*(this: var WxRichTextCtrl; position: clong; 
                         style: var WxRichTextAttr; 
                         container: ptr WxRichTextParagraphLayoutBox): bool {.
    cdecl, importcpp: "GetUncombinedStyle", header: "<wx/wx.h>".}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: "<wx/wx.h>".}
proc setDefaultStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.
    cdecl, importcpp: "SetDefaultStyle", header: "<wx/wx.h>".}
proc getDefaultStyleEx*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, 
    cdecl, importcpp: "GetDefaultStyleEx", header: "<wx/wx.h>".}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   def: ptr WxRichTextListStyleDefinition; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "SetListStyle", header: "<wx/wx.h>".}
proc setListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                   defName: WxString; 
                   flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                   startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.
    cdecl, importcpp: "SetListStyle", header: "<wx/wx.h>".}
proc clearListStyle*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                     flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "ClearListStyle", header: "<wx/wx.h>".}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 def: ptr WxRichTextListStyleDefinition = nil; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: "<wx/wx.h>".}
proc numberList*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                 defName: WxString; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                 startFrom: cint = 1; specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "NumberList", header: "<wx/wx.h>".}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; 
                  def: ptr WxRichTextListStyleDefinition = nil; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: "<wx/wx.h>".}
proc promoteList*(this: var WxRichTextCtrl; promoteBy: cint; 
                  range: WxRichTextRange; defName: WxString; 
                  flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO; 
                  specifiedLevel: cint = - 1): bool {.cdecl, 
    importcpp: "PromoteList", header: "<wx/wx.h>".}
proc setProperties*(this: var WxRichTextCtrl; range: WxRichTextRange; 
                    properties: WxRichTextProperties; 
                    flags: cint = wxRICHTEXT_SETPROPERTIES_WITH_UNDO): bool {.
    cdecl, importcpp: "SetProperties", header: "<wx/wx.h>".}
proc delete*(this: var WxRichTextCtrl; range: WxRichTextRange): bool {.cdecl, 
    importcpp: "Delete", header: "<wx/wx.h>".}
proc xYToPosition*(this: WxRichTextCtrl; x: clong; y: clong): clong {.
    noSideEffect, cdecl, importcpp: "XYToPosition", header: "<wx/wx.h>".}
proc positionToXY*(this: WxRichTextCtrl; pos: clong; x: ptr clong; y: ptr clong): bool {.
    noSideEffect, cdecl, importcpp: "PositionToXY", header: "<wx/wx.h>".}
proc showPosition*(this: var WxRichTextCtrl; pos: clong) {.cdecl, 
    importcpp: "ShowPosition", header: "<wx/wx.h>".}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; pos: ptr clong): WxTextCtrlHitTestResult {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc hitTest*(this: WxRichTextCtrl; pt: WxPoint; col: ptr WxTextCoord; 
              row: ptr WxTextCoord): WxTextCtrlHitTestResult {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc findContainerAtPoint*(this: var WxRichTextCtrl; pt: WxPoint; 
                           position: var clong; hit: var cint; 
                           hitObj: ptr WxRichTextObject; flags: cint = 0): ptr WxRichTextParagraphLayoutBox {.
    cdecl, importcpp: "FindContainerAtPoint", header: "<wx/wx.h>".}
proc onDrop*(this: var WxRichTextCtrl; x: WxCoord; y: WxCoord; 
             def: WxDragResult; dataObj: ptr WxDataObject) {.cdecl, 
    importcpp: "OnDrop", header: "<wx/wx.h>".}
proc copy*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Copy", 
                                       header: "<wx/wx.h>".}
proc cut*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Cut", 
                                      header: "<wx/wx.h>".}
proc paste*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Paste", 
                                        header: "<wx/wx.h>".}
proc deleteSelection*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "DeleteSelection", header: "<wx/wx.h>".}
proc canCopy*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanCopy", header: "<wx/wx.h>".}
proc canCut*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanCut", header: "<wx/wx.h>".}
proc canPaste*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanPaste", header: "<wx/wx.h>".}
proc canDeleteSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanDeleteSelection", header: "<wx/wx.h>".}
proc undo*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Undo", 
                                       header: "<wx/wx.h>".}
proc redo*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Redo", 
                                       header: "<wx/wx.h>".}
proc canUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanUndo", header: "<wx/wx.h>".}
proc canRedo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "CanRedo", header: "<wx/wx.h>".}
proc setInsertionPoint*(this: var WxRichTextCtrl; pos: clong) {.cdecl, 
    importcpp: "SetInsertionPoint", header: "<wx/wx.h>".}
proc setInsertionPointEnd*(this: var WxRichTextCtrl) {.cdecl, 
    importcpp: "SetInsertionPointEnd", header: "<wx/wx.h>".}
proc getInsertionPoint*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: "<wx/wx.h>".}
proc getLastPosition*(this: WxRichTextCtrl): WxTextPos {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: "<wx/wx.h>".}
proc setSelection*(this: var WxRichTextCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
proc setSelection*(this: var WxRichTextCtrl; sel: WxRichTextSelection) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
proc setEditable*(this: var WxRichTextCtrl; editable: bool) {.cdecl, 
    importcpp: "SetEditable", header: "<wx/wx.h>".}
proc hasSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: "<wx/wx.h>".}
proc hasUnfocusedSelection*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "HasUnfocusedSelection", header: "<wx/wx.h>".}
proc writeImage*(this: var WxRichTextCtrl; image: WxImage; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "WriteImage", header: "<wx/wx.h>".}
proc writeImage*(this: var WxRichTextCtrl; bitmap: WxBitmap; 
                 bitmapType: WxBitmapType = wxBITMAP_TYPE_PNG; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "WriteImage", header: "<wx/wx.h>".}
proc writeImage*(this: var WxRichTextCtrl; filename: WxString; 
                 bitmapType: WxBitmapType; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "WriteImage", header: "<wx/wx.h>".}
proc writeImage*(this: var WxRichTextCtrl; imageBlock: WxRichTextImageBlock; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): bool {.cdecl, 
    importcpp: "WriteImage", header: "<wx/wx.h>".}
proc writeTextBox*(this: var WxRichTextCtrl; 
                   textAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextBox {.
    cdecl, importcpp: "WriteTextBox", header: "<wx/wx.h>".}
proc writeField*(this: var WxRichTextCtrl; fieldType: WxString; 
                 properties: WxRichTextProperties; 
                 textAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextField {.
    cdecl, importcpp: "WriteField", header: "<wx/wx.h>".}
proc writeTable*(this: var WxRichTextCtrl; rows: cint; cols: cint; 
                 tableAttr: WxRichTextAttr = wxRichTextAttr(); 
                 cellAttr: WxRichTextAttr = wxRichTextAttr()): ptr WxRichTextTable {.
    cdecl, importcpp: "WriteTable", header: "<wx/wx.h>".}
proc newline*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "Newline", 
    header: "<wx/wx.h>".}
proc lineBreak*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "LineBreak", 
    header: "<wx/wx.h>".}
proc setBasicStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr) {.cdecl, 
    importcpp: "SetBasicStyle", header: "<wx/wx.h>".}
proc getBasicStyle*(this: WxRichTextCtrl): WxRichTextAttr {.noSideEffect, cdecl, 
    importcpp: "GetBasicStyle", header: "<wx/wx.h>".}
proc beginStyle*(this: var WxRichTextCtrl; style: WxRichTextAttr): bool {.cdecl, 
    importcpp: "BeginStyle", header: "<wx/wx.h>".}
proc endStyle*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndStyle", 
    header: "<wx/wx.h>".}
proc endAllStyles*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndAllStyles", header: "<wx/wx.h>".}
proc beginBold*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "BeginBold", 
    header: "<wx/wx.h>".}
proc endBold*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndBold", 
    header: "<wx/wx.h>".}
proc beginItalic*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginItalic", header: "<wx/wx.h>".}
proc endItalic*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndItalic", 
    header: "<wx/wx.h>".}
proc beginUnderline*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginUnderline", header: "<wx/wx.h>".}
proc endUnderline*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndUnderline", header: "<wx/wx.h>".}
proc beginFontSize*(this: var WxRichTextCtrl; pointSize: cint): bool {.cdecl, 
    importcpp: "BeginFontSize", header: "<wx/wx.h>".}
proc endFontSize*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndFontSize", header: "<wx/wx.h>".}
proc beginFont*(this: var WxRichTextCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "BeginFont", header: "<wx/wx.h>".}
proc endFont*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndFont", 
    header: "<wx/wx.h>".}
proc beginTextColour*(this: var WxRichTextCtrl; colour: WxColour): bool {.cdecl, 
    importcpp: "BeginTextColour", header: "<wx/wx.h>".}
proc endTextColour*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndTextColour", header: "<wx/wx.h>".}
proc beginAlignment*(this: var WxRichTextCtrl; alignment: WxTextAttrAlignment): bool {.
    cdecl, importcpp: "BeginAlignment", header: "<wx/wx.h>".}
proc endAlignment*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndAlignment", header: "<wx/wx.h>".}
proc beginLeftIndent*(this: var WxRichTextCtrl; leftIndent: cint; 
                      leftSubIndent: cint = 0): bool {.cdecl, 
    importcpp: "BeginLeftIndent", header: "<wx/wx.h>".}
proc endLeftIndent*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndLeftIndent", header: "<wx/wx.h>".}
proc beginRightIndent*(this: var WxRichTextCtrl; rightIndent: cint): bool {.
    cdecl, importcpp: "BeginRightIndent", header: "<wx/wx.h>".}
proc endRightIndent*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndRightIndent", header: "<wx/wx.h>".}
proc beginParagraphSpacing*(this: var WxRichTextCtrl; before: cint; after: cint): bool {.
    cdecl, importcpp: "BeginParagraphSpacing", header: "<wx/wx.h>".}
proc endParagraphSpacing*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndParagraphSpacing", header: "<wx/wx.h>".}
proc beginLineSpacing*(this: var WxRichTextCtrl; lineSpacing: cint): bool {.
    cdecl, importcpp: "BeginLineSpacing", header: "<wx/wx.h>".}
proc endLineSpacing*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndLineSpacing", header: "<wx/wx.h>".}
proc beginNumberedBullet*(this: var WxRichTextCtrl; bulletNumber: cint; 
                          leftIndent: cint; leftSubIndent: cint; bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_ARABIC or
    wxTEXT_ATTR_BULLET_STYLE_PERIOD): bool {.cdecl, 
    importcpp: "BeginNumberedBullet", header: "<wx/wx.h>".}
proc endNumberedBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndNumberedBullet", header: "<wx/wx.h>".}
proc beginSymbolBullet*(this: var WxRichTextCtrl; symbol: WxString; 
                        leftIndent: cint; leftSubIndent: cint; 
                        bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_SYMBOL): bool {.
    cdecl, importcpp: "BeginSymbolBullet", header: "<wx/wx.h>".}
proc endSymbolBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndSymbolBullet", header: "<wx/wx.h>".}
proc beginStandardBullet*(this: var WxRichTextCtrl; bulletName: WxString; 
                          leftIndent: cint; leftSubIndent: cint; 
                          bulletStyle: cint = wxTEXT_ATTR_BULLET_STYLE_STANDARD): bool {.
    cdecl, importcpp: "BeginStandardBullet", header: "<wx/wx.h>".}
proc endStandardBullet*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndStandardBullet", header: "<wx/wx.h>".}
proc beginCharacterStyle*(this: var WxRichTextCtrl; characterStyle: WxString): bool {.
    cdecl, importcpp: "BeginCharacterStyle", header: "<wx/wx.h>".}
proc endCharacterStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndCharacterStyle", header: "<wx/wx.h>".}
proc beginParagraphStyle*(this: var WxRichTextCtrl; paragraphStyle: WxString): bool {.
    cdecl, importcpp: "BeginParagraphStyle", header: "<wx/wx.h>".}
proc endParagraphStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndParagraphStyle", header: "<wx/wx.h>".}
proc beginListStyle*(this: var WxRichTextCtrl; listStyle: WxString; 
                     level: cint = 1; number: cint = 1): bool {.cdecl, 
    importcpp: "BeginListStyle", header: "<wx/wx.h>".}
proc endListStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndListStyle", header: "<wx/wx.h>".}
proc beginURL*(this: var WxRichTextCtrl; url: WxString; 
               characterStyle: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "BeginURL", header: "<wx/wx.h>".}
proc endURL*(this: var WxRichTextCtrl): bool {.cdecl, importcpp: "EndURL", 
    header: "<wx/wx.h>".}
proc setDefaultStyleToCursorStyle*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "SetDefaultStyleToCursorStyle", header: "<wx/wx.h>".}
proc selectNone*(this: var WxRichTextCtrl) {.cdecl, importcpp: "SelectNone", 
    header: "<wx/wx.h>".}
proc selectWord*(this: var WxRichTextCtrl; position: clong): bool {.cdecl, 
    importcpp: "SelectWord", header: "<wx/wx.h>".}
proc getSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.noSideEffect, 
    cdecl, importcpp: "GetSelectionRange", header: "<wx/wx.h>".}
proc setSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    cdecl, importcpp: "SetSelectionRange", header: "<wx/wx.h>".}
proc getInternalSelectionRange*(this: WxRichTextCtrl): WxRichTextRange {.
    noSideEffect, cdecl, importcpp: "GetInternalSelectionRange", 
    header: "<wx/wx.h>".}
proc setInternalSelectionRange*(this: var WxRichTextCtrl; range: WxRichTextRange) {.
    cdecl, importcpp: "SetInternalSelectionRange", header: "<wx/wx.h>".}
proc addParagraph*(this: var WxRichTextCtrl; text: WxString): WxRichTextRange {.
    cdecl, importcpp: "AddParagraph", header: "<wx/wx.h>".}
proc addImage*(this: var WxRichTextCtrl; image: WxImage): WxRichTextRange {.
    cdecl, importcpp: "AddImage", header: "<wx/wx.h>".}
proc layoutContent*(this: var WxRichTextCtrl; onlyVisibleRect: bool = false): bool {.
    cdecl, importcpp: "LayoutContent", header: "<wx/wx.h>".}
proc moveCaret*(this: var WxRichTextCtrl; pos: clong; 
                showAtLineStart: bool = false; 
                container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    cdecl, importcpp: "MoveCaret", header: "<wx/wx.h>".}
proc moveRight*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveRight", header: "<wx/wx.h>".}
proc moveLeft*(this: var WxRichTextCtrl; noPositions: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveLeft", header: "<wx/wx.h>".}
proc moveUp*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveUp", header: "<wx/wx.h>".}
proc moveDown*(this: var WxRichTextCtrl; noLines: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveDown", header: "<wx/wx.h>".}
proc moveToLineEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveToLineEnd", header: "<wx/wx.h>".}
proc moveToLineStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveToLineStart", header: "<wx/wx.h>".}
proc moveToParagraphEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveToParagraphEnd", header: "<wx/wx.h>".}
proc moveToParagraphStart*(this: var WxRichTextCtrl; flags: cint = 0): bool {.
    cdecl, importcpp: "MoveToParagraphStart", header: "<wx/wx.h>".}
proc moveHome*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveHome", header: "<wx/wx.h>".}
proc moveEnd*(this: var WxRichTextCtrl; flags: cint = 0): bool {.cdecl, 
    importcpp: "MoveEnd", header: "<wx/wx.h>".}
proc pageUp*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "PageUp", header: "<wx/wx.h>".}
proc pageDown*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "PageDown", header: "<wx/wx.h>".}
proc wordLeft*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "WordLeft", header: "<wx/wx.h>".}
proc wordRight*(this: var WxRichTextCtrl; noPages: cint = 1; flags: cint = 0): bool {.
    cdecl, importcpp: "WordRight", header: "<wx/wx.h>".}
proc getBuffer*(this: var WxRichTextCtrl): var WxRichTextBuffer {.cdecl, 
    importcpp: "GetBuffer", header: "<wx/wx.h>".}
proc getBuffer*(this: WxRichTextCtrl): WxRichTextBuffer {.noSideEffect, cdecl, 
    importcpp: "GetBuffer", header: "<wx/wx.h>".}
proc beginBatchUndo*(this: var WxRichTextCtrl; cmdName: WxString): bool {.cdecl, 
    importcpp: "BeginBatchUndo", header: "<wx/wx.h>".}
proc endBatchUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndBatchUndo", header: "<wx/wx.h>".}
proc batchingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "BatchingUndo", header: "<wx/wx.h>".}
proc beginSuppressUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "BeginSuppressUndo", header: "<wx/wx.h>".}
proc endSuppressUndo*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "EndSuppressUndo", header: "<wx/wx.h>".}
proc suppressingUndo*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "SuppressingUndo", header: "<wx/wx.h>".}
proc hasCharacterAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasCharacterAttributes", header: "<wx/wx.h>".}
proc hasParagraphAttributes*(this: WxRichTextCtrl; range: WxRichTextRange; 
                             style: WxRichTextAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasParagraphAttributes", header: "<wx/wx.h>".}
proc isSelectionBold*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionBold", header: "<wx/wx.h>".}
proc isSelectionItalics*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionItalics", header: "<wx/wx.h>".}
proc isSelectionUnderlined*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "IsSelectionUnderlined", header: "<wx/wx.h>".}
proc doesSelectionHaveTextEffectFlag*(this: var WxRichTextCtrl; flag: cint): bool {.
    cdecl, importcpp: "DoesSelectionHaveTextEffectFlag", header: "<wx/wx.h>".}
proc isSelectionAligned*(this: var WxRichTextCtrl; 
                         alignment: WxTextAttrAlignment): bool {.cdecl, 
    importcpp: "IsSelectionAligned", header: "<wx/wx.h>".}
proc applyBoldToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyBoldToSelection", header: "<wx/wx.h>".}
proc applyItalicToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyItalicToSelection", header: "<wx/wx.h>".}
proc applyUnderlineToSelection*(this: var WxRichTextCtrl): bool {.cdecl, 
    importcpp: "ApplyUnderlineToSelection", header: "<wx/wx.h>".}
proc applyTextEffectToSelection*(this: var WxRichTextCtrl; flags: cint): bool {.
    cdecl, importcpp: "ApplyTextEffectToSelection", header: "<wx/wx.h>".}
proc applyAlignmentToSelection*(this: var WxRichTextCtrl; 
                                alignment: WxTextAttrAlignment): bool {.cdecl, 
    importcpp: "ApplyAlignmentToSelection", header: "<wx/wx.h>".}
proc applyStyle*(this: var WxRichTextCtrl; def: ptr WxRichTextStyleDefinition): bool {.
    cdecl, importcpp: "ApplyStyle", header: "<wx/wx.h>".}
proc setStyleSheet*(this: var WxRichTextCtrl; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: "<wx/wx.h>".}
proc getStyleSheet*(this: WxRichTextCtrl): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: "<wx/wx.h>".}
proc pushStyleSheet*(this: var WxRichTextCtrl; 
                     styleSheet: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "PushStyleSheet", header: "<wx/wx.h>".}
proc popStyleSheet*(this: var WxRichTextCtrl): ptr WxRichTextStyleSheet {.cdecl, 
    importcpp: "PopStyleSheet", header: "<wx/wx.h>".}
proc applyStyleSheet*(this: var WxRichTextCtrl; 
                      styleSheet: ptr WxRichTextStyleSheet = nil): bool {.cdecl, 
    importcpp: "ApplyStyleSheet", header: "<wx/wx.h>".}
proc showContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; pt: WxPoint; 
                      addPropertyCommands: bool = true): bool {.cdecl, 
    importcpp: "ShowContextMenu", header: "<wx/wx.h>".}
proc prepareContextMenu*(this: var WxRichTextCtrl; menu: ptr WxMenu; 
                         pt: WxPoint; addPropertyCommands: bool = true): cint {.
    cdecl, importcpp: "PrepareContextMenu", header: "<wx/wx.h>".}
proc canEditProperties*(this: WxRichTextCtrl; obj: ptr WxRichTextObject): bool {.
    noSideEffect, cdecl, importcpp: "CanEditProperties", header: "<wx/wx.h>".}
proc editProperties*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject; 
                     parent: ptr WxWindow): bool {.cdecl, 
    importcpp: "EditProperties", header: "<wx/wx.h>".}
proc getPropertiesMenuLabel*(this: var WxRichTextCtrl; obj: ptr WxRichTextObject): WxString {.
    cdecl, importcpp: "GetPropertiesMenuLabel", header: "<wx/wx.h>".}
proc prepareContent*(this: var WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "PrepareContent", header: "<wx/wx.h>".}
proc canDeleteRange*(this: WxRichTextCtrl; 
                     container: var WxRichTextParagraphLayoutBox; 
                     range: WxRichTextRange): bool {.noSideEffect, cdecl, 
    importcpp: "CanDeleteRange", header: "<wx/wx.h>".}
proc canInsertContent*(this: WxRichTextCtrl; 
                       container: var WxRichTextParagraphLayoutBox; pos: clong): bool {.
    noSideEffect, cdecl, importcpp: "CanInsertContent", header: "<wx/wx.h>".}
proc enableVerticalScrollbar*(this: var WxRichTextCtrl; enable: bool) {.cdecl, 
    importcpp: "EnableVerticalScrollbar", header: "<wx/wx.h>".}
proc getVerticalScrollbarEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    cdecl, importcpp: "GetVerticalScrollbarEnabled", header: "<wx/wx.h>".}
proc setFontScale*(this: var WxRichTextCtrl; fontScale: cdouble; 
                   refresh: bool = false) {.cdecl, importcpp: "SetFontScale", 
    header: "<wx/wx.h>".}
proc getFontScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetFontScale", header: "<wx/wx.h>".}
proc setDimensionScale*(this: var WxRichTextCtrl; dimScale: cdouble; 
                        refresh: bool = false) {.cdecl, 
    importcpp: "SetDimensionScale", header: "<wx/wx.h>".}
proc getDimensionScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDimensionScale", header: "<wx/wx.h>".}
proc setScale*(this: var WxRichTextCtrl; scale: cdouble; refresh: bool = false) {.
    cdecl, importcpp: "SetScale", header: "<wx/wx.h>".}
proc getScale*(this: WxRichTextCtrl): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetScale", header: "<wx/wx.h>".}
proc getUnscaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetUnscaledPoint", header: "<wx/wx.h>".}
proc getScaledPoint*(this: WxRichTextCtrl; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "GetScaledPoint", header: "<wx/wx.h>".}
proc getUnscaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetUnscaledSize", header: "<wx/wx.h>".}
proc getScaledSize*(this: WxRichTextCtrl; sz: WxSize): WxSize {.noSideEffect, 
    cdecl, importcpp: "GetScaledSize", header: "<wx/wx.h>".}
proc getUnscaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.
    noSideEffect, cdecl, importcpp: "GetUnscaledRect", header: "<wx/wx.h>".}
proc getScaledRect*(this: WxRichTextCtrl; rect: WxRect): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetScaledRect", header: "<wx/wx.h>".}
proc getVirtualAttributesEnabled*(this: WxRichTextCtrl): bool {.noSideEffect, 
    cdecl, importcpp: "GetVirtualAttributesEnabled", header: "<wx/wx.h>".}
proc enableVirtualAttributes*(this: var WxRichTextCtrl; b: bool) {.cdecl, 
    importcpp: "EnableVirtualAttributes", header: "<wx/wx.h>".}
proc command*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc onDropFiles*(this: var WxRichTextCtrl; event: var WxDropFilesEvent) {.
    cdecl, importcpp: "OnDropFiles", header: "<wx/wx.h>".}
proc onCaptureLost*(this: var WxRichTextCtrl; event: var WxMouseCaptureLostEvent) {.
    cdecl, importcpp: "OnCaptureLost", header: "<wx/wx.h>".}
proc onSysColourChanged*(this: var WxRichTextCtrl; 
                         event: var WxSysColourChangedEvent) {.cdecl, 
    importcpp: "OnSysColourChanged", header: "<wx/wx.h>".}
proc onCut*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCut", header: "<wx/wx.h>".}
proc onCopy*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCopy", header: "<wx/wx.h>".}
proc onPaste*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPaste", header: "<wx/wx.h>".}
proc onUndo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUndo", header: "<wx/wx.h>".}
proc onRedo*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRedo", header: "<wx/wx.h>".}
proc onSelectAll*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSelectAll", header: "<wx/wx.h>".}
proc onProperties*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnProperties", header: "<wx/wx.h>".}
proc onClear*(this: var WxRichTextCtrl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnClear", header: "<wx/wx.h>".}
proc onUpdateCut*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCut", header: "<wx/wx.h>".}
proc onUpdateCopy*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateCopy", header: "<wx/wx.h>".}
proc onUpdatePaste*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdatePaste", header: "<wx/wx.h>".}
proc onUpdateUndo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateUndo", header: "<wx/wx.h>".}
proc onUpdateRedo*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateRedo", header: "<wx/wx.h>".}
proc onUpdateSelectAll*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateSelectAll", header: "<wx/wx.h>".}
proc onUpdateProperties*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateProperties", header: "<wx/wx.h>".}
proc onUpdateClear*(this: var WxRichTextCtrl; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateClear", header: "<wx/wx.h>".}
proc onContextMenu*(this: var WxRichTextCtrl; event: var WxContextMenuEvent) {.
    cdecl, importcpp: "OnContextMenu", header: "<wx/wx.h>".}
proc onPaint*(this: var WxRichTextCtrl; event: var WxPaintEvent) {.cdecl, 
    importcpp: "OnPaint", header: "<wx/wx.h>".}
proc onEraseBackground*(this: var WxRichTextCtrl; event: var WxEraseEvent) {.
    cdecl, importcpp: "OnEraseBackground", header: "<wx/wx.h>".}
proc onLeftClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftClick", header: "<wx/wx.h>".}
proc onLeftUp*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftUp", header: "<wx/wx.h>".}
proc onMoveMouse*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMoveMouse", header: "<wx/wx.h>".}
proc onLeftDClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftDClick", header: "<wx/wx.h>".}
proc onMiddleClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMiddleClick", header: "<wx/wx.h>".}
proc onRightClick*(this: var WxRichTextCtrl; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnRightClick", header: "<wx/wx.h>".}
proc onChar*(this: var WxRichTextCtrl; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnChar", header: "<wx/wx.h>".}
proc onSize*(this: var WxRichTextCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: "<wx/wx.h>".}
proc onSetFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnSetFocus", header: "<wx/wx.h>".}
proc onKillFocus*(this: var WxRichTextCtrl; event: var WxFocusEvent) {.cdecl, 
    importcpp: "OnKillFocus", header: "<wx/wx.h>".}
proc onIdle*(this: var WxRichTextCtrl; event: var WxIdleEvent) {.cdecl, 
    importcpp: "OnIdle", header: "<wx/wx.h>".}
proc onScroll*(this: var WxRichTextCtrl; event: var WxScrollWinEvent) {.cdecl, 
    importcpp: "OnScroll", header: "<wx/wx.h>".}
proc setFont*(this: var WxRichTextCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc setupScrollbars*(this: var WxRichTextCtrl; atTop: bool = false) {.cdecl, 
    importcpp: "SetupScrollbars", header: "<wx/wx.h>".}
proc keyboardNavigate*(this: var WxRichTextCtrl; keyCode: cint; flags: cint): bool {.
    cdecl, importcpp: "KeyboardNavigate", header: "<wx/wx.h>".}
proc paintBackground*(this: var WxRichTextCtrl; dc: var WxDC) {.cdecl, 
    importcpp: "PaintBackground", header: "<wx/wx.h>".}
proc paintAboveContent*(this: var WxRichTextCtrl; dc: var WxDC) {.cdecl, 
    importcpp: "PaintAboveContent", header: "<wx/wx.h>".}
proc doWriteText*(this: var WxRichTextCtrl; value: WxString; flags: cint = 0) {.
    cdecl, importcpp: "DoWriteText", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc positionCaret*(this: var WxRichTextCtrl; 
                    container: ptr WxRichTextParagraphLayoutBox = nil) {.cdecl, 
    importcpp: "PositionCaret", header: "<wx/wx.h>".}
proc extendSelection*(this: var WxRichTextCtrl; oldPosition: clong; 
                      newPosition: clong; flags: cint): bool {.cdecl, 
    importcpp: "ExtendSelection", header: "<wx/wx.h>".}
proc scrollIntoView*(this: var WxRichTextCtrl; position: clong; keyCode: cint): bool {.
    cdecl, importcpp: "ScrollIntoView", header: "<wx/wx.h>".}
proc refreshForSelectionChange*(this: var WxRichTextCtrl; 
                                oldSelection: WxRichTextSelection; 
                                newSelection: WxRichTextSelection): bool {.
    cdecl, importcpp: "RefreshForSelectionChange", header: "<wx/wx.h>".}
proc setCaretPosition*(this: var WxRichTextCtrl; position: clong; 
                       showAtLineStart: bool = false) {.cdecl, 
    importcpp: "SetCaretPosition", header: "<wx/wx.h>".}
proc getCaretPosition*(this: WxRichTextCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetCaretPosition", header: "<wx/wx.h>".}
proc getAdjustedCaretPosition*(this: WxRichTextCtrl; caretPos: clong): clong {.
    noSideEffect, cdecl, importcpp: "GetAdjustedCaretPosition", 
    header: "<wx/wx.h>".}
proc moveCaretForward*(this: var WxRichTextCtrl; oldPosition: clong) {.cdecl, 
    importcpp: "MoveCaretForward", header: "<wx/wx.h>".}
proc moveCaretBack*(this: var WxRichTextCtrl; oldPosition: clong) {.cdecl, 
    importcpp: "MoveCaretBack", header: "<wx/wx.h>".}
proc getCaretPositionForIndex*(this: var WxRichTextCtrl; position: clong; 
                               rect: var WxRect; container: ptr WxRichTextParagraphLayoutBox = nil): bool {.
    cdecl, importcpp: "GetCaretPositionForIndex", header: "<wx/wx.h>".}
proc getVisibleLineForCaretPosition*(this: WxRichTextCtrl; caretPosition: clong): ptr WxRichTextLine {.
    noSideEffect, cdecl, importcpp: "GetVisibleLineForCaretPosition", 
    header: "<wx/wx.h>".}
proc getCommandProcessor*(this: WxRichTextCtrl): ptr WxCommandProcessor {.
    noSideEffect, cdecl, importcpp: "GetCommandProcessor", header: "<wx/wx.h>".}
proc deleteSelectedContent*(this: var WxRichTextCtrl; newPos: ptr clong = nil): bool {.
    cdecl, importcpp: "DeleteSelectedContent", header: "<wx/wx.h>".}
proc getPhysicalPoint*(this: WxRichTextCtrl; ptLogical: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetPhysicalPoint", header: "<wx/wx.h>".}
proc getLogicalPoint*(this: WxRichTextCtrl; ptPhysical: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "GetLogicalPoint", header: "<wx/wx.h>".}
proc findNextWordPosition*(this: WxRichTextCtrl; direction: cint = 1): clong {.
    noSideEffect, cdecl, importcpp: "FindNextWordPosition", header: "<wx/wx.h>".}
proc isPositionVisible*(this: WxRichTextCtrl; pos: clong): bool {.noSideEffect, 
    cdecl, importcpp: "IsPositionVisible", header: "<wx/wx.h>".}
proc getFirstVisiblePosition*(this: WxRichTextCtrl): clong {.noSideEffect, 
    cdecl, importcpp: "GetFirstVisiblePosition", header: "<wx/wx.h>".}
proc getCaretPositionForDefaultStyle*(this: WxRichTextCtrl): clong {.
    noSideEffect, cdecl, importcpp: "GetCaretPositionForDefaultStyle", 
    header: "<wx/wx.h>".}
proc setCaretPositionForDefaultStyle*(this: var WxRichTextCtrl; pos: clong) {.
    cdecl, importcpp: "SetCaretPositionForDefaultStyle", header: "<wx/wx.h>".}
proc isDefaultStyleShowing*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefaultStyleShowing", header: "<wx/wx.h>".}
proc setAndShowDefaultStyle*(this: var WxRichTextCtrl; attr: WxRichTextAttr) {.
    cdecl, importcpp: "SetAndShowDefaultStyle", header: "<wx/wx.h>".}
proc getFirstVisiblePoint*(this: WxRichTextCtrl): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetFirstVisiblePoint", header: "<wx/wx.h>".}
proc getValue*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc setValue*(this: var WxRichTextCtrl; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc freeze*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Freeze", 
    header: "<wx/wx.h>".}
proc thaw*(this: var WxRichTextCtrl) {.cdecl, importcpp: "Thaw", 
                                       header: "<wx/wx.h>".}
proc isFrozen*(this: WxRichTextCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "IsFrozen", header: "<wx/wx.h>".}
proc processBackKey*(this: var WxRichTextCtrl; event: var WxKeyEvent; 
                     flags: cint): bool {.cdecl, importcpp: "ProcessBackKey", 
    header: "<wx/wx.h>".}
proc findRangeForList*(this: var WxRichTextCtrl; pos: clong; 
                       isNumberedList: var bool): WxRichTextRange {.cdecl, 
    importcpp: "FindRangeForList", header: "<wx/wx.h>".}
proc setCaretPositionAfterClick*(this: var WxRichTextCtrl; 
                                 container: ptr WxRichTextParagraphLayoutBox; 
                                 position: clong; hitTestFlags: cint; 
                                 extendSelection: bool = false): bool {.cdecl, 
    importcpp: "SetCaretPositionAfterClick", header: "<wx/wx.h>".}
proc findCaretPositionForCharacterPosition*(this: var WxRichTextCtrl; 
    position: clong; hitTestFlags: cint; 
    container: ptr WxRichTextParagraphLayoutBox; caretLineStart: var bool): clong {.
    cdecl, importcpp: "FindCaretPositionForCharacterPosition", 
    header: "<wx/wx.h>".}
proc processMouseMovement*(this: var WxRichTextCtrl; 
                           container: ptr WxRichTextParagraphLayoutBox; 
                           obj: ptr WxRichTextObject; position: clong; 
                           pos: WxPoint): bool {.cdecl, 
    importcpp: "ProcessMouseMovement", header: "<wx/wx.h>".}
proc getAvailableFontNames*(): WxArrayString {.cdecl, 
    importcpp: "wxRichTextCtrl::GetAvailableFontNames(@)", header: "<wx/wx.h>".}
proc clearAvailableFontNames*() {.cdecl, importcpp: "wxRichTextCtrl::ClearAvailableFontNames(@)", 
                                  header: "<wx/wx.h>".}
proc doGetValue*(this: WxRichTextCtrl): WxString {.noSideEffect, cdecl, 
    importcpp: "DoGetValue", header: "<wx/wx.h>".}
type 
  WxRichTextDropSource* {.importcpp: "wxRichTextDropSource", header: "<wx/wx.h>".} = object of WxDropSource
  

proc constructwxRichTextDropSource*(data: var WxDataObject; 
                                    tc: ptr WxRichTextCtrl): WxRichTextDropSource {.
    cdecl, constructor, importcpp: "wxRichTextDropSource(@)", 
    header: "<wx/wx.h>".}
type 
  WxRichTextDropTarget* {.importcpp: "wxRichTextDropTarget", header: "<wx/wx.h>".} = object of WxDropTarget
  

proc constructwxRichTextDropTarget*(tc: ptr WxRichTextCtrl): WxRichTextDropTarget {.
    cdecl, constructor, importcpp: "wxRichTextDropTarget(@)", 
    header: "<wx/wx.h>".}
proc onData*(this: var WxRichTextDropTarget; x: WxCoord; y: WxCoord; 
             def: WxDragResult): WxDragResult {.cdecl, importcpp: "OnData", 
    header: "<wx/wx.h>".}

type 
  WxRichTextEvent* {.importcpp: "wxRichTextEvent", header: "<wx/wx.h>".} = object of WxNotifyEvent
  

proc constructwxRichTextEvent*(commandType: WxEventType = wxEVT_NULL; 
                               winid: cint = 0): WxRichTextEvent {.cdecl, 
    constructor, importcpp: "wxRichTextEvent(@)", header: "<wx/wx.h>".}
proc constructwxRichTextEvent*(event: WxRichTextEvent): WxRichTextEvent {.cdecl, 
    constructor, importcpp: "wxRichTextEvent(@)", header: "<wx/wx.h>".}
proc getPosition*(this: WxRichTextEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc setPosition*(this: var WxRichTextEvent; pos: clong) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc getFlags*(this: WxRichTextEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "<wx/wx.h>".}
proc setFlags*(this: var WxRichTextEvent; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: "<wx/wx.h>".}
proc getOldStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetOldStyleSheet", header: "<wx/wx.h>".}
proc setOldStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetOldStyleSheet", header: "<wx/wx.h>".}
proc getNewStyleSheet*(this: WxRichTextEvent): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetNewStyleSheet", header: "<wx/wx.h>".}
proc setNewStyleSheet*(this: var WxRichTextEvent; 
                       sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetNewStyleSheet", header: "<wx/wx.h>".}
proc getRange*(this: WxRichTextEvent): WxRichTextRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc setRange*(this: var WxRichTextEvent; range: WxRichTextRange) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getCharacter*(this: WxRichTextEvent): WxChar {.noSideEffect, cdecl, 
    importcpp: "GetCharacter", header: "<wx/wx.h>".}
proc setCharacter*(this: var WxRichTextEvent; ch: WxChar) {.cdecl, 
    importcpp: "SetCharacter", header: "<wx/wx.h>".}
proc getContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetContainer", header: "<wx/wx.h>".}
proc setContainer*(this: var WxRichTextEvent; 
                   container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetContainer", header: "<wx/wx.h>".}
proc getOldContainer*(this: WxRichTextEvent): ptr WxRichTextParagraphLayoutBox {.
    noSideEffect, cdecl, importcpp: "GetOldContainer", header: "<wx/wx.h>".}
proc setOldContainer*(this: var WxRichTextEvent; 
                      container: ptr WxRichTextParagraphLayoutBox) {.cdecl, 
    importcpp: "SetOldContainer", header: "<wx/wx.h>".}
proc clone*(this: WxRichTextEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}

var wxEVT_RICHTEXT_LEFT_CLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_CLICK", 
                                 header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_RIGHT_CLICK* {.importcpp: "wxEVT_RICHTEXT_RIGHT_CLICK", 
                                  header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_MIDDLE_CLICK* {.importcpp: "wxEVT_RICHTEXT_MIDDLE_CLICK", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_LEFT_DCLICK* {.importcpp: "wxEVT_RICHTEXT_LEFT_DCLICK", 
                                  header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_RETURN* {.importcpp: "wxEVT_RICHTEXT_RETURN", 
                             header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CHARACTER* {.importcpp: "wxEVT_RICHTEXT_CHARACTER", 
                                header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONSUMING_CHARACTER* {.
    importcpp: "wxEVT_RICHTEXT_CONSUMING_CHARACTER", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_DELETE* {.importcpp: "wxEVT_RICHTEXT_DELETE", 
                             header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGING", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_CHANGED", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACING* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACING", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLESHEET_REPLACED* {.
    importcpp: "wxEVT_RICHTEXT_STYLESHEET_REPLACED", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_INSERTED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_INSERTED", 
                                       header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_CONTENT_DELETED* {.importcpp: "wxEVT_RICHTEXT_CONTENT_DELETED", 
                                      header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_STYLE_CHANGED* {.importcpp: "wxEVT_RICHTEXT_STYLE_CHANGED", 
                                    header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_PROPERTIES_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_PROPERTIES_CHANGED", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_SELECTION_CHANGED* {.importcpp: "wxEVT_RICHTEXT_SELECTION_CHANGED", 
                                        header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_BUFFER_RESET* {.importcpp: "wxEVT_RICHTEXT_BUFFER_RESET", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]

var wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED* {.
    importcpp: "wxEVT_RICHTEXT_FOCUS_OBJECT_CHANGED", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxRichTextEvent]


