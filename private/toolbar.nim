


const 
  wxTB_HORIZONTAL* = 4
  wxTB_VERTICAL* = 8
  wxTB_3DBUTTONS* = 0x00000010
  wxTB_FLAT* = 0x00000020
  wxTB_DEFAULT_STYLE* = 4 or 0x00000020
  wxTB_DOCKABLE* = 0x00000040
  wxTB_NOICONS* = 0x00000080
  wxTB_TEXT* = 0x00000100
  wxTB_NODIVIDER* = 0x00000200
  wxTB_NOALIGN* = 0x00000400
  wxTB_HORZ_LAYOUT* = 0x00000800
  wxTB_HORZ_TEXT* = 0x00000800 or 0x00000100
  wxTB_NO_TOOLTIPS* = 0x00001000
  wxTB_BOTTOM* = 0x00002000
  wxTB_RIGHT* = 0x00004000

const 
  wxTB_LEFT* = wxTB_VERTICAL
  wxTB_TOP* = wxTB_HORIZONTAL

discard "forward decl of wxToolBarBase"
discard "forward decl of wxToolBarToolBase"
discard "forward decl of wxImage"
type 
  WxToolBarToolStyle* {.size: sizeof(cint), 
                        importcpp: "wxImage::wxToolBarToolStyle", header: "wx.h".} = enum 
    wxTOOL_STYLE_BUTTON = 1, wxTOOL_STYLE_SEPARATOR = 2, wxTOOL_STYLE_CONTROL



type 
  WxToolBarToolBase* {.importcpp: "wxToolBarToolBase", header: "wx.h".} = object of WxObject
  

proc constructwxToolBarToolBase*(tbar: ptr WxToolBarBase = nil; 
                                 toolid: auto = wxID_SEPARATOR; 
                                 label: WxString = wxEmptyString; 
                                 bmpNormal: WxBitmap = wxNullBitmap; 
                                 bmpDisabled: WxBitmap = wxNullBitmap; 
                                 kind: WxItemKind = wxITEM_NORMAL; 
                                 clientData: ptr WxObject = nil; 
                                 shortHelpString: WxString = wxEmptyString; 
                                 longHelpString: WxString = wxEmptyString): WxToolBarToolBase {.
    cdecl, constructor, importcpp: "wxToolBarToolBase(@)", header: "wx.h".}
proc constructwxToolBarToolBase*(tbar: ptr WxToolBarBase; 
                                 control: ptr WxControl; label: WxString): WxToolBarToolBase {.
    cdecl, constructor, importcpp: "wxToolBarToolBase(@)", header: "wx.h".}
proc destroywxToolBarToolBase*(this: var WxToolBarToolBase) {.cdecl, 
    importcpp: "#.~wxToolBarToolBase()", header: "wx.h".}
proc getId*(this: WxToolBarToolBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetId", header: "wx.h".}
proc getControl*(this: WxToolBarToolBase): ptr WxControl {.noSideEffect, cdecl, 
    importcpp: "GetControl", header: "wx.h".}
proc getToolBar*(this: WxToolBarToolBase): ptr WxToolBarBase {.noSideEffect, 
    cdecl, importcpp: "GetToolBar", header: "wx.h".}
proc isStretchable*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsStretchable", header: "wx.h".}
proc isButton*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsButton", header: "wx.h".}
proc isControl*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsControl", header: "wx.h".}
proc isSeparator*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSeparator", header: "wx.h".}
proc isStretchableSpace*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsStretchableSpace", header: "wx.h".}
proc getStyle*(this: WxToolBarToolBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "wx.h".}
proc getKind*(this: WxToolBarToolBase): WxItemKind {.noSideEffect, cdecl, 
    importcpp: "GetKind", header: "wx.h".}
proc makeStretchable*(this: var WxToolBarToolBase) {.cdecl, 
    importcpp: "MakeStretchable", header: "wx.h".}
proc isEnabled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: "wx.h".}
proc isToggled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsToggled", header: "wx.h".}
proc canBeToggled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeToggled", header: "wx.h".}
proc getNormalBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetNormalBitmap", header: "wx.h".}
proc getDisabledBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetDisabledBitmap", header: "wx.h".}
proc getBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "wx.h".}
proc getLabel*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "wx.h".}
proc getShortHelp*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetShortHelp", header: "wx.h".}
proc getLongHelp*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLongHelp", header: "wx.h".}
proc getClientData*(this: WxToolBarToolBase): ptr WxObject {.noSideEffect, 
    cdecl, importcpp: "GetClientData", header: "wx.h".}
