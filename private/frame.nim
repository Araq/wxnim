



discard "forward decl of wxFrame"
discard "forward decl of wxMenuBar"
discard "forward decl of wxMenuItem"
discard "forward decl of wxStatusBar"
discard "forward decl of wxToolBar"
const 
  wxFRAME_NO_TASKBAR* = 0x00000002
  wxFRAME_TOOL_WINDOW* = 0x00000004
  wxFRAME_FLOAT_ON_PARENT* = 0x00000008


type 
  WxTopLevelWindow* {.importcpp: "wxTopLevelWindow", header: wxh.} = object of WxWindow
  

var wxDEFAULT_FRAME_STYLE* {.importcpp: "wxDEFAULT_FRAME_STYLE", header: wxh.}: clong

var wxFULLSCREEN_ALL* {.importcpp: "wxFULLSCREEN_ALL", header: wxh.}: clong

const 
  wxSTB_SIZEGRIP* = 0x00000010
  wxSTB_SHOW_TIPS* = 0x00000020
  wxSTB_ELLIPSIZE_START* = 0x00000040
  wxSTB_ELLIPSIZE_MIDDLE* = 0x00000080
  wxSTB_ELLIPSIZE_END* = 0x00000100
  wxSTB_DEFAULT_STYLE* = (wxSTB_SIZEGRIP or wxSTB_ELLIPSIZE_END or
      wxSTB_SHOW_TIPS or wxFULL_REPAINT_ON_RESIZE)


const 
  wxST_SIZEGRIP* = wxSTB_SIZEGRIP


const 
  wxSB_NORMAL* = 0x00000000
  wxSB_FLAT* = 0x00000001
  wxSB_RAISED* = 0x00000002
  wxSB_SUNKEN* = 0x00000003

type 
  WxFrameBase* {.importcpp: "wxFrameBase", header: wxh.} = object of WxTopLevelWindow
  

proc constructwxFrameBase*(): WxFrameBase {.cdecl, constructor, 
    importcpp: "wxFrameBase(@)", header: wxh.}
proc destroywxFrameBase*(this: var WxFrameBase) {.cdecl, 
    importcpp: "#.~wxFrameBase()", header: wxh.}
proc new*(this: var WxFrameBase; parent: ptr WxWindow; winid: WxWindowID; 
          title: WxString; pos: WxPoint = wxDefaultPosition; 
          size: WxSize = wxDefaultSize; style: clong = wxDEFAULT_FRAME_STYLE; 
          name: WxString = constructWxString("frame")): ptr WxFrame {.cdecl, 
    importcpp: "New", header: wxh.}
proc getClientAreaOrigin*(this: WxFrameBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: wxh.}
proc setMenuBar*(this: var WxFrameBase; menubar: ptr WxMenuBar) {.cdecl, 
    importcpp: "SetMenuBar", header: wxh.}
proc getMenuBar*(this: WxFrameBase): ptr WxMenuBar {.noSideEffect, cdecl, 
    importcpp: "GetMenuBar", header: wxh.}
proc findItemInMenuBar*(this: WxFrameBase; menuId: cint): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItemInMenuBar", header: wxh.}
proc processCommand*(this: var WxFrameBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "ProcessCommand", header: wxh.}
proc processCommand*(this: var WxFrameBase; winid: cint): bool {.cdecl, 
    importcpp: "ProcessCommand", header: wxh.}
proc createStatusBar*(this: var WxFrameBase; number: cint = 1; 
                      style: clong = wxSTB_DEFAULT_STYLE; 
                      winid: WxWindowID = WxWindowID(0); 
                      name: WxString = constructWxString("status_line")) {.
    cdecl, importcpp: "CreateStatusBar", header: wxh.}
proc onCreateStatusBar*(this: var WxFrameBase; number: cint; style: clong; 
                        winid: WxWindowID; name: WxString): ptr WxStatusBar {.
    cdecl, importcpp: "OnCreateStatusBar", header: wxh.}
proc getStatusBar*(this: WxFrameBase): ptr WxStatusBar {.noSideEffect, cdecl, 
    importcpp: "GetStatusBar", header: wxh.}
proc setStatusBar*(this: var WxFrameBase; statBar: ptr WxStatusBar) {.cdecl, 
    importcpp: "SetStatusBar", header: wxh.}
proc setStatusText*(this: var WxFrameBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "SetStatusText", header: wxh.}
proc setStatusWidths*(this: var WxFrameBase; n: cint; widthsField: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: wxh.}
proc pushStatusText*(this: var WxFrameBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "PushStatusText", header: wxh.}
proc popStatusText*(this: var WxFrameBase; number: cint = 0) {.cdecl, 
    importcpp: "PopStatusText", header: wxh.}
