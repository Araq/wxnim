



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
  WxTopLevelWindow* {.importcpp: "wxTopLevelWindow", header: "wx.h".} = object of WxWindow
  

var wxDEFAULT_FRAME_STYLE* {.importcpp: "wxDEFAULT_FRAME_STYLE", header: "wx.h".}: clong

var wxFULLSCREEN_ALL* {.importcpp: "wxFULLSCREEN_ALL", header: "wx.h".}: clong

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
  WxFrameBase* {.importcpp: "wxFrameBase", header: "wx.h".} = object of WxTopLevelWindow
  

proc constructwxFrameBase*(): WxFrameBase {.cdecl, constructor, 
    importcpp: "wxFrameBase(@)", header: "wx.h".}
proc destroywxFrameBase*(this: var WxFrameBase) {.cdecl, 
    importcpp: "#.~wxFrameBase()", header: "wx.h".}
proc new*(this: var WxFrameBase; parent: ptr WxWindow; winid: WxWindowID; 
          title: WxString; pos: WxPoint = wxDefaultPosition; 
          size: WxSize = wxDefaultSize; style: clong = wxDEFAULT_FRAME_STYLE; 
          name: WxString = constructWxString("frame")): ptr WxFrame {.cdecl, 
    importcpp: "New", header: "wx.h".}
proc getClientAreaOrigin*(this: WxFrameBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: "wx.h".}
proc setMenuBar*(this: var WxFrameBase; menubar: ptr WxMenuBar) {.cdecl, 
    importcpp: "SetMenuBar", header: "wx.h".}
proc getMenuBar*(this: WxFrameBase): ptr WxMenuBar {.noSideEffect, cdecl, 
    importcpp: "GetMenuBar", header: "wx.h".}
proc findItemInMenuBar*(this: WxFrameBase; menuId: cint): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItemInMenuBar", header: "wx.h".}
proc processCommand*(this: var WxFrameBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "ProcessCommand", header: "wx.h".}
proc processCommand*(this: var WxFrameBase; winid: cint): bool {.cdecl, 
    importcpp: "ProcessCommand", header: "wx.h".}
proc createStatusBar*(this: var WxFrameBase; number: cint = 1; 
                      style: clong = wxSTB_DEFAULT_STYLE; winid: WxWindowID = 0; 
                      name: WxString = constructWxString("status_line")): ptr WxStatusBar {.
    cdecl, importcpp: "CreateStatusBar", header: "wx.h".}
proc onCreateStatusBar*(this: var WxFrameBase; number: cint; style: clong; 
                        winid: WxWindowID; name: WxString): ptr WxStatusBar {.
    cdecl, importcpp: "OnCreateStatusBar", header: "wx.h".}
proc getStatusBar*(this: WxFrameBase): ptr WxStatusBar {.noSideEffect, cdecl, 
    importcpp: "GetStatusBar", header: "wx.h".}
proc setStatusBar*(this: var WxFrameBase; statBar: ptr WxStatusBar) {.cdecl, 
    importcpp: "SetStatusBar", header: "wx.h".}
proc setStatusText*(this: var WxFrameBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "SetStatusText", header: "wx.h".}
proc setStatusWidths*(this: var WxFrameBase; n: cint; widthsField: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: "wx.h".}
proc pushStatusText*(this: var WxFrameBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "PushStatusText", header: "wx.h".}
proc popStatusText*(this: var WxFrameBase; number: cint = 0) {.cdecl, 
    importcpp: "PopStatusText", header: "wx.h".}
proc setStatusBarPane*(this: var WxFrameBase; n: cint) {.cdecl, 
    importcpp: "SetStatusBarPane", header: "wx.h".}