proc enable*(this: var WxToolBarToolBase; enable: bool): bool {.cdecl, 
    importcpp: "Enable", header: "wx.h".}
proc toggle*(this: var WxToolBarToolBase; toggle: bool): bool {.cdecl, 
    importcpp: "Toggle", header: "wx.h".}
proc setToggle*(this: var WxToolBarToolBase; toggle: bool): bool {.cdecl, 
    importcpp: "SetToggle", header: "wx.h".}
proc setShortHelp*(this: var WxToolBarToolBase; help: WxString): bool {.cdecl, 
    importcpp: "SetShortHelp", header: "wx.h".}
proc setLongHelp*(this: var WxToolBarToolBase; help: WxString): bool {.cdecl, 
    importcpp: "SetLongHelp", header: "wx.h".}
proc toggle*(this: var WxToolBarToolBase) {.cdecl, importcpp: "Toggle", 
    header: "wx.h".}
proc setNormalBitmap*(this: var WxToolBarToolBase; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetNormalBitmap", header: "wx.h".}
proc setDisabledBitmap*(this: var WxToolBarToolBase; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetDisabledBitmap", header: "wx.h".}
proc setLabel*(this: var WxToolBarToolBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "wx.h".}
proc setClientData*(this: var WxToolBarToolBase; clientData: ptr WxObject) {.
    cdecl, importcpp: "SetClientData", header: "wx.h".}
proc detach*(this: var WxToolBarToolBase) {.cdecl, importcpp: "Detach", 
    header: "wx.h".}
proc attach*(this: var WxToolBarToolBase; tbar: ptr WxToolBarBase) {.cdecl, 
    importcpp: "Attach", header: "wx.h".}
proc setDropdownMenu*(this: var WxToolBarToolBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetDropdownMenu", header: "wx.h".}
proc getDropdownMenu*(this: WxToolBarToolBase): ptr WxMenu {.noSideEffect, 
    cdecl, importcpp: "GetDropdownMenu", header: "wx.h".}

type 
  WxToolBarBase* {.importcpp: "wxToolBarBase", header: "wx.h".} = object of WxControl
  

proc constructwxToolBarBase*(): WxToolBarBase {.cdecl, constructor, 
    importcpp: "wxToolBarBase(@)", header: "wx.h".}
proc destroywxToolBarBase*(this: var WxToolBarBase) {.cdecl, 
    importcpp: "#.~wxToolBarBase()", header: "wx.h".}
proc addTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
              bitmap: WxBitmap; bmpDisabled: WxBitmap; 
              kind: WxItemKind = wxITEM_NORMAL; 
              shortHelp: WxString = wxEmptyString; 
              longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddTool", header: "wx.h".}
proc addTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
              bitmap: WxBitmap; shortHelp: WxString = wxEmptyString; 
              kind: WxItemKind = wxITEM_NORMAL): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "AddTool", header: "wx.h".}
proc addCheckTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                   bitmap: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                   shortHelp: WxString = wxEmptyString; 
                   longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddCheckTool", header: "wx.h".}
proc addRadioTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                   bitmap: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                   shortHelp: WxString = wxEmptyString; 
                   longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddRadioTool", header: "wx.h".}
proc insertTool*(this: var WxToolBarBase; pos: csize; toolid: cint; 
                 label: WxString; bitmap: WxBitmap; 
                 bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString; 
                 clientData: ptr WxObject = nil): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "InsertTool", header: "wx.h".}
proc addTool*(this: var WxToolBarBase; tool: ptr WxToolBarToolBase): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddTool", header: "wx.h".}
proc insertTool*(this: var WxToolBarBase; pos: csize; 
                 tool: ptr WxToolBarToolBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "InsertTool", header: "wx.h".}
