

discard "forward decl of wxImageList"
discard "forward decl of wxDataViewModel"
discard "forward decl of wxDataViewCtrl"
discard "forward decl of wxDataViewColumn"
type 
  WxDataViewRenderer* {.importcpp: "wxDataViewRenderer", header: wxh.} = object 
  

discard "forward decl of wxDataViewModelNotifier"
type 
  WxDragResult* {.importcpp: "wxDragResult", header: wxh.} = object 
  
  WxDataViewCellMode* {.size: sizeof(cint), importcpp: "wxDataViewModelNotifier::wxDataViewCellMode", 
                        header: wxh.} = enum 
    wxDATAVIEW_CELL_INERT, wxDATAVIEW_CELL_ACTIVATABLE, wxDATAVIEW_CELL_EDITABLE


type 
  WxDataViewCellRenderState* {.size: sizeof(cint), importcpp: "wxDataViewModelNotifier::wxDataViewCellRenderState", 
                               header: wxh.} = enum 
    wxDATAVIEW_CELL_SELECTED = 1, wxDATAVIEW_CELL_PRELIT = 2, 
    wxDATAVIEW_CELL_INSENSITIVE = 4, wxDATAVIEW_CELL_FOCUSED = 8


const 
  wxDATAVIEW_COL_RESIZABLE* = 1
  wxCOL_RESIZABLE* = 1

type 
  WxArray* {.importcpp: "wxArray", header: wxh.}[T] = object 
  
  WxVector* {.importcpp: "wxVector", header: wxh.}[T] = object 
  


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
  WxDataViewItem* {.importcpp: "wxDataViewItem", header: wxh, inheritable.} = object 
  

proc constructwxDataViewItem*(): WxDataViewItem {.cdecl, constructor, 
    importcpp: "wxDataViewItem(@)", header: wxh.}
proc constructwxDataViewItem*(pItem: pointer): WxDataViewItem {.cdecl, 
    constructor, importcpp: "wxDataViewItem(@)", header: wxh.}
type 
  WxDataViewItemArray* = WxArray[WxDataViewItem]


type 
  WxDataViewModelNotifier* {.importcpp: "wxDataViewModelNotifier", header: wxh.} = object 
  

proc constructwxDataViewModelNotifier*(): WxDataViewModelNotifier {.cdecl, 
    constructor, importcpp: "wxDataViewModelNotifier(@)", header: wxh.}
proc destroywxDataViewModelNotifier*(this: var WxDataViewModelNotifier) {.cdecl, 
    importcpp: "#.~wxDataViewModelNotifier()", header: wxh.}
proc itemAdded*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                item: WxDataViewItem): bool {.cdecl, importcpp: "ItemAdded", 
    header: wxh.}
proc itemDeleted*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                  item: WxDataViewItem): bool {.cdecl, importcpp: "ItemDeleted", 
    header: wxh.}
proc itemChanged*(this: var WxDataViewModelNotifier; item: WxDataViewItem): bool {.
    cdecl, importcpp: "ItemChanged", header: wxh.}
proc itemsAdded*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                 items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsAdded", header: wxh.}
proc itemsDeleted*(this: var WxDataViewModelNotifier; parent: WxDataViewItem; 
                   items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsDeleted", header: wxh.}
proc itemsChanged*(this: var WxDataViewModelNotifier; items: WxDataViewItemArray): bool {.
    cdecl, importcpp: "ItemsChanged", header: wxh.}
proc valueChanged*(this: var WxDataViewModelNotifier; item: WxDataViewItem; 
                   col: cuint): bool {.cdecl, importcpp: "ValueChanged", 
                                       header: wxh.}
proc cleared*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "Cleared", header: wxh.}
proc beforeReset*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "BeforeReset", header: wxh.}
proc afterReset*(this: var WxDataViewModelNotifier): bool {.cdecl, 
    importcpp: "AfterReset", header: wxh.}
proc resort*(this: var WxDataViewModelNotifier) {.cdecl, importcpp: "Resort", 
    header: wxh.}
proc setOwner*(this: var WxDataViewModelNotifier; owner: ptr WxDataViewModel) {.
    cdecl, importcpp: "SetOwner", header: wxh.}
proc getOwner*(this: WxDataViewModelNotifier): ptr WxDataViewModel {.
    noSideEffect, cdecl, importcpp: "GetOwner", header: wxh.}

type 
  WxDataViewItemAttr* {.importcpp: "wxDataViewItemAttr", header: wxh.} = object 
  

proc constructwxDataViewItemAttr*(): WxDataViewItemAttr {.cdecl, constructor, 
    importcpp: "wxDataViewItemAttr(@)", header: wxh.}