proc setStatusBarPane*(this: var WxFrameBase; n: cint) {.cdecl, 
    importcpp: "SetStatusBarPane", header: wxh.}
proc getStatusBarPane*(this: WxFrameBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetStatusBarPane", header: wxh.}
proc createToolBar*(this: var WxFrameBase; style: clong = - 1; 
                    winid: WxWindowID = WxWindowID(wxID_ANY); 
                    name: WxString = constructWxString("toolbar")): ptr WxToolBar {.
    cdecl, importcpp: "CreateToolBar", header: wxh.}
proc onCreateToolBar*(this: var WxFrameBase; style: clong; winid: WxWindowID; 
                      name: WxString): ptr WxToolBar {.cdecl, 
    importcpp: "OnCreateToolBar", header: wxh.}
proc getToolBar*(this: WxFrameBase): ptr WxToolBar {.noSideEffect, cdecl, 
    importcpp: "GetToolBar", header: wxh.}
proc setToolBar*(this: var WxFrameBase; toolbar: ptr WxToolBar) {.cdecl, 
    importcpp: "SetToolBar", header: wxh.}
proc onMenuOpen*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuOpen", header: wxh.}
proc onMenuClose*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuClose", header: wxh.}
proc onMenuHighlight*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuHighlight", header: wxh.}
proc doMenuUpdates*(this: var WxFrameBase; menu: ptr WxMenu = nil) {.cdecl, 
    importcpp: "DoMenuUpdates", header: wxh.}
proc updateWindowUI*(this: var WxFrameBase; flags = wxUPDATE_UI_NONE) {.cdecl, 
    importcpp: "UpdateWindowUI", header: wxh.}
proc onInternalIdle*(this: var WxFrameBase) {.cdecl, 
    importcpp: "OnInternalIdle", header: wxh.}
proc doGiveHelp*(this: var WxFrameBase; text: WxString; show: bool) {.cdecl, 
    importcpp: "DoGiveHelp", header: wxh.}
proc isClientAreaChild*(this: WxFrameBase; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: wxh.}
type 
  WxFrame* {.importcpp: "wxFrame", header: wxh.} = object of WxFrameBase
  

proc constructwxFrame*(): WxFrame {.cdecl, constructor, importcpp: "wxFrame(@)", 
                                    header: wxh.}
proc constructwxFrame*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                       pos: WxPoint = wxDefaultPosition; 
                       size: WxSize = wxDefaultSize; 
                       style = wxDEFAULT_FRAME_STYLE; 
                       name: WxString = constructWxString("frame")): WxFrame {.
    cdecl, constructor, importcpp: "wxFrame(@)", header: wxh.}
proc create*(this: var WxFrame; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = wxDEFAULT_FRAME_STYLE; 
             name: WxString = constructWxString("frame")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxFrame*(this: var WxFrame) {.cdecl, importcpp: "#.~wxFrame()", 
    header: wxh.}
proc showFullScreen*(this: var WxFrame; show: bool; 
                     style: clong = wxFULLSCREEN_ALL): bool {.cdecl, 
    importcpp: "ShowFullScreen", header: wxh.}
proc onSysColourChanged*(this: var WxFrame; event: var WxSysColourChangedEvent) {.
    cdecl, importcpp: "OnSysColourChanged", header: wxh.}
proc createToolBar*(this: var WxFrame; style: clong = - 1; 
                    id: WxWindowID = WxWindowID(wxID_ANY); 
                    name: WxString = constructWxString("toolbar")): ptr WxToolBar {.
    cdecl, importcpp: "CreateToolBar", header: wxh.}
proc onCreateStatusBar*(this: var WxFrame; number: cint = 1; 
                        style: clong = wxSTB_DEFAULT_STYLE; 
                        id: WxWindowID = WxWindowID(0); 
                        name: WxString = constructWxString("status_line")): ptr WxStatusBar {.
    cdecl, importcpp: "OnCreateStatusBar", header: wxh.}
proc useNativeStatusBar*(useNative: bool) {.cdecl, 
    importcpp: "wxFrame::UseNativeStatusBar(@)", header: wxh.}
proc usesNativeStatusBar*(): bool {.cdecl, importcpp: "wxFrame::UsesNativeStatusBar(@)", 
                                    header: wxh.}
proc sendSizeEvent*(this: var WxFrame; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEvent", header: wxh.}
proc getClientAreaOrigin*(this: WxFrame): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: wxh.}
