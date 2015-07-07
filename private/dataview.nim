

discard "forward decl of wxImageList"
discard "forward decl of wxDataViewModel"
discard "forward decl of wxDataViewCtrl"
discard "forward decl of wxDataViewColumn"
type 
  WxDataViewRenderer* {.importcpp: "wxDataViewRenderer", header: "wx.h".} = object 
  

discard "forward decl of wxDataViewModelNotifier"
type 
  WxDragResult* {.importcpp: "wxDragResult", header: "wx.h".} = object 
  
  WxDataViewCellMode* {.size: sizeof(cint), importcpp: "wxDataViewModelNotifier::wxDataViewCellMode", 
                        header: "wx.h".} = enum 
    wxDATAVIEW_CELL_INERT, wxDATAVIEW_CELL_ACTIVATABLE, wxDATAVIEW_CELL_EDITABLE


type 
  WxDataViewCellRenderState* {.size: sizeof(cint), importcpp: "wxDataViewModelNotifier::wxDataViewCellRenderState", 
                               header: "wx.h".} = enum 
    wxDATAVIEW_CELL_SELECTED = 1, wxDATAVIEW_CELL_PRELIT = 2, 
    wxDATAVIEW_CELL_INSENSITIVE = 4, wxDATAVIEW_CELL_FOCUSED = 8


const 
  wxDATAVIEW_COL_RESIZABLE* = 1
  wxCOL_RESIZABLE* = 1

type 
  WxArray* {.importcpp: "wxArray", header: "wx.h".}[T] = object 
  
  WxVector* {.importcpp: "wxVector", header: "wx.h".}[T] = object 
  

var wxNullIcon* {.importcpp: "wxNullIcon", header: "wx.h".}: WxIcon


const 
  wxDVC_DEFAULT_RENDERER_SIZE* = 20


const 
  wxDVC_DEFAULT_WIDTH* = 80


const 
  wxDVC_TOGGLE_DEFAULT_WIDTH* = 30


const 
  wxDVC_DEFAULT_MINWIDTH* = 30


const 
  wxDVR_DEFAULT_ALIGNMENT* = - 1


type 
  WxDataViewItem* {.importcpp: "wxDataViewItem", header: "wx.h", inheritable.} = object 
  

proc constructwxDataViewItem*(): WxDataViewItem {.cdecl, constructor, 
    importcpp: "wxDataViewItem(@)", header: "wx.h".}
proc constructwxDataViewItem*(pItem: pointer): WxDataViewItem {.cdecl, 
    constructor, importcpp: "wxDataViewItem(@)", header: "wx.h".}
type 
  WxDataViewItemArray* = WxArray[WxDataViewItem]


type 
  WxDataViewModelNotifier* {.importcpp: "wxDataViewModelNotifier", 
                             header: "wx.h".} = object 
    mOwner* {.importc: "m_owner".}: ptr WxDataViewModel


proc constructwxDataViewModelNotifier*(): WxDataViewModelNotifier {.cdecl, 
    constructor, importcpp: "wxDataViewModelNotifier(@)", header: "wx.h".}
proc destroywxDataViewModelNotifier*(this: var WxDataViewModelNotifier) {.cdecl, 
    importcpp: "#.~wxDataViewModelNotifier()", header: "wx.h".}
proc itemAdded*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                item: WxDataViewItem): bool {.cdecl, importcpp: "ItemAdded", 
    header: "wx.h".}
proc itemDeleted*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                  item: WxDataViewItem): bool {.cdecl, importcpp: "ItemDeleted", 
    header: "wx.h".}
proc itemChanged*(this: var WxDataViewModelNotifier; item: WxDataViewItem): bool {.
    cdecl, importcpp: "ItemChanged", header: "wx.h".}
proc itemsAdded*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                 items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsAdded", header: "wx.h".}
proc itemsDeleted*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                   items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsDeleted", header: "wx.h".}
proc itemsChanged*(this: var WxDataViewModelNotifier; items: WxDataViewItemArray): bool {.
    cdecl, importcpp: "ItemsChanged", header: "wx.h".}
proc valueChanged*(this: var WxDataViewModelNotifier; item: WxDataViewItem; 
                   col: cuint): bool {.cdecl, importcpp: "ValueChanged", 
                                       header: "wx.h".}
proc cleared*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "Cleared", header: "wx.h".}
proc beforeReset*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "BeforeReset", header: "wx.h".}
proc afterReset*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "AfterReset", header: "wx.h".}
proc resort*(this: var WxDataViewModelNotifier) {.cdecl, importcpp: "Resort", 
    header: "wx.h".}
proc setOwner*(this: var WxDataViewModelNotifier; owner: ptr WxDataViewModel) {.
    cdecl, importcpp: "SetOwner", header: "wx.h".}
proc getOwner*(this: WxDataViewModelNotifier): ptr WxDataViewModel {.
    noSideEffect, cdecl, importcpp: "GetOwner", header: "wx.h".}

type 
  WxDataViewItemAttr* {.importcpp: "wxDataViewItemAttr", header: "wx.h".} = object 
    mColour* {.importc: "m_colour".}: WxColour
    mBold* {.importc: "m_bold".}: bool
    mItalic* {.importc: "m_italic".}: bool
    mBgColour* {.importc: "m_bgColour".}: WxColour


proc constructwxDataViewItemAttr*(): WxDataViewItemAttr {.cdecl, constructor, 
    importcpp: "wxDataViewItemAttr(@)", header: "wx.h".}
proc setColour*(this: var WxDataViewItemAttr; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: "wx.h".}
proc setBold*(this: var WxDataViewItemAttr; set: bool) {.cdecl, 
    importcpp: "SetBold", header: "wx.h".}
proc setItalic*(this: var WxDataViewItemAttr; set: bool) {.cdecl, 
    importcpp: "SetItalic", header: "wx.h".}
proc setBackgroundColour*(this: var WxDataViewItemAttr; colour: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: "wx.h".}
proc hasColour*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasColour", header: "wx.h".}
proc getColour*(this: WxDataViewItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: "wx.h".}
proc hasFont*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: "wx.h".}
proc getBold*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetBold", header: "wx.h".}
proc getItalic*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetItalic", header: "wx.h".}
proc hasBackgroundColour*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: "wx.h".}
proc getBackgroundColour*(this: WxDataViewItemAttr): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: "wx.h".}
proc isDefault*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: "wx.h".}
proc getEffectiveFont*(this: WxDataViewItemAttr; font: WxFont): WxFont {.
    noSideEffect, cdecl, importcpp: "GetEffectiveFont", header: "wx.h".}

type 
  WxDataViewModel* {.importcpp: "wxDataViewModel", header: "wx.h".} = object of WxRefCounter
  

proc constructwxDataViewModel*(): WxDataViewModel {.cdecl, constructor, 
    importcpp: "wxDataViewModel(@)", header: "wx.h".}
