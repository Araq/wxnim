


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
                        importcpp: "wxImage::wxToolBarToolStyle", header: wxh.} = enum 
    wxTOOL_STYLE_BUTTON = 1, wxTOOL_STYLE_SEPARATOR = 2, wxTOOL_STYLE_CONTROL



type 
  WxToolBarToolBase* {.importcpp: "wxToolBarToolBase", header: wxh.} = object of WxObject
  

proc constructwxToolBarToolBase*(tbar: ptr WxToolBarBase = nil; 
                                 toolid = wxID_SEPARATOR; 
                                 label: WxString = wxEmptyString; 
                                 bmpNormal: WxBitmap = wxNullBitmap; 
                                 bmpDisabled: WxBitmap = wxNullBitmap; 
                                 kind: WxItemKind = wxITEM_NORMAL; 
                                 clientData: ptr WxObject = nil; 
                                 shortHelpString: WxString = wxEmptyString; 
                                 longHelpString: WxString = wxEmptyString): WxToolBarToolBase {.
    cdecl, constructor, importcpp: "wxToolBarToolBase(@)", header: wxh.}
proc constructwxToolBarToolBase*(tbar: ptr WxToolBarBase; 
                                 control: ptr WxControl; label: WxString): WxToolBarToolBase {.
    cdecl, constructor, importcpp: "wxToolBarToolBase(@)", header: wxh.}
proc destroywxToolBarToolBase*(this: var WxToolBarToolBase) {.cdecl, 
    importcpp: "#.~wxToolBarToolBase()", header: wxh.}