proc addControl*(this: var WxToolBarBase; control: ptr WxControl; 
                 label: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddControl", header: "wx.h".}
proc insertControl*(this: var WxToolBarBase; pos: csize; control: ptr WxControl; 
                    label: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertControl", header: "wx.h".}
proc findControl*(this: var WxToolBarBase; toolid: cint): ptr WxControl {.cdecl, 
    importcpp: "FindControl", header: "wx.h".}
proc addSeparator*(this: var WxToolBarBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "AddSeparator", header: "wx.h".}
proc insertSeparator*(this: var WxToolBarBase; pos: csize): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertSeparator", header: "wx.h".}
proc addStretchableSpace*(this: var WxToolBarBase): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddStretchableSpace", header: "wx.h".}
proc insertStretchableSpace*(this: var WxToolBarBase; pos: csize): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertStretchableSpace", header: "wx.h".}
proc removeTool*(this: var WxToolBarBase; toolid: cint): ptr WxToolBarToolBase {.
    cdecl, importcpp: "RemoveTool", header: "wx.h".}
proc deleteToolByPos*(this: var WxToolBarBase; pos: csize): bool {.cdecl, 
    importcpp: "DeleteToolByPos", header: "wx.h".}
proc deleteTool*(this: var WxToolBarBase; toolid: cint): bool {.cdecl, 
    importcpp: "DeleteTool", header: "wx.h".}
proc clearTools*(this: var WxToolBarBase) {.cdecl, importcpp: "ClearTools", 
    header: "wx.h".}
proc realize*(this: var WxToolBarBase): bool {.cdecl, importcpp: "Realize", 
    header: "wx.h".}
proc enableTool*(this: var WxToolBarBase; toolid: cint; enable: bool) {.cdecl, 
    importcpp: "EnableTool", header: "wx.h".}
proc toggleTool*(this: var WxToolBarBase; toolid: cint; toggle: bool) {.cdecl, 
    importcpp: "ToggleTool", header: "wx.h".}
proc setToggle*(this: var WxToolBarBase; toolid: cint; toggle: bool) {.cdecl, 
    importcpp: "SetToggle", header: "wx.h".}
proc getToolClientData*(this: WxToolBarBase; toolid: cint): ptr WxObject {.
    noSideEffect, cdecl, importcpp: "GetToolClientData", header: "wx.h".}
proc setToolClientData*(this: var WxToolBarBase; toolid: cint; 
                        clientData: ptr WxObject) {.cdecl, 
    importcpp: "SetToolClientData", header: "wx.h".}
proc getToolPos*(this: WxToolBarBase; id: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolPos", header: "wx.h".}
proc getToolState*(this: WxToolBarBase; toolid: cint): bool {.noSideEffect, 
    cdecl, importcpp: "GetToolState", header: "wx.h".}
proc getToolEnabled*(this: WxToolBarBase; toolid: cint): bool {.noSideEffect, 
    cdecl, importcpp: "GetToolEnabled", header: "wx.h".}
proc setToolShortHelp*(this: var WxToolBarBase; toolid: cint; 
                       helpString: WxString) {.cdecl, 
    importcpp: "SetToolShortHelp", header: "wx.h".}
proc getToolShortHelp*(this: WxToolBarBase; toolid: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetToolShortHelp", header: "wx.h".}
proc setToolLongHelp*(this: var WxToolBarBase; toolid: cint; 
                      helpString: WxString) {.cdecl, 
    importcpp: "SetToolLongHelp", header: "wx.h".}
proc getToolLongHelp*(this: WxToolBarBase; toolid: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetToolLongHelp", header: "wx.h".}
proc setToolNormalBitmap*(this: var WxToolBarBase; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolNormalBitmap", header: "wx.h".}
proc setToolDisabledBitmap*(this: var WxToolBarBase; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolDisabledBitmap", header: "wx.h".}
proc setMargins*(this: var WxToolBarBase; x: cint; y: cint) {.cdecl, 
    importcpp: "SetMargins", header: "wx.h".}
proc setMargins*(this: var WxToolBarBase; size: WxSize) {.cdecl, 
    importcpp: "SetMargins", header: "wx.h".}
proc setToolPacking*(this: var WxToolBarBase; packing: cint) {.cdecl, 
    importcpp: "SetToolPacking", header: "wx.h".}
proc setToolSeparation*(this: var WxToolBarBase; separation: cint) {.cdecl, 
    importcpp: "SetToolSeparation", header: "wx.h".}
proc getToolMargins*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolMargins", header: "wx.h".}
proc getToolPacking*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolPacking", header: "wx.h".}
proc getToolSeparation*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolSeparation", header: "wx.h".}
proc setRows*(this: var WxToolBarBase; nRows: cint) {.cdecl, 
    importcpp: "SetRows", header: "wx.h".}
proc setMaxRowsCols*(this: var WxToolBarBase; rows: cint; cols: cint) {.cdecl, 
    importcpp: "SetMaxRowsCols", header: "wx.h".}
proc getMaxRows*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxRows", header: "wx.h".}
proc getMaxCols*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxCols", header: "wx.h".}
proc setToolBitmapSize*(this: var WxToolBarBase; size: WxSize) {.cdecl, 
    importcpp: "SetToolBitmapSize", header: "wx.h".}
proc getToolBitmapSize*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolBitmapSize", header: "wx.h".}
proc getToolSize*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolSize", header: "wx.h".}
proc findToolForPosition*(this: WxToolBarBase; x: WxCoord; y: WxCoord): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindToolForPosition", header: "wx.h".}
proc findById*(this: WxToolBarBase; toolid: cint): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindById", header: "wx.h".}
proc isVertical*(this: WxToolBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: "wx.h".}
proc getToolsCount*(this: WxToolBarBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetToolsCount", header: "wx.h".}
proc getToolByPos*(this: WxToolBarBase; pos: cint): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "GetToolByPos", header: "wx.h".}
proc onLeftClick*(this: var WxToolBarBase; toolid: cint; toggleDown: bool): bool {.
    cdecl, importcpp: "OnLeftClick", header: "wx.h".}
proc onRightClick*(this: var WxToolBarBase; toolid: cint; x: clong; y: clong) {.
    cdecl, importcpp: "OnRightClick", header: "wx.h".}
proc onMouseEnter*(this: var WxToolBarBase; toolid: cint) {.cdecl, 
    importcpp: "OnMouseEnter", header: "wx.h".}
proc getMargins*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMargins", header: "wx.h".}
proc createTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                 bmpNormal: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 clientData: ptr WxObject = nil; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: "wx.h".}
proc createTool*(this: var WxToolBarBase; control: ptr WxControl; 
                 label: WxString): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "CreateTool", header: "wx.h".}
proc createSeparator*(this: var WxToolBarBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "CreateSeparator", header: "wx.h".}
proc updateWindowUI*(this: var WxToolBarBase; flags: auto = wxUPDATE_UI_NONE) {.
    cdecl, importcpp: "UpdateWindowUI", header: "wx.h".}
proc acceptsFocus*(this: WxToolBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc setDropdownMenu*(this: var WxToolBarBase; toolid: cint; menu: ptr WxMenu): bool {.
    cdecl, importcpp: "SetDropdownMenu", header: "wx.h".}
type 
  WxToolBar* {.importcpp: "wxToolBar", header: "wx.h".} = object of WxToolBarBase
  

proc constructwxToolBar*(): WxToolBar {.cdecl, constructor, 
                                        importcpp: "wxToolBar(@)", 
                                        header: "wx.h".}
proc constructwxToolBar*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; 
                         style: clong = wxTB_HORIZONTAL; 
                         name: WxString = constructWxString("toolbar")): WxToolBar {.
    cdecl, constructor, importcpp: "wxToolBar(@)", header: "wx.h".}
proc create*(this: var WxToolBar; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxTB_HORIZONTAL; 
             name: WxString = constructWxString("toolbar")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxToolBar*(this: var WxToolBar) {.cdecl, 
    importcpp: "#.~wxToolBar()", header: "wx.h".}
proc findToolForPosition*(this: WxToolBar; x: WxCoord; y: WxCoord): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindToolForPosition", header: "wx.h".}
proc realize*(this: var WxToolBar): bool {.cdecl, importcpp: "Realize", 
    header: "wx.h".}
proc setToolBitmapSize*(this: var WxToolBar; size: WxSize) {.cdecl, 
    importcpp: "SetToolBitmapSize", header: "wx.h".}
proc getToolSize*(this: WxToolBar): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolSize", header: "wx.h".}
proc setRows*(this: var WxToolBar; nRows: cint) {.cdecl, importcpp: "SetRows", 
    header: "wx.h".}
proc setToolNormalBitmap*(this: var WxToolBar; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolNormalBitmap", header: "wx.h".}
proc setToolDisabledBitmap*(this: var WxToolBar; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolDisabledBitmap", header: "wx.h".}
proc setWindowStyleFlag*(this: var WxToolBar; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: "wx.h".}
proc onMouseEvent*(this: var WxToolBar; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMouseEvent", header: "wx.h".}
proc onSysColourChanged*(this: var WxToolBar; event: var WxSysColourChangedEvent) {.
    cdecl, importcpp: "OnSysColourChanged", header: "wx.h".}
proc onEraseBackground*(this: var WxToolBar; event: var WxEraseEvent) {.cdecl, 
    importcpp: "OnEraseBackground", header: "wx.h".}
proc setFocus*(this: var WxToolBar) {.cdecl, importcpp: "SetFocus", 
                                      header: "wx.h".}
proc canApplyThemeBorder*(this: WxToolBar): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "wx.h".}
proc createTool*(this: var WxToolBar; id: cint; label: WxString; 
                 bmpNormal: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 clientData: ptr WxObject = nil; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: "wx.h".}
proc createTool*(this: var WxToolBar; control: ptr WxControl; label: WxString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: "wx.h".}