proc getColumnCount*(this: WxDataViewModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumnType*(this: WxDataViewModel; col: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "GetColumnType", header: "wx.h".}
proc getValue*(this: WxDataViewModel; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc hasValue*(this: WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "HasValue", header: "wx.h".}
proc setValue*(this: var WxDataViewModel; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc changeValue*(this: var WxDataViewModel; variant: WxVariant; 
                  item: WxDataViewItem; col: cuint): bool {.cdecl, 
    importcpp: "ChangeValue", header: "wx.h".}
proc getAttr*(this: WxDataViewModel; item: WxDataViewItem; col: cuint; 
              attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttr", header: "wx.h".}
proc isEnabled*(this: WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabled", header: "wx.h".}
proc getParent*(this: WxDataViewModel; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: "wx.h".}
proc isContainer*(this: WxDataViewModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: "wx.h".}
proc hasContainerColumns*(this: WxDataViewModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "HasContainerColumns", header: "wx.h".}
proc getChildren*(this: WxDataViewModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: "wx.h".}
proc itemAdded*(this: var WxDataViewModel; parent: WxDataViewItem; 
                item: WxDataViewItem): bool {.cdecl, importcpp: "ItemAdded", 
    header: "wx.h".}
proc itemsAdded*(this: var WxDataViewModel; parent: WxDataViewItem; 
                 items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsAdded", header: "wx.h".}
proc itemDeleted*(this: var WxDataViewModel; parent: WxDataViewItem; 
                  item: WxDataViewItem): bool {.cdecl, importcpp: "ItemDeleted", 
    header: "wx.h".}
proc itemsDeleted*(this: var WxDataViewModel; parent: WxDataViewItem; 
                   items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsDeleted", header: "wx.h".}
proc itemChanged*(this: var WxDataViewModel; item: WxDataViewItem): bool {.
    cdecl, importcpp: "ItemChanged", header: "wx.h".}
proc itemsChanged*(this: var WxDataViewModel; items: WxDataViewItemArray): bool {.
    cdecl, importcpp: "ItemsChanged", header: "wx.h".}
proc valueChanged*(this: var WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    cdecl, importcpp: "ValueChanged", header: "wx.h".}
proc cleared*(this: var WxDataViewModel): bool {.cdecl, importcpp: "Cleared", 
    header: "wx.h".}
proc beforeReset*(this: var WxDataViewModel): bool {.cdecl, 
    importcpp: "BeforeReset", header: "wx.h".}
proc afterReset*(this: var WxDataViewModel): bool {.cdecl, 
    importcpp: "AfterReset", header: "wx.h".}
proc resort*(this: var WxDataViewModel) {.cdecl, importcpp: "Resort", 
    header: "wx.h".}
proc addNotifier*(this: var WxDataViewModel; 
                  notifier: ptr WxDataViewModelNotifier) {.cdecl, 
    importcpp: "AddNotifier", header: "wx.h".}
proc removeNotifier*(this: var WxDataViewModel; 
                     notifier: ptr WxDataViewModelNotifier) {.cdecl, 
    importcpp: "RemoveNotifier", header: "wx.h".}
proc compare*(this: WxDataViewModel; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: "wx.h".}
proc hasDefaultCompare*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "HasDefaultCompare", header: "wx.h".}
proc isListModel*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsListModel", header: "wx.h".}
proc isVirtualListModel*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsVirtualListModel", header: "wx.h".}

type 
  WxDataViewListModel* {.importcpp: "wxDataViewListModel", header: "wx.h".} = object of WxDataViewModel
  

proc getValueByRow*(this: WxDataViewListModel; variant: var WxVariant; 
                    row: cuint; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValueByRow", header: "wx.h".}
proc setValueByRow*(this: var WxDataViewListModel; variant: WxVariant; 
                    row: cuint; col: cuint): bool {.cdecl, 
    importcpp: "SetValueByRow", header: "wx.h".}
proc getAttrByRow*(this: WxDataViewListModel; row: cuint; col: cuint; 
                   attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttrByRow", header: "wx.h".}
proc isEnabledByRow*(this: WxDataViewListModel; row: cuint; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabledByRow", header: "wx.h".}
proc getRow*(this: WxDataViewListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: "wx.h".}
proc getCount*(this: WxDataViewListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "wx.h".}
proc getParent*(this: WxDataViewListModel; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: "wx.h".}
proc isContainer*(this: WxDataViewListModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: "wx.h".}
proc getValue*(this: WxDataViewListModel; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxDataViewListModel; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc getAttr*(this: WxDataViewListModel; item: WxDataViewItem; col: cuint; 
              attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttr", header: "wx.h".}
proc isEnabled*(this: WxDataViewListModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabled", header: "wx.h".}
proc isListModel*(this: WxDataViewListModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsListModel", header: "wx.h".}

type 
  WxDataViewIndexListModel* {.importcpp: "wxDataViewIndexListModel", 
                              header: "wx.h".} = object of WxDataViewListModel
  

proc constructwxDataViewIndexListModel*(initialSize: cuint = 0): WxDataViewIndexListModel {.
    cdecl, constructor, importcpp: "wxDataViewIndexListModel(@)", header: "wx.h".}
proc rowPrepended*(this: var WxDataViewIndexListModel) {.cdecl, 
    importcpp: "RowPrepended", header: "wx.h".}
proc rowInserted*(this: var WxDataViewIndexListModel; before: cuint) {.cdecl, 
    importcpp: "RowInserted", header: "wx.h".}
proc rowAppended*(this: var WxDataViewIndexListModel) {.cdecl, 
    importcpp: "RowAppended", header: "wx.h".}
proc rowDeleted*(this: var WxDataViewIndexListModel; row: cuint) {.cdecl, 
    importcpp: "RowDeleted", header: "wx.h".}
proc rowsDeleted*(this: var WxDataViewIndexListModel; rows: WxArrayInt) {.cdecl, 
    importcpp: "RowsDeleted", header: "wx.h".}
proc rowChanged*(this: var WxDataViewIndexListModel; row: cuint) {.cdecl, 
    importcpp: "RowChanged", header: "wx.h".}
proc rowValueChanged*(this: var WxDataViewIndexListModel; row: cuint; col: cuint) {.
    cdecl, importcpp: "RowValueChanged", header: "wx.h".}
proc reset*(this: var WxDataViewIndexListModel; newSize: cuint) {.cdecl, 
    importcpp: "Reset", header: "wx.h".}
proc getRow*(this: WxDataViewIndexListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: "wx.h".}
proc getItem*(this: WxDataViewIndexListModel; row: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetItem", header: "wx.h".}
proc getChildren*(this: WxDataViewIndexListModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: "wx.h".}
proc getCount*(this: WxDataViewIndexListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "wx.h".}

type 
  WxDataViewVirtualListModel* {.importcpp: "wxDataViewVirtualListModel", 
                                header: "wx.h".} = object of WxDataViewListModel
  

proc constructwxDataViewVirtualListModel*(initialSize: cuint = 0): WxDataViewVirtualListModel {.
    cdecl, constructor, importcpp: "wxDataViewVirtualListModel(@)", 
    header: "wx.h".}
proc rowPrepended*(this: var WxDataViewVirtualListModel) {.cdecl, 
    importcpp: "RowPrepended", header: "wx.h".}
proc rowInserted*(this: var WxDataViewVirtualListModel; before: cuint) {.cdecl, 
    importcpp: "RowInserted", header: "wx.h".}
proc rowAppended*(this: var WxDataViewVirtualListModel) {.cdecl, 
    importcpp: "RowAppended", header: "wx.h".}
proc rowDeleted*(this: var WxDataViewVirtualListModel; row: cuint) {.cdecl, 
    importcpp: "RowDeleted", header: "wx.h".}
proc rowsDeleted*(this: var WxDataViewVirtualListModel; rows: WxArrayInt) {.
    cdecl, importcpp: "RowsDeleted", header: "wx.h".}
proc rowChanged*(this: var WxDataViewVirtualListModel; row: cuint) {.cdecl, 
    importcpp: "RowChanged", header: "wx.h".}
proc rowValueChanged*(this: var WxDataViewVirtualListModel; row: cuint; 
                      col: cuint) {.cdecl, importcpp: "RowValueChanged", 
                                    header: "wx.h".}
proc reset*(this: var WxDataViewVirtualListModel; newSize: cuint) {.cdecl, 
    importcpp: "Reset", header: "wx.h".}
proc getRow*(this: WxDataViewVirtualListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: "wx.h".}
proc getItem*(this: WxDataViewVirtualListModel; row: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetItem", header: "wx.h".}
proc compare*(this: WxDataViewVirtualListModel; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: "wx.h".}
proc hasDefaultCompare*(this: WxDataViewVirtualListModel): bool {.noSideEffect, 
    cdecl, importcpp: "HasDefaultCompare", header: "wx.h".}
proc getChildren*(this: WxDataViewVirtualListModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: "wx.h".}
proc getCount*(this: WxDataViewVirtualListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "wx.h".}
proc isVirtualListModel*(this: WxDataViewVirtualListModel): bool {.noSideEffect, 
    cdecl, importcpp: "IsVirtualListModel", header: "wx.h".}


type 
  WxSettableHeaderColumn* {.importcpp: "wxSettableHeaderColumn", header: "wx.h", 
                            inheritable.} = object 
  
  WxDataViewColumnBase* {.importcpp: "wxDataViewColumnBase", header: "wx.h".} = object of WxSettableHeaderColumn
  

proc constructwxDataViewColumnBase*(renderer: ptr WxDataViewRenderer; 
                                    modelColumn: cuint): WxDataViewColumnBase {.
    cdecl, constructor, importcpp: "wxDataViewColumnBase(@)", header: "wx.h".}
proc constructwxDataViewColumnBase*(bitmap: WxBitmap; 
                                    renderer: ptr WxDataViewRenderer; 
                                    modelColumn: cuint): WxDataViewColumnBase {.
    cdecl, constructor, importcpp: "wxDataViewColumnBase(@)", header: "wx.h".}
proc destroywxDataViewColumnBase*(this: var WxDataViewColumnBase) {.cdecl, 
    importcpp: "#.~wxDataViewColumnBase()", header: "wx.h".}
proc setOwner*(this: var WxDataViewColumnBase; owner: ptr WxDataViewCtrl) {.
    cdecl, importcpp: "SetOwner", header: "wx.h".}
proc getModelColumn*(this: WxDataViewColumnBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetModelColumn", header: "wx.h".}
proc getOwner*(this: WxDataViewColumnBase): ptr WxDataViewCtrl {.noSideEffect, 
    cdecl, importcpp: "GetOwner", header: "wx.h".}
proc getRenderer*(this: WxDataViewColumnBase): ptr WxDataViewRenderer {.
    noSideEffect, cdecl, importcpp: "GetRenderer", header: "wx.h".}
proc setBitmap*(this: var WxDataViewColumnBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: "wx.h".}
proc getBitmap*(this: WxDataViewColumnBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "wx.h".}

const 
  wxDV_SINGLE* = 0x00000000
  wxDV_MULTIPLE* = 0x00000001
  wxDV_NO_HEADER* = 0x00000002
  wxDV_HORIZ_RULES* = 0x00000004
  wxDV_VERT_RULES* = 0x00000008
  wxDV_ROW_LINES* = 0x00000010
  wxDV_VARIABLE_LINE_HEIGHT* = 0x00000020

type 
  WxDataViewCtrlBase* {.importcpp: "wxDataViewCtrlBase", header: "wx.h".} = object of WxControl
    mModel* {.importc: "m_model".}: ptr WxDataViewModel
    mExpanderColumn* {.importc: "m_expander_column".}: ptr WxDataViewColumn
    mIndent* {.importc: "m_indent".}: cint


proc constructwxDataViewCtrlBase*(): WxDataViewCtrlBase {.cdecl, constructor, 
    importcpp: "wxDataViewCtrlBase(@)", header: "wx.h".}
proc destroywxDataViewCtrlBase*(this: var WxDataViewCtrlBase) {.cdecl, 
    importcpp: "#.~wxDataViewCtrlBase()", header: "wx.h".}
proc associateModel*(this: var WxDataViewCtrlBase; model: ptr WxDataViewModel): bool {.
    cdecl, importcpp: "AssociateModel", header: "wx.h".}
proc getModel*(this: var WxDataViewCtrlBase): ptr WxDataViewModel {.cdecl, 
    importcpp: "GetModel", header: "wx.h".}
proc getModel*(this: WxDataViewCtrlBase): ptr WxDataViewModel {.noSideEffect, 
    cdecl, importcpp: "GetModel", header: "wx.h".}
proc prependTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependTextColumn", header: "wx.h".}
proc prependIconTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependIconTextColumn", header: "wx.h".}
proc prependToggleColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependToggleColumn", header: "wx.h".}
proc prependProgressColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = wxDVC_DEFAULT_WIDTH; 
                            align: WxAlignment = wxALIGN_CENTER; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependProgressColumn", header: "wx.h".}
proc prependDateColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependDateColumn", header: "wx.h".}
proc prependBitmapColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = - 1; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependBitmapColumn", header: "wx.h".}
proc prependTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependTextColumn", header: "wx.h".}
proc prependIconTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependIconTextColumn", header: "wx.h".}
proc prependToggleColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependToggleColumn", header: "wx.h".}
proc prependProgressColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = wxDVC_DEFAULT_WIDTH; 
                            align: WxAlignment = wxALIGN_CENTER; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependProgressColumn", header: "wx.h".}
proc prependDateColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependDateColumn", header: "wx.h".}
proc prependBitmapColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = - 1; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependBitmapColumn", header: "wx.h".}
proc appendTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: "wx.h".}
proc appendIconTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: "wx.h".}
proc appendToggleColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                         align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: "wx.h".}
proc appendProgressColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = wxDVC_DEFAULT_WIDTH; 
                           align: WxAlignment = wxALIGN_CENTER; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: "wx.h".}
proc appendDateColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendDateColumn", header: "wx.h".}
proc appendBitmapColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendBitmapColumn", header: "wx.h".}
proc appendTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: "wx.h".}
proc appendIconTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: "wx.h".}
proc appendToggleColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                         align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: "wx.h".}
proc appendProgressColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = wxDVC_DEFAULT_WIDTH; 
                           align: WxAlignment = wxALIGN_CENTER; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: "wx.h".}
proc appendDateColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendDateColumn", header: "wx.h".}
proc appendBitmapColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendBitmapColumn", header: "wx.h".}
proc prependColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: "wx.h".}
proc insertColumn*(this: var WxDataViewCtrlBase; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: "wx.h".}
proc appendColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: "wx.h".}
proc getColumnCount*(this: WxDataViewCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumn*(this: WxDataViewCtrlBase; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: "wx.h".}
proc getColumnPosition*(this: WxDataViewCtrlBase; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnPosition", header: "wx.h".}
proc deleteColumn*(this: var WxDataViewCtrlBase; column: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "DeleteColumn", header: "wx.h".}
proc clearColumns*(this: var WxDataViewCtrlBase): bool {.cdecl, 
    importcpp: "ClearColumns", header: "wx.h".}
proc setExpanderColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn) {.
    cdecl, importcpp: "SetExpanderColumn", header: "wx.h".}
proc getExpanderColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetExpanderColumn", header: "wx.h".}
proc getSortingColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetSortingColumn", header: "wx.h".}
proc setIndent*(this: var WxDataViewCtrlBase; indent: cint) {.cdecl, 
    importcpp: "SetIndent", header: "wx.h".}
proc getIndent*(this: WxDataViewCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetIndent", header: "wx.h".}
proc getCurrentItem*(this: WxDataViewCtrlBase): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetCurrentItem", header: "wx.h".}
proc setCurrentItem*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.
    cdecl, importcpp: "SetCurrentItem", header: "wx.h".}
proc getCurrentColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetCurrentColumn", header: "wx.h".}
proc getSelectedItemsCount*(this: WxDataViewCtrlBase): cint {.noSideEffect, 
    cdecl, importcpp: "GetSelectedItemsCount", header: "wx.h".}
proc hasSelection*(this: WxDataViewCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: "wx.h".}
proc getSelection*(this: WxDataViewCtrlBase): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetSelection", header: "wx.h".}
proc getSelections*(this: WxDataViewCtrlBase; sel: var WxDataViewItemArray): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: "wx.h".}
proc setSelections*(this: var WxDataViewCtrlBase; sel: WxDataViewItemArray) {.
    cdecl, importcpp: "SetSelections", header: "wx.h".}
proc select*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Select", header: "wx.h".}
proc unselect*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Unselect", header: "wx.h".}
proc isSelected*(this: WxDataViewCtrlBase; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: "wx.h".}
proc selectAll*(this: var WxDataViewCtrlBase) {.cdecl, importcpp: "SelectAll", 
    header: "wx.h".}
proc unselectAll*(this: var WxDataViewCtrlBase) {.cdecl, 
    importcpp: "UnselectAll", header: "wx.h".}
proc expand*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Expand", header: "wx.h".}
proc expandAncestors*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.
    cdecl, importcpp: "ExpandAncestors", header: "wx.h".}
proc collapse*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Collapse", header: "wx.h".}
proc isExpanded*(this: WxDataViewCtrlBase; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsExpanded", header: "wx.h".}
proc ensureVisible*(this: var WxDataViewCtrlBase; item: WxDataViewItem; 
                    column: ptr WxDataViewColumn = nil) {.cdecl, 
    importcpp: "EnsureVisible", header: "wx.h".}
proc hitTest*(this: WxDataViewCtrlBase; point: WxPoint; 
              item: var WxDataViewItem; column: var ptr WxDataViewColumn) {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "wx.h".}
proc getItemRect*(this: WxDataViewCtrlBase; item: WxDataViewItem; 
                  column: ptr WxDataViewColumn = nil): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetItemRect", header: "wx.h".}
proc setRowHeight*(this: var WxDataViewCtrlBase; rowHeight: cint): bool {.cdecl, 
    importcpp: "SetRowHeight", header: "wx.h".}
proc editItem*(this: var WxDataViewCtrlBase; item: WxDataViewItem; 
               column: ptr WxDataViewColumn) {.cdecl, importcpp: "EditItem", 
    header: "wx.h".}
proc enableDragSource*(this: var WxDataViewCtrlBase; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDragSource", header: "wx.h".}
proc enableDropTarget*(this: var WxDataViewCtrlBase; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDropTarget", header: "wx.h".}
proc getDefaultAttributes*(this: WxDataViewCtrlBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: "wx.h".}

type 
  WxDataViewEvent* {.importcpp: "wxDataViewEvent", header: "wx.h".} = object of WxNotifyEvent
  

proc constructwxDataViewEvent*(commandType: WxEventType = wxEVT_NULL; 
                               winid: cint = 0): WxDataViewEvent {.cdecl, 
    constructor, importcpp: "wxDataViewEvent(@)", header: "wx.h".}
proc constructwxDataViewEvent*(event: WxDataViewEvent): WxDataViewEvent {.cdecl, 
    constructor, importcpp: "wxDataViewEvent(@)", header: "wx.h".}
proc getItem*(this: WxDataViewEvent): WxDataViewItem {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: "wx.h".}
proc setItem*(this: var WxDataViewEvent; item: WxDataViewItem) {.cdecl, 
    importcpp: "SetItem", header: "wx.h".}
proc getColumn*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: "wx.h".}
proc setColumn*(this: var WxDataViewEvent; col: cint) {.cdecl, 
    importcpp: "SetColumn", header: "wx.h".}
proc getModel*(this: WxDataViewEvent): ptr WxDataViewModel {.noSideEffect, 
    cdecl, importcpp: "GetModel", header: "wx.h".}
proc setModel*(this: var WxDataViewEvent; model: ptr WxDataViewModel) {.cdecl, 
    importcpp: "SetModel", header: "wx.h".}
proc getValue*(this: WxDataViewEvent): WxVariant {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxDataViewEvent; value: WxVariant) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc isEditCancelled*(this: WxDataViewEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: "wx.h".}
proc setEditCanceled*(this: var WxDataViewEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: "wx.h".}
proc setDataViewColumn*(this: var WxDataViewEvent; col: ptr WxDataViewColumn) {.
    cdecl, importcpp: "SetDataViewColumn", header: "wx.h".}
proc getDataViewColumn*(this: WxDataViewEvent): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetDataViewColumn", header: "wx.h".}
proc getPosition*(this: WxDataViewEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxDataViewEvent; x: cint; y: cint) {.cdecl, 
    importcpp: "SetPosition", header: "wx.h".}
proc getCacheFrom*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetCacheFrom", header: "wx.h".}
proc getCacheTo*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetCacheTo", header: "wx.h".}
proc setCache*(this: var WxDataViewEvent; `from`: cint; to: cint) {.cdecl, 
    importcpp: "SetCache", header: "wx.h".}
proc setDataObject*(this: var WxDataViewEvent; obj: ptr WxDataObject) {.cdecl, 
    importcpp: "SetDataObject", header: "wx.h".}
proc getDataObject*(this: WxDataViewEvent): ptr WxDataObject {.noSideEffect, 
    cdecl, importcpp: "GetDataObject", header: "wx.h".}
proc setDataFormat*(this: var WxDataViewEvent; format: WxDataFormat) {.cdecl, 
    importcpp: "SetDataFormat", header: "wx.h".}
proc getDataFormat*(this: WxDataViewEvent): WxDataFormat {.noSideEffect, cdecl, 
    importcpp: "GetDataFormat", header: "wx.h".}
proc setDataSize*(this: var WxDataViewEvent; size: csize) {.cdecl, 
    importcpp: "SetDataSize", header: "wx.h".}
proc getDataSize*(this: WxDataViewEvent): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: "wx.h".}
proc setDataBuffer*(this: var WxDataViewEvent; buf: pointer) {.cdecl, 
    importcpp: "SetDataBuffer", header: "wx.h".}
proc getDataBuffer*(this: WxDataViewEvent): pointer {.noSideEffect, cdecl, 
    importcpp: "GetDataBuffer", header: "wx.h".}
proc setDragFlags*(this: var WxDataViewEvent; flags: cint) {.cdecl, 
    importcpp: "SetDragFlags", header: "wx.h".}
proc getDragFlags*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetDragFlags", header: "wx.h".}
proc setDropEffect*(this: var WxDataViewEvent; effect: WxDragResult) {.cdecl, 
    importcpp: "SetDropEffect", header: "wx.h".}
proc getDropEffect*(this: WxDataViewEvent): WxDragResult {.noSideEffect, cdecl, 
    importcpp: "GetDropEffect", header: "wx.h".}
proc clone*(this: WxDataViewEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}
var wxEVT_DATAVIEW_SELECTION_CHANGED* {.importcpp: "wxEVT_DATAVIEW_SELECTION_CHANGED", 
                                        header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_ACTIVATED* {.importcpp: "wxEVT_DATAVIEW_ITEM_ACTIVATED", 
                                     header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_COLLAPSED* {.importcpp: "wxEVT_DATAVIEW_ITEM_COLLAPSED", 
                                     header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EXPANDED* {.importcpp: "wxEVT_DATAVIEW_ITEM_EXPANDED", 
                                    header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_COLLAPSING* {.importcpp: "wxEVT_DATAVIEW_ITEM_COLLAPSING", 
                                      header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EXPANDING* {.importcpp: "wxEVT_DATAVIEW_ITEM_EXPANDING", 
                                     header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_START_EDITING* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_START_EDITING", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EDITING_STARTED* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_EDITING_STARTED", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EDITING_DONE* {.importcpp: "wxEVT_DATAVIEW_ITEM_EDITING_DONE", 
                                        header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_VALUE_CHANGED* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_VALUE_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_CONTEXT_MENU* {.importcpp: "wxEVT_DATAVIEW_ITEM_CONTEXT_MENU", 
                                        header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_HEADER_CLICK* {.
    importcpp: "wxEVT_DATAVIEW_COLUMN_HEADER_CLICK", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_HEADER_RIGHT_CLICK*
     {.importcpp: "wxEVT_DATAVIEW_COLUMN_HEADER_RIGHT_CLICK", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_SORTED* {.importcpp: "wxEVT_DATAVIEW_COLUMN_SORTED", 
                                    header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_REORDERED* {.importcpp: "wxEVT_DATAVIEW_COLUMN_REORDERED", 
                                       header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_CACHE_HINT* {.importcpp: "wxEVT_DATAVIEW_CACHE_HINT", 
                                 header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_BEGIN_DRAG* {.importcpp: "wxEVT_DATAVIEW_ITEM_BEGIN_DRAG", 
                                      header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_DROP_POSSIBLE* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_DROP_POSSIBLE", header: "wx.h".}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_DROP* {.importcpp: "wxEVT_DATAVIEW_ITEM_DROP", 
                                header: "wx.h".}: WxEventTypeTag[WxDataViewEvent]

template wxDataViewEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxDataViewEventFunction, `func`)

template evt_Dataview_Selection_Changed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGED, id, 
                 wxDataViewEventHandler(fn))

template evt_Dataview_Item_Activated*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATED, id, 
                 wxDataViewEventHandler(fn))

template evt_Dataview_Item_Collapsing*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSING, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Collapsed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Expanding*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDING, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Expanded*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Start_Editing*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITING, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Editing_Started*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Editing_Done*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONE, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Value_Changed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Context_Menu*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENU, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Column_Header_Click*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICK, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Column_Header_Right_Click*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICK, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Column_Sorted*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Column_Reordered*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTEDCOLUMN_REORDERED, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Cache_Hint*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTEDCOLUMN_REORDEREDCACHE_HINT, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Begin_Drag*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTEDCOLUMN_REORDEREDCACHE_HINTITEM_BEGIN_DRAG, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Drop_Possible*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTEDCOLUMN_REORDEREDCACHE_HINTITEM_BEGIN_DRAGITEM_DROP_POSSIBLE, 
                 id, wxDataViewEventHandler(fn))

template evt_Dataview_Item_Drop*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_DATAVIEW_SELECTION_CHANGEDITEM_ACTIVATEDITEM_COLLAPSINGITEM_COLLAPSEDITEM_EXPANDINGITEM_EXPANDEDITEM_START_EDITINGITEM_EDITING_STARTEDITEM_EDITING_DONEITEM_VALUE_CHANGEDITEM_CONTEXT_MENUCOLUMN_HEADER_CLICKCOLUMN_HEADER_RIGHT_CLICKCOLUMN_SORTEDCOLUMN_REORDEREDCACHE_HINTITEM_BEGIN_DRAGITEM_DROP_POSSIBLEITEM_DROP, 
                 id, wxDataViewEventHandler(fn))


template evt_Dataview_Column_Header_Right_Clicked*(id, fn: expr): expr = 
  evt_Dataview_Column_Header_Right_Click(id, fn)


type 
  WxDataViewListStoreLine* {.importcpp: "wxDataViewListStoreLine", 
                             header: "wx.h".} = object 
    mValues* {.importc: "m_values".}: WxVector[WxVariant]
    mData* {.importc: "m_data".}: uint


proc constructwxDataViewListStoreLine*(data: uint = 0): WxDataViewListStoreLine {.
    cdecl, constructor, importcpp: "wxDataViewListStoreLine(@)", header: "wx.h".}
proc setData*(this: var WxDataViewListStoreLine; data: uint) {.cdecl, 
    importcpp: "SetData", header: "wx.h".}
proc getData*(this: WxDataViewListStoreLine): uint {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "wx.h".}
type 
  WxDataViewListStore* {.importcpp: "wxDataViewListStore", header: "wx.h".} = object of WxDataViewIndexListModel
  

proc constructwxDataViewListStore*(): WxDataViewListStore {.cdecl, constructor, 
    importcpp: "wxDataViewListStore(@)", header: "wx.h".}
proc destroywxDataViewListStore*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "#.~wxDataViewListStore()", header: "wx.h".}
proc prependColumn*(this: var WxDataViewListStore; varianttype: WxString) {.
    cdecl, importcpp: "PrependColumn", header: "wx.h".}
proc insertColumn*(this: var WxDataViewListStore; pos: cuint; 
                   varianttype: WxString) {.cdecl, importcpp: "InsertColumn", 
    header: "wx.h".}
proc appendColumn*(this: var WxDataViewListStore; varianttype: WxString) {.
    cdecl, importcpp: "AppendColumn", header: "wx.h".}
proc appendItem*(this: var WxDataViewListStore; values: WxVector[WxVariant]; 
                 data: uint = 0) {.cdecl, importcpp: "AppendItem", 
                                   header: "wx.h".}
proc prependItem*(this: var WxDataViewListStore; values: WxVector[WxVariant]; 
                  data: uint = 0) {.cdecl, importcpp: "PrependItem", 
                                    header: "wx.h".}
proc insertItem*(this: var WxDataViewListStore; row: cuint; 
                 values: WxVector[WxVariant]; data: uint = 0) {.cdecl, 
    importcpp: "InsertItem", header: "wx.h".}
proc deleteItem*(this: var WxDataViewListStore; pos: cuint) {.cdecl, 
    importcpp: "DeleteItem", header: "wx.h".}
proc deleteAllItems*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "DeleteAllItems", header: "wx.h".}
proc clearColumns*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "ClearColumns", header: "wx.h".}
proc getItemCount*(this: WxDataViewListStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: "wx.h".}
proc setItemData*(this: var WxDataViewListStore; item: WxDataViewItem; 
                  data: uint) {.cdecl, importcpp: "SetItemData", header: "wx.h".}
proc getItemData*(this: WxDataViewListStore; item: WxDataViewItem): uint {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: "wx.h".}
proc getColumnCount*(this: WxDataViewListStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumnType*(this: WxDataViewListStore; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetColumnType", header: "wx.h".}
proc getValueByRow*(this: WxDataViewListStore; value: var WxVariant; row: cuint; 
                    col: cuint) {.noSideEffect, cdecl, 
                                  importcpp: "GetValueByRow", header: "wx.h".}
proc setValueByRow*(this: var WxDataViewListStore; value: WxVariant; row: cuint; 
                    col: cuint): bool {.cdecl, importcpp: "SetValueByRow", 
                                        header: "wx.h".}
discard "forward decl of wxDataViewMainWindow"
discard "forward decl of wxDataViewHeaderWindow"
type 
  WxDataViewColumn* {.importcpp: "wxDataViewColumn", header: "wx.h".} = object of WxDataViewColumnBase
    mTitle* {.importc: "m_title".}: WxString
    mWidth* {.importc: "m_width".}: cint
    mMinWidth* {.importc: "m_minWidth".}: cint
    mAlign* {.importc: "m_align".}: WxAlignment
    mFlags* {.importc: "m_flags".}: cint
    mSort* {.importc: "m_sort".}: bool
    mSortAscending* {.importc: "m_sortAscending".}: bool


proc constructwxDataViewColumn*(title: WxString; 
                                renderer: ptr WxDataViewRenderer; 
                                modelColumn: cuint; 
                                width: cint = wxDVC_DEFAULT_WIDTH; 
                                align: WxAlignment = wxALIGN_CENTER; 
                                flags: cint = wxDATAVIEW_COL_RESIZABLE): WxDataViewColumn {.
    cdecl, constructor, importcpp: "wxDataViewColumn(@)", header: "wx.h".}
proc constructwxDataViewColumn*(bitmap: WxBitmap; 
                                renderer: ptr WxDataViewRenderer; 
                                modelColumn: cuint; 
                                width: cint = wxDVC_DEFAULT_WIDTH; 
                                align: WxAlignment = wxALIGN_CENTER; 
                                flags: cint = wxDATAVIEW_COL_RESIZABLE): WxDataViewColumn {.
    cdecl, constructor, importcpp: "wxDataViewColumn(@)", header: "wx.h".}
proc setTitle*(this: var WxDataViewColumn; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: "wx.h".}
proc getTitle*(this: WxDataViewColumn): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: "wx.h".}
proc setWidth*(this: var WxDataViewColumn; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: "wx.h".}
proc getWidth*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "wx.h".}
proc setMinWidth*(this: var WxDataViewColumn; minWidth: cint) {.cdecl, 
    importcpp: "SetMinWidth", header: "wx.h".}
proc getMinWidth*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinWidth", header: "wx.h".}
proc setAlignment*(this: var WxDataViewColumn; align: WxAlignment) {.cdecl, 
    importcpp: "SetAlignment", header: "wx.h".}
proc getAlignment*(this: WxDataViewColumn): WxAlignment {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: "wx.h".}
proc setFlags*(this: var WxDataViewColumn; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: "wx.h".}
proc getFlags*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "wx.h".}
proc isSortKey*(this: WxDataViewColumn): bool {.noSideEffect, cdecl, 
    importcpp: "IsSortKey", header: "wx.h".}
proc unsetAsSortKey*(this: var WxDataViewColumn) {.cdecl, 
    importcpp: "UnsetAsSortKey", header: "wx.h".}
proc setSortOrder*(this: var WxDataViewColumn; ascending: bool) {.cdecl, 
    importcpp: "SetSortOrder", header: "wx.h".}
proc isSortOrderAscending*(this: WxDataViewColumn): bool {.noSideEffect, cdecl, 
    importcpp: "IsSortOrderAscending", header: "wx.h".}
proc setBitmap*(this: var WxDataViewColumn; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: "wx.h".}

type 
  WxDataViewCtrl* {.importcpp: "wxDataViewCtrl", header: "wx.h".} = object of WxDataViewCtrlBase
  

proc constructwxDataViewCtrl*(): WxDataViewCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewCtrl(@)", header: "wx.h".}
proc constructwxDataViewCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; style: clong = 0; 
                              validator: WxValidator = wxDefaultValidator; name: WxString = constructWxString(
    "dataviewctrl")): WxDataViewCtrl {.cdecl, constructor, 
                                       importcpp: "wxDataViewCtrl(@)", 
                                       header: "wx.h".}
proc destroywxDataViewCtrl*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "#.~wxDataViewCtrl()", header: "wx.h".}
proc init*(this: var WxDataViewCtrl) {.cdecl, importcpp: "Init", header: "wx.h".}
proc create*(this: var WxDataViewCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("dataviewctrl")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc associateModel*(this: var WxDataViewCtrl; model: ptr WxDataViewModel): bool {.
    cdecl, importcpp: "AssociateModel", header: "wx.h".}
proc appendColumn*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: "wx.h".}
proc prependColumn*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: "wx.h".}
proc insertColumn*(this: var WxDataViewCtrl; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: "wx.h".}
proc doSetExpanderColumn*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "DoSetExpanderColumn", header: "wx.h".}
proc doSetIndent*(this: var WxDataViewCtrl) {.cdecl, importcpp: "DoSetIndent", 
    header: "wx.h".}
proc getColumnCount*(this: WxDataViewCtrl): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumn*(this: WxDataViewCtrl; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: "wx.h".}
proc deleteColumn*(this: var WxDataViewCtrl; column: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "DeleteColumn", header: "wx.h".}
proc clearColumns*(this: var WxDataViewCtrl): bool {.cdecl, 
    importcpp: "ClearColumns", header: "wx.h".}
proc getColumnPosition*(this: WxDataViewCtrl; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnPosition", header: "wx.h".}
proc getSortingColumn*(this: WxDataViewCtrl): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetSortingColumn", header: "wx.h".}
proc getSelectedItemsCount*(this: WxDataViewCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedItemsCount", header: "wx.h".}
proc getSelections*(this: WxDataViewCtrl; sel: var WxDataViewItemArray): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: "wx.h".}
proc setSelections*(this: var WxDataViewCtrl; sel: WxDataViewItemArray) {.cdecl, 
    importcpp: "SetSelections", header: "wx.h".}
proc select*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Select", header: "wx.h".}
proc unselect*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Unselect", header: "wx.h".}
proc isSelected*(this: WxDataViewCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: "wx.h".}
proc selectAll*(this: var WxDataViewCtrl) {.cdecl, importcpp: "SelectAll", 
    header: "wx.h".}
proc unselectAll*(this: var WxDataViewCtrl) {.cdecl, importcpp: "UnselectAll", 
    header: "wx.h".}
proc ensureVisible*(this: var WxDataViewCtrl; item: WxDataViewItem; 
                    column: ptr WxDataViewColumn = nil) {.cdecl, 
    importcpp: "EnsureVisible", header: "wx.h".}
proc hitTest*(this: WxDataViewCtrl; point: WxPoint; item: var WxDataViewItem; 
              column: var ptr WxDataViewColumn) {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: "wx.h".}
proc getItemRect*(this: WxDataViewCtrl; item: WxDataViewItem; 
                  column: ptr WxDataViewColumn = nil): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetItemRect", header: "wx.h".}
proc setRowHeight*(this: var WxDataViewCtrl; rowHeight: cint): bool {.cdecl, 
    importcpp: "SetRowHeight", header: "wx.h".}
proc expand*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Expand", header: "wx.h".}
proc collapse*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Collapse", header: "wx.h".}
proc isExpanded*(this: WxDataViewCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsExpanded", header: "wx.h".}
proc setFocus*(this: var WxDataViewCtrl) {.cdecl, importcpp: "SetFocus", 
    header: "wx.h".}
proc setFont*(this: var WxDataViewCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "wx.h".}
proc enableDragSource*(this: var WxDataViewCtrl; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDragSource", header: "wx.h".}
proc enableDropTarget*(this: var WxDataViewCtrl; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDropTarget", header: "wx.h".}
proc getDefaultBorder*(this: WxDataViewCtrl): WxBorder {.noSideEffect, cdecl, 
    importcpp: "GetDefaultBorder", header: "wx.h".}
proc editItem*(this: var WxDataViewCtrl; item: WxDataViewItem; 
               column: ptr WxDataViewColumn) {.cdecl, importcpp: "EditItem", 
    header: "wx.h".}
proc getAlternateRowColour*(this: WxDataViewCtrl): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetAlternateRowColour", header: "wx.h".}
proc setAlternateRowColour*(this: var WxDataViewCtrl; colour: WxColour) {.cdecl, 
    importcpp: "SetAlternateRowColour", header: "wx.h".}
proc getBestColumnWidth*(this: WxDataViewCtrl; idx: cint): cuint {.noSideEffect, 
    cdecl, importcpp: "GetBestColumnWidth", header: "wx.h".}
proc columnMoved*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn; 
                  newPos: cuint) {.cdecl, importcpp: "ColumnMoved", 
                                   header: "wx.h".}
proc onColumnChange*(this: var WxDataViewCtrl; idx: cuint) {.cdecl, 
    importcpp: "OnColumnChange", header: "wx.h".}
proc onColumnsCountChanged*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "OnColumnsCountChanged", header: "wx.h".}
proc getMainWindow*(this: var WxDataViewCtrl): ptr WxWindow {.cdecl, 
    importcpp: "GetMainWindow", header: "wx.h".}
proc getColumnIndex*(this: WxDataViewCtrl; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnIndex", header: "wx.h".}
proc getModelColumnIndex*(this: WxDataViewCtrl; modelColumn: cuint): cint {.
    noSideEffect, cdecl, importcpp: "GetModelColumnIndex", header: "wx.h".}
proc getColumnAt*(this: WxDataViewCtrl; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumnAt", header: "wx.h".}
proc getCurrentColumn*(this: WxDataViewCtrl): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetCurrentColumn", header: "wx.h".}
proc onInternalIdle*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "OnInternalIdle", header: "wx.h".}

type 
  WxDataViewListCtrl* {.importcpp: "wxDataViewListCtrl", header: "wx.h".} = object of WxDataViewCtrl
  

proc constructwxDataViewListCtrl*(): WxDataViewListCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewListCtrl(@)", header: "wx.h".}
proc constructwxDataViewListCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                  pos: WxPoint = wxDefaultPosition; 
                                  size: WxSize = wxDefaultSize; 
                                  style: clong = wxDV_ROW_LINES; 
                                  validator: WxValidator = wxDefaultValidator): WxDataViewListCtrl {.
    cdecl, constructor, importcpp: "wxDataViewListCtrl(@)", header: "wx.h".}
proc destroywxDataViewListCtrl*(this: var WxDataViewListCtrl) {.cdecl, 
    importcpp: "#.~wxDataViewListCtrl()", header: "wx.h".}
proc create*(this: var WxDataViewListCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxDV_ROW_LINES; 
             validator: WxValidator = wxDefaultValidator): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc getStore*(this: var WxDataViewListCtrl): ptr WxDataViewListStore {.cdecl, 
    importcpp: "GetStore", header: "wx.h".}
proc getStore*(this: WxDataViewListCtrl): ptr WxDataViewListStore {.
    noSideEffect, cdecl, importcpp: "GetStore", header: "wx.h".}
proc itemToRow*(this: WxDataViewListCtrl; item: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "ItemToRow", header: "wx.h".}
proc rowToItem*(this: WxDataViewListCtrl; row: cint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "RowToItem", header: "wx.h".}
proc getSelectedRow*(this: WxDataViewListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedRow", header: "wx.h".}
proc selectRow*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "SelectRow", header: "wx.h".}
proc unselectRow*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "UnselectRow", header: "wx.h".}
proc isRowSelected*(this: WxDataViewListCtrl; row: cuint): bool {.noSideEffect, 
    cdecl, importcpp: "IsRowSelected", header: "wx.h".}
proc appendColumn*(this: var WxDataViewListCtrl; column: ptr WxDataViewColumn; 
                   varianttype: WxString): bool {.cdecl, 
    importcpp: "AppendColumn", header: "wx.h".}
proc prependColumn*(this: var WxDataViewListCtrl; column: ptr WxDataViewColumn; 
                    varianttype: WxString): bool {.cdecl, 
    importcpp: "PrependColumn", header: "wx.h".}
proc insertColumn*(this: var WxDataViewListCtrl; pos: cuint; 
                   column: ptr WxDataViewColumn; varianttype: WxString): bool {.
    cdecl, importcpp: "InsertColumn", header: "wx.h".}
proc prependColumn*(this: var WxDataViewListCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: "wx.h".}
proc insertColumn*(this: var WxDataViewListCtrl; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: "wx.h".}
proc appendColumn*(this: var WxDataViewListCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: "wx.h".}
proc clearColumns*(this: var WxDataViewListCtrl): bool {.cdecl, 
    importcpp: "ClearColumns", header: "wx.h".}
proc appendTextColumn*(this: var WxDataViewListCtrl; label: WxString; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: "wx.h".}
proc appendToggleColumn*(this: var WxDataViewListCtrl; label: WxString; mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: "wx.h".}
proc appendProgressColumn*(this: var WxDataViewListCtrl; label: WxString; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: "wx.h".}
proc appendIconTextColumn*(this: var WxDataViewListCtrl; label: WxString; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: "wx.h".}
proc appendItem*(this: var WxDataViewListCtrl; values: WxVector[WxVariant]; 
                 data: uint = 0) {.cdecl, importcpp: "AppendItem", 
                                   header: "wx.h".}
proc prependItem*(this: var WxDataViewListCtrl; values: WxVector[WxVariant]; 
                  data: uint = 0) {.cdecl, importcpp: "PrependItem", 
                                    header: "wx.h".}
proc insertItem*(this: var WxDataViewListCtrl; row: cuint; 
                 values: WxVector[WxVariant]; data: uint = 0) {.cdecl, 
    importcpp: "InsertItem", header: "wx.h".}
proc deleteItem*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "DeleteItem", header: "wx.h".}
proc deleteAllItems*(this: var WxDataViewListCtrl) {.cdecl, 
    importcpp: "DeleteAllItems", header: "wx.h".}
proc setValue*(this: var WxDataViewListCtrl; value: WxVariant; row: cuint; 
               col: cuint) {.cdecl, importcpp: "SetValue", header: "wx.h".}
proc getValue*(this: var WxDataViewListCtrl; value: var WxVariant; row: cuint; 
               col: cuint) {.cdecl, importcpp: "GetValue", header: "wx.h".}
proc setTextValue*(this: var WxDataViewListCtrl; value: WxString; row: cuint; 
                   col: cuint) {.cdecl, importcpp: "SetTextValue", 
                                 header: "wx.h".}
proc getTextValue*(this: WxDataViewListCtrl; row: cuint; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextValue", header: "wx.h".}
proc setToggleValue*(this: var WxDataViewListCtrl; value: bool; row: cuint; 
                     col: cuint) {.cdecl, importcpp: "SetToggleValue", 
                                   header: "wx.h".}
proc getToggleValue*(this: WxDataViewListCtrl; row: cuint; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "GetToggleValue", header: "wx.h".}
proc setItemData*(this: var WxDataViewListCtrl; item: WxDataViewItem; data: uint) {.
    cdecl, importcpp: "SetItemData", header: "wx.h".}
proc getItemData*(this: WxDataViewListCtrl; item: WxDataViewItem): uint {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: "wx.h".}
proc getItemCount*(this: WxDataViewListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: "wx.h".}
proc onSize*(this: var WxDataViewListCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: "wx.h".}

type 
  WxDataViewTreeStoreNode* {.importcpp: "wxDataViewTreeStoreNode", 
                             header: "wx.h", inheritable.} = object 
  

proc constructwxDataViewTreeStoreNode*(parent: ptr WxDataViewTreeStoreNode; 
                                       text: WxString; 
                                       icon: WxIcon = wxNullIcon; 
                                       data: ptr WxClientData = nil): WxDataViewTreeStoreNode {.
    cdecl, constructor, importcpp: "wxDataViewTreeStoreNode(@)", header: "wx.h".}
proc destroywxDataViewTreeStoreNode*(this: var WxDataViewTreeStoreNode) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStoreNode()", header: "wx.h".}
proc setText*(this: var WxDataViewTreeStoreNode; text: WxString) {.cdecl, 
    importcpp: "SetText", header: "wx.h".}
proc getText*(this: WxDataViewTreeStoreNode): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "wx.h".}
proc setIcon*(this: var WxDataViewTreeStoreNode; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: "wx.h".}
proc getIcon*(this: WxDataViewTreeStoreNode): WxIcon {.noSideEffect, cdecl, 
    importcpp: "GetIcon", header: "wx.h".}
proc setData*(this: var WxDataViewTreeStoreNode; data: ptr WxClientData) {.
    cdecl, importcpp: "SetData", header: "wx.h".}
proc getData*(this: WxDataViewTreeStoreNode): ptr WxClientData {.noSideEffect, 
    cdecl, importcpp: "GetData", header: "wx.h".}
proc getItem*(this: WxDataViewTreeStoreNode): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: "wx.h".}
proc isContainer*(this: var WxDataViewTreeStoreNode): bool {.cdecl, 
    importcpp: "IsContainer", header: "wx.h".}
proc getParent*(this: var WxDataViewTreeStoreNode): ptr WxDataViewTreeStoreNode {.
    cdecl, importcpp: "GetParent", header: "wx.h".}
type 
  WxDataViewTreeStoreContainerNode* {.importcpp: "wxDataViewTreeStoreContainerNode", 
                                      header: "wx.h".} = object of WxDataViewTreeStoreNode
  

proc constructwxDataViewTreeStoreContainerNode*(
    parent: ptr WxDataViewTreeStoreNode; text: WxString; 
    icon: WxIcon = wxNullIcon; expanded: WxIcon = wxNullIcon; 
    data: ptr WxClientData = nil): WxDataViewTreeStoreContainerNode {.cdecl, 
    constructor, importcpp: "wxDataViewTreeStoreContainerNode(@)", 
    header: "wx.h".}
proc destroywxDataViewTreeStoreContainerNode*(
    this: var WxDataViewTreeStoreContainerNode) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStoreContainerNode()", header: "wx.h".}
proc setExpandedIcon*(this: var WxDataViewTreeStoreContainerNode; icon: WxIcon) {.
    cdecl, importcpp: "SetExpandedIcon", header: "wx.h".}
proc getExpandedIcon*(this: WxDataViewTreeStoreContainerNode): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetExpandedIcon", header: "wx.h".}
proc setExpanded*(this: var WxDataViewTreeStoreContainerNode; 
                  expanded: bool = true) {.cdecl, importcpp: "SetExpanded", 
    header: "wx.h".}
proc isExpanded*(this: WxDataViewTreeStoreContainerNode): bool {.noSideEffect, 
    cdecl, importcpp: "IsExpanded", header: "wx.h".}
proc isContainer*(this: var WxDataViewTreeStoreContainerNode): bool {.cdecl, 
    importcpp: "IsContainer", header: "wx.h".}

type 
  WxDataViewTreeStore* {.importcpp: "wxDataViewTreeStore", header: "wx.h".} = object of WxDataViewModel
    mRoot* {.importc: "m_root".}: ptr WxDataViewTreeStoreNode


proc constructwxDataViewTreeStore*(): WxDataViewTreeStore {.cdecl, constructor, 
    importcpp: "wxDataViewTreeStore(@)", header: "wx.h".}
proc destroywxDataViewTreeStore*(this: var WxDataViewTreeStore) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStore()", header: "wx.h".}
proc appendItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                 text: WxString; icon: WxIcon = wxNullIcon; 
                 data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendItem", header: "wx.h".}
proc prependItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                  text: WxString; icon: WxIcon = wxNullIcon; 
                  data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependItem", header: "wx.h".}
proc insertItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                 previous: WxDataViewItem; text: WxString; 
                 icon: WxIcon = wxNullIcon; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "InsertItem", header: "wx.h".}
proc prependContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                       text: WxString; icon: WxIcon = wxNullIcon; 
                       expanded: WxIcon = wxNullIcon; 
                       data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependContainer", header: "wx.h".}
proc appendContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                      text: WxString; icon: WxIcon = wxNullIcon; 
                      expanded: WxIcon = wxNullIcon; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendContainer", header: "wx.h".}
proc insertContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                      previous: WxDataViewItem; text: WxString; 
                      icon: WxIcon = wxNullIcon; expanded: WxIcon = wxNullIcon; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertContainer", header: "wx.h".}
proc getNthChild*(this: WxDataViewTreeStore; parent: WxDataViewItem; pos: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetNthChild", header: "wx.h".}
proc getChildCount*(this: WxDataViewTreeStore; parent: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "GetChildCount", header: "wx.h".}
proc setItemText*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  text: WxString) {.cdecl, importcpp: "SetItemText", 
                                    header: "wx.h".}
proc getItemText*(this: WxDataViewTreeStore; item: WxDataViewItem): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: "wx.h".}
proc setItemIcon*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  icon: WxIcon) {.cdecl, importcpp: "SetItemIcon", 
                                  header: "wx.h".}
proc getItemIcon*(this: WxDataViewTreeStore; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemIcon", header: "wx.h".}
proc setItemExpandedIcon*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                          icon: WxIcon) {.cdecl, 
    importcpp: "SetItemExpandedIcon", header: "wx.h".}
proc getItemExpandedIcon*(this: WxDataViewTreeStore; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemExpandedIcon", header: "wx.h".}
proc setItemData*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  data: ptr WxClientData) {.cdecl, importcpp: "SetItemData", 
    header: "wx.h".}
proc getItemData*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxClientData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: "wx.h".}
proc deleteItem*(this: var WxDataViewTreeStore; item: WxDataViewItem) {.cdecl, 
    importcpp: "DeleteItem", header: "wx.h".}
proc deleteChildren*(this: var WxDataViewTreeStore; item: WxDataViewItem) {.
    cdecl, importcpp: "DeleteChildren", header: "wx.h".}
proc deleteAllItems*(this: var WxDataViewTreeStore) {.cdecl, 
    importcpp: "DeleteAllItems", header: "wx.h".}
proc getValue*(this: WxDataViewTreeStore; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxDataViewTreeStore; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc getParent*(this: WxDataViewTreeStore; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: "wx.h".}
proc isContainer*(this: WxDataViewTreeStore; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: "wx.h".}
proc getChildren*(this: WxDataViewTreeStore; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: "wx.h".}
proc compare*(this: WxDataViewTreeStore; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: "wx.h".}
proc hasDefaultCompare*(this: WxDataViewTreeStore): bool {.noSideEffect, cdecl, 
    importcpp: "HasDefaultCompare", header: "wx.h".}
proc getColumnCount*(this: WxDataViewTreeStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "wx.h".}
proc getColumnType*(this: WxDataViewTreeStore; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetColumnType", header: "wx.h".}
proc findNode*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxDataViewTreeStoreNode {.
    noSideEffect, cdecl, importcpp: "FindNode", header: "wx.h".}
proc findContainerNode*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxDataViewTreeStoreContainerNode {.
    noSideEffect, cdecl, importcpp: "FindContainerNode", header: "wx.h".}
proc getRoot*(this: WxDataViewTreeStore): ptr WxDataViewTreeStoreNode {.
    noSideEffect, cdecl, importcpp: "GetRoot", header: "wx.h".}

type 
  WxDataViewTreeCtrl* {.importcpp: "wxDataViewTreeCtrl", header: "wx.h".} = object of WxDataViewCtrl
  

proc constructwxDataViewTreeCtrl*(): WxDataViewTreeCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewTreeCtrl(@)", header: "wx.h".}
proc constructwxDataViewTreeCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                  pos: WxPoint = wxDefaultPosition; 
                                  size: WxSize = wxDefaultSize; style: clong = wxDV_NO_HEADER or
    wxDV_ROW_LINES; validator: WxValidator = wxDefaultValidator): WxDataViewTreeCtrl {.
    cdecl, constructor, importcpp: "wxDataViewTreeCtrl(@)", header: "wx.h".}
proc create*(this: var WxDataViewTreeCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxDV_NO_HEADER or wxDV_ROW_LINES; 
             validator: WxValidator = wxDefaultValidator): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc getStore*(this: var WxDataViewTreeCtrl): ptr WxDataViewTreeStore {.cdecl, 
    importcpp: "GetStore", header: "wx.h".}
proc getStore*(this: WxDataViewTreeCtrl): ptr WxDataViewTreeStore {.
    noSideEffect, cdecl, importcpp: "GetStore", header: "wx.h".}
proc isContainer*(this: WxDataViewTreeCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: "wx.h".}
proc appendItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                 text: WxString; icon: cint = - 1; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "AppendItem", header: "wx.h".}
proc prependItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                  text: WxString; icon: cint = - 1; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "PrependItem", header: "wx.h".}
proc insertItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                 previous: WxDataViewItem; text: WxString; icon: cint = - 1; 
                 data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertItem", header: "wx.h".}
