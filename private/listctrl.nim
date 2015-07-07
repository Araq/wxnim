


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
                        header: "wx.h".} = enum 
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
  WxImageList* {.importcpp: "wxImageList", header: "wx.h".} = object of WxList
  


type 
  WxListItemAttr* {.importcpp: "wxListItemAttr", header: "wx.h".} = object 
    mColText* {.importc: "m_colText".}: WxColour
    mColBack* {.importc: "m_colBack".}: WxColour
    mFont* {.importc: "m_font".}: WxFont


proc constructwxListItemAttr*(): WxListItemAttr {.cdecl, constructor, 
    importcpp: "wxListItemAttr(@)", header: "wx.h".}
proc constructwxListItemAttr*(colText: WxColour; colBack: WxColour; font: WxFont): WxListItemAttr {.
    cdecl, constructor, importcpp: "wxListItemAttr(@)", header: "wx.h".}
proc setTextColour*(this: var WxListItemAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxListItemAttr; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "wx.h".}
proc setFont*(this: var WxListItemAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "wx.h".}
proc hasTextColour*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: "wx.h".}
proc hasBackgroundColour*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: "wx.h".}
proc hasFont*(this: WxListItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: "wx.h".}
proc getTextColour*(this: WxListItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "wx.h".}
proc getBackgroundColour*(this: WxListItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: "wx.h".}
proc getFont*(this: WxListItemAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "wx.h".}
proc assignFrom*(this: var WxListItemAttr; source: WxListItemAttr) {.cdecl, 
    importcpp: "AssignFrom", header: "wx.h".}

type 
  WxListItem* {.importcpp: "wxListItem", header: "wx.h".} = object of WxObject
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
    importcpp: "wxListItem(@)", header: "wx.h".}
proc constructwxListItem*(item: WxListItem): WxListItem {.cdecl, constructor, 
    importcpp: "wxListItem(@)", header: "wx.h".}
proc destroywxListItem*(this: var WxListItem) {.cdecl, 
    importcpp: "#.~wxListItem()", header: "wx.h".}
proc clear*(this: var WxListItem) {.cdecl, importcpp: "Clear", header: "wx.h".}
proc clearAttributes*(this: var WxListItem) {.cdecl, 
    importcpp: "ClearAttributes", header: "wx.h".}
proc setMask*(this: var WxListItem; mask: clong) {.cdecl, importcpp: "SetMask", 
    header: "wx.h".}
proc setId*(this: var WxListItem; id: clong) {.cdecl, importcpp: "SetId", 
    header: "wx.h".}
proc setColumn*(this: var WxListItem; col: cint) {.cdecl, 
    importcpp: "SetColumn", header: "wx.h".}
proc setState*(this: var WxListItem; state: clong) {.cdecl, 
    importcpp: "SetState", header: "wx.h".}
proc setStateMask*(this: var WxListItem; stateMask: clong) {.cdecl, 
    importcpp: "SetStateMask", header: "wx.h".}
proc setText*(this: var WxListItem; text: WxString) {.cdecl, 
    importcpp: "SetText", header: "wx.h".}
proc setImage*(this: var WxListItem; image: cint) {.cdecl, 
    importcpp: "SetImage", header: "wx.h".}
proc setData*(this: var WxListItem; data: clong) {.cdecl, importcpp: "SetData", 
    header: "wx.h".}
proc setData*(this: var WxListItem; data: pointer) {.cdecl, 
    importcpp: "SetData", header: "wx.h".}
proc setWidth*(this: var WxListItem; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: "wx.h".}
proc setAlign*(this: var WxListItem; align: WxListColumnFormat) {.cdecl, 
    importcpp: "SetAlign", header: "wx.h".}
proc setTextColour*(this: var WxListItem; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxListItem; colBack: WxColour) {.cdecl, 
    importcpp: "SetBackgroundColour", header: "wx.h".}
proc setFont*(this: var WxListItem; font: WxFont) {.cdecl, importcpp: "SetFont", 
    header: "wx.h".}
proc getMask*(this: WxListItem): clong {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: "wx.h".}
proc getId*(this: WxListItem): clong {.noSideEffect, cdecl, importcpp: "GetId", 
                                       header: "wx.h".}
proc getColumn*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: "wx.h".}
proc getState*(this: WxListItem): clong {.noSideEffect, cdecl, 
    importcpp: "GetState", header: "wx.h".}