proc getStatusBarPane*(this: WxFrameBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetStatusBarPane", header: "wx.h".}
proc createToolBar*(this: var WxFrameBase; style: clong = - 1; 
                    winid: WxWindowID = WxWindowID(wxID_ANY); 
                    name: WxString = constructWxString("toolbar")): ptr WxToolBar {.
    cdecl, importcpp: "CreateToolBar", header: "wx.h".}
proc onCreateToolBar*(this: var WxFrameBase; style: clong; winid: WxWindowID; 
                      name: WxString): ptr WxToolBar {.cdecl, 
    importcpp: "OnCreateToolBar", header: "wx.h".}
proc getToolBar*(this: WxFrameBase): ptr WxToolBar {.noSideEffect, cdecl, 
    importcpp: "GetToolBar", header: "wx.h".}
proc setToolBar*(this: var WxFrameBase; toolbar: ptr WxToolBar) {.cdecl, 
    importcpp: "SetToolBar", header: "wx.h".}
proc onMenuOpen*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuOpen", header: "wx.h".}
proc onMenuClose*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuClose", header: "wx.h".}
proc onMenuHighlight*(this: var WxFrameBase; event: var WxMenuEvent) {.cdecl, 
    importcpp: "OnMenuHighlight", header: "wx.h".}
proc doMenuUpdates*(this: var WxFrameBase; menu: ptr WxMenu = nil) {.cdecl, 
    importcpp: "DoMenuUpdates", header: "wx.h".}
proc updateWindowUI*(this: var WxFrameBase; flags: auto = wxUPDATE_UI_NONE) {.
    cdecl, importcpp: "UpdateWindowUI", header: "wx.h".}
proc onInternalIdle*(this: var WxFrameBase) {.cdecl, 
    importcpp: "OnInternalIdle", header: "wx.h".}
proc doGiveHelp*(this: var WxFrameBase; text: WxString; show: bool) {.cdecl, 
    importcpp: "DoGiveHelp", header: "wx.h".}
proc isClientAreaChild*(this: WxFrameBase; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: "wx.h".}
type 
  WxFrame* {.importcpp: "wxFrame", header: "wx.h".} = object of WxFrameBase
  

proc constructwxFrame*(): WxFrame {.cdecl, constructor, importcpp: "wxFrame(@)", 
                                    header: "wx.h".}
proc constructwxFrame*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                       pos: WxPoint = wxDefaultPosition; 
                       size: WxSize = wxDefaultSize; 
                       style: auto = wxDEFAULT_FRAME_STYLE; 
                       name: WxString = constructWxString("frame")): WxFrame {.
    cdecl, constructor, importcpp: "wxFrame(@)", header: "wx.h".}
proc create*(this: var WxFrame; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = wxDEFAULT_FRAME_STYLE; 
             name: WxString = constructWxString("frame")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxFrame*(this: var WxFrame) {.cdecl, importcpp: "#.~wxFrame()", 
    header: "wx.h".}
proc showFullScreen*(this: var WxFrame; show: bool; 
                     style: clong = wxFULLSCREEN_ALL): bool {.cdecl, 
    importcpp: "ShowFullScreen", header: "wx.h".}
proc onSysColourChanged*(this: var WxFrame; event: var WxSysColourChangedEvent) {.
    cdecl, importcpp: "OnSysColourChanged", header: "wx.h".}
proc createToolBar*(this: var WxFrame; style: clong = - 1; 
                    id: WxWindowID = WxWindowID(wxID_ANY); 
                    name: WxString = constructWxString("toolbar")): ptr WxToolBar {.
    cdecl, importcpp: "CreateToolBar", header: "wx.h".}
proc onCreateStatusBar*(this: var WxFrame; number: cint = 1; 
                        style: clong = wxSTB_DEFAULT_STYLE; 
                        id: WxWindowID = WxWindowID(0); 
                        name: WxString = constructWxString("status_line")): ptr WxStatusBar {.
    cdecl, importcpp: "OnCreateStatusBar", header: "wx.h".}
proc useNativeStatusBar*(useNative: bool) {.cdecl, 
    importcpp: "wxFrame::UseNativeStatusBar(@)", header: "wx.h".}
proc usesNativeStatusBar*(): bool {.cdecl, importcpp: "wxFrame::UsesNativeStatusBar(@)", 
                                    header: "wx.h".}
proc sendSizeEvent*(this: var WxFrame; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEvent", header: "wx.h".}
proc getClientAreaOrigin*(this: WxFrame): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: "wx.h".}