proc setColour*(this: var WxDataViewItemAttr; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc setBold*(this: var WxDataViewItemAttr; set: bool) {.cdecl, 
    importcpp: "SetBold", header: wxh.}
proc setItalic*(this: var WxDataViewItemAttr; set: bool) {.cdecl, 
    importcpp: "SetItalic", header: wxh.}
proc setBackgroundColour*(this: var WxDataViewItemAttr; colour: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: wxh.}
proc hasColour*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasColour", header: wxh.}
proc getColour*(this: WxDataViewItemAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetColour", header: wxh.}
proc hasFont*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: wxh.}
proc getBold*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetBold", header: wxh.}
proc getItalic*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetItalic", header: wxh.}
proc hasBackgroundColour*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: wxh.}
proc getBackgroundColour*(this: WxDataViewItemAttr): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: wxh.}
proc isDefault*(this: WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsDefault", header: wxh.}
proc getEffectiveFont*(this: WxDataViewItemAttr; font: WxFont): WxFont {.
    noSideEffect, cdecl, importcpp: "GetEffectiveFont", header: wxh.}

type 
  WxDataViewModel* {.importcpp: "wxDataViewModel", header: wxh.} = object of WxRefCounter
  

proc constructwxDataViewModel*(): WxDataViewModel {.cdecl, constructor, 
    importcpp: "wxDataViewModel(@)", header: wxh.}
proc getColumnCount*(this: WxDataViewModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumnType*(this: WxDataViewModel; col: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "GetColumnType", header: wxh.}
proc getValue*(this: WxDataViewModel; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc hasValue*(this: WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "HasValue", header: wxh.}
proc setValue*(this: var WxDataViewModel; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.discardable, cdecl, 
    importcpp: "SetValue", header: wxh.}
proc changeValue*(this: var WxDataViewModel; variant: WxVariant; 
                  item: WxDataViewItem; col: cuint): bool {.cdecl, 
    importcpp: "ChangeValue", header: wxh.}
proc getAttr*(this: WxDataViewModel; item: WxDataViewItem; col: cuint; 
              attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttr", header: wxh.}
proc isEnabled*(this: WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabled", header: wxh.}
proc getParent*(this: WxDataViewModel; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: wxh.}
proc isContainer*(this: WxDataViewModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: wxh.}
proc hasContainerColumns*(this: WxDataViewModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "HasContainerColumns", header: wxh.}
proc getChildren*(this: WxDataViewModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: wxh.}
proc itemAdded*(this: var WxDataViewModel; parent: WxDataViewItem; 
                item: WxDataViewItem): bool {.cdecl, importcpp: "ItemAdded", 
    header: wxh.}
proc itemsAdded*(this: var WxDataViewModel; parent: WxDataViewItem; 
                 items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsAdded", header: wxh.}
proc itemDeleted*(this: var WxDataViewModel; parent: WxDataViewItem; 
                  item: WxDataViewItem): bool {.cdecl, importcpp: "ItemDeleted", 
    header: wxh.}
proc itemsDeleted*(this: var WxDataViewModel; parent: WxDataViewItem; 
                   items: WxDataViewItemArray): bool {.cdecl, 
    importcpp: "ItemsDeleted", header: wxh.}
proc itemChanged*(this: var WxDataViewModel; item: WxDataViewItem): bool {.
    cdecl, importcpp: "ItemChanged", header: wxh.}
proc itemsChanged*(this: var WxDataViewModel; items: WxDataViewItemArray): bool {.
    cdecl, importcpp: "ItemsChanged", header: wxh.}
proc valueChanged*(this: var WxDataViewModel; item: WxDataViewItem; col: cuint): bool {.
    cdecl, importcpp: "ValueChanged", header: wxh.}
proc cleared*(this: var WxDataViewModel): bool {.cdecl, importcpp: "Cleared", 
    header: wxh.}
proc beforeReset*(this: var WxDataViewModel): bool {.cdecl, 
    importcpp: "BeforeReset", header: wxh.}
proc afterReset*(this: var WxDataViewModel): bool {.cdecl, 
    importcpp: "AfterReset", header: wxh.}
proc resort*(this: var WxDataViewModel) {.cdecl, importcpp: "Resort", 
    header: wxh.}
proc addNotifier*(this: var WxDataViewModel; 
                  notifier: ptr WxDataViewModelNotifier) {.cdecl, 
    importcpp: "AddNotifier", header: wxh.}
proc removeNotifier*(this: var WxDataViewModel; 
                     notifier: ptr WxDataViewModelNotifier) {.cdecl, 
    importcpp: "RemoveNotifier", header: wxh.}
proc compare*(this: WxDataViewModel; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: wxh.}
proc hasDefaultCompare*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "HasDefaultCompare", header: wxh.}
proc isListModel*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsListModel", header: wxh.}
proc isVirtualListModel*(this: WxDataViewModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsVirtualListModel", header: wxh.}

type 
  WxDataViewListModel* {.importcpp: "wxDataViewListModel", header: wxh.} = object of WxDataViewModel
  

proc getValueByRow*(this: WxDataViewListModel; variant: var WxVariant; 
                    row: cuint; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValueByRow", header: wxh.}
proc setValueByRow*(this: var WxDataViewListModel; variant: WxVariant; 
                    row: cuint; col: cuint): bool {.discardable, cdecl, 
    importcpp: "SetValueByRow", header: wxh.}
proc getAttrByRow*(this: WxDataViewListModel; row: cuint; col: cuint; 
                   attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttrByRow", header: wxh.}
proc isEnabledByRow*(this: WxDataViewListModel; row: cuint; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabledByRow", header: wxh.}
proc getRow*(this: WxDataViewListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: wxh.}
proc getCount*(this: WxDataViewListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getParent*(this: WxDataViewListModel; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: wxh.}
proc isContainer*(this: WxDataViewListModel; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: wxh.}
proc getValue*(this: WxDataViewListModel; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxDataViewListModel; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.discardable, cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getAttr*(this: WxDataViewListModel; item: WxDataViewItem; col: cuint; 
              attr: var WxDataViewItemAttr): bool {.noSideEffect, cdecl, 
    importcpp: "GetAttr", header: wxh.}
proc isEnabled*(this: WxDataViewListModel; item: WxDataViewItem; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "IsEnabled", header: wxh.}
proc isListModel*(this: WxDataViewListModel): bool {.noSideEffect, cdecl, 
    importcpp: "IsListModel", header: wxh.}

type 
  WxDataViewIndexListModel* {.importcpp: "wxDataViewIndexListModel", header: wxh.} = object of WxDataViewListModel
  

proc constructwxDataViewIndexListModel*(initialSize: cuint = 0): WxDataViewIndexListModel {.
    cdecl, constructor, importcpp: "wxDataViewIndexListModel(@)", header: wxh.}
proc rowPrepended*(this: var WxDataViewIndexListModel) {.cdecl, 
    importcpp: "RowPrepended", header: wxh.}
proc rowInserted*(this: var WxDataViewIndexListModel; before: cuint) {.cdecl, 
    importcpp: "RowInserted", header: wxh.}
proc rowAppended*(this: var WxDataViewIndexListModel) {.cdecl, 
    importcpp: "RowAppended", header: wxh.}
proc rowDeleted*(this: var WxDataViewIndexListModel; row: cuint) {.cdecl, 
    importcpp: "RowDeleted", header: wxh.}
proc rowsDeleted*(this: var WxDataViewIndexListModel; rows: WxArrayInt) {.cdecl, 
    importcpp: "RowsDeleted", header: wxh.}
proc rowChanged*(this: var WxDataViewIndexListModel; row: cuint) {.cdecl, 
    importcpp: "RowChanged", header: wxh.}
proc rowValueChanged*(this: var WxDataViewIndexListModel; row: cuint; col: cuint) {.
    cdecl, importcpp: "RowValueChanged", header: wxh.}
proc reset*(this: var WxDataViewIndexListModel; newSize: cuint) {.cdecl, 
    importcpp: "Reset", header: wxh.}
proc getRow*(this: WxDataViewIndexListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: wxh.}
proc getItem*(this: WxDataViewIndexListModel; row: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetItem", header: wxh.}
proc getChildren*(this: WxDataViewIndexListModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: wxh.}
proc getCount*(this: WxDataViewIndexListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}

type 
  WxDataViewVirtualListModel* {.importcpp: "wxDataViewVirtualListModel", 
                                header: wxh.} = object of WxDataViewListModel
  

proc constructwxDataViewVirtualListModel*(initialSize: cuint = 0): WxDataViewVirtualListModel {.
    cdecl, constructor, importcpp: "wxDataViewVirtualListModel(@)", header: wxh.}
proc rowPrepended*(this: var WxDataViewVirtualListModel) {.cdecl, 
    importcpp: "RowPrepended", header: wxh.}
proc rowInserted*(this: var WxDataViewVirtualListModel; before: cuint) {.cdecl, 
    importcpp: "RowInserted", header: wxh.}
proc rowAppended*(this: var WxDataViewVirtualListModel) {.cdecl, 
    importcpp: "RowAppended", header: wxh.}
proc rowDeleted*(this: var WxDataViewVirtualListModel; row: cuint) {.cdecl, 
    importcpp: "RowDeleted", header: wxh.}
proc rowsDeleted*(this: var WxDataViewVirtualListModel; rows: WxArrayInt) {.
    cdecl, importcpp: "RowsDeleted", header: wxh.}
proc rowChanged*(this: var WxDataViewVirtualListModel; row: cuint) {.cdecl, 
    importcpp: "RowChanged", header: wxh.}
proc rowValueChanged*(this: var WxDataViewVirtualListModel; row: cuint; 
                      col: cuint) {.cdecl, importcpp: "RowValueChanged", 
                                    header: wxh.}
proc reset*(this: var WxDataViewVirtualListModel; newSize: cuint) {.cdecl, 
    importcpp: "Reset", header: wxh.}
proc getRow*(this: WxDataViewVirtualListModel; item: WxDataViewItem): cuint {.
    noSideEffect, cdecl, importcpp: "GetRow", header: wxh.}
proc getItem*(this: WxDataViewVirtualListModel; row: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetItem", header: wxh.}
proc compare*(this: WxDataViewVirtualListModel; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: wxh.}
proc hasDefaultCompare*(this: WxDataViewVirtualListModel): bool {.noSideEffect, 
    cdecl, importcpp: "HasDefaultCompare", header: wxh.}
proc getChildren*(this: WxDataViewVirtualListModel; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: wxh.}
proc getCount*(this: WxDataViewVirtualListModel): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc isVirtualListModel*(this: WxDataViewVirtualListModel): bool {.noSideEffect, 
    cdecl, importcpp: "IsVirtualListModel", header: wxh.}


type 
  WxSettableHeaderColumn* {.importcpp: "wxSettableHeaderColumn", header: wxh, 
                            inheritable.} = object 
  
  WxDataViewColumnBase* {.importcpp: "wxDataViewColumnBase", header: wxh.} = object of WxSettableHeaderColumn
  

proc constructwxDataViewColumnBase*(renderer: ptr WxDataViewRenderer; 
                                    modelColumn: cuint): WxDataViewColumnBase {.
    cdecl, constructor, importcpp: "wxDataViewColumnBase(@)", header: wxh.}
proc constructwxDataViewColumnBase*(bitmap: WxBitmap; 
                                    renderer: ptr WxDataViewRenderer; 
                                    modelColumn: cuint): WxDataViewColumnBase {.
    cdecl, constructor, importcpp: "wxDataViewColumnBase(@)", header: wxh.}
proc destroywxDataViewColumnBase*(this: var WxDataViewColumnBase) {.cdecl, 
    importcpp: "#.~wxDataViewColumnBase()", header: wxh.}
proc setOwner*(this: var WxDataViewColumnBase; owner: ptr WxDataViewCtrl) {.
    cdecl, importcpp: "SetOwner", header: wxh.}
proc getModelColumn*(this: WxDataViewColumnBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetModelColumn", header: wxh.}
proc getOwner*(this: WxDataViewColumnBase): ptr WxDataViewCtrl {.noSideEffect, 
    cdecl, importcpp: "GetOwner", header: wxh.}
proc getRenderer*(this: WxDataViewColumnBase): ptr WxDataViewRenderer {.
    noSideEffect, cdecl, importcpp: "GetRenderer", header: wxh.}
proc setBitmap*(this: var WxDataViewColumnBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: wxh.}
proc getBitmap*(this: WxDataViewColumnBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}

const 
  wxDV_SINGLE* = 0x00000000
  wxDV_MULTIPLE* = 0x00000001
  wxDV_NO_HEADER* = 0x00000002
  wxDV_HORIZ_RULES* = 0x00000004
  wxDV_VERT_RULES* = 0x00000008
  wxDV_ROW_LINES* = 0x00000010
  wxDV_VARIABLE_LINE_HEIGHT* = 0x00000020

type 
  WxDataViewCtrlBase* {.importcpp: "wxDataViewCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxDataViewCtrlBase*(): WxDataViewCtrlBase {.cdecl, constructor, 
    importcpp: "wxDataViewCtrlBase(@)", header: wxh.}
proc destroywxDataViewCtrlBase*(this: var WxDataViewCtrlBase) {.cdecl, 
    importcpp: "#.~wxDataViewCtrlBase()", header: wxh.}
proc associateModel*(this: var WxDataViewCtrlBase; model: ptr WxDataViewModel): bool {.
    cdecl, importcpp: "AssociateModel", header: wxh.}
proc getModel*(this: var WxDataViewCtrlBase): ptr WxDataViewModel {.cdecl, 
    importcpp: "GetModel", header: wxh.}
proc getModel*(this: WxDataViewCtrlBase): ptr WxDataViewModel {.noSideEffect, 
    cdecl, importcpp: "GetModel", header: wxh.}
proc prependTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependTextColumn", header: wxh.}
proc prependIconTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependIconTextColumn", header: wxh.}
proc prependToggleColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependToggleColumn", header: wxh.}
proc prependProgressColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = wxDVC_DEFAULT_WIDTH; 
                            align: WxAlignment = wxALIGN_CENTER; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependProgressColumn", header: wxh.}
proc prependDateColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependDateColumn", header: wxh.}
proc prependBitmapColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = - 1; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependBitmapColumn", header: wxh.}
proc prependTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependTextColumn", header: wxh.}
proc prependIconTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependIconTextColumn", header: wxh.}
proc prependToggleColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependToggleColumn", header: wxh.}
proc prependProgressColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                            modelColumn: cuint; 
                            mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                            width: cint = wxDVC_DEFAULT_WIDTH; 
                            align: WxAlignment = wxALIGN_CENTER; 
                            flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependProgressColumn", header: wxh.}
proc prependDateColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                        modelColumn: cuint; 
                        mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                        width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                        flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependDateColumn", header: wxh.}
proc prependBitmapColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                          modelColumn: cuint; 
                          mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                          width: cint = - 1; 
                          align: WxAlignment = wxALIGN_CENTER; 
                          flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "PrependBitmapColumn", header: wxh.}
proc appendTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: wxh.}
proc appendIconTextColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: wxh.}
proc appendToggleColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                         align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: wxh.}
proc appendProgressColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = wxDVC_DEFAULT_WIDTH; 
                           align: WxAlignment = wxALIGN_CENTER; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: wxh.}
proc appendDateColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendDateColumn", header: wxh.}
proc appendBitmapColumn*(this: var WxDataViewCtrlBase; label: WxString; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendBitmapColumn", header: wxh.}
proc appendTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: wxh.}
proc appendIconTextColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: wxh.}
proc appendToggleColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = wxDVC_TOGGLE_DEFAULT_WIDTH; 
                         align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: wxh.}
proc appendProgressColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                           modelColumn: cuint; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = wxDVC_DEFAULT_WIDTH; 
                           align: WxAlignment = wxALIGN_CENTER; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: wxh.}
proc appendDateColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                       modelColumn: cuint; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_NOT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendDateColumn", header: wxh.}
proc appendBitmapColumn*(this: var WxDataViewCtrlBase; label: WxBitmap; 
                         modelColumn: cuint; 
                         mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_CENTER; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendBitmapColumn", header: wxh.}
proc prependColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: wxh.}
proc insertColumn*(this: var WxDataViewCtrlBase; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: wxh.}
proc appendColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: wxh.}
proc getColumnCount*(this: WxDataViewCtrlBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumn*(this: WxDataViewCtrlBase; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: wxh.}
proc getColumnPosition*(this: WxDataViewCtrlBase; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnPosition", header: wxh.}
proc deleteColumn*(this: var WxDataViewCtrlBase; column: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "DeleteColumn", header: wxh.}
proc clearColumns*(this: var WxDataViewCtrlBase): bool {.cdecl, 
    importcpp: "ClearColumns", header: wxh.}
proc setExpanderColumn*(this: var WxDataViewCtrlBase; col: ptr WxDataViewColumn) {.
    cdecl, importcpp: "SetExpanderColumn", header: wxh.}
proc getExpanderColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetExpanderColumn", header: wxh.}
proc getSortingColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetSortingColumn", header: wxh.}
proc setIndent*(this: var WxDataViewCtrlBase; indent: cint) {.cdecl, 
    importcpp: "SetIndent", header: wxh.}
proc getIndent*(this: WxDataViewCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetIndent", header: wxh.}
proc getCurrentItem*(this: WxDataViewCtrlBase): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetCurrentItem", header: wxh.}
proc setCurrentItem*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.
    cdecl, importcpp: "SetCurrentItem", header: wxh.}
proc getCurrentColumn*(this: WxDataViewCtrlBase): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetCurrentColumn", header: wxh.}
proc getSelectedItemsCount*(this: WxDataViewCtrlBase): cint {.noSideEffect, 
    cdecl, importcpp: "GetSelectedItemsCount", header: wxh.}
proc hasSelection*(this: WxDataViewCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: wxh.}
proc getSelection*(this: WxDataViewCtrlBase): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetSelection", header: wxh.}
proc getSelections*(this: WxDataViewCtrlBase; sel: var WxDataViewItemArray): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: wxh.}
proc setSelections*(this: var WxDataViewCtrlBase; sel: WxDataViewItemArray) {.
    cdecl, importcpp: "SetSelections", header: wxh.}
proc select*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Select", header: wxh.}
proc unselect*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Unselect", header: wxh.}
proc isSelected*(this: WxDataViewCtrlBase; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: wxh.}
proc selectAll*(this: var WxDataViewCtrlBase) {.cdecl, importcpp: "SelectAll", 
    header: wxh.}
proc unselectAll*(this: var WxDataViewCtrlBase) {.cdecl, 
    importcpp: "UnselectAll", header: wxh.}
proc expand*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Expand", header: wxh.}
proc expandAncestors*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.
    cdecl, importcpp: "ExpandAncestors", header: wxh.}
proc collapse*(this: var WxDataViewCtrlBase; item: WxDataViewItem) {.cdecl, 
    importcpp: "Collapse", header: wxh.}
proc isExpanded*(this: WxDataViewCtrlBase; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsExpanded", header: wxh.}
proc ensureVisible*(this: var WxDataViewCtrlBase; item: WxDataViewItem; 
                    column: ptr WxDataViewColumn = nil) {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc hitTest*(this: WxDataViewCtrlBase; point: WxPoint; 
              item: var WxDataViewItem; column: var ptr WxDataViewColumn) {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc getItemRect*(this: WxDataViewCtrlBase; item: WxDataViewItem; 
                  column: ptr WxDataViewColumn = nil): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetItemRect", header: wxh.}
proc setRowHeight*(this: var WxDataViewCtrlBase; rowHeight: cint): bool {.
    discardable, cdecl, importcpp: "SetRowHeight", header: wxh.}
proc editItem*(this: var WxDataViewCtrlBase; item: WxDataViewItem; 
               column: ptr WxDataViewColumn) {.cdecl, importcpp: "EditItem", 
    header: wxh.}
proc enableDragSource*(this: var WxDataViewCtrlBase; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDragSource", header: wxh.}
proc enableDropTarget*(this: var WxDataViewCtrlBase; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDropTarget", header: wxh.}
proc getDefaultAttributes*(this: WxDataViewCtrlBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: wxh.}

type 
  WxDataViewEvent* {.importcpp: "wxDataViewEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxDataViewEvent*(commandType: WxEventType = wxEVT_NULL; 
                               winid: cint = 0): WxDataViewEvent {.cdecl, 
    constructor, importcpp: "wxDataViewEvent(@)", header: wxh.}
proc constructwxDataViewEvent*(event: WxDataViewEvent): WxDataViewEvent {.cdecl, 
    constructor, importcpp: "wxDataViewEvent(@)", header: wxh.}
proc getItem*(this: WxDataViewEvent): WxDataViewItem {.noSideEffect, cdecl, 
    importcpp: "GetItem", header: wxh.}
proc setItem*(this: var WxDataViewEvent; item: WxDataViewItem) {.cdecl, 
    importcpp: "SetItem", header: wxh.}
proc getColumn*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: wxh.}
proc setColumn*(this: var WxDataViewEvent; col: cint) {.cdecl, 
    importcpp: "SetColumn", header: wxh.}
proc getModel*(this: WxDataViewEvent): ptr WxDataViewModel {.noSideEffect, 
    cdecl, importcpp: "GetModel", header: wxh.}
proc setModel*(this: var WxDataViewEvent; model: ptr WxDataViewModel) {.cdecl, 
    importcpp: "SetModel", header: wxh.}
proc getValue*(this: WxDataViewEvent): WxVariant {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxDataViewEvent; value: WxVariant) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc isEditCancelled*(this: WxDataViewEvent): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditCancelled", header: wxh.}
proc setEditCanceled*(this: var WxDataViewEvent; editCancelled: bool) {.cdecl, 
    importcpp: "SetEditCanceled", header: wxh.}
proc setDataViewColumn*(this: var WxDataViewEvent; col: ptr WxDataViewColumn) {.
    cdecl, importcpp: "SetDataViewColumn", header: wxh.}
proc getDataViewColumn*(this: WxDataViewEvent): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetDataViewColumn", header: wxh.}
proc getPosition*(this: WxDataViewEvent): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxDataViewEvent; x: cint; y: cint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc getCacheFrom*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetCacheFrom", header: wxh.}
proc getCacheTo*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetCacheTo", header: wxh.}
proc setCache*(this: var WxDataViewEvent; `from`: cint; to: cint) {.cdecl, 
    importcpp: "SetCache", header: wxh.}
proc setDataObject*(this: var WxDataViewEvent; obj: ptr WxDataObject) {.cdecl, 
    importcpp: "SetDataObject", header: wxh.}
proc getDataObject*(this: WxDataViewEvent): ptr WxDataObject {.noSideEffect, 
    cdecl, importcpp: "GetDataObject", header: wxh.}
proc setDataFormat*(this: var WxDataViewEvent; format: WxDataFormat) {.cdecl, 
    importcpp: "SetDataFormat", header: wxh.}
proc getDataFormat*(this: WxDataViewEvent): WxDataFormat {.noSideEffect, cdecl, 
    importcpp: "GetDataFormat", header: wxh.}
proc setDataSize*(this: var WxDataViewEvent; size: csize) {.cdecl, 
    importcpp: "SetDataSize", header: wxh.}
proc getDataSize*(this: WxDataViewEvent): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc setDataBuffer*(this: var WxDataViewEvent; buf: pointer) {.cdecl, 
    importcpp: "SetDataBuffer", header: wxh.}
proc getDataBuffer*(this: WxDataViewEvent): pointer {.noSideEffect, cdecl, 
    importcpp: "GetDataBuffer", header: wxh.}
proc setDragFlags*(this: var WxDataViewEvent; flags: cint) {.cdecl, 
    importcpp: "SetDragFlags", header: wxh.}
proc getDragFlags*(this: WxDataViewEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetDragFlags", header: wxh.}
proc setDropEffect*(this: var WxDataViewEvent; effect: WxDragResult) {.cdecl, 
    importcpp: "SetDropEffect", header: wxh.}
proc getDropEffect*(this: WxDataViewEvent): WxDragResult {.noSideEffect, cdecl, 
    importcpp: "GetDropEffect", header: wxh.}
proc clone*(this: WxDataViewEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
var wxEVT_DATAVIEW_SELECTION_CHANGED* {.importcpp: "wxEVT_DATAVIEW_SELECTION_CHANGED", 
                                        header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_ACTIVATED* {.importcpp: "wxEVT_DATAVIEW_ITEM_ACTIVATED", 
                                     header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_COLLAPSED* {.importcpp: "wxEVT_DATAVIEW_ITEM_COLLAPSED", 
                                     header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EXPANDED* {.importcpp: "wxEVT_DATAVIEW_ITEM_EXPANDED", 
                                    header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_COLLAPSING* {.importcpp: "wxEVT_DATAVIEW_ITEM_COLLAPSING", 
                                      header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EXPANDING* {.importcpp: "wxEVT_DATAVIEW_ITEM_EXPANDING", 
                                     header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_START_EDITING* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_START_EDITING", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EDITING_STARTED* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_EDITING_STARTED", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_EDITING_DONE* {.importcpp: "wxEVT_DATAVIEW_ITEM_EDITING_DONE", 
                                        header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_VALUE_CHANGED* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_VALUE_CHANGED", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_CONTEXT_MENU* {.importcpp: "wxEVT_DATAVIEW_ITEM_CONTEXT_MENU", 
                                        header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_HEADER_CLICK* {.
    importcpp: "wxEVT_DATAVIEW_COLUMN_HEADER_CLICK", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_HEADER_RIGHT_CLICK*
     {.importcpp: "wxEVT_DATAVIEW_COLUMN_HEADER_RIGHT_CLICK", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_SORTED* {.importcpp: "wxEVT_DATAVIEW_COLUMN_SORTED", 
                                    header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_COLUMN_REORDERED* {.importcpp: "wxEVT_DATAVIEW_COLUMN_REORDERED", 
                                       header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_CACHE_HINT* {.importcpp: "wxEVT_DATAVIEW_CACHE_HINT", 
                                 header: wxh.}: WxEventTypeTag[WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_BEGIN_DRAG* {.importcpp: "wxEVT_DATAVIEW_ITEM_BEGIN_DRAG", 
                                      header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_DROP_POSSIBLE* {.
    importcpp: "wxEVT_DATAVIEW_ITEM_DROP_POSSIBLE", header: wxh.}: WxEventTypeTag[
    WxDataViewEvent]

var wxEVT_DATAVIEW_ITEM_DROP* {.importcpp: "wxEVT_DATAVIEW_ITEM_DROP", 
                                header: wxh.}: WxEventTypeTag[WxDataViewEvent]

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
  WxDataViewListStoreLine* {.importcpp: "wxDataViewListStoreLine", header: wxh.} = object 
    mValues* {.importc: "m_values".}: WxVector[WxVariant]
  

proc constructwxDataViewListStoreLine*(data: uint = 0): WxDataViewListStoreLine {.
    cdecl, constructor, importcpp: "wxDataViewListStoreLine(@)", header: wxh.}
proc setData*(this: var WxDataViewListStoreLine; data: uint) {.cdecl, 
    importcpp: "SetData", header: wxh.}
proc getData*(this: WxDataViewListStoreLine): uint {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
type 
  WxDataViewListStore* {.importcpp: "wxDataViewListStore", header: wxh.} = object of WxDataViewIndexListModel
  

proc constructwxDataViewListStore*(): WxDataViewListStore {.cdecl, constructor, 
    importcpp: "wxDataViewListStore(@)", header: wxh.}
proc destroywxDataViewListStore*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "#.~wxDataViewListStore()", header: wxh.}
proc prependColumn*(this: var WxDataViewListStore; varianttype: WxString) {.
    cdecl, importcpp: "PrependColumn", header: wxh.}
proc insertColumn*(this: var WxDataViewListStore; pos: cuint; 
                   varianttype: WxString) {.cdecl, importcpp: "InsertColumn", 
    header: wxh.}
proc appendColumn*(this: var WxDataViewListStore; varianttype: WxString) {.
    cdecl, importcpp: "AppendColumn", header: wxh.}
proc appendItem*(this: var WxDataViewListStore; values: WxVector[WxVariant]; 
                 data: uint = 0) {.cdecl, importcpp: "AppendItem", header: wxh.}
proc prependItem*(this: var WxDataViewListStore; values: WxVector[WxVariant]; 
                  data: uint = 0) {.cdecl, importcpp: "PrependItem", header: wxh.}
proc insertItem*(this: var WxDataViewListStore; row: cuint; 
                 values: WxVector[WxVariant]; data: uint = 0) {.cdecl, 
    importcpp: "InsertItem", header: wxh.}
proc deleteItem*(this: var WxDataViewListStore; pos: cuint) {.cdecl, 
    importcpp: "DeleteItem", header: wxh.}
proc deleteAllItems*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc clearColumns*(this: var WxDataViewListStore) {.cdecl, 
    importcpp: "ClearColumns", header: wxh.}
proc getItemCount*(this: WxDataViewListStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: wxh.}
proc setItemData*(this: var WxDataViewListStore; item: WxDataViewItem; 
                  data: uint) {.cdecl, importcpp: "SetItemData", header: wxh.}
proc getItemData*(this: WxDataViewListStore; item: WxDataViewItem): uint {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: wxh.}
proc getColumnCount*(this: WxDataViewListStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumnType*(this: WxDataViewListStore; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetColumnType", header: wxh.}
proc getValueByRow*(this: WxDataViewListStore; value: var WxVariant; row: cuint; 
                    col: cuint) {.noSideEffect, cdecl, 
                                  importcpp: "GetValueByRow", header: wxh.}
proc setValueByRow*(this: var WxDataViewListStore; value: WxVariant; row: cuint; 
                    col: cuint): bool {.discardable, cdecl, 
                                        importcpp: "SetValueByRow", header: wxh.}
discard "forward decl of wxDataViewMainWindow"
discard "forward decl of wxDataViewHeaderWindow"
type 
  WxDataViewColumn* {.importcpp: "wxDataViewColumn", header: wxh.} = object of WxDataViewColumnBase
  

proc constructwxDataViewColumn*(title: WxString; 
                                renderer: ptr WxDataViewRenderer; 
                                modelColumn: cuint; 
                                width: cint = wxDVC_DEFAULT_WIDTH; 
                                align: WxAlignment = wxALIGN_CENTER; 
                                flags: cint = wxDATAVIEW_COL_RESIZABLE): WxDataViewColumn {.
    cdecl, constructor, importcpp: "wxDataViewColumn(@)", header: wxh.}
proc constructwxDataViewColumn*(bitmap: WxBitmap; 
                                renderer: ptr WxDataViewRenderer; 
                                modelColumn: cuint; 
                                width: cint = wxDVC_DEFAULT_WIDTH; 
                                align: WxAlignment = wxALIGN_CENTER; 
                                flags: cint = wxDATAVIEW_COL_RESIZABLE): WxDataViewColumn {.
    cdecl, constructor, importcpp: "wxDataViewColumn(@)", header: wxh.}
proc setTitle*(this: var WxDataViewColumn; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: wxh.}
proc getTitle*(this: WxDataViewColumn): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: wxh.}
proc setWidth*(this: var WxDataViewColumn; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc getWidth*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc setMinWidth*(this: var WxDataViewColumn; minWidth: cint) {.cdecl, 
    importcpp: "SetMinWidth", header: wxh.}
proc getMinWidth*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinWidth", header: wxh.}
proc setAlignment*(this: var WxDataViewColumn; align: WxAlignment) {.cdecl, 
    importcpp: "SetAlignment", header: wxh.}
proc getAlignment*(this: WxDataViewColumn): WxAlignment {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: wxh.}
proc setFlags*(this: var WxDataViewColumn; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc getFlags*(this: WxDataViewColumn): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc isSortKey*(this: WxDataViewColumn): bool {.noSideEffect, cdecl, 
    importcpp: "IsSortKey", header: wxh.}
proc unsetAsSortKey*(this: var WxDataViewColumn) {.cdecl, 
    importcpp: "UnsetAsSortKey", header: wxh.}
proc setSortOrder*(this: var WxDataViewColumn; ascending: bool) {.cdecl, 
    importcpp: "SetSortOrder", header: wxh.}
proc isSortOrderAscending*(this: WxDataViewColumn): bool {.noSideEffect, cdecl, 
    importcpp: "IsSortOrderAscending", header: wxh.}
proc setBitmap*(this: var WxDataViewColumn; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: wxh.}

type 
  WxDataViewCtrl* {.importcpp: "wxDataViewCtrl", header: wxh.} = object of WxDataViewCtrlBase
  

proc constructwxDataViewCtrl*(): WxDataViewCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewCtrl(@)", header: wxh.}
proc constructwxDataViewCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; style: clong = 0; 
                              validator: WxValidator = wxDefaultValidator; name: WxString = constructWxString(
    "dataviewctrl")): WxDataViewCtrl {.cdecl, constructor, 
                                       importcpp: "wxDataViewCtrl(@)", 
                                       header: wxh.}
proc destroywxDataViewCtrl*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "#.~wxDataViewCtrl()", header: wxh.}
proc init*(this: var WxDataViewCtrl) {.cdecl, importcpp: "Init", header: wxh.}
proc create*(this: var WxDataViewCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("dataviewctrl")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc associateModel*(this: var WxDataViewCtrl; model: ptr WxDataViewModel): bool {.
    cdecl, importcpp: "AssociateModel", header: wxh.}
proc appendColumn*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: wxh.}
proc prependColumn*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: wxh.}
proc insertColumn*(this: var WxDataViewCtrl; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: wxh.}
proc doSetExpanderColumn*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "DoSetExpanderColumn", header: wxh.}
proc doSetIndent*(this: var WxDataViewCtrl) {.cdecl, importcpp: "DoSetIndent", 
    header: wxh.}
proc getColumnCount*(this: WxDataViewCtrl): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumn*(this: WxDataViewCtrl; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumn", header: wxh.}
proc deleteColumn*(this: var WxDataViewCtrl; column: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "DeleteColumn", header: wxh.}
proc clearColumns*(this: var WxDataViewCtrl): bool {.cdecl, 
    importcpp: "ClearColumns", header: wxh.}
proc getColumnPosition*(this: WxDataViewCtrl; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnPosition", header: wxh.}
proc getSortingColumn*(this: WxDataViewCtrl): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetSortingColumn", header: wxh.}
proc getSelectedItemsCount*(this: WxDataViewCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedItemsCount", header: wxh.}
proc getSelections*(this: WxDataViewCtrl; sel: var WxDataViewItemArray): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: wxh.}
proc setSelections*(this: var WxDataViewCtrl; sel: WxDataViewItemArray) {.cdecl, 
    importcpp: "SetSelections", header: wxh.}
proc select*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Select", header: wxh.}
proc unselect*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Unselect", header: wxh.}
proc isSelected*(this: WxDataViewCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: wxh.}
proc selectAll*(this: var WxDataViewCtrl) {.cdecl, importcpp: "SelectAll", 
    header: wxh.}
proc unselectAll*(this: var WxDataViewCtrl) {.cdecl, importcpp: "UnselectAll", 
    header: wxh.}
proc ensureVisible*(this: var WxDataViewCtrl; item: WxDataViewItem; 
                    column: ptr WxDataViewColumn = nil) {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc hitTest*(this: WxDataViewCtrl; point: WxPoint; item: var WxDataViewItem; 
              column: var ptr WxDataViewColumn) {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: wxh.}
proc getItemRect*(this: WxDataViewCtrl; item: WxDataViewItem; 
                  column: ptr WxDataViewColumn = nil): WxRect {.noSideEffect, 
    cdecl, importcpp: "GetItemRect", header: wxh.}
proc setRowHeight*(this: var WxDataViewCtrl; rowHeight: cint): bool {.
    discardable, cdecl, importcpp: "SetRowHeight", header: wxh.}
proc expand*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Expand", header: wxh.}
proc collapse*(this: var WxDataViewCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "Collapse", header: wxh.}
proc isExpanded*(this: WxDataViewCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsExpanded", header: wxh.}
proc setFocus*(this: var WxDataViewCtrl) {.cdecl, importcpp: "SetFocus", 
    header: wxh.}
proc setFont*(this: var WxDataViewCtrl; font: WxFont): bool {.discardable, 
    cdecl, importcpp: "SetFont", header: wxh.}
proc enableDragSource*(this: var WxDataViewCtrl; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDragSource", header: wxh.}
proc enableDropTarget*(this: var WxDataViewCtrl; format: WxDataFormat): bool {.
    cdecl, importcpp: "EnableDropTarget", header: wxh.}
proc getDefaultBorder*(this: WxDataViewCtrl): WxBorder {.noSideEffect, cdecl, 
    importcpp: "GetDefaultBorder", header: wxh.}
proc editItem*(this: var WxDataViewCtrl; item: WxDataViewItem; 
               column: ptr WxDataViewColumn) {.cdecl, importcpp: "EditItem", 
    header: wxh.}
proc getAlternateRowColour*(this: WxDataViewCtrl): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetAlternateRowColour", header: wxh.}
proc setAlternateRowColour*(this: var WxDataViewCtrl; colour: WxColour) {.cdecl, 
    importcpp: "SetAlternateRowColour", header: wxh.}
proc getBestColumnWidth*(this: WxDataViewCtrl; idx: cint): cuint {.noSideEffect, 
    cdecl, importcpp: "GetBestColumnWidth", header: wxh.}
proc columnMoved*(this: var WxDataViewCtrl; col: ptr WxDataViewColumn; 
                  newPos: cuint) {.cdecl, importcpp: "ColumnMoved", header: wxh.}
proc onColumnChange*(this: var WxDataViewCtrl; idx: cuint) {.cdecl, 
    importcpp: "OnColumnChange", header: wxh.}
proc onColumnsCountChanged*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "OnColumnsCountChanged", header: wxh.}
proc getMainWindow*(this: var WxDataViewCtrl): ptr WxWindow {.cdecl, 
    importcpp: "GetMainWindow", header: wxh.}
proc getColumnIndex*(this: WxDataViewCtrl; column: ptr WxDataViewColumn): cint {.
    noSideEffect, cdecl, importcpp: "GetColumnIndex", header: wxh.}
proc getModelColumnIndex*(this: WxDataViewCtrl; modelColumn: cuint): cint {.
    noSideEffect, cdecl, importcpp: "GetModelColumnIndex", header: wxh.}
proc getColumnAt*(this: WxDataViewCtrl; pos: cuint): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetColumnAt", header: wxh.}
proc getCurrentColumn*(this: WxDataViewCtrl): ptr WxDataViewColumn {.
    noSideEffect, cdecl, importcpp: "GetCurrentColumn", header: wxh.}
proc onInternalIdle*(this: var WxDataViewCtrl) {.cdecl, 
    importcpp: "OnInternalIdle", header: wxh.}

type 
  WxDataViewListCtrl* {.importcpp: "wxDataViewListCtrl", header: wxh.} = object of WxDataViewCtrl
  

proc constructwxDataViewListCtrl*(): WxDataViewListCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewListCtrl(@)", header: wxh.}
proc constructwxDataViewListCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                  pos: WxPoint = wxDefaultPosition; 
                                  size: WxSize = wxDefaultSize; 
                                  style: clong = wxDV_ROW_LINES; 
                                  validator: WxValidator = wxDefaultValidator): WxDataViewListCtrl {.
    cdecl, constructor, importcpp: "wxDataViewListCtrl(@)", header: wxh.}
proc destroywxDataViewListCtrl*(this: var WxDataViewListCtrl) {.cdecl, 
    importcpp: "#.~wxDataViewListCtrl()", header: wxh.}
proc create*(this: var WxDataViewListCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxDV_ROW_LINES; 
             validator: WxValidator = wxDefaultValidator): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getStore*(this: var WxDataViewListCtrl): ptr WxDataViewListStore {.cdecl, 
    importcpp: "GetStore", header: wxh.}
proc getStore*(this: WxDataViewListCtrl): ptr WxDataViewListStore {.
    noSideEffect, cdecl, importcpp: "GetStore", header: wxh.}
proc itemToRow*(this: WxDataViewListCtrl; item: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "ItemToRow", header: wxh.}
proc rowToItem*(this: WxDataViewListCtrl; row: cint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "RowToItem", header: wxh.}
proc getSelectedRow*(this: WxDataViewListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelectedRow", header: wxh.}
proc selectRow*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "SelectRow", header: wxh.}
proc unselectRow*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "UnselectRow", header: wxh.}
proc isRowSelected*(this: WxDataViewListCtrl; row: cuint): bool {.noSideEffect, 
    cdecl, importcpp: "IsRowSelected", header: wxh.}
proc appendColumn*(this: var WxDataViewListCtrl; column: ptr WxDataViewColumn; 
                   varianttype: WxString): bool {.cdecl, 
    importcpp: "AppendColumn", header: wxh.}
proc prependColumn*(this: var WxDataViewListCtrl; column: ptr WxDataViewColumn; 
                    varianttype: WxString): bool {.cdecl, 
    importcpp: "PrependColumn", header: wxh.}
proc insertColumn*(this: var WxDataViewListCtrl; pos: cuint; 
                   column: ptr WxDataViewColumn; varianttype: WxString): bool {.
    cdecl, importcpp: "InsertColumn", header: wxh.}
proc prependColumn*(this: var WxDataViewListCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "PrependColumn", header: wxh.}
proc insertColumn*(this: var WxDataViewListCtrl; pos: cuint; 
                   col: ptr WxDataViewColumn): bool {.cdecl, 
    importcpp: "InsertColumn", header: wxh.}
proc appendColumn*(this: var WxDataViewListCtrl; col: ptr WxDataViewColumn): bool {.
    cdecl, importcpp: "AppendColumn", header: wxh.}
proc clearColumns*(this: var WxDataViewListCtrl): bool {.cdecl, 
    importcpp: "ClearColumns", header: wxh.}
proc appendTextColumn*(this: var WxDataViewListCtrl; label: WxString; 
                       mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                       width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                       flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendTextColumn", header: wxh.}
proc appendToggleColumn*(this: var WxDataViewListCtrl; label: WxString; mode: WxDataViewCellMode = wxDATAVIEW_CELL_ACTIVATABLE; 
                         width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                         flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendToggleColumn", header: wxh.}
proc appendProgressColumn*(this: var WxDataViewListCtrl; label: WxString; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendProgressColumn", header: wxh.}
proc appendIconTextColumn*(this: var WxDataViewListCtrl; label: WxString; 
                           mode: WxDataViewCellMode = wxDATAVIEW_CELL_INERT; 
                           width: cint = - 1; align: WxAlignment = wxALIGN_LEFT; 
                           flags: cint = wxDATAVIEW_COL_RESIZABLE): ptr WxDataViewColumn {.
    cdecl, importcpp: "AppendIconTextColumn", header: wxh.}
proc appendItem*(this: var WxDataViewListCtrl; values: WxVector[WxVariant]; 
                 data: uint = 0) {.cdecl, importcpp: "AppendItem", header: wxh.}
proc prependItem*(this: var WxDataViewListCtrl; values: WxVector[WxVariant]; 
                  data: uint = 0) {.cdecl, importcpp: "PrependItem", header: wxh.}
proc insertItem*(this: var WxDataViewListCtrl; row: cuint; 
                 values: WxVector[WxVariant]; data: uint = 0) {.cdecl, 
    importcpp: "InsertItem", header: wxh.}
proc deleteItem*(this: var WxDataViewListCtrl; row: cuint) {.cdecl, 
    importcpp: "DeleteItem", header: wxh.}
proc deleteAllItems*(this: var WxDataViewListCtrl) {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc setValue*(this: var WxDataViewListCtrl; value: WxVariant; row: cuint; 
               col: cuint) {.cdecl, importcpp: "SetValue", header: wxh.}
proc getValue*(this: var WxDataViewListCtrl; value: var WxVariant; row: cuint; 
               col: cuint) {.cdecl, importcpp: "GetValue", header: wxh.}
proc setTextValue*(this: var WxDataViewListCtrl; value: WxString; row: cuint; 
                   col: cuint) {.cdecl, importcpp: "SetTextValue", header: wxh.}
proc getTextValue*(this: WxDataViewListCtrl; row: cuint; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetTextValue", header: wxh.}
proc setToggleValue*(this: var WxDataViewListCtrl; value: bool; row: cuint; 
                     col: cuint) {.cdecl, importcpp: "SetToggleValue", 
                                   header: wxh.}
proc getToggleValue*(this: WxDataViewListCtrl; row: cuint; col: cuint): bool {.
    noSideEffect, cdecl, importcpp: "GetToggleValue", header: wxh.}
proc setItemData*(this: var WxDataViewListCtrl; item: WxDataViewItem; data: uint) {.
    cdecl, importcpp: "SetItemData", header: wxh.}
proc getItemData*(this: WxDataViewListCtrl; item: WxDataViewItem): uint {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: wxh.}
proc getItemCount*(this: WxDataViewListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: wxh.}
proc onSize*(this: var WxDataViewListCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: wxh.}

type 
  WxDataViewTreeStoreNode* {.importcpp: "wxDataViewTreeStoreNode", header: wxh, 
                             inheritable.} = object 
  

proc constructwxDataViewTreeStoreNode*(parent: ptr WxDataViewTreeStoreNode; 
                                       text: WxString; 
                                       icon: WxIcon = wxNullIcon; 
                                       data: ptr WxClientData = nil): WxDataViewTreeStoreNode {.
    cdecl, constructor, importcpp: "wxDataViewTreeStoreNode(@)", header: wxh.}
proc destroywxDataViewTreeStoreNode*(this: var WxDataViewTreeStoreNode) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStoreNode()", header: wxh.}
proc setText*(this: var WxDataViewTreeStoreNode; text: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc getText*(this: WxDataViewTreeStoreNode): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc setIcon*(this: var WxDataViewTreeStoreNode; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: wxh.}
proc getIcon*(this: WxDataViewTreeStoreNode): WxIcon {.noSideEffect, cdecl, 
    importcpp: "GetIcon", header: wxh.}
proc setData*(this: var WxDataViewTreeStoreNode; data: ptr WxClientData) {.
    cdecl, importcpp: "SetData", header: wxh.}
proc getData*(this: WxDataViewTreeStoreNode): ptr WxClientData {.noSideEffect, 
    cdecl, importcpp: "GetData", header: wxh.}
proc getItem*(this: WxDataViewTreeStoreNode): WxDataViewItem {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: wxh.}
proc isContainer*(this: var WxDataViewTreeStoreNode): bool {.cdecl, 
    importcpp: "IsContainer", header: wxh.}
proc getParent*(this: var WxDataViewTreeStoreNode): ptr WxDataViewTreeStoreNode {.
    cdecl, importcpp: "GetParent", header: wxh.}
type 
  WxDataViewTreeStoreContainerNode* {.importcpp: "wxDataViewTreeStoreContainerNode", 
                                      header: wxh.} = object of WxDataViewTreeStoreNode
  

proc constructwxDataViewTreeStoreContainerNode*(
    parent: ptr WxDataViewTreeStoreNode; text: WxString; 
    icon: WxIcon = wxNullIcon; expanded: WxIcon = wxNullIcon; 
    data: ptr WxClientData = nil): WxDataViewTreeStoreContainerNode {.cdecl, 
    constructor, importcpp: "wxDataViewTreeStoreContainerNode(@)", header: wxh.}
proc destroywxDataViewTreeStoreContainerNode*(
    this: var WxDataViewTreeStoreContainerNode) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStoreContainerNode()", header: wxh.}
proc setExpandedIcon*(this: var WxDataViewTreeStoreContainerNode; icon: WxIcon) {.
    cdecl, importcpp: "SetExpandedIcon", header: wxh.}
proc getExpandedIcon*(this: WxDataViewTreeStoreContainerNode): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetExpandedIcon", header: wxh.}
proc setExpanded*(this: var WxDataViewTreeStoreContainerNode; 
                  expanded: bool = true) {.cdecl, importcpp: "SetExpanded", 
    header: wxh.}
proc isExpanded*(this: WxDataViewTreeStoreContainerNode): bool {.noSideEffect, 
    cdecl, importcpp: "IsExpanded", header: wxh.}
proc isContainer*(this: var WxDataViewTreeStoreContainerNode): bool {.cdecl, 
    importcpp: "IsContainer", header: wxh.}

type 
  WxDataViewTreeStore* {.importcpp: "wxDataViewTreeStore", header: wxh.} = object of WxDataViewModel
    mRoot* {.importc: "m_root".}: ptr WxDataViewTreeStoreNode


proc constructwxDataViewTreeStore*(): WxDataViewTreeStore {.cdecl, constructor, 
    importcpp: "wxDataViewTreeStore(@)", header: wxh.}
proc destroywxDataViewTreeStore*(this: var WxDataViewTreeStore) {.cdecl, 
    importcpp: "#.~wxDataViewTreeStore()", header: wxh.}
proc appendItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                 text: WxString; icon: WxIcon = wxNullIcon; 
                 data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendItem", header: wxh.}
proc prependItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                  text: WxString; icon: WxIcon = wxNullIcon; 
                  data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependItem", header: wxh.}
proc insertItem*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                 previous: WxDataViewItem; text: WxString; 
                 icon: WxIcon = wxNullIcon; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "InsertItem", header: wxh.}
proc prependContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                       text: WxString; icon: WxIcon = wxNullIcon; 
                       expanded: WxIcon = wxNullIcon; 
                       data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependContainer", header: wxh.}
proc appendContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                      text: WxString; icon: WxIcon = wxNullIcon; 
                      expanded: WxIcon = wxNullIcon; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendContainer", header: wxh.}
proc insertContainer*(this: var WxDataViewTreeStore; parent: WxDataViewItem; 
                      previous: WxDataViewItem; text: WxString; 
                      icon: WxIcon = wxNullIcon; expanded: WxIcon = wxNullIcon; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertContainer", header: wxh.}
proc getNthChild*(this: WxDataViewTreeStore; parent: WxDataViewItem; pos: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetNthChild", header: wxh.}
proc getChildCount*(this: WxDataViewTreeStore; parent: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "GetChildCount", header: wxh.}
proc setItemText*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  text: WxString) {.cdecl, importcpp: "SetItemText", header: wxh.}
proc getItemText*(this: WxDataViewTreeStore; item: WxDataViewItem): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: wxh.}
proc setItemIcon*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  icon: WxIcon) {.cdecl, importcpp: "SetItemIcon", header: wxh.}
proc getItemIcon*(this: WxDataViewTreeStore; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemIcon", header: wxh.}
proc setItemExpandedIcon*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                          icon: WxIcon) {.cdecl, 
    importcpp: "SetItemExpandedIcon", header: wxh.}
proc getItemExpandedIcon*(this: WxDataViewTreeStore; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemExpandedIcon", header: wxh.}
proc setItemData*(this: var WxDataViewTreeStore; item: WxDataViewItem; 
                  data: ptr WxClientData) {.cdecl, importcpp: "SetItemData", 
    header: wxh.}
proc getItemData*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxClientData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: wxh.}
proc deleteItem*(this: var WxDataViewTreeStore; item: WxDataViewItem) {.cdecl, 
    importcpp: "DeleteItem", header: wxh.}
proc deleteChildren*(this: var WxDataViewTreeStore; item: WxDataViewItem) {.
    cdecl, importcpp: "DeleteChildren", header: wxh.}
proc deleteAllItems*(this: var WxDataViewTreeStore) {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc getValue*(this: WxDataViewTreeStore; variant: var WxVariant; 
               item: WxDataViewItem; col: cuint) {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxDataViewTreeStore; variant: WxVariant; 
               item: WxDataViewItem; col: cuint): bool {.discardable, cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getParent*(this: WxDataViewTreeStore; item: WxDataViewItem): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetParent", header: wxh.}
proc isContainer*(this: WxDataViewTreeStore; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: wxh.}
proc getChildren*(this: WxDataViewTreeStore; item: WxDataViewItem; 
                  children: var WxDataViewItemArray): cuint {.noSideEffect, 
    cdecl, importcpp: "GetChildren", header: wxh.}
proc compare*(this: WxDataViewTreeStore; item1: WxDataViewItem; 
              item2: WxDataViewItem; column: cuint; ascending: bool): cint {.
    noSideEffect, cdecl, importcpp: "Compare", header: wxh.}
proc hasDefaultCompare*(this: WxDataViewTreeStore): bool {.noSideEffect, cdecl, 
    importcpp: "HasDefaultCompare", header: wxh.}
proc getColumnCount*(this: WxDataViewTreeStore): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getColumnType*(this: WxDataViewTreeStore; col: cuint): WxString {.
    noSideEffect, cdecl, importcpp: "GetColumnType", header: wxh.}
proc findNode*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxDataViewTreeStoreNode {.
    noSideEffect, cdecl, importcpp: "FindNode", header: wxh.}
proc findContainerNode*(this: WxDataViewTreeStore; item: WxDataViewItem): ptr WxDataViewTreeStoreContainerNode {.
    noSideEffect, cdecl, importcpp: "FindContainerNode", header: wxh.}
proc getRoot*(this: WxDataViewTreeStore): ptr WxDataViewTreeStoreNode {.
    noSideEffect, cdecl, importcpp: "GetRoot", header: wxh.}

type 
  WxDataViewTreeCtrl* {.importcpp: "wxDataViewTreeCtrl", header: wxh.} = object of WxDataViewCtrl
  

proc constructwxDataViewTreeCtrl*(): WxDataViewTreeCtrl {.cdecl, constructor, 
    importcpp: "wxDataViewTreeCtrl(@)", header: wxh.}
proc constructwxDataViewTreeCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                  pos: WxPoint = wxDefaultPosition; 
                                  size: WxSize = wxDefaultSize; style: clong = wxDV_NO_HEADER or
    wxDV_ROW_LINES; validator: WxValidator = wxDefaultValidator): WxDataViewTreeCtrl {.
    cdecl, constructor, importcpp: "wxDataViewTreeCtrl(@)", header: wxh.}
proc create*(this: var WxDataViewTreeCtrl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxDV_NO_HEADER or wxDV_ROW_LINES; 
             validator: WxValidator = wxDefaultValidator): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getStore*(this: var WxDataViewTreeCtrl): ptr WxDataViewTreeStore {.cdecl, 
    importcpp: "GetStore", header: wxh.}
proc getStore*(this: WxDataViewTreeCtrl): ptr WxDataViewTreeStore {.
    noSideEffect, cdecl, importcpp: "GetStore", header: wxh.}
proc isContainer*(this: WxDataViewTreeCtrl; item: WxDataViewItem): bool {.
    noSideEffect, cdecl, importcpp: "IsContainer", header: wxh.}
proc appendItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                 text: WxString; icon: cint = - 1; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "AppendItem", header: wxh.}
proc prependItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                  text: WxString; icon: cint = - 1; data: ptr WxClientData = nil): WxDataViewItem {.
    cdecl, importcpp: "PrependItem", header: wxh.}
proc insertItem*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                 previous: WxDataViewItem; text: WxString; icon: cint = - 1; 
                 data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertItem", header: wxh.}
proc prependContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                       text: WxString; icon: cint = - 1; expanded: cint = - 1; 
                       data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "PrependContainer", header: wxh.}
proc appendContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                      text: WxString; icon: cint = - 1; expanded: cint = - 1; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "AppendContainer", header: wxh.}
proc insertContainer*(this: var WxDataViewTreeCtrl; parent: WxDataViewItem; 
                      previous: WxDataViewItem; text: WxString; 
                      icon: cint = - 1; expanded: cint = - 1; 
                      data: ptr WxClientData = nil): WxDataViewItem {.cdecl, 
    importcpp: "InsertContainer", header: wxh.}
proc getNthChild*(this: WxDataViewTreeCtrl; parent: WxDataViewItem; pos: cuint): WxDataViewItem {.
    noSideEffect, cdecl, importcpp: "GetNthChild", header: wxh.}
proc getChildCount*(this: WxDataViewTreeCtrl; parent: WxDataViewItem): cint {.
    noSideEffect, cdecl, importcpp: "GetChildCount", header: wxh.}
proc setItemText*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  text: WxString) {.cdecl, importcpp: "SetItemText", header: wxh.}
proc getItemText*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxString {.
    noSideEffect, cdecl, importcpp: "GetItemText", header: wxh.}
proc setItemIcon*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  icon: WxIcon) {.cdecl, importcpp: "SetItemIcon", header: wxh.}
proc getItemIcon*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemIcon", header: wxh.}
proc setItemExpandedIcon*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                          icon: WxIcon) {.cdecl, 
    importcpp: "SetItemExpandedIcon", header: wxh.}
proc getItemExpandedIcon*(this: WxDataViewTreeCtrl; item: WxDataViewItem): WxIcon {.
    noSideEffect, cdecl, importcpp: "GetItemExpandedIcon", header: wxh.}
proc setItemData*(this: var WxDataViewTreeCtrl; item: WxDataViewItem; 
                  data: ptr WxClientData) {.cdecl, importcpp: "SetItemData", 
    header: wxh.}
proc getItemData*(this: WxDataViewTreeCtrl; item: WxDataViewItem): ptr WxClientData {.
    noSideEffect, cdecl, importcpp: "GetItemData", header: wxh.}
proc deleteItem*(this: var WxDataViewTreeCtrl; item: WxDataViewItem) {.cdecl, 
    importcpp: "DeleteItem", header: wxh.}
proc deleteChildren*(this: var WxDataViewTreeCtrl; item: WxDataViewItem) {.
    cdecl, importcpp: "DeleteChildren", header: wxh.}
proc deleteAllItems*(this: var WxDataViewTreeCtrl) {.cdecl, 
    importcpp: "DeleteAllItems", header: wxh.}
proc onExpanded*(this: var WxDataViewTreeCtrl; event: var WxDataViewEvent) {.
    cdecl, importcpp: "OnExpanded", header: wxh.}
proc onCollapsed*(this: var WxDataViewTreeCtrl; event: var WxDataViewEvent) {.
    cdecl, importcpp: "OnCollapsed", header: wxh.}
proc onSize*(this: var WxDataViewTreeCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: wxh.}