proc getText*(this: WxListItem): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "wx.h".}
proc getImage*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetImage", header: "wx.h".}
proc getData*(this: WxListItem): culong {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "wx.h".}
proc getWidth*(this: WxListItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "wx.h".}
proc getAlign*(this: WxListItem): WxListColumnFormat {.noSideEffect, cdecl, 
    importcpp: "GetAlign", header: "wx.h".}
proc getAttributes*(this: WxListItem): ptr WxListItemAttr {.noSideEffect, cdecl, 
    importcpp: "GetAttributes", header: "wx.h".}
proc hasAttributes*(this: WxListItem): bool {.noSideEffect, cdecl, 
    importcpp: "HasAttributes", header: "wx.h".}
proc getTextColour*(this: WxListItem): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "wx.h".}
proc getBackgroundColour*(this: WxListItem): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: "wx.h".}
proc getFont*(this: WxListItem): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "wx.h".}

type 
  WxListCtrlBase* {.importcpp: "wxListCtrlBase", header: "wx.h".} = object of WxControl
  

proc constructwxListCtrlBase*(): WxListCtrlBase {.cdecl, constructor, 
    importcpp: "wxListCtrlBase(@)", header: "wx.h".}
proc assignImageList*(this: var WxListCtrlBase; imageList: ptr WxImageList; 
                      which: cint) {.cdecl, importcpp: "AssignImageList", 
                                     header: "wx.h".}
proc setImageList*(this: var WxListCtrlBase; imageList: ptr WxImageList; 
                   which: cint) {.cdecl, importcpp: "SetImageList", 
                                  header: "wx.h".}
proc getImageList*(this: WxListCtrlBase; which: cint): ptr WxImageList {.
    noSideEffect, cdecl, importcpp: "GetImageList", header: "wx.h".}
proc appendColumn*(this: var WxListCtrlBase; heading: WxString; 
                   format: WxListColumnFormat = wxLIST_FORMAT_LEFT; 
                   width: cint = - 1): clong {.cdecl, importcpp: "AppendColumn", 
    header: "wx.h".}
proc insertColumn*(this: var WxListCtrlBase; col: clong; info: WxListItem): clong {.
    cdecl, importcpp: "InsertColumn", header: "wx.h".}
proc insertColumn*(this: var WxListCtrlBase; col: clong; heading: WxString; 
                   format: WxListColumnFormat = wxLIST_FORMAT_LEFT; 
                   width: cint = wxLIST_AUTOSIZE): clong {.cdecl, 
    importcpp: "InsertColumn", header: "wx.h".}
proc deleteColumn*(this: var WxListCtrlBase; col: cint): bool {.cdecl, 
    importcpp: "DeleteColumn", header: "wx.h".}
proc deleteAllColumns*(this: var WxListCtrlBase): bool {.cdecl, 
    importcpp: "DeleteAllColumns", header: "wx.h".}