proc getId*(this: WxToolBarToolBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetId", header: wxh.}
proc getControl*(this: WxToolBarToolBase): ptr WxControl {.noSideEffect, cdecl, 
    importcpp: "GetControl", header: wxh.}
proc getToolBar*(this: WxToolBarToolBase): ptr WxToolBarBase {.noSideEffect, 
    cdecl, importcpp: "GetToolBar", header: wxh.}
proc isStretchable*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsStretchable", header: wxh.}
proc isButton*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsButton", header: wxh.}
proc isControl*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsControl", header: wxh.}
proc isSeparator*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSeparator", header: wxh.}
proc isStretchableSpace*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsStretchableSpace", header: wxh.}
proc getStyle*(this: WxToolBarToolBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getKind*(this: WxToolBarToolBase): WxItemKind {.noSideEffect, cdecl, 
    importcpp: "GetKind", header: wxh.}
proc makeStretchable*(this: var WxToolBarToolBase) {.cdecl, 
    importcpp: "MakeStretchable", header: wxh.}
proc isEnabled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: wxh.}
proc isToggled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsToggled", header: wxh.}
proc canBeToggled*(this: WxToolBarToolBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeToggled", header: wxh.}
proc getNormalBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetNormalBitmap", header: wxh.}
proc getDisabledBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, 
    cdecl, importcpp: "GetDisabledBitmap", header: wxh.}
proc getBitmap*(this: WxToolBarToolBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}
proc getLabel*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc getShortHelp*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetShortHelp", header: wxh.}
proc getLongHelp*(this: WxToolBarToolBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLongHelp", header: wxh.}
proc getClientData*(this: WxToolBarToolBase): ptr WxObject {.noSideEffect, 
    cdecl, importcpp: "GetClientData", header: wxh.}
proc enable*(this: var WxToolBarToolBase; enable: bool): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc toggle*(this: var WxToolBarToolBase; toggle: bool): bool {.cdecl, 
    importcpp: "Toggle", header: wxh.}
proc setToggle*(this: var WxToolBarToolBase; toggle: bool): bool {.cdecl, 
    importcpp: "SetToggle", header: wxh.}
proc setShortHelp*(this: var WxToolBarToolBase; help: WxString): bool {.cdecl, 
    importcpp: "SetShortHelp", header: wxh.}
proc setLongHelp*(this: var WxToolBarToolBase; help: WxString): bool {.cdecl, 
    importcpp: "SetLongHelp", header: wxh.}
proc toggle*(this: var WxToolBarToolBase) {.cdecl, importcpp: "Toggle", 
    header: wxh.}
proc setNormalBitmap*(this: var WxToolBarToolBase; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetNormalBitmap", header: wxh.}
proc setDisabledBitmap*(this: var WxToolBarToolBase; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetDisabledBitmap", header: wxh.}
proc setLabel*(this: var WxToolBarToolBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc setClientData*(this: var WxToolBarToolBase; clientData: ptr WxObject) {.
    cdecl, importcpp: "SetClientData", header: wxh.}
proc detach*(this: var WxToolBarToolBase) {.cdecl, importcpp: "Detach", 
    header: wxh.}
proc attach*(this: var WxToolBarToolBase; tbar: ptr WxToolBarBase) {.cdecl, 
    importcpp: "Attach", header: wxh.}
proc setDropdownMenu*(this: var WxToolBarToolBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetDropdownMenu", header: wxh.}
proc getDropdownMenu*(this: WxToolBarToolBase): ptr WxMenu {.noSideEffect, 
    cdecl, importcpp: "GetDropdownMenu", header: wxh.}

type 
  WxToolBarBase* {.importcpp: "wxToolBarBase", header: wxh.} = object of WxControl
  

proc constructwxToolBarBase*(): WxToolBarBase {.cdecl, constructor, 
    importcpp: "wxToolBarBase(@)", header: wxh.}
proc destroywxToolBarBase*(this: var WxToolBarBase) {.cdecl, 
    importcpp: "#.~wxToolBarBase()", header: wxh.}
proc addTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
              bitmap: WxBitmap; bmpDisabled: WxBitmap; 
              kind: WxItemKind = wxITEM_NORMAL; 
              shortHelp: WxString = wxEmptyString; 
              longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddTool", header: wxh.}
proc addTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
              bitmap: WxBitmap; shortHelp: WxString = wxEmptyString; 
              kind: WxItemKind = wxITEM_NORMAL): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "AddTool", header: wxh.}
proc addCheckTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                   bitmap: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                   shortHelp: WxString = wxEmptyString; 
                   longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddCheckTool", header: wxh.}
proc addRadioTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                   bitmap: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                   shortHelp: WxString = wxEmptyString; 
                   longHelp: WxString = wxEmptyString; data: ptr WxObject = nil): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddRadioTool", header: wxh.}
proc insertTool*(this: var WxToolBarBase; pos: csize; toolid: cint; 
                 label: WxString; bitmap: WxBitmap; 
                 bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString; 
                 clientData: ptr WxObject = nil): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "InsertTool", header: wxh.}
proc addTool*(this: var WxToolBarBase; tool: ptr WxToolBarToolBase): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddTool", header: wxh.}
proc insertTool*(this: var WxToolBarBase; pos: csize; 
                 tool: ptr WxToolBarToolBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "InsertTool", header: wxh.}
proc addControl*(this: var WxToolBarBase; control: ptr WxControl; 
                 label: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddControl", header: wxh.}
proc insertControl*(this: var WxToolBarBase; pos: csize; control: ptr WxControl; 
                    label: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertControl", header: wxh.}
proc findControl*(this: var WxToolBarBase; toolid: cint): ptr WxControl {.cdecl, 
    importcpp: "FindControl", header: wxh.}
proc addSeparator*(this: var WxToolBarBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "AddSeparator", header: wxh.}
proc insertSeparator*(this: var WxToolBarBase; pos: csize): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertSeparator", header: wxh.}
proc addStretchableSpace*(this: var WxToolBarBase): ptr WxToolBarToolBase {.
    cdecl, importcpp: "AddStretchableSpace", header: wxh.}
proc insertStretchableSpace*(this: var WxToolBarBase; pos: csize): ptr WxToolBarToolBase {.
    cdecl, importcpp: "InsertStretchableSpace", header: wxh.}
proc removeTool*(this: var WxToolBarBase; toolid: cint): ptr WxToolBarToolBase {.
    cdecl, importcpp: "RemoveTool", header: wxh.}
proc deleteToolByPos*(this: var WxToolBarBase; pos: csize): bool {.cdecl, 
    importcpp: "DeleteToolByPos", header: wxh.}
proc deleteTool*(this: var WxToolBarBase; toolid: cint): bool {.cdecl, 
    importcpp: "DeleteTool", header: wxh.}
proc clearTools*(this: var WxToolBarBase) {.cdecl, importcpp: "ClearTools", 
    header: wxh.}
proc realize*(this: var WxToolBarBase): bool {.cdecl, importcpp: "Realize", 
    header: wxh.}
proc enableTool*(this: var WxToolBarBase; toolid: cint; enable: bool) {.cdecl, 
    importcpp: "EnableTool", header: wxh.}
proc toggleTool*(this: var WxToolBarBase; toolid: cint; toggle: bool) {.cdecl, 
    importcpp: "ToggleTool", header: wxh.}
proc setToggle*(this: var WxToolBarBase; toolid: cint; toggle: bool) {.cdecl, 
    importcpp: "SetToggle", header: wxh.}
proc getToolClientData*(this: WxToolBarBase; toolid: cint): ptr WxObject {.
    noSideEffect, cdecl, importcpp: "GetToolClientData", header: wxh.}
proc setToolClientData*(this: var WxToolBarBase; toolid: cint; 
                        clientData: ptr WxObject) {.cdecl, 
    importcpp: "SetToolClientData", header: wxh.}
proc getToolPos*(this: WxToolBarBase; id: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolPos", header: wxh.}
proc getToolState*(this: WxToolBarBase; toolid: cint): bool {.noSideEffect, 
    cdecl, importcpp: "GetToolState", header: wxh.}
proc getToolEnabled*(this: WxToolBarBase; toolid: cint): bool {.noSideEffect, 
    cdecl, importcpp: "GetToolEnabled", header: wxh.}
proc setToolShortHelp*(this: var WxToolBarBase; toolid: cint; 
                       helpString: WxString) {.cdecl, 
    importcpp: "SetToolShortHelp", header: wxh.}
proc getToolShortHelp*(this: WxToolBarBase; toolid: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetToolShortHelp", header: wxh.}
proc setToolLongHelp*(this: var WxToolBarBase; toolid: cint; 
                      helpString: WxString) {.cdecl, 
    importcpp: "SetToolLongHelp", header: wxh.}
proc getToolLongHelp*(this: WxToolBarBase; toolid: cint): WxString {.
    noSideEffect, cdecl, importcpp: "GetToolLongHelp", header: wxh.}
proc setToolNormalBitmap*(this: var WxToolBarBase; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolNormalBitmap", header: wxh.}
proc setToolDisabledBitmap*(this: var WxToolBarBase; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolDisabledBitmap", header: wxh.}
proc setMargins*(this: var WxToolBarBase; x: cint; y: cint) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc setMargins*(this: var WxToolBarBase; size: WxSize) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc setToolPacking*(this: var WxToolBarBase; packing: cint) {.cdecl, 
    importcpp: "SetToolPacking", header: wxh.}
proc setToolSeparation*(this: var WxToolBarBase; separation: cint) {.cdecl, 
    importcpp: "SetToolSeparation", header: wxh.}
proc getToolMargins*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolMargins", header: wxh.}
proc getToolPacking*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolPacking", header: wxh.}
proc getToolSeparation*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetToolSeparation", header: wxh.}
proc setRows*(this: var WxToolBarBase; nRows: cint) {.cdecl, 
    importcpp: "SetRows", header: wxh.}
proc setMaxRowsCols*(this: var WxToolBarBase; rows: cint; cols: cint) {.cdecl, 
    importcpp: "SetMaxRowsCols", header: wxh.}
proc getMaxRows*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxRows", header: wxh.}
proc getMaxCols*(this: WxToolBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxCols", header: wxh.}
proc setToolBitmapSize*(this: var WxToolBarBase; size: WxSize) {.cdecl, 
    importcpp: "SetToolBitmapSize", header: wxh.}
proc getToolBitmapSize*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolBitmapSize", header: wxh.}
proc getToolSize*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolSize", header: wxh.}
proc findToolForPosition*(this: WxToolBarBase; x: WxCoord; y: WxCoord): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindToolForPosition", header: wxh.}
proc findById*(this: WxToolBarBase; toolid: cint): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindById", header: wxh.}
proc isVertical*(this: WxToolBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: wxh.}
proc getToolsCount*(this: WxToolBarBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetToolsCount", header: wxh.}
proc getToolByPos*(this: WxToolBarBase; pos: cint): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "GetToolByPos", header: wxh.}
proc onLeftClick*(this: var WxToolBarBase; toolid: cint; toggleDown: bool): bool {.
    cdecl, importcpp: "OnLeftClick", header: wxh.}
proc onRightClick*(this: var WxToolBarBase; toolid: cint; x: clong; y: clong) {.
    cdecl, importcpp: "OnRightClick", header: wxh.}
proc onMouseEnter*(this: var WxToolBarBase; toolid: cint) {.cdecl, 
    importcpp: "OnMouseEnter", header: wxh.}
proc getMargins*(this: WxToolBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMargins", header: wxh.}
proc createTool*(this: var WxToolBarBase; toolid: cint; label: WxString; 
                 bmpNormal: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 clientData: ptr WxObject = nil; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: wxh.}
proc createTool*(this: var WxToolBarBase; control: ptr WxControl; 
                 label: WxString): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "CreateTool", header: wxh.}
proc createSeparator*(this: var WxToolBarBase): ptr WxToolBarToolBase {.cdecl, 
    importcpp: "CreateSeparator", header: wxh.}
proc updateWindowUI*(this: var WxToolBarBase; flags = wxUPDATE_UI_NONE) {.cdecl, 
    importcpp: "UpdateWindowUI", header: wxh.}
proc acceptsFocus*(this: WxToolBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc setDropdownMenu*(this: var WxToolBarBase; toolid: cint; menu: ptr WxMenu): bool {.
    cdecl, importcpp: "SetDropdownMenu", header: wxh.}
type 
  WxToolBar* {.importcpp: "wxToolBar", header: wxh.} = object of WxToolBarBase
  

proc constructwxToolBar*(): WxToolBar {.cdecl, constructor, 
                                        importcpp: "wxToolBar(@)", header: wxh.}
proc constructwxToolBar*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; 
                         style: clong = wxTB_HORIZONTAL; 
                         name: WxString = constructWxString("toolbar")): WxToolBar {.
    cdecl, constructor, importcpp: "wxToolBar(@)", header: wxh.}
proc create*(this: var WxToolBar; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxTB_HORIZONTAL; 
             name: WxString = constructWxString("toolbar")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxToolBar*(this: var WxToolBar) {.cdecl, 
    importcpp: "#.~wxToolBar()", header: wxh.}
proc findToolForPosition*(this: WxToolBar; x: WxCoord; y: WxCoord): ptr WxToolBarToolBase {.
    noSideEffect, cdecl, importcpp: "FindToolForPosition", header: wxh.}
proc realize*(this: var WxToolBar): bool {.cdecl, importcpp: "Realize", 
    header: wxh.}
proc setToolBitmapSize*(this: var WxToolBar; size: WxSize) {.cdecl, 
    importcpp: "SetToolBitmapSize", header: wxh.}
proc getToolSize*(this: WxToolBar): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetToolSize", header: wxh.}
proc setRows*(this: var WxToolBar; nRows: cint) {.cdecl, importcpp: "SetRows", 
    header: wxh.}
proc setToolNormalBitmap*(this: var WxToolBar; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolNormalBitmap", header: wxh.}
proc setToolDisabledBitmap*(this: var WxToolBar; id: cint; bitmap: WxBitmap) {.
    cdecl, importcpp: "SetToolDisabledBitmap", header: wxh.}
proc setWindowStyleFlag*(this: var WxToolBar; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: wxh.}
proc onMouseEvent*(this: var WxToolBar; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMouseEvent", header: wxh.}
proc onSysColourChanged*(this: var WxToolBar; event: var WxSysColourChangedEvent) {.
    cdecl, importcpp: "OnSysColourChanged", header: wxh.}
proc onEraseBackground*(this: var WxToolBar; event: var WxEraseEvent) {.cdecl, 
    importcpp: "OnEraseBackground", header: wxh.}
proc setFocus*(this: var WxToolBar) {.cdecl, importcpp: "SetFocus", header: wxh.}
proc canApplyThemeBorder*(this: WxToolBar): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
proc createTool*(this: var WxToolBar; id: cint; label: WxString; 
                 bmpNormal: WxBitmap; bmpDisabled: WxBitmap = wxNullBitmap; 
                 kind: WxItemKind = wxITEM_NORMAL; 
                 clientData: ptr WxObject = nil; 
                 shortHelp: WxString = wxEmptyString; 
                 longHelp: WxString = wxEmptyString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: wxh.}
proc createTool*(this: var WxToolBar; control: ptr WxControl; label: WxString): ptr WxToolBarToolBase {.
    cdecl, importcpp: "CreateTool", header: wxh.}