proc prependContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                       text: WxString; icon: cint = - 1; expanded: cint = - 1; 
                       data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependContainer", header: "wx.h".}
proc appendContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                      text: WxString; icon: cint = - 1; expanded: cint = - 1; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendContainer", header: "wx.h".}
proc insertContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                      previous: WxDataViewItem; text: WxString; 
                      icon: cint = - 1; expanded: cint = - 1; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertContainer", header: "wx.h".}
proc getNthChild*(this: WxDataViewTreeCtrl; parent: WxDataViewItem; pos: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetNthChild", header: "wx.h".}
proc getChildCount*(this: WxDataViewTreeCtrl; parent: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "GetChildCount", header: "wx.h".}
proc setItemText*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  text: WxString) {.cdecl, importcpp: "SetItemText", 
                                    header: "wx.h".}
proc getItemText*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: "wx.h".}
proc setItemIcon*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  icon: WxIcon) {.cdecl, importcpp: "SetItemIcon", 
                                  header: "wx.h".}
proc getItemIcon*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemIcon", header: "wx.h".}
proc setItemExpandedIcon*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                          icon: WxIcon) {.cdecl, 
    importcpp: "SetItemExpandedIcon", header: "wx.h".}
proc getItemExpandedIcon*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemExpandedIcon", header: "wx.h".}
proc setItemData*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  data: ptr WxClientData) {.cdecl, importcpp: "SetItemData", 
    header: "wx.h".}
proc getItemData*(this: WxDataViewTreeCtrl; item: WxDataViewItem): ptr WxClientData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: "wx.h".}
proc deleteItem*(this: var WxDataViewTreeCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "DeleteItem", header: "wx.h".}
proc deleteChildren*(this: var WxDataViewTreeCtrl; item: WxDataViewItem) {.
    cdecl, importcpp: "DeleteChildren", header: "wx.h".}
proc deleteAllItems*(this: var WxDataViewTreeCtrl) {.cdecl, 
    importcpp: "DeleteAllItems", header: "wx.h".}
proc onExpanded*(this: var WxDataViewTreeCtrl; event: var WxDataViewEvent) {.
    cdecl, importcpp: "OnExpanded", header: "wx.h".}
proc onCollapsed*(this: var WxDataViewTreeCtrl; event: var WxDataViewEvent) {.
    cdecl, importcpp: "OnCollapsed", header: "wx.h".}
proc onSize*(this: var WxDataViewTreeCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: "wx.h".}
