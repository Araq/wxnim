


type 
  WxListCtrlCompare* = proc (item1: clong; item2: clong; sortData: clong): cint {.
      cdecl.}


const 
  wxLC_VRULES* = 0x00000001
  wxLC_HRULES* = 0x00000002
  wxLC_ICON* = 0x00000004
  wxLC_SMALL_ICON* = 0x00000008
  wxLC_LIST* = 0x00000010
  wxLC_REPORT* = 0x00000020
  wxLC_ALIGN_TOP* = 0x00000040
  wxLC_ALIGN_LEFT* = 0x00000080
  wxLC_AUTOARRANGE* = 0x00000100
  wxLC_VIRTUAL* = 0x00000200
  wxLC_EDIT_LABELS* = 0x00000400
  wxLC_NO_HEADER* = 0x00000800
  wxLC_NO_SORT_HEADER* = 0x00001000
  wxLC_SINGLE_SEL* = 0x00002000
  wxLC_SORT_ASCENDING* = 0x00004000
  wxLC_SORT_DESCENDING* = 0x00008000
  wxLC_MASK_TYPE* = (wxLC_ICON or wxLC_SMALL_ICON or wxLC_LIST or wxLC_REPORT)
  wxLC_MASK_ALIGN* = (wxLC_ALIGN_TOP or wxLC_ALIGN_LEFT)
  wxLC_MASK_SORT* = (wxLC_SORT_ASCENDING or wxLC_SORT_DESCENDING)


const 
  wxLC_USER_TEXT* = wxLC_VIRTUAL


const 
  wxLIST_MASK_STATE* = 0x00000001
  wxLIST_MASK_TEXT* = 0x00000002
  wxLIST_MASK_IMAGE* = 0x00000004
  wxLIST_MASK_DATA* = 0x00000008
  wxLIST_SET_ITEM* = 0x00000010
  wxLIST_MASK_WIDTH* = 0x00000020
  wxLIST_MASK_FORMAT* = 0x00000040


const 
  wxLIST_STATE_DONTCARE* = 0x00000000
  wxLIST_STATE_DROPHILITED* = 0x00000001
  wxLIST_STATE_FOCUSED* = 0x00000002
  wxLIST_STATE_SELECTED* = 0x00000004
  wxLIST_STATE_CUT* = 0x00000008
  wxLIST_STATE_DISABLED* = 0x00000010
  wxLIST_STATE_FILTERED* = 0x00000020
  wxLIST_STATE_INUSE* = 0x00000040
  wxLIST_STATE_PICKED* = 0x00000080
  wxLIST_STATE_SOURCE* = 0x00000100


const 
  wxLIST_HITTEST_ABOVE* = 0x00000001
  wxLIST_HITTEST_BELOW* = 0x00000002
  wxLIST_HITTEST_NOWHERE* = 0x00000004
  wxLIST_HITTEST_ONITEMICON* = 0x00000020
  wxLIST_HITTEST_ONITEMLABEL* = 0x00000080
  wxLIST_HITTEST_ONITEMRIGHT* = 0x00000100
  wxLIST_HITTEST_ONITEMSTATEICON* = 0x00000200
  wxLIST_HITTEST_TOLEFT* = 0x00000400
  wxLIST_HITTEST_TORIGHT* = 0x00000800
  wxLIST_HITTEST_ONITEM* = (wxLIST_HITTEST_ONITEMICON or
      wxLIST_HITTEST_ONITEMLABEL or wxLIST_HITTEST_ONITEMSTATEICON)


const 
  wxLIST_GETSUBITEMRECT_WHOLEITEM* = - 1


const 
  wxLIST_NEXT_ABOVE* = 0
  wxLIST_NEXT_ALL* = 1
  wxLIST_NEXT_BELOW* = 2
  wxLIST_NEXT_LEFT* = 3
  wxLIST_NEXT_RIGHT* = 4


const 
  wxLIST_ALIGN_DEFAULT* = 0
  wxLIST_ALIGN_LEFT* = 1
  wxLIST_ALIGN_TOP* = 2
  wxLIST_ALIGN_SNAP_TO_GRID* = 3


type 
  WxListColumnFormat* {.size: sizeof(cint), importcpp: "wxListColumnFormat", 
                        header: wxh.} = enum 
    wxLIST_FORMAT_LEFT, wxLIST_FORMAT_RIGHT, wxLIST_FORMAT_CENTER



