


discard "forward decl of wxImageList"

type 
  WxTreeItemId* {.importcpp: "wxTreeItemId", header: wxh.} = object 
  

proc constructwxTreeItemId*(): WxTreeItemId {.cdecl, constructor, 
    importcpp: "wxTreeItemId(@)", header: wxh.}
proc constructwxTreeItemId*(pItem: pointer): WxTreeItemId {.cdecl, constructor, 
    importcpp: "wxTreeItemId(@)", header: wxh.}

type 
  WxTreeItemData* {.importcpp: "wxTreeItemData", header: wxh.} = object of WxClientData
  

proc constructwxTreeItemData*(): WxTreeItemData {.cdecl, constructor, 
    importcpp: "wxTreeItemData(@)", header: wxh.}
proc getId*(this: WxTreeItemData): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetId", header: wxh.}
proc setId*(this: var WxTreeItemData; id: WxTreeItemId) {.cdecl, 
    importcpp: "SetId", header: wxh.}
type 
  WxTreeItemIdValue* = pointer


type 
  WxArrayTreeItemIds* {.importcpp: "wxArrayTreeItemIds", header: wxh.} = object 
  

proc add*(this: var WxArrayTreeItemIds; id: WxTreeItemId) {.cdecl, 
    importcpp: "Add", header: wxh.}
proc insert*(this: var WxArrayTreeItemIds; id: WxTreeItemId; pos: csize) {.
    cdecl, importcpp: "Insert", header: wxh.}
proc item*(this: WxArrayTreeItemIds; i: csize): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "Item", header: wxh.}
proc `[]`*(this: WxArrayTreeItemIds; i: csize): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: wxh.}

type 
  WxTreeItemIcon* {.size: sizeof(cint), 
                    importcpp: "wxImageList::wxTreeItemIcon", header: wxh.} = enum 
    wxTreeItemIconNormal, wxTreeItemIconSelected, wxTreeItemIconExpanded, 
    wxTreeItemIconSelectedExpanded, wxTreeItemIconMax



var wxTREE_ITEMSTATE_NONE* {.importcpp: "wxTREE_ITEMSTATE_NONE", header: wxh.}: cint


var wxTREE_ITEMSTATE_NEXT* {.importcpp: "wxTREE_ITEMSTATE_NEXT", header: wxh.}: cint


var wxTREE_ITEMSTATE_PREV* {.importcpp: "wxTREE_ITEMSTATE_PREV", header: wxh.}: cint


const 
  wxTR_NO_BUTTONS* = 0x00000000
  wxTR_HAS_BUTTONS* = 0x00000001
  wxTR_NO_LINES* = 0x00000004
  wxTR_LINES_AT_ROOT* = 0x00000008
  wxTR_TWIST_BUTTONS* = 0x00000010
  wxTR_SINGLE* = 0x00000000
  wxTR_MULTIPLE* = 0x00000020
  wxTR_HAS_VARIABLE_ROW_HEIGHT* = 0x00000080
  wxTR_EDIT_LABELS* = 0x00000200
  wxTR_ROW_LINES* = 0x00000400
  wxTR_HIDE_ROOT* = 0x00000800
  wxTR_FULL_ROW_HIGHLIGHT* = 0x00002000


const 
  wxTR_DEFAULT_STYLE* = (wxTR_HAS_BUTTONS or wxTR_NO_LINES)


var wxTREE_HITTEST_ABOVE* {.importcpp: "wxTREE_HITTEST_ABOVE", header: wxh.}: cint

var wxTREE_HITTEST_BELOW* {.importcpp: "wxTREE_HITTEST_BELOW", header: wxh.}: cint

var wxTREE_HITTEST_NOWHERE* {.importcpp: "wxTREE_HITTEST_NOWHERE", header: wxh.}: cint


var wxTREE_HITTEST_ONITEMBUTTON* {.importcpp: "wxTREE_HITTEST_ONITEMBUTTON", 
                                   header: wxh.}: cint


var wxTREE_HITTEST_ONITEMICON* {.importcpp: "wxTREE_HITTEST_ONITEMICON", 
                                 header: wxh.}: cint


var wxTREE_HITTEST_ONITEMINDENT* {.importcpp: "wxTREE_HITTEST_ONITEMINDENT", 
                                   header: wxh.}: cint