proc getColumnCount*(this: WxListCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumn*(this: WxListCtrlBase; col: cint; item: var WxListItem): bool {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: "wx.h".}
proc setColumn*(this: var WxListCtrlBase; col: cint; item: WxListItem): bool {.
    cdecl, importcpp: "SetColumn", header: "wx.h".}
proc getColumnWidth*(this: WxListCtrlBase; col: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetColumnWidth", header: "wx.h".}
proc setColumnWidth*(this: var WxListCtrlBase; col: cint; width: cint): bool {.
    cdecl, importcpp: "SetColumnWidth", header: "wx.h".}
proc onGetItemAttr*(this: WxListCtrlBase; item: clong): ptr WxListItemAttr {.
    noSideEffect, cdecl, importcpp: "OnGetItemAttr", header: "wx.h".}
proc inReportView*(this: WxListCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "InReportView", header: "wx.h".}
proc isVirtual*(this: WxListCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVirtual", header: "wx.h".}
proc enableBellOnNoMatch*(this: var WxListCtrlBase; on: bool = true) {.cdecl, 
    importcpp: "EnableBellOnNoMatch", header: "wx.h".}
proc enableAlternateRowColours*(this: var WxListCtrlBase; enable: bool = true) {.
    cdecl, importcpp: "EnableAlternateRowColours", header: "wx.h".}
proc setAlternateRowColour*(this: var WxListCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetAlternateRowColour", header: "wx.h".}

type 
  WxListEvent* {.importcpp: "wxListEvent", header: "wx.h".} = object of WxNotifyEvent
    mCode* {.importc: "m_code".}: cint
    mOldItemIndex* {.importc: "m_oldItemIndex".}: clong
    mItemIndex* {.importc: "m_itemIndex".}: clong
    mCol* {.importc: "m_col".}: cint
    mPointDrag* {.importc: "m_pointDrag".}: WxPoint
    mItem* {.importc: "m_item".}: WxListItem


proc constructwxListEvent*(commandType: WxEventType = wxEVT_NULL; 
                           winid: cint = 0): WxListEvent {.cdecl, constructor, 
    importcpp: "wxListEvent(@)", header: "wx.h".}
proc constructwxListEvent*(event: WxListEvent): WxListEvent {.cdecl, 
    constructor, importcpp: "wxListEvent(@)", header: "wx.h".}
proc getKeyCode*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetKeyCode", header: "wx.h".}
proc getIndex*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetIndex", header: "wx.h".}
proc getColumn*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: "wx.h".}
proc getPoint*(this: WxListEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPoint", header: "wx.h".}
proc getLabel*(this: WxListEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "wx.h".}
proc getText*(this: WxListEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "wx.h".}
proc getImage*(this: WxListEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetImage", header: "wx.h".}
proc getData*(this: WxListEvent): culong {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "wx.h".}
proc getMask*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetMask", header: "wx.h".}
proc getItem*(this: WxListEvent): WxListItem {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: "wx.h".}
proc getCacheFrom*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetCacheFrom", header: "wx.h".}
proc getCacheTo*(this: WxListEvent): clong {.noSideEffect, cdecl, 
    importcpp: "GetCacheTo", header: "wx.h".}
proc isEditCancelled*(this: WxListEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: "wx.h".}
proc setEditCanceled*(this: var WxListEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: "wx.h".}
proc clone*(this: WxListEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}

var wxEVT_LIST_BEGIN_DRAG* {.importcpp: "wxEVT_LIST_BEGIN_DRAG", header: "wx.h".}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_BEGIN_RDRAG* {.importcpp: "wxEVT_LIST_BEGIN_RDRAG", 
                              header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_BEGIN_LABEL_EDIT* {.importcpp: "wxEVT_LIST_BEGIN_LABEL_EDIT", 
                                   header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_END_LABEL_EDIT* {.importcpp: "wxEVT_LIST_END_LABEL_EDIT", 
                                 header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_DELETE_ITEM* {.importcpp: "wxEVT_LIST_DELETE_ITEM", 
                              header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_DELETE_ALL_ITEMS* {.importcpp: "wxEVT_LIST_DELETE_ALL_ITEMS", 
                                   header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_SELECTED* {.importcpp: "wxEVT_LIST_ITEM_SELECTED", 
                                header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_DESELECTED* {.importcpp: "wxEVT_LIST_ITEM_DESELECTED", 
                                  header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_KEY_DOWN* {.importcpp: "wxEVT_LIST_KEY_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_INSERT_ITEM* {.importcpp: "wxEVT_LIST_INSERT_ITEM", 
                              header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_CLICK* {.importcpp: "wxEVT_LIST_COL_CLICK", header: "wx.h".}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_ITEM_RIGHT_CLICK* {.importcpp: "wxEVT_LIST_ITEM_RIGHT_CLICK", 
                                   header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_MIDDLE_CLICK* {.importcpp: "wxEVT_LIST_ITEM_MIDDLE_CLICK", 
                                    header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_ACTIVATED* {.importcpp: "wxEVT_LIST_ITEM_ACTIVATED", 
                                 header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_CACHE_HINT* {.importcpp: "wxEVT_LIST_CACHE_HINT", header: "wx.h".}: WxEventTypeTag[
    WxListEvent]

var wxEVT_LIST_COL_RIGHT_CLICK* {.importcpp: "wxEVT_LIST_COL_RIGHT_CLICK", 
                                  header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_BEGIN_DRAG* {.importcpp: "wxEVT_LIST_COL_BEGIN_DRAG", 
                                 header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_DRAGGING* {.importcpp: "wxEVT_LIST_COL_DRAGGING", 
                               header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_COL_END_DRAG* {.importcpp: "wxEVT_LIST_COL_END_DRAG", 
                               header: "wx.h".}: WxEventTypeTag[WxListEvent]

var wxEVT_LIST_ITEM_FOCUSED* {.importcpp: "wxEVT_LIST_ITEM_FOCUSED", 
                               header: "wx.h".}: WxEventTypeTag[WxListEvent]

type 
  WxListCtrl* {.importcpp: "wxListCtrl", header: "wx.h".} = object of WxListCtrlBase
  

proc constructwxListCtrl*(): WxListCtrl {.cdecl, constructor, 
    importcpp: "wxListCtrl(@)", header: "wx.h".}
proc constructwxListCtrl*(parent: ptr WxWindow; 
                          id: WxWindowID = WxWindowID(wxID_ANY); 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxLC_ICON; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("listCtrl")): WxListCtrl {.
    cdecl, constructor, importcpp: "wxListCtrl(@)", header: "wx.h".}
proc destroywxListCtrl*(this: var WxListCtrl) {.cdecl, 
    importcpp: "#.~wxListCtrl()", header: "wx.h".}
proc create*(this: var WxListCtrl; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxLC_ICON; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listCtrl")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc setForegroundColour*(this: var WxListCtrl; col: WxColour): bool {.cdecl, 
    importcpp: "SetForegroundColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxListCtrl; col: WxColour): bool {.cdecl, 
    importcpp: "SetBackgroundColour", header: "wx.h".}
proc getColumn*(this: WxListCtrl; col: cint; item: var WxListItem): bool {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: "wx.h".}
proc setColumn*(this: var WxListCtrl; col: cint; item: WxListItem): bool {.
    cdecl, importcpp: "SetColumn", header: "wx.h".}
proc getColumnWidth*(this: WxListCtrl; col: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnWidth", header: "wx.h".}
proc setColumnWidth*(this: var WxListCtrl; col: cint; width: cint): bool {.
    cdecl, importcpp: "SetColumnWidth", header: "wx.h".}
proc getColumnOrder*(this: WxListCtrl; col: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnOrder", header: "wx.h".}
proc getColumnIndexFromOrder*(this: WxListCtrl; order: cint): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnIndexFromOrder", header: "wx.h".}
proc getColumnsOrder*(this: WxListCtrl): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetColumnsOrder", header: "wx.h".}
proc setColumnsOrder*(this: var WxListCtrl; orders: WxArrayInt): bool {.cdecl, 
    importcpp: "SetColumnsOrder", header: "wx.h".}
proc getCountPerPage*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetCountPerPage", header: "wx.h".}
proc getViewRect*(this: WxListCtrl): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetViewRect", header: "wx.h".}
proc getEditControl*(this: WxListCtrl): ptr WxTextCtrl {.noSideEffect, cdecl, 
    importcpp: "GetEditControl", header: "wx.h".}
proc getItem*(this: WxListCtrl; info: var WxListItem): bool {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: "wx.h".}
proc setItem*(this: var WxListCtrl; info: var WxListItem): bool {.cdecl, 
    importcpp: "SetItem", header: "wx.h".}
proc setItem*(this: var WxListCtrl; index: clong; col: cint; label: WxString; 
              imageId: cint = - 1): clong {.cdecl, importcpp: "SetItem", 
    header: "wx.h".}
proc getItemState*(this: WxListCtrl; item: clong; stateMask: clong): cint {.
    noSideEffect, cdecl, importcpp: "GetItemState", header: "wx.h".}
proc setItemState*(this: var WxListCtrl; item: clong; state: clong; 
                   stateMask: clong): bool {.cdecl, importcpp: "SetItemState", 
    header: "wx.h".}
proc setItemImage*(this: var WxListCtrl; item: clong; image: cint; 
                   selImage: cint = - 1): bool {.cdecl, 
    importcpp: "SetItemImage", header: "wx.h".}
proc setItemColumnImage*(this: var WxListCtrl; item: clong; column: clong; 
                         image: cint): bool {.cdecl, 
    importcpp: "SetItemColumnImage", header: "wx.h".}
proc getItemText*(this: WxListCtrl; item: clong; col: cint = 0): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: "wx.h".}
proc setItemText*(this: var WxListCtrl; item: clong; str: WxString) {.cdecl, 
    importcpp: "SetItemText", header: "wx.h".}
proc getItemData*(this: WxListCtrl; item: clong): culong {.noSideEffect, cdecl, 
    importcpp: "GetItemData", header: "wx.h".}
proc setItemPtrData*(this: var WxListCtrl; item: clong; data: culong): bool {.
    cdecl, importcpp: "SetItemPtrData", header: "wx.h".}
proc setItemData*(this: var WxListCtrl; item: clong; data: clong): bool {.cdecl, 
    importcpp: "SetItemData", header: "wx.h".}
proc getItemRect*(this: WxListCtrl; item: clong; rect: var WxRect; 
                  code: cint = wxLIST_RECT_BOUNDS): bool {.noSideEffect, cdecl, 
    importcpp: "GetItemRect", header: "wx.h".}
proc getSubItemRect*(this: WxListCtrl; item: clong; subItem: clong; 
                     rect: var WxRect; code: cint = wxLIST_RECT_BOUNDS): bool {.
    noSideEffect, cdecl, importcpp: "GetSubItemRect", header: "wx.h".}
proc getItemPosition*(this: WxListCtrl; item: clong; pos: var WxPoint): bool {.
    noSideEffect, cdecl, importcpp: "GetItemPosition", header: "wx.h".}
proc setItemPosition*(this: var WxListCtrl; item: clong; pos: WxPoint): bool {.
    cdecl, importcpp: "SetItemPosition", header: "wx.h".}
proc getItemCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: "wx.h".}
proc getColumnCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getItemSpacing*(this: WxListCtrl): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetItemSpacing", header: "wx.h".}
proc setItemTextColour*(this: var WxListCtrl; item: clong; col: WxColour) {.
    cdecl, importcpp: "SetItemTextColour", header: "wx.h".}
proc getItemTextColour*(this: WxListCtrl; item: clong): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetItemTextColour", header: "wx.h".}
proc setItemBackgroundColour*(this: var WxListCtrl; item: clong; col: WxColour) {.
    cdecl, importcpp: "SetItemBackgroundColour", header: "wx.h".}
proc getItemBackgroundColour*(this: WxListCtrl; item: clong): WxColour {.
    noSideEffect, cdecl, importcpp: "GetItemBackgroundColour", header: "wx.h".}
proc setItemFont*(this: var WxListCtrl; item: clong; f: WxFont) {.cdecl, 
    importcpp: "SetItemFont", header: "wx.h".}
proc getItemFont*(this: WxListCtrl; item: clong): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetItemFont", header: "wx.h".}
proc getSelectedItemCount*(this: WxListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedItemCount", header: "wx.h".}
proc getTextColour*(this: WxListCtrl): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "wx.h".}
proc setTextColour*(this: var WxListCtrl; col: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "wx.h".}
proc getTopItem*(this: WxListCtrl): clong {.noSideEffect, cdecl, 
    importcpp: "GetTopItem", header: "wx.h".}
proc setSingleStyle*(this: var WxListCtrl; style: clong; add: bool = true) {.
    cdecl, importcpp: "SetSingleStyle", header: "wx.h".}
proc setWindowStyleFlag*(this: var WxListCtrl; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: "wx.h".}
proc getNextItem*(this: WxListCtrl; item: clong; 
                  geometry: cint = wxLIST_NEXT_ALL; 
                  state: cint = wxLIST_STATE_DONTCARE): clong {.noSideEffect, 
    cdecl, importcpp: "GetNextItem", header: "wx.h".}
proc getImageList*(this: WxListCtrl; which: cint): ptr WxImageList {.
    noSideEffect, cdecl, importcpp: "GetImageList", header: "wx.h".}
proc setImageList*(this: var WxListCtrl; imageList: ptr WxImageList; which: cint) {.
    cdecl, importcpp: "SetImageList", header: "wx.h".}
proc assignImageList*(this: var WxListCtrl; imageList: ptr WxImageList; 
                      which: cint) {.cdecl, importcpp: "AssignImageList", 
                                     header: "wx.h".}
proc refreshItem*(this: var WxListCtrl; item: clong) {.cdecl, 
    importcpp: "RefreshItem", header: "wx.h".}
proc refreshItems*(this: var WxListCtrl; itemFrom: clong; itemTo: clong) {.
    cdecl, importcpp: "RefreshItems", header: "wx.h".}
proc arrange*(this: var WxListCtrl; flag: cint = wxLIST_ALIGN_DEFAULT): bool {.
    cdecl, importcpp: "Arrange", header: "wx.h".}
proc deleteItem*(this: var WxListCtrl; item: clong): bool {.cdecl, 
    importcpp: "DeleteItem", header: "wx.h".}
proc deleteAllItems*(this: var WxListCtrl): bool {.cdecl, 
    importcpp: "DeleteAllItems", header: "wx.h".}
proc deleteColumn*(this: var WxListCtrl; col: cint): bool {.cdecl, 
    importcpp: "DeleteColumn", header: "wx.h".}
proc deleteAllColumns*(this: var WxListCtrl): bool {.cdecl, 
    importcpp: "DeleteAllColumns", header: "wx.h".}
proc clearAll*(this: var WxListCtrl) {.cdecl, importcpp: "ClearAll", 
                                       header: "wx.h".}
proc editLabel*(this: var WxListCtrl; item: clong): ptr WxTextCtrl {.cdecl, 
    importcpp: "EditLabel", header: "wx.h".}
proc endEditLabel*(this: var WxListCtrl; cancel: bool): bool {.cdecl, 
    importcpp: "EndEditLabel", header: "wx.h".}
proc ensureVisible*(this: var WxListCtrl; item: clong): bool {.cdecl, 
    importcpp: "EnsureVisible", header: "wx.h".}
proc findItem*(this: var WxListCtrl; start: clong; str: WxString; 
               partial: bool = false): clong {.cdecl, importcpp: "FindItem", 
    header: "wx.h".}
proc findItem*(this: var WxListCtrl; start: clong; data: culong): clong {.cdecl, 
    importcpp: "FindItem", header: "wx.h".}
proc findItem*(this: var WxListCtrl; start: clong; pt: WxPoint; direction: cint): clong {.
    cdecl, importcpp: "FindItem", header: "wx.h".}
proc hitTest*(this: WxListCtrl; point: WxPoint; flags: var cint; 
              ptrSubItem: ptr clong = nil): clong {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: "wx.h".}
proc insertItem*(this: var WxListCtrl; info: WxListItem): clong {.cdecl, 
    importcpp: "InsertItem", header: "wx.h".}
proc insertItem*(this: var WxListCtrl; index: clong; label: WxString): clong {.
    cdecl, importcpp: "InsertItem", header: "wx.h".}
proc insertItem*(this: var WxListCtrl; index: clong; imageIndex: cint): clong {.
    cdecl, importcpp: "InsertItem", header: "wx.h".}
proc insertItem*(this: var WxListCtrl; index: clong; label: WxString; 
                 imageIndex: cint): clong {.cdecl, importcpp: "InsertItem", 
    header: "wx.h".}
proc setItemCount*(this: var WxListCtrl; count: clong) {.cdecl, 
    importcpp: "SetItemCount", header: "wx.h".}
proc scrollList*(this: var WxListCtrl; dx: cint; dy: cint): bool {.cdecl, 
    importcpp: "ScrollList", header: "wx.h".}
proc sortItems*(this: var WxListCtrl; fn: WxListCtrlCompare; data: clong): bool {.
    cdecl, importcpp: "SortItems", header: "wx.h".}
proc updateStyle*(this: var WxListCtrl) {.cdecl, importcpp: "UpdateStyle", 
    header: "wx.h".}
proc onPaint*(this: var WxListCtrl; event: var WxPaintEvent) {.cdecl, 
    importcpp: "OnPaint", header: "wx.h".}
proc shouldInheritColours*(this: WxListCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "wx.h".}
proc getDefaultAttributes*(this: WxListCtrl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: "wx.h".}

type 
  WxListView* {.importcpp: "wxListView", header: "wx.h".} = object of WxListCtrl
  

proc constructwxListView*(): WxListView {.cdecl, constructor, 
    importcpp: "wxListView(@)", header: "wx.h".}
proc constructwxListView*(parent: ptr WxWindow; 
                          winid: WxWindowID = WxWindowID(wxID_ANY); 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxLC_REPORT; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("listCtrl")): WxListView {.
    cdecl, constructor, importcpp: "wxListView(@)", header: "wx.h".}
proc select*(this: var WxListView; n: clong; on: bool = true) {.cdecl, 
    importcpp: "Select", header: "wx.h".}
proc focus*(this: var WxListView; index: clong) {.cdecl, importcpp: "Focus", 
    header: "wx.h".}
proc getFocusedItem*(this: WxListView): clong {.noSideEffect, cdecl, 
    importcpp: "GetFocusedItem", header: "wx.h".}
proc getNextSelected*(this: WxListView; item: clong): clong {.noSideEffect, 
    cdecl, importcpp: "GetNextSelected", header: "wx.h".}
proc getFirstSelected*(this: WxListView): clong {.noSideEffect, cdecl, 
    importcpp: "GetFirstSelected", header: "wx.h".}
proc isSelected*(this: WxListView; index: clong): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: "wx.h".}
proc setColumnImage*(this: var WxListView; col: cint; image: cint) {.cdecl, 
    importcpp: "SetColumnImage", header: "wx.h".}
proc clearColumnImage*(this: var WxListView; col: cint) {.cdecl, 
    importcpp: "ClearColumnImage", header: "wx.h".}