const 
  wxLIST_AUTOSIZE* = - 1
  wxLIST_AUTOSIZE_USEHEADER* = - 2


const 
  wxLIST_RECT_BOUNDS* = 0
  wxLIST_RECT_ICON* = 1
  wxLIST_RECT_LABEL* = 2


const 
  wxLIST_FIND_UP* = 0
  wxLIST_FIND_DOWN* = 1
  wxLIST_FIND_LEFT* = 2
  wxLIST_FIND_RIGHT* = 3

type 
  WxImageList* {.importcpp: "wxImageList", header: wxh.} = object of WxList
  


type 
  WxListItemAttr* {.importcpp: "wxListItemAttr", header: wxh.} = object 
  

proc constructwxListItemAttr*(): WxListItemAttr {.cdecl, constructor, 
    importcpp: "wxListItemAttr(@)", header: wxh.}
proc constructwxListItemAttr*(colText: WxColour; colBack: WxColour; font: WxFont): WxListItemAttr {.
    cdecl, constructor, importcpp: "wxListItemAttr(@)", header: wxh.}
proc setTextColour*(this: var WxListItemAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxListItemAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setFont*(this: var WxListItemAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc hasTextColour*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: wxh.}
proc hasBackgroundColour*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: wxh.}
proc hasFont*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: wxh.}
proc getTextColour*(this: WxListItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc getBackgroundColour*(this: WxListItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: wxh.}
proc getFont*(this: WxListItemAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc assignFrom*(this: var WxListItemAttr; source: WxListItemAttr) {.cdecl, 
    importcpp: "AssignFrom", header: wxh.}

type 
  WxListItem* {.importcpp: "wxListItem", header: wxh.} = object of WxObject
    mMask* {.importc: "m_mask".}: clong
    mItemId* {.importc: "m_itemId".}: clong
    mCol* {.importc: "m_col".}: cint
    mState* {.importc: "m_state".}: clong
    mStateMask* {.importc: "m_stateMask".}: clong
    mText* {.importc: "m_text".}: WxString
    mImage* {.importc: "m_image".}: cint
    mData* {.importc: "m_data".}: culong
    mFormat* {.importc: "m_format".}: cint
    mWidth* {.importc: "m_width".}: cint


proc constructwxListItem*(): WxListItem {.cdecl, constructor, 
    importcpp: "wxListItem(@)", header: wxh.}
proc constructwxListItem*(item: WxListItem): WxListItem {.cdecl, constructor, 
    importcpp: "wxListItem(@)", header: wxh.}
proc destroywxListItem*(this: var WxListItem) {.cdecl, 
    importcpp: "#.~wxListItem()", header: wxh.}
proc clear*(this: var WxListItem) {.cdecl, importcpp: "Clear", header: wxh.}
proc clearAttributes*(this: var WxListItem) {.cdecl, 
    importcpp: "ClearAttributes", header: wxh.}
proc setMask*(this: var WxListItem; mask: clong) {.cdecl, importcpp: "SetMask", 
    header: wxh.}
proc setId*(this: var WxListItem; id: clong) {.cdecl, importcpp: "SetId", 
    header: wxh.}
proc setColumn*(this: var WxListItem; col: cint) {.cdecl, 
    importcpp: "SetColumn", header: wxh.}
proc setState*(this: var WxListItem; state: clong) {.cdecl, 
    importcpp: "SetState", header: wxh.}
proc setStateMask*(this: var WxListItem; stateMask: clong) {.cdecl, 
    importcpp: "SetStateMask", header: wxh.}
proc setText*(this: var WxListItem; text: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc setImage*(this: var WxListItem; image: cint) {.cdecl, 
    importcpp: "SetImage", header: wxh.}
proc setData*(this: var WxListItem; data: clong) {.cdecl, importcpp: "SetData", 
    header: wxh.}
proc setData*(this: var WxListItem; data: pointer) {.cdecl, 
    importcpp: "SetData", header: wxh.}
proc setWidth*(this: var WxListItem; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc setAlign*(this: var WxListItem; align: WxListColumnFormat) {.cdecl, 
    importcpp: "SetAlign", header: wxh.}
proc setTextColour*(this: var WxListItem; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxListItem; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: wxh.}
proc setFont*(this: var WxListItem; font: WxFont) {.cdecl, importcpp: "SetFont", 
    header: wxh.}
proc getMask*(this: WxListItem): clong {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: wxh.}
proc getId*(this: WxListItem): clong {.noSideEffect, cdecl, importcpp: "GetId", 
                                       header: wxh.}
proc getColumn*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: wxh.}
proc getState*(this: WxListItem): clong {.noSideEffect, cdecl, 
    importcpp: "GetState", header: wxh.}
proc getText*(this: WxListItem): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc getImage*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetImage", header: wxh.}
proc getData*(this: WxListItem): culong {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc getWidth*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getAlign*(this: WxListItem): WxListColumnFormat {.noSideEffect, cdecl, 
    importcpp: "GetAlign", header: wxh.}
proc getAttributes*(this: WxListItem): ptr WxListItemAttr {.noSideEffect, cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc hasAttributes*(this: WxListItem): bool {.noSideEffect, cdecl, 
    importcpp: "HasAttributes", header: wxh.}
proc getTextColour*(this: WxListItem): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc getBackgroundColour*(this: WxListItem): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: wxh.}
proc getFont*(this: WxListItem): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}

type 
  WxListCtrlBase* {.importcpp: "wxListCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxListCtrlBase*(): WxListCtrlBase {.cdecl, constructor, 
    importcpp: "wxListCtrlBase(@)", header: wxh.}
proc assignImageList*(this: var WxListCtrlBase; imageList: ptr WxImageList; 
                      which: cint) {.cdecl, importcpp: "AssignImageList", 
                                     header: wxh.}
proc setImageList*(this: var WxListCtrlBase; imageList: ptr WxImageList; 
                   which: cint) {.cdecl, importcpp: "SetImageList", header: wxh.}
proc getImageList*(this: WxListCtrlBase; which: cint): ptr WxImageList {.
    noSideEffect, cdecl, importcpp: "GetImageList", header: wxh.}
proc appendColumn*(this: var WxListCtrlBase; heading: WxString; 
                   format: WxListColumnFormat = wxLIST_FORMAT_LEFT; 
                   width: cint = - 1): clong {.cdecl, importcpp: "AppendColumn", 
    header: wxh.}
proc insertColumn*(this: var WxListCtrlBase; col: clong; info: WxListItem): clong {.
    cdecl, importcpp: "InsertColumn", header: wxh.}
proc insertColumn*(this: var WxListCtrlBase; col: clong; heading: WxString; 
                   format: WxListColumnFormat = wxLIST_FORMAT_LEFT; 
                   width: cint = wxLIST_AUTOSIZE): clong {.cdecl, 
    importcpp: "InsertColumn", header: wxh.}
proc deleteColumn*(this: var WxListCtrlBase; col: cint): bool {.cdecl, 
    importcpp: "DeleteColumn", header: wxh.}
proc deleteAllColumns*(this: var WxListCtrlBase): bool {.cdecl, 
    importcpp: "DeleteAllColumns", header: wxh.}
proc getColumnCount*(this: WxListCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumn*(this: WxListCtrlBase; col: cint; item: var WxListItem): bool {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: wxh.}
proc setColumn*(this: var WxListCtrlBase; col: cint; item: WxListItem): bool {.
    discardable, cdecl, importcpp: "SetColumn", header: wxh.}
proc getColumnWidth*(this: WxListCtrlBase; col: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetColumnWidth", header: wxh.}
proc setColumnWidth*(this: var WxListCtrlBase; col: cint; width: cint): bool {.
    discardable, cdecl, importcpp: "SetColumnWidth", header: wxh.}
proc onGetItemAttr*(this: WxListCtrlBase; item: clong): ptr WxListItemAttr {.
    noSideEffect, cdecl, importcpp: "OnGetItemAttr", header: wxh.}
proc inReportView*(this: WxListCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "InReportView", header: wxh.}
proc isVirtual*(this: WxListCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVirtual", header: wxh.}
proc enableBellOnNoMatch*(this: var WxListCtrlBase; on: bool = true) {.cdecl, 
    importcpp: "EnableBellOnNoMatch", header: wxh.}
proc enableAlternateRowColours*(this: var WxListCtrlBase; enable: bool = true) {.
    cdecl, importcpp: "EnableAlternateRowColours", header: wxh.}
proc setAlternateRowColour*(this: var WxListCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetAlternateRowColour", header: wxh.}

type 
  WxListEvent* {.importcpp: "wxListEvent", header: wxh.} = object of WxNotifyEvent
    mCode* {.importc: "m_code".}: cint
    mOldItemIndex* {.importc: "m_oldItemIndex".}: clong
    mItemIndex* {.importc: "m_itemIndex".}: clong
    mCol* {.importc: "m_col".}: cint
    mPointDrag* {.importc: "m_pointDrag".}: WxPoint
    mItem* {.importc: "m_item".}: WxListItem


proc constructwxListEvent*(commandType: WxEventType = wxEVT_NULL; 
                           winid: cint = 0): WxListEvent {.cdecl, constructor, 
    importcpp: "wxListEvent(@)", header: wxh.}
proc constructwxListEvent*(event: WxListEvent): WxListEvent {.cdecl, 
    constructor, importcpp: "wxListEvent(@)", header: wxh.}
proc getKeyCode*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetKeyCode", header: wxh.}
proc getIndex*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetIndex", header: wxh.}
proc getColumn*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: wxh.}
proc getPoint*(this: WxListEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPoint", header: wxh.}
proc getLabel*(this: WxListEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc getText*(this: WxListEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc getImage*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetImage", header: wxh.}
proc getData*(this: WxListEvent): culong {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc getMask*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: wxh.}
proc getItem*(this: WxListEvent): WxListItem {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: wxh.}
proc getCacheFrom*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetCacheFrom", header: wxh.}
proc getCacheTo*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetCacheTo", header: wxh.}
proc isEditCancelled*(this: WxListEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: wxh.}
proc setEditCanceled*(this: var WxListEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: wxh.}
proc clone*(this: WxListEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

var wxEVT_LIST_BEGIN_DRAG* {.importcpp: "wxEVT_LIST_BEGIN_DRAG", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_BEGIN_RDRAG* {.importcpp: "wxEVT_LIST_BEGIN_RDRAG", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_BEGIN_LABEL_EDIT* {.importcpp: "wxEVT_LIST_BEGIN_LABEL_EDIT", 
                                   header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_END_LABEL_EDIT* {.importcpp: "wxEVT_LIST_END_LABEL_EDIT", 
                                 header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_DELETE_ITEM* {.importcpp: "wxEVT_LIST_DELETE_ITEM", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_DELETE_ALL_ITEMS* {.importcpp: "wxEVT_LIST_DELETE_ALL_ITEMS", 
                                   header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_SELECTED* {.importcpp: "wxEVT_LIST_ITEM_SELECTED", 
                                header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_DESELECTED* {.importcpp: "wxEVT_LIST_ITEM_DESELECTED", 
                                  header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_KEY_DOWN* {.importcpp: "wxEVT_LIST_KEY_DOWN", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_INSERT_ITEM* {.importcpp: "wxEVT_LIST_INSERT_ITEM", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_COL_CLICK* {.importcpp: "wxEVT_LIST_COL_CLICK", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_ITEM_RIGHT_CLICK* {.importcpp: "wxEVT_LIST_ITEM_RIGHT_CLICK", 
                                   header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_MIDDLE_CLICK* {.importcpp: "wxEVT_LIST_ITEM_MIDDLE_CLICK", 
                                    header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_ACTIVATED* {.importcpp: "wxEVT_LIST_ITEM_ACTIVATED", 
                                 header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_CACHE_HINT* {.importcpp: "wxEVT_LIST_CACHE_HINT", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_COL_RIGHT_CLICK* {.importcpp: "wxEVT_LIST_COL_RIGHT_CLICK", 
                                  header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_BEGIN_DRAG* {.importcpp: "wxEVT_LIST_COL_BEGIN_DRAG", 
                                 header: wxh.}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_DRAGGING* {.importcpp: "wxEVT_LIST_COL_DRAGGING", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_COL_END_DRAG* {.importcpp: "wxEVT_LIST_COL_END_DRAG", header: wxh.}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_ITEM_FOCUSED* {.importcpp: "wxEVT_LIST_ITEM_FOCUSED", header: wxh.}: WxEventTypeTag[
    WxListEvent]

type 
  WxListCtrl* {.importcpp: "wxListCtrl", header: wxh.} = object of WxListCtrlBase
  

proc constructwxListCtrl*(): WxListCtrl {.cdecl, constructor, 
    importcpp: "wxListCtrl(@)", header: wxh.}
proc constructwxListCtrl*(parent: ptr WxWindow; 
                          id: WxWindowID = WxWindowID(wxID_ANY); 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxLC_ICON; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("listCtrl")): WxListCtrl {.
    cdecl, constructor, importcpp: "wxListCtrl(@)", header: wxh.}
proc destroywxListCtrl*(this: var WxListCtrl) {.cdecl, 
    importcpp: "#.~wxListCtrl()", header: wxh.}
proc create*(this: var WxListCtrl; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxLC_ICON; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listCtrl")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setForegroundColour*(this: var WxListCtrl; col: WxColour): bool {.
    discardable, cdecl, importcpp: "SetForegroundColour", header: wxh.}
proc setBackgroundColour*(this: var WxListCtrl; col: WxColour): bool {.
    discardable, cdecl, importcpp: "SetBackgroundColour", header: wxh.}
proc getColumn*(this: WxListCtrl; col: cint; item: var WxListItem): bool {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: wxh.}
proc setColumn*(this: var WxListCtrl; col: cint; item: WxListItem): bool {.
    discardable, cdecl, importcpp: "SetColumn", header: wxh.}
proc getColumnWidth*(this: WxListCtrl; col: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnWidth", header: wxh.}
proc setColumnWidth*(this: var WxListCtrl; col: cint; width: cint): bool {.
    discardable, cdecl, importcpp: "SetColumnWidth", header: wxh.}
proc getColumnOrder*(this: WxListCtrl; col: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnOrder", header: wxh.}
proc getColumnIndexFromOrder*(this: WxListCtrl; order: cint): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnIndexFromOrder", header: wxh.}
proc getColumnsOrder*(this: WxListCtrl): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetColumnsOrder", header: wxh.}
proc setColumnsOrder*(this: var WxListCtrl; orders: WxArrayInt): bool {.
    discardable, cdecl, importcpp: "SetColumnsOrder", header: wxh.}
proc getCountPerPage*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetCountPerPage", header: wxh.}
proc getViewRect*(this: WxListCtrl): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetViewRect", header: wxh.}
proc getEditControl*(this: WxListCtrl): ptr WxTextCtrl {.noSideEffect, cdecl, 
    importcpp: "GetEditControl", header: wxh.}
proc getItem*(this: WxListCtrl; info: var WxListItem): bool {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: wxh.}
proc setItem*(this: var WxListCtrl; info: var WxListItem): bool {.discardable, 
    cdecl, importcpp: "SetItem", header: wxh.}
proc setItem*(this: var WxListCtrl; index: clong; col: cint; label: WxString; 
              imageId: cint = - 1): clong {.discardable, cdecl, 
    importcpp: "SetItem", header: wxh.}
proc getItemState*(this: WxListCtrl; item: clong; stateMask: clong): cint {.
    noSideEffect, cdecl, importcpp: "GetItemState", header: wxh.}
proc setItemState*(this: var WxListCtrl; item: clong; state: clong; 
                   stateMask: clong): bool {.discardable, cdecl, 
    importcpp: "SetItemState", header: wxh.}
proc setItemImage*(this: var WxListCtrl; item: clong; image: cint; 
                   selImage: cint = - 1): bool {.discardable, cdecl, 
    importcpp: "SetItemImage", header: wxh.}
proc setItemColumnImage*(this: var WxListCtrl; item: clong; column: clong; 
                         image: cint): bool {.discardable, cdecl, 
    importcpp: "SetItemColumnImage", header: wxh.}
proc getItemText*(this: WxListCtrl; item: clong; col: cint = 0): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: wxh.}
proc setItemText*(this: var WxListCtrl; item: clong; str: WxString) {.cdecl, 
    importcpp: "SetItemText", header: wxh.}
proc getItemData*(this: WxListCtrl; item: clong): culong {.noSideEffect, cdecl, 
    importcpp: "GetItemData", header: wxh.}
proc setItemPtrData*(this: var WxListCtrl; item: clong; data: culong): bool {.
    discardable, cdecl, importcpp: "SetItemPtrData", header: wxh.}
proc setItemData*(this: var WxListCtrl; item: clong; data: clong): bool {.
    discardable, cdecl, importcpp: "SetItemData", header: wxh.}
proc getItemRect*(this: WxListCtrl; item: clong; rect: var WxRect; 
                  code: cint = wxLIST_RECT_BOUNDS): bool {.noSideEffect, cdecl, 
    importcpp: "GetItemRect", header: wxh.}
proc getSubItemRect*(this: WxListCtrl; item: clong; subItem: clong; 
                     rect: var WxRect; code: cint = wxLIST_RECT_BOUNDS): bool {.
    noSideEffect, cdecl, importcpp: "GetSubItemRect", header: wxh.}
proc getItemPosition*(this: WxListCtrl; item: clong; pos: var WxPoint): bool {.
    noSideEffect, cdecl, importcpp: "GetItemPosition", header: wxh.}
proc setItemPosition*(this: var WxListCtrl; item: clong; pos: WxPoint): bool {.
    discardable, cdecl, importcpp: "SetItemPosition", header: wxh.}
proc getItemCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: wxh.}
proc getColumnCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getItemSpacing*(this: WxListCtrl): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetItemSpacing", header: wxh.}
proc setItemTextColour*(this: var WxListCtrl; item: clong; col: WxColour) {.
    cdecl, importcpp: "SetItemTextColour", header: wxh.}
proc getItemTextColour*(this: WxListCtrl; item: clong): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetItemTextColour", header: wxh.}
proc setItemBackgroundColour*(this: var WxListCtrl; item: clong; col: WxColour) {.
    cdecl, importcpp: "SetItemBackgroundColour", header: wxh.}
proc getItemBackgroundColour*(this: WxListCtrl; item: clong): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemBackgroundColour", header: wxh.}
proc setItemFont*(this: var WxListCtrl; item: clong; f: WxFont) {.cdecl, 
    importcpp: "SetItemFont", header: wxh.}
proc getItemFont*(this: WxListCtrl; item: clong): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetItemFont", header: wxh.}
proc getSelectedItemCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedItemCount", header: wxh.}
proc getTextColour*(this: WxListCtrl): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc setTextColour*(this: var WxListCtrl; col: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc getTopItem*(this: WxListCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetTopItem", header: wxh.}
proc setSingleStyle*(this: var WxListCtrl; style: clong; add: bool = true) {.
    cdecl, importcpp: "SetSingleStyle", header: wxh.}
proc setWindowStyleFlag*(this: var WxListCtrl; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: wxh.}
proc getNextItem*(this: WxListCtrl; item: clong; 
                  geometry: cint = wxLIST_NEXT_ALL; 
                  state: cint = wxLIST_STATE_DONTCARE): clong {.noSideEffect, 
    cdecl, importcpp: "GetNextItem", header: wxh.}
proc getImageList*(this: WxListCtrl; which: cint): ptr WxImageList {.
    noSideEffect, cdecl, importcpp: "GetImageList", header: wxh.}
proc setImageList*(this: var WxListCtrl; imageList: ptr WxImageList; which: cint) {.
    cdecl, importcpp: "SetImageList", header: wxh.}
proc assignImageList*(this: var WxListCtrl; imageList: ptr WxImageList; 
                      which: cint) {.cdecl, importcpp: "AssignImageList", 
                                     header: wxh.}
proc refreshItem*(this: var WxListCtrl; item: clong) {.cdecl, 
    importcpp: "RefreshItem", header: wxh.}
proc refreshItems*(this: var WxListCtrl; itemFrom: clong; itemTo: clong) {.
    cdecl, importcpp: "RefreshItems", header: wxh.}
proc arrange*(this: var WxListCtrl; flag: cint = wxLIST_ALIGN_DEFAULT): bool {.
    cdecl, importcpp: "Arrange", header: wxh.}
proc deleteItem*(this: var WxListCtrl; item: clong): bool {.cdecl, 
    importcpp: "DeleteItem", header: wxh.}
proc deleteAllItems*(this: var WxListCtrl): bool {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc deleteColumn*(this: var WxListCtrl; col: cint): bool {.cdecl, 
    importcpp: "DeleteColumn", header: wxh.}
proc deleteAllColumns*(this: var WxListCtrl): bool {.cdecl, 
    importcpp: "DeleteAllColumns", header: wxh.}
proc clearAll*(this: var WxListCtrl) {.cdecl, importcpp: "ClearAll", header: wxh.}
proc editLabel*(this: var WxListCtrl; item: clong): ptr WxTextCtrl {.cdecl, 
    importcpp: "EditLabel", header: wxh.}
proc endEditLabel*(this: var WxListCtrl; cancel: bool): bool {.cdecl, 
    importcpp: "EndEditLabel", header: wxh.}
proc ensureVisible*(this: var WxListCtrl; item: clong): bool {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc findItem*(this: var WxListCtrl; start: clong; str: WxString; 
               partial: bool = false): clong {.cdecl, importcpp: "FindItem", 
    header: wxh.}
proc findItem*(this: var WxListCtrl; start: clong; data: culong): clong {.cdecl, 
    importcpp: "FindItem", header: wxh.}
proc findItem*(this: var WxListCtrl; start: clong; pt: WxPoint; direction: cint): clong {.
    cdecl, importcpp: "FindItem", header: wxh.}
proc hitTest*(this: WxListCtrl; point: WxPoint; flags: var cint; 
              ptrSubItem: ptr clong = nil): clong {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: wxh.}
proc insertItem*(this: var WxListCtrl; info: WxListItem): clong {.cdecl, 
    importcpp: "InsertItem", header: wxh.}
proc insertItem*(this: var WxListCtrl; index: clong; label: WxString): clong {.
    cdecl, importcpp: "InsertItem", header: wxh.}
proc insertItem*(this: var WxListCtrl; index: clong; imageIndex: cint): clong {.
    cdecl, importcpp: "InsertItem", header: wxh.}
proc insertItem*(this: var WxListCtrl; index: clong; label: WxString; 
                 imageIndex: cint): clong {.cdecl, importcpp: "InsertItem", 
    header: wxh.}
proc setItemCount*(this: var WxListCtrl; count: clong) {.cdecl, 
    importcpp: "SetItemCount", header: wxh.}
proc scrollList*(this: var WxListCtrl; dx: cint; dy: cint): bool {.cdecl, 
    importcpp: "ScrollList", header: wxh.}
proc sortItems*(this: var WxListCtrl; fn: WxListCtrlCompare; data: clong): bool {.
    cdecl, importcpp: "SortItems", header: wxh.}
proc updateStyle*(this: var WxListCtrl) {.cdecl, importcpp: "UpdateStyle", 
    header: wxh.}
proc onPaint*(this: var WxListCtrl; event: var WxPaintEvent) {.cdecl, 
    importcpp: "OnPaint", header: wxh.}
proc shouldInheritColours*(this: WxListCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc getDefaultAttributes*(this: WxListCtrl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxh.}

type 
  WxListView* {.importcpp: "wxListView", header: wxh.} = object of WxListCtrl
  

proc constructwxListView*(): WxListView {.cdecl, constructor, 
    importcpp: "wxListView(@)", header: wxh.}
proc constructwxListView*(parent: ptr WxWindow; 
                          winid: WxWindowID = WxWindowID(wxID_ANY); 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxLC_REPORT; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("listCtrl")): WxListView {.
    cdecl, constructor, importcpp: "wxListView(@)", header: wxh.}
proc select*(this: var WxListView; n: clong; on: bool = true) {.cdecl, 
    importcpp: "Select", header: wxh.}
proc focus*(this: var WxListView; index: clong) {.cdecl, importcpp: "Focus", 
    header: wxh.}
proc getFocusedItem*(this: WxListView): clong {.noSideEffect, cdecl, 
    importcpp: "GetFocusedItem", header: wxh.}
proc getNextSelected*(this: WxListView; item: clong): clong {.noSideEffect, 
    cdecl, importcpp: "GetNextSelected", header: wxh.}
proc getFirstSelected*(this: WxListView): clong {.noSideEffect, cdecl, 
    importcpp: "GetFirstSelected", header: wxh.}
proc isSelected*(this: WxListView; index: clong): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: wxh.}
proc setColumnImage*(this: var WxListView; col: cint; image: cint) {.cdecl, 
    importcpp: "SetColumnImage", header: wxh.}
proc clearColumnImage*(this: var WxListView; col: cint) {.cdecl, 
    importcpp: "ClearColumnImage", header: wxh.}