var wxTREE_HITTEST_ONITEMLABEL* {.importcpp: "wxTREE_HITTEST_ONITEMLABEL", 
                                  header: wxh.}: cint


var wxTREE_HITTEST_ONITEMRIGHT* {.importcpp: "wxTREE_HITTEST_ONITEMRIGHT", 
                                  header: wxh.}: cint


var wxTREE_HITTEST_ONITEMSTATEICON* {.importcpp: "wxTREE_HITTEST_ONITEMSTATEICON", 
                                      header: wxh.}: cint


var wxTREE_HITTEST_TOLEFT* {.importcpp: "wxTREE_HITTEST_TOLEFT", header: wxh.}: cint


var wxTREE_HITTEST_TORIGHT* {.importcpp: "wxTREE_HITTEST_TORIGHT", header: wxh.}: cint


var wxTREE_HITTEST_ONITEMUPPERPART* {.importcpp: "wxTREE_HITTEST_ONITEMUPPERPART", 
                                      header: wxh.}: cint


var wxTREE_HITTEST_ONITEMLOWERPART* {.importcpp: "wxTREE_HITTEST_ONITEMLOWERPART", 
                                      header: wxh.}: cint


var wxTREE_HITTEST_ONITEM* {.importcpp: "wxTREE_HITTEST_ONITEM", header: wxh.}: cint


type 
  WxTreeItemAttr* {.importcpp: "wxTreeItemAttr", header: wxh.} = object 
  

proc constructwxTreeItemAttr*(): WxTreeItemAttr {.cdecl, constructor, 
    importcpp: "wxTreeItemAttr(@)", header: wxh.}
proc constructwxTreeItemAttr*(colText: WxColour; colBack: WxColour; font: WxFont): WxTreeItemAttr {.
    cdecl, constructor, importcpp: "wxTreeItemAttr(@)", header: wxh.}
proc setTextColour*(this: var WxTreeItemAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxTreeItemAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setFont*(this: var WxTreeItemAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc hasTextColour*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: wxh.}
proc hasBackgroundColour*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: wxh.}
proc hasFont*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: wxh.}
proc getTextColour*(this: WxTreeItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc getBackgroundColour*(this: WxTreeItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: wxh.}
proc getFont*(this: WxTreeItemAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}

discard "forward decl of wxTreeCtrlBase"
type 
  WxTreeEvent* {.importcpp: "wxTreeEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxTreeEvent*(commandType: WxEventType = wxEVT_NULL; id: cint = 0): WxTreeEvent {.
    cdecl, constructor, importcpp: "wxTreeEvent(@)", header: wxh.}
proc constructwxTreeEvent*(commandType: WxEventType; tree: ptr WxTreeCtrlBase; 
                           item: WxTreeItemId = constructWxTreeItemId()): WxTreeEvent {.
    cdecl, constructor, importcpp: "wxTreeEvent(@)", header: wxh.}
proc constructwxTreeEvent*(event: WxTreeEvent): WxTreeEvent {.cdecl, 
    constructor, importcpp: "wxTreeEvent(@)", header: wxh.}
proc clone*(this: WxTreeEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getItem*(this: WxTreeEvent): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: wxh.}
proc setItem*(this: var WxTreeEvent; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetItem", header: wxh.}
proc getOldItem*(this: WxTreeEvent): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetOldItem", header: wxh.}
proc setOldItem*(this: var WxTreeEvent; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetOldItem", header: wxh.}
proc getPoint*(this: WxTreeEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPoint", header: wxh.}
proc setPoint*(this: var WxTreeEvent; pt: WxPoint) {.cdecl, 
    importcpp: "SetPoint", header: wxh.}
proc getKeyEvent*(this: WxTreeEvent): WxKeyEvent {.noSideEffect, cdecl, 
    importcpp: "GetKeyEvent", header: wxh.}
proc getKeyCode*(this: WxTreeEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetKeyCode", header: wxh.}
proc setKeyEvent*(this: var WxTreeEvent; evt: WxKeyEvent) {.cdecl, 
    importcpp: "SetKeyEvent", header: wxh.}
proc getLabel*(this: WxTreeEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc setLabel*(this: var WxTreeEvent; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc isEditCancelled*(this: WxTreeEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: wxh.}
proc setEditCanceled*(this: var WxTreeEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: wxh.}
proc setToolTip*(this: var WxTreeEvent; toolTip: WxString) {.cdecl, 
    importcpp: "SetToolTip", header: wxh.}
proc getToolTip*(this: var WxTreeEvent): WxString {.cdecl, 
    importcpp: "GetToolTip", header: wxh.}
type 
  WxTreeEventFunction* = proc (a2: var WxTreeEvent) {.cdecl.}


var wxEVT_TREE_BEGIN_DRAG* {.importcpp: "wxEVT_TREE_BEGIN_DRAG", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_BEGIN_RDRAG* {.importcpp: "wxEVT_TREE_BEGIN_RDRAG", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_BEGIN_LABEL_EDIT* {.importcpp: "wxEVT_TREE_BEGIN_LABEL_EDIT", 
                                   header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_END_LABEL_EDIT* {.importcpp: "wxEVT_TREE_END_LABEL_EDIT", 
                                 header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_DELETE_ITEM* {.importcpp: "wxEVT_TREE_DELETE_ITEM", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_GET_INFO* {.importcpp: "wxEVT_TREE_GET_INFO", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_SET_INFO* {.importcpp: "wxEVT_TREE_SET_INFO", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_EXPANDED* {.importcpp: "wxEVT_TREE_ITEM_EXPANDED", 
                                header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_EXPANDING* {.importcpp: "wxEVT_TREE_ITEM_EXPANDING", 
                                 header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_COLLAPSED* {.importcpp: "wxEVT_TREE_ITEM_COLLAPSED", 
                                 header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_COLLAPSING* {.importcpp: "wxEVT_TREE_ITEM_COLLAPSING", 
                                  header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_SEL_CHANGED* {.importcpp: "wxEVT_TREE_SEL_CHANGED", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_SEL_CHANGING* {.importcpp: "wxEVT_TREE_SEL_CHANGING", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_KEY_DOWN* {.importcpp: "wxEVT_TREE_KEY_DOWN", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_ACTIVATED* {.importcpp: "wxEVT_TREE_ITEM_ACTIVATED", 
                                 header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_RIGHT_CLICK* {.importcpp: "wxEVT_TREE_ITEM_RIGHT_CLICK", 
                                   header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_MIDDLE_CLICK* {.importcpp: "wxEVT_TREE_ITEM_MIDDLE_CLICK", 
                                    header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_END_DRAG* {.importcpp: "wxEVT_TREE_END_DRAG", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_STATE_IMAGE_CLICK* {.importcpp: "wxEVT_TREE_STATE_IMAGE_CLICK", 
                                    header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_GETTOOLTIP* {.importcpp: "wxEVT_TREE_ITEM_GETTOOLTIP", 
                                  header: wxh.}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_ITEM_MENU* {.importcpp: "wxEVT_TREE_ITEM_MENU", header: wxh.}: WxEventTypeTag[
    WxTreeEvent]















type 
  WxTreeCtrlBase* {.importcpp: "wxTreeCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxTreeCtrlBase*(): WxTreeCtrlBase {.cdecl, constructor, 
    importcpp: "wxTreeCtrlBase(@)", header: wxh.}
proc destroywxTreeCtrlBase*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "#.~wxTreeCtrlBase()", header: wxh.}
proc getCount*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getIndent*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetIndent", header: wxh.}
proc setIndent*(this: var WxTreeCtrlBase; indent: cuint) {.cdecl, 
    importcpp: "SetIndent", header: wxh.}
proc getSpacing*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetSpacing", header: wxh.}
proc setSpacing*(this: var WxTreeCtrlBase; spacing: cuint) {.cdecl, 
    importcpp: "SetSpacing", header: wxh.}
proc getImageList*(this: WxTreeCtrlBase): ptr WxImageList {.noSideEffect, cdecl, 
    importcpp: "GetImageList", header: wxh.}
proc getStateImageList*(this: WxTreeCtrlBase): ptr WxImageList {.noSideEffect, 
    cdecl, importcpp: "GetStateImageList", header: wxh.}
proc setImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "SetImageList", header: wxh.}
proc setStateImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "SetStateImageList", header: wxh.}
proc assignImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "AssignImageList", header: wxh.}
proc assignStateImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "AssignStateImageList", header: wxh.}
proc getItemText*(this: WxTreeCtrlBase; item: WxTreeItemId): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: wxh.}
proc getItemImage*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                   which: WxTreeItemIcon = wxTreeItemIconNormal): cint {.
    noSideEffect, cdecl, importcpp: "GetItemImage", header: wxh.}
proc getItemData*(this: WxTreeCtrlBase; item: WxTreeItemId): ptr WxTreeItemData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: wxh.}
proc getItemTextColour*(this: WxTreeCtrlBase; item: WxTreeItemId): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemTextColour", header: wxh.}
proc getItemBackgroundColour*(this: WxTreeCtrlBase; item: WxTreeItemId): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemBackgroundColour", header: wxh.}
proc getItemFont*(this: WxTreeCtrlBase; item: WxTreeItemId): WxFont {.
    noSideEffect, cdecl, importcpp: "GetItemFont", header: wxh.}
proc getItemState*(this: WxTreeCtrlBase; item: WxTreeItemId): cint {.
    noSideEffect, cdecl, importcpp: "GetItemState", header: wxh.}
proc setItemText*(this: var WxTreeCtrlBase; item: WxTreeItemId; text: WxString) {.
    cdecl, importcpp: "SetItemText", header: wxh.}
proc setItemImage*(this: var WxTreeCtrlBase; item: WxTreeItemId; image: cint; 
                   which: WxTreeItemIcon = wxTreeItemIconNormal) {.cdecl, 
    importcpp: "SetItemImage", header: wxh.}
proc setItemData*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                  data: ptr WxTreeItemData) {.cdecl, importcpp: "SetItemData", 
    header: wxh.}
proc setItemHasChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                         has: bool = true) {.cdecl, 
    importcpp: "SetItemHasChildren", header: wxh.}
proc setItemBold*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                  bold: bool = true) {.cdecl, importcpp: "SetItemBold", 
                                       header: wxh.}
proc setItemDropHighlight*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                           highlight: bool = true) {.cdecl, 
    importcpp: "SetItemDropHighlight", header: wxh.}
proc setItemTextColour*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                        col: WxColour) {.cdecl, importcpp: "SetItemTextColour", 
    header: wxh.}
proc setItemBackgroundColour*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                              col: WxColour) {.cdecl, 
    importcpp: "SetItemBackgroundColour", header: wxh.}
proc setItemFont*(this: var WxTreeCtrlBase; item: WxTreeItemId; font: WxFont) {.
    cdecl, importcpp: "SetItemFont", header: wxh.}
proc setItemState*(this: var WxTreeCtrlBase; item: WxTreeItemId; state: cint) {.
    cdecl, importcpp: "SetItemState", header: wxh.}
proc isVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsVisible", header: wxh.}
proc itemHasChildren*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.
    noSideEffect, cdecl, importcpp: "ItemHasChildren", header: wxh.}
proc hasChildren*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.
    noSideEffect, cdecl, importcpp: "HasChildren", header: wxh.}
proc isExpanded*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsExpanded", header: wxh.}
proc isSelected*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsSelected", header: wxh.}
proc isBold*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsBold", header: wxh.}
proc isEmpty*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc getChildrenCount*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                       recursively: bool = true): csize {.noSideEffect, cdecl, 
    importcpp: "GetChildrenCount", header: wxh.}
proc getRootItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetRootItem", header: wxh.}
proc getSelection*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getSelections*(this: WxTreeCtrlBase; selections: var WxArrayTreeItemIds): csize {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: wxh.}
proc getFocusedItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetFocusedItem", header: wxh.}
proc clearFocusedItem*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "ClearFocusedItem", header: wxh.}
proc setFocusedItem*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetFocusedItem", header: wxh.}
proc getItemParent*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetItemParent", header: wxh.}
proc getFirstChild*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                    cookie: var WxTreeItemIdValue): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetFirstChild", header: wxh.}
proc getNextChild*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                   cookie: var WxTreeItemIdValue): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetNextChild", header: wxh.}
proc getLastChild*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetLastChild", header: wxh.}
proc getNextSibling*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetNextSibling", header: wxh.}
proc getPrevSibling*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetPrevSibling", header: wxh.}
proc getFirstVisibleItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetFirstVisibleItem", header: wxh.}
proc getNextVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetNextVisible", header: wxh.}
proc getPrevVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetPrevVisible", header: wxh.}
proc addRoot*(this: var WxTreeCtrlBase; text: WxString; image: cint = - 1; 
              selImage: cint = - 1; data: ptr WxTreeItemData = nil): WxTreeItemId {.
    discardable, cdecl, importcpp: "AddRoot", header: wxh.}
proc prependItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; 
                  text: WxString; image: cint = - 1; selImage: cint = - 1; 
                  data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "PrependItem", header: wxh.}
proc insertItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; 
                 idPrevious: WxTreeItemId; text: WxString; image: cint = - 1; 
                 selImage: cint = - 1; data: ptr WxTreeItemData = nil): WxTreeItemId {.
    cdecl, importcpp: "InsertItem", header: wxh.}
proc insertItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; pos: csize; 
                 text: WxString; image: cint = - 1; selImage: cint = - 1; 
                 data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "InsertItem", header: wxh.}
proc appendItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; text: WxString; 
                 image: cint = - 1; selImage: cint = - 1; 
                 data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "AppendItem", header: wxh.}
proc delete*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Delete", header: wxh.}
proc deleteChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "DeleteChildren", header: wxh.}
proc deleteAllItems*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc expand*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Expand", header: wxh.}
proc expandAllChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ExpandAllChildren", header: wxh.}
proc expandAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "ExpandAll", 
    header: wxh.}
proc collapse*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Collapse", header: wxh.}
proc collapseAllChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "CollapseAllChildren", header: wxh.}
proc collapseAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "CollapseAll", 
    header: wxh.}
proc collapseAndReset*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "CollapseAndReset", header: wxh.}
proc toggle*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Toggle", header: wxh.}
proc unselect*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "Unselect", 
    header: wxh.}
proc unselectAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "UnselectAll", 
    header: wxh.}
proc selectItem*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                 select: bool = true) {.cdecl, importcpp: "SelectItem", 
                                        header: wxh.}
proc selectChildren*(this: var WxTreeCtrlBase; parent: WxTreeItemId) {.cdecl, 
    importcpp: "SelectChildren", header: wxh.}
proc unselectItem*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "UnselectItem", header: wxh.}
proc toggleItemSelection*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ToggleItemSelection", header: wxh.}
proc ensureVisible*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc scrollTo*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ScrollTo", header: wxh.}
proc editLabel*(this: var WxTreeCtrlBase; item: WxTreeItemId): ptr WxTextCtrl {.
    cdecl, importcpp: "EditLabel", header: wxh.}
proc getEditControl*(this: WxTreeCtrlBase): ptr WxTextCtrl {.noSideEffect, 
    cdecl, importcpp: "GetEditControl", header: wxh.}
proc endEditLabel*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                   discardChanges: bool = false) {.cdecl, 
    importcpp: "EndEditLabel", header: wxh.}
proc enableBellOnNoMatch*(this: var WxTreeCtrlBase; on: bool = true) {.cdecl, 
    importcpp: "EnableBellOnNoMatch", header: wxh.}
proc onCompareItems*(this: var WxTreeCtrlBase; item1: WxTreeItemId; 
                     item2: WxTreeItemId): cint {.cdecl, 
    importcpp: "OnCompareItems", header: wxh.}
proc sortChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "SortChildren", header: wxh.}
proc hitTest*(this: WxTreeCtrlBase; point: WxPoint): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxTreeCtrlBase; point: WxPoint; flags: var cint): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc getBoundingRect*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                      rect: var WxRect; textOnly: bool = false): bool {.
    noSideEffect, cdecl, importcpp: "GetBoundingRect", header: wxh.}
proc shouldInheritColours*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc setQuickBestSize*(this: var WxTreeCtrlBase; q: bool) {.cdecl, 
    importcpp: "SetQuickBestSize", header: wxh.}
proc getQuickBestSize*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetQuickBestSize", header: wxh.}