


discard "forward decl of wxImageList"

type 
  WxTreeItemId* {.importcpp: "wxTreeItemId", header: "<wx/wx.h>".} = object 
  

proc constructwxTreeItemId*(): WxTreeItemId {.cdecl, constructor, 
    importcpp: "wxTreeItemId(@)", header: "<wx/wx.h>".}
proc constructwxTreeItemId*(pItem: pointer): WxTreeItemId {.cdecl, constructor, 
    importcpp: "wxTreeItemId(@)", header: "<wx/wx.h>".}

type 
  WxTreeItemData* {.importcpp: "wxTreeItemData", header: "<wx/wx.h>".} = object of WxClientData
  

proc constructwxTreeItemData*(): WxTreeItemData {.cdecl, constructor, 
    importcpp: "wxTreeItemData(@)", header: "<wx/wx.h>".}
proc getId*(this: WxTreeItemData): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetId", header: "<wx/wx.h>".}
proc setId*(this: var WxTreeItemData; id: WxTreeItemId) {.cdecl, 
    importcpp: "SetId", header: "<wx/wx.h>".}
type 
  WxTreeItemIdValue* = pointer


type 
  WxArrayTreeItemIds* {.importcpp: "wxArrayTreeItemIds", header: "<wx/wx.h>".} = object 
  

proc add*(this: var WxArrayTreeItemIds; id: WxTreeItemId) {.cdecl, 
    importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxArrayTreeItemIds; id: WxTreeItemId; pos: csize) {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc item*(this: WxArrayTreeItemIds; i: csize): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "Item", header: "<wx/wx.h>".}
proc `[]`*(this: WxArrayTreeItemIds; i: csize): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}

type 
  WxTreeItemIcon* {.size: sizeof(cint), 
                    importcpp: "wxImageList::wxTreeItemIcon", 
                    header: "<wx/wx.h>".} = enum 
    wxTreeItemIconNormal, wxTreeItemIconSelected, wxTreeItemIconExpanded, 
    wxTreeItemIconSelectedExpanded, wxTreeItemIconMax



var wxTREE_ITEMSTATE_NONE* {.importcpp: "wxTREE_ITEMSTATE_NONE", 
                             header: "<wx/wx.h>".}: cint


var wxTREE_ITEMSTATE_NEXT* {.importcpp: "wxTREE_ITEMSTATE_NEXT", 
                             header: "<wx/wx.h>".}: cint


var wxTREE_ITEMSTATE_PREV* {.importcpp: "wxTREE_ITEMSTATE_PREV", 
                             header: "<wx/wx.h>".}: cint


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


var wxTREE_HITTEST_ABOVE* {.importcpp: "wxTREE_HITTEST_ABOVE", 
                            header: "<wx/wx.h>".}: cint

var wxTREE_HITTEST_BELOW* {.importcpp: "wxTREE_HITTEST_BELOW", 
                            header: "<wx/wx.h>".}: cint

var wxTREE_HITTEST_NOWHERE* {.importcpp: "wxTREE_HITTEST_NOWHERE", 
                              header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMBUTTON* {.importcpp: "wxTREE_HITTEST_ONITEMBUTTON", 
                                   header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMICON* {.importcpp: "wxTREE_HITTEST_ONITEMICON", 
                                 header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMINDENT* {.importcpp: "wxTREE_HITTEST_ONITEMINDENT", 
                                   header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMLABEL* {.importcpp: "wxTREE_HITTEST_ONITEMLABEL", 
                                  header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMRIGHT* {.importcpp: "wxTREE_HITTEST_ONITEMRIGHT", 
                                  header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMSTATEICON* {.importcpp: "wxTREE_HITTEST_ONITEMSTATEICON", 
                                      header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_TOLEFT* {.importcpp: "wxTREE_HITTEST_TOLEFT", 
                             header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_TORIGHT* {.importcpp: "wxTREE_HITTEST_TORIGHT", 
                              header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMUPPERPART* {.importcpp: "wxTREE_HITTEST_ONITEMUPPERPART", 
                                      header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEMLOWERPART* {.importcpp: "wxTREE_HITTEST_ONITEMLOWERPART", 
                                      header: "<wx/wx.h>".}: cint


var wxTREE_HITTEST_ONITEM* {.importcpp: "wxTREE_HITTEST_ONITEM", 
                             header: "<wx/wx.h>".}: cint


type 
  WxTreeItemAttr* {.importcpp: "wxTreeItemAttr", header: "<wx/wx.h>".} = object 
  

proc constructwxTreeItemAttr*(): WxTreeItemAttr {.cdecl, constructor, 
    importcpp: "wxTreeItemAttr(@)", header: "<wx/wx.h>".}
proc constructwxTreeItemAttr*(colText: WxColour; colBack: WxColour; font: WxFont): WxTreeItemAttr {.
    cdecl, constructor, importcpp: "wxTreeItemAttr(@)", header: "<wx/wx.h>".}
proc setTextColour*(this: var WxTreeItemAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxTreeItemAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc setFont*(this: var WxTreeItemAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc hasTextColour*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: "<wx/wx.h>".}
proc hasBackgroundColour*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: "<wx/wx.h>".}
proc hasFont*(this: WxTreeItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: "<wx/wx.h>".}
proc getTextColour*(this: WxTreeItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "<wx/wx.h>".}
proc getBackgroundColour*(this: WxTreeItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: "<wx/wx.h>".}
proc getFont*(this: WxTreeItemAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}

discard "forward decl of wxTreeCtrlBase"
type 
  WxTreeEvent* {.importcpp: "wxTreeEvent", header: "<wx/wx.h>".} = object of WxNotifyEvent
  

proc constructwxTreeEvent*(commandType: WxEventType = wxEVT_NULL; id: cint = 0): WxTreeEvent {.
    cdecl, constructor, importcpp: "wxTreeEvent(@)", header: "<wx/wx.h>".}
proc constructwxTreeEvent*(commandType: WxEventType; tree: ptr WxTreeCtrlBase; 
                           item: WxTreeItemId = constructWxTreeItemId()): WxTreeEvent {.
    cdecl, constructor, importcpp: "wxTreeEvent(@)", header: "<wx/wx.h>".}
proc constructwxTreeEvent*(event: WxTreeEvent): WxTreeEvent {.cdecl, 
    constructor, importcpp: "wxTreeEvent(@)", header: "<wx/wx.h>".}
proc clone*(this: WxTreeEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
proc getItem*(this: WxTreeEvent): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: "<wx/wx.h>".}
proc setItem*(this: var WxTreeEvent; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetItem", header: "<wx/wx.h>".}
proc getOldItem*(this: WxTreeEvent): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetOldItem", header: "<wx/wx.h>".}
proc setOldItem*(this: var WxTreeEvent; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetOldItem", header: "<wx/wx.h>".}
proc getPoint*(this: WxTreeEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPoint", header: "<wx/wx.h>".}
proc setPoint*(this: var WxTreeEvent; pt: WxPoint) {.cdecl, 
    importcpp: "SetPoint", header: "<wx/wx.h>".}
proc getKeyEvent*(this: WxTreeEvent): WxKeyEvent {.noSideEffect, cdecl, 
    importcpp: "GetKeyEvent", header: "<wx/wx.h>".}
proc getKeyCode*(this: WxTreeEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetKeyCode", header: "<wx/wx.h>".}
proc setKeyEvent*(this: var WxTreeEvent; evt: WxKeyEvent) {.cdecl, 
    importcpp: "SetKeyEvent", header: "<wx/wx.h>".}
proc getLabel*(this: WxTreeEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "<wx/wx.h>".}
proc setLabel*(this: var WxTreeEvent; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc isEditCancelled*(this: WxTreeEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: "<wx/wx.h>".}
proc setEditCanceled*(this: var WxTreeEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: "<wx/wx.h>".}
proc setToolTip*(this: var WxTreeEvent; toolTip: WxString) {.cdecl, 
    importcpp: "SetToolTip", header: "<wx/wx.h>".}
proc getToolTip*(this: var WxTreeEvent): WxString {.cdecl, 
    importcpp: "GetToolTip", header: "<wx/wx.h>".}
type 
  WxTreeEventFunction* = proc (a2: var WxTreeEvent) {.cdecl.}


var wxEVT_TREE_BEGIN_DRAG* {.importcpp: "wxEVT_TREE_BEGIN_DRAG", 
                             header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_BEGIN_RDRAG* {.importcpp: "wxEVT_TREE_BEGIN_RDRAG", 
                              header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_BEGIN_LABEL_EDIT* {.importcpp: "wxEVT_TREE_BEGIN_LABEL_EDIT", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_END_LABEL_EDIT* {.importcpp: "wxEVT_TREE_END_LABEL_EDIT", 
                                 header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_DELETE_ITEM* {.importcpp: "wxEVT_TREE_DELETE_ITEM", 
                              header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_GET_INFO* {.importcpp: "wxEVT_TREE_GET_INFO", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_SET_INFO* {.importcpp: "wxEVT_TREE_SET_INFO", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_EXPANDED* {.importcpp: "wxEVT_TREE_ITEM_EXPANDED", 
                                header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_EXPANDING* {.importcpp: "wxEVT_TREE_ITEM_EXPANDING", 
                                 header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_COLLAPSED* {.importcpp: "wxEVT_TREE_ITEM_COLLAPSED", 
                                 header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_COLLAPSING* {.importcpp: "wxEVT_TREE_ITEM_COLLAPSING", 
                                  header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_SEL_CHANGED* {.importcpp: "wxEVT_TREE_SEL_CHANGED", 
                              header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_SEL_CHANGING* {.importcpp: "wxEVT_TREE_SEL_CHANGING", 
                               header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]

var wxEVT_TREE_KEY_DOWN* {.importcpp: "wxEVT_TREE_KEY_DOWN", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_ACTIVATED* {.importcpp: "wxEVT_TREE_ITEM_ACTIVATED", 
                                 header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_RIGHT_CLICK* {.importcpp: "wxEVT_TREE_ITEM_RIGHT_CLICK", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_MIDDLE_CLICK* {.importcpp: "wxEVT_TREE_ITEM_MIDDLE_CLICK", 
                                    header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_END_DRAG* {.importcpp: "wxEVT_TREE_END_DRAG", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_STATE_IMAGE_CLICK* {.importcpp: "wxEVT_TREE_STATE_IMAGE_CLICK", 
                                    header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_GETTOOLTIP* {.importcpp: "wxEVT_TREE_ITEM_GETTOOLTIP", 
                                  header: "<wx/wx.h>".}: WxEventTypeTag[
    WxTreeEvent]

var wxEVT_TREE_ITEM_MENU* {.importcpp: "wxEVT_TREE_ITEM_MENU", 
                            header: "<wx/wx.h>".}: WxEventTypeTag[WxTreeEvent]















type 
  WxTreeCtrlBase* {.importcpp: "wxTreeCtrlBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxTreeCtrlBase*(): WxTreeCtrlBase {.cdecl, constructor, 
    importcpp: "wxTreeCtrlBase(@)", header: "<wx/wx.h>".}
proc destroywxTreeCtrlBase*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "#.~wxTreeCtrlBase()", header: "<wx/wx.h>".}
proc getCount*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc getIndent*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetIndent", header: "<wx/wx.h>".}
proc setIndent*(this: var WxTreeCtrlBase; indent: cuint) {.cdecl, 
    importcpp: "SetIndent", header: "<wx/wx.h>".}
proc getSpacing*(this: WxTreeCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetSpacing", header: "<wx/wx.h>".}
proc setSpacing*(this: var WxTreeCtrlBase; spacing: cuint) {.cdecl, 
    importcpp: "SetSpacing", header: "<wx/wx.h>".}
proc getImageList*(this: WxTreeCtrlBase): ptr WxImageList {.noSideEffect, cdecl, 
    importcpp: "GetImageList", header: "<wx/wx.h>".}
proc getStateImageList*(this: WxTreeCtrlBase): ptr WxImageList {.noSideEffect, 
    cdecl, importcpp: "GetStateImageList", header: "<wx/wx.h>".}
proc setImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "SetImageList", header: "<wx/wx.h>".}
proc setStateImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "SetStateImageList", header: "<wx/wx.h>".}
proc assignImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "AssignImageList", header: "<wx/wx.h>".}
proc assignStateImageList*(this: var WxTreeCtrlBase; imageList: ptr WxImageList) {.
    cdecl, importcpp: "AssignStateImageList", header: "<wx/wx.h>".}
proc getItemText*(this: WxTreeCtrlBase; item: WxTreeItemId): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: "<wx/wx.h>".}
proc getItemImage*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                   which: WxTreeItemIcon = wxTreeItemIconNormal): cint {.
    noSideEffect, cdecl, importcpp: "GetItemImage", header: "<wx/wx.h>".}
proc getItemData*(this: WxTreeCtrlBase; item: WxTreeItemId): ptr WxTreeItemData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: "<wx/wx.h>".}
proc getItemTextColour*(this: WxTreeCtrlBase; item: WxTreeItemId): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemTextColour", header: "<wx/wx.h>".}
proc getItemBackgroundColour*(this: WxTreeCtrlBase; item: WxTreeItemId): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemBackgroundColour", 
    header: "<wx/wx.h>".}
proc getItemFont*(this: WxTreeCtrlBase; item: WxTreeItemId): WxFont {.
    noSideEffect, cdecl, importcpp: "GetItemFont", header: "<wx/wx.h>".}
proc getItemState*(this: WxTreeCtrlBase; item: WxTreeItemId): cint {.
    noSideEffect, cdecl, importcpp: "GetItemState", header: "<wx/wx.h>".}
proc setItemText*(this: var WxTreeCtrlBase; item: WxTreeItemId; text: WxString) {.
    cdecl, importcpp: "SetItemText", header: "<wx/wx.h>".}
proc setItemImage*(this: var WxTreeCtrlBase; item: WxTreeItemId; image: cint; 
                   which: WxTreeItemIcon = wxTreeItemIconNormal) {.cdecl, 
    importcpp: "SetItemImage", header: "<wx/wx.h>".}
proc setItemData*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                  data: ptr WxTreeItemData) {.cdecl, importcpp: "SetItemData", 
    header: "<wx/wx.h>".}
proc setItemHasChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                         has: bool = true) {.cdecl, 
    importcpp: "SetItemHasChildren", header: "<wx/wx.h>".}
proc setItemBold*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                  bold: bool = true) {.cdecl, importcpp: "SetItemBold", 
                                       header: "<wx/wx.h>".}
proc setItemDropHighlight*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                           highlight: bool = true) {.cdecl, 
    importcpp: "SetItemDropHighlight", header: "<wx/wx.h>".}
proc setItemTextColour*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                        col: WxColour) {.cdecl, importcpp: "SetItemTextColour", 
    header: "<wx/wx.h>".}
proc setItemBackgroundColour*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                              col: WxColour) {.cdecl, 
    importcpp: "SetItemBackgroundColour", header: "<wx/wx.h>".}
proc setItemFont*(this: var WxTreeCtrlBase; item: WxTreeItemId; font: WxFont) {.
    cdecl, importcpp: "SetItemFont", header: "<wx/wx.h>".}
proc setItemState*(this: var WxTreeCtrlBase; item: WxTreeItemId; state: cint) {.
    cdecl, importcpp: "SetItemState", header: "<wx/wx.h>".}
proc isVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsVisible", header: "<wx/wx.h>".}
proc itemHasChildren*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.
    noSideEffect, cdecl, importcpp: "ItemHasChildren", header: "<wx/wx.h>".}
proc hasChildren*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.
    noSideEffect, cdecl, importcpp: "HasChildren", header: "<wx/wx.h>".}
proc isExpanded*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsExpanded", header: "<wx/wx.h>".}
proc isSelected*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsSelected", header: "<wx/wx.h>".}
proc isBold*(this: WxTreeCtrlBase; item: WxTreeItemId): bool {.noSideEffect, 
    cdecl, importcpp: "IsBold", header: "<wx/wx.h>".}
proc isEmpty*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc getChildrenCount*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                       recursively: bool = true): csize {.noSideEffect, cdecl, 
    importcpp: "GetChildrenCount", header: "<wx/wx.h>".}
proc getRootItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetRootItem", header: "<wx/wx.h>".}
proc getSelection*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getSelections*(this: WxTreeCtrlBase; selections: var WxArrayTreeItemIds): csize {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: "<wx/wx.h>".}
proc getFocusedItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, cdecl, 
    importcpp: "GetFocusedItem", header: "<wx/wx.h>".}
proc clearFocusedItem*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "ClearFocusedItem", header: "<wx/wx.h>".}
proc setFocusedItem*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "SetFocusedItem", header: "<wx/wx.h>".}
proc getItemParent*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetItemParent", header: "<wx/wx.h>".}
proc getFirstChild*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                    cookie: var WxTreeItemIdValue): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetFirstChild", header: "<wx/wx.h>".}
proc getNextChild*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                   cookie: var WxTreeItemIdValue): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetNextChild", header: "<wx/wx.h>".}
proc getLastChild*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetLastChild", header: "<wx/wx.h>".}
proc getNextSibling*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetNextSibling", header: "<wx/wx.h>".}
proc getPrevSibling*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetPrevSibling", header: "<wx/wx.h>".}
proc getFirstVisibleItem*(this: WxTreeCtrlBase): WxTreeItemId {.noSideEffect, 
    cdecl, importcpp: "GetFirstVisibleItem", header: "<wx/wx.h>".}
proc getNextVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetNextVisible", header: "<wx/wx.h>".}
proc getPrevVisible*(this: WxTreeCtrlBase; item: WxTreeItemId): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "GetPrevVisible", header: "<wx/wx.h>".}
proc addRoot*(this: var WxTreeCtrlBase; text: WxString; image: cint = - 1; 
              selImage: cint = - 1; data: ptr WxTreeItemData = nil): WxTreeItemId {.
    cdecl, importcpp: "AddRoot", header: "<wx/wx.h>".}
proc prependItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; 
                  text: WxString; image: cint = - 1; selImage: cint = - 1; 
                  data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "PrependItem", header: "<wx/wx.h>".}
proc insertItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; 
                 idPrevious: WxTreeItemId; text: WxString; image: cint = - 1; 
                 selImage: cint = - 1; data: ptr WxTreeItemData = nil): WxTreeItemId {.
    cdecl, importcpp: "InsertItem", header: "<wx/wx.h>".}
proc insertItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; pos: csize; 
                 text: WxString; image: cint = - 1; selImage: cint = - 1; 
                 data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "InsertItem", header: "<wx/wx.h>".}
proc appendItem*(this: var WxTreeCtrlBase; parent: WxTreeItemId; text: WxString; 
                 image: cint = - 1; selImage: cint = - 1; 
                 data: ptr WxTreeItemData = nil): WxTreeItemId {.cdecl, 
    importcpp: "AppendItem", header: "<wx/wx.h>".}
proc delete*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Delete", header: "<wx/wx.h>".}
proc deleteChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "DeleteChildren", header: "<wx/wx.h>".}
proc deleteAllItems*(this: var WxTreeCtrlBase) {.cdecl, 
    importcpp: "DeleteAllItems", header: "<wx/wx.h>".}
proc expand*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Expand", header: "<wx/wx.h>".}
proc expandAllChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ExpandAllChildren", header: "<wx/wx.h>".}
proc expandAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "ExpandAll", 
    header: "<wx/wx.h>".}
proc collapse*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Collapse", header: "<wx/wx.h>".}
proc collapseAllChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "CollapseAllChildren", header: "<wx/wx.h>".}
proc collapseAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "CollapseAll", 
    header: "<wx/wx.h>".}
proc collapseAndReset*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "CollapseAndReset", header: "<wx/wx.h>".}
proc toggle*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "Toggle", header: "<wx/wx.h>".}
proc unselect*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "Unselect", 
    header: "<wx/wx.h>".}
proc unselectAll*(this: var WxTreeCtrlBase) {.cdecl, importcpp: "UnselectAll", 
    header: "<wx/wx.h>".}
proc selectItem*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                 select: bool = true) {.cdecl, importcpp: "SelectItem", 
                                        header: "<wx/wx.h>".}
proc selectChildren*(this: var WxTreeCtrlBase; parent: WxTreeItemId) {.cdecl, 
    importcpp: "SelectChildren", header: "<wx/wx.h>".}
proc unselectItem*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "UnselectItem", header: "<wx/wx.h>".}
proc toggleItemSelection*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ToggleItemSelection", header: "<wx/wx.h>".}
proc ensureVisible*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "EnsureVisible", header: "<wx/wx.h>".}
proc scrollTo*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "ScrollTo", header: "<wx/wx.h>".}
proc editLabel*(this: var WxTreeCtrlBase; item: WxTreeItemId): ptr WxTextCtrl {.
    cdecl, importcpp: "EditLabel", header: "<wx/wx.h>".}
proc getEditControl*(this: WxTreeCtrlBase): ptr WxTextCtrl {.noSideEffect, 
    cdecl, importcpp: "GetEditControl", header: "<wx/wx.h>".}
proc endEditLabel*(this: var WxTreeCtrlBase; item: WxTreeItemId; 
                   discardChanges: bool = false) {.cdecl, 
    importcpp: "EndEditLabel", header: "<wx/wx.h>".}
proc enableBellOnNoMatch*(this: var WxTreeCtrlBase; on: bool = true) {.cdecl, 
    importcpp: "EnableBellOnNoMatch", header: "<wx/wx.h>".}
proc onCompareItems*(this: var WxTreeCtrlBase; item1: WxTreeItemId; 
                     item2: WxTreeItemId): cint {.cdecl, 
    importcpp: "OnCompareItems", header: "<wx/wx.h>".}
proc sortChildren*(this: var WxTreeCtrlBase; item: WxTreeItemId) {.cdecl, 
    importcpp: "SortChildren", header: "<wx/wx.h>".}
proc hitTest*(this: WxTreeCtrlBase; point: WxPoint): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc hitTest*(this: WxTreeCtrlBase; point: WxPoint; flags: var cint): WxTreeItemId {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc getBoundingRect*(this: WxTreeCtrlBase; item: WxTreeItemId; 
                      rect: var WxRect; textOnly: bool = false): bool {.
    noSideEffect, cdecl, importcpp: "GetBoundingRect", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc setQuickBestSize*(this: var WxTreeCtrlBase; q: bool) {.cdecl, 
    importcpp: "SetQuickBestSize", header: "<wx/wx.h>".}
proc getQuickBestSize*(this: WxTreeCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetQuickBestSize", header: "<wx/wx.h>".}