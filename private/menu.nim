



discard "forward decl of wxFrame"
discard "forward decl of wxMenu"
discard "forward decl of wxMenuBarBase"
discard "forward decl of wxMenuBar"
discard "forward decl of wxMenuItem"
type 
  WxAcceleratorEntry* {.importcpp: "wxAcceleratorEntry", header: wxh.} = object 
  


type 
  WxMenuBase* {.importcpp: "wxMenuBase", header: wxh.} = object of WxEvtHandler
  

proc new*(title: WxString = wxEmptyString; style: clong = 0): ptr WxMenu {.
    cdecl, importcpp: "wxMenuBase::New(@)", header: wxh.}
proc constructwxMenuBase*(title: WxString; style: clong = 0): WxMenuBase {.
    cdecl, constructor, importcpp: "wxMenuBase(@)", header: wxh.}
proc constructwxMenuBase*(style: clong = 0): WxMenuBase {.cdecl, constructor, 
    importcpp: "wxMenuBase(@)", header: wxh.}
proc destroywxMenuBase*(this: var WxMenuBase) {.cdecl, 
    importcpp: "#.~wxMenuBase()", header: wxh.}
proc append*(this: var WxMenuBase; itemid: WxWindowID; 
             text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
             kind: WxItemKind = wxITEM_NORMAL) {.cdecl, importcpp: "Append", 
    header: wxh.}
proc appendSeparator*(this: var WxMenuBase) {.cdecl, 
    importcpp: "AppendSeparator", header: wxh.}
proc appendCheckItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                      help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendCheckItem", header: wxh.}
proc appendRadioItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                      help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendRadioItem", header: wxh.}
proc appendSubMenu*(this: var WxMenuBase; submenu: ptr WxMenu; text: WxString; 
                    help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendSubMenu", header: wxh.}
proc append*(this: var WxMenuBase; item: ptr WxMenuItem) {.cdecl, 
    importcpp: "Append", header: wxh.}
proc `break`*(this: var WxMenuBase) {.cdecl, importcpp: "Break", header: wxh.}
proc insert*(this: var WxMenuBase; pos: csize; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Insert", header: wxh.}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
             kind: WxItemKind = wxITEM_NORMAL): ptr WxMenuItem {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc insertSeparator*(this: var WxMenuBase; pos: csize): ptr WxMenuItem {.cdecl, 
    importcpp: "InsertSeparator", header: wxh.}
proc insertCheckItem*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
                      text: WxString; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "InsertCheckItem", header: wxh.}
proc insertRadioItem*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
                      text: WxString; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "InsertRadioItem", header: wxh.}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString; submenu: ptr WxMenu; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "Insert", header: wxh.}
proc prepend*(this: var WxMenuBase; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; 
              text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
              kind: WxItemKind = wxITEM_NORMAL): ptr WxMenuItem {.cdecl, 
    importcpp: "Prepend", header: wxh.}
proc prependSeparator*(this: var WxMenuBase): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependSeparator", header: wxh.}
proc prependCheckItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                       help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependCheckItem", header: wxh.}
proc prependRadioItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                       help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependRadioItem", header: wxh.}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
              submenu: ptr WxMenu; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc remove*(this: var WxMenuBase; itemid: WxWindowID): ptr WxMenuItem {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc remove*(this: var WxMenuBase; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Remove", header: wxh.}
proc delete*(this: var WxMenuBase; itemid: WxWindowID): bool {.cdecl, 
    importcpp: "Delete", header: wxh.}
proc delete*(this: var WxMenuBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "Delete", header: wxh.}
proc destroy*(this: var WxMenuBase; itemid: WxWindowID): bool {.cdecl, 
    importcpp: "Destroy", header: wxh.}
proc destroy*(this: var WxMenuBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "Destroy", header: wxh.}
proc getMenuItemCount*(this: WxMenuBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetMenuItemCount", header: wxh.}
proc findItem*(this: WxMenuBase; item: WxString): cint {.noSideEffect, cdecl, 
    importcpp: "FindItem", header: wxh.}
proc findItem*(this: WxMenuBase; itemid: WxWindowID; menu: ptr ptr WxMenu = nil): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItem", header: wxh.}
proc findItemByPosition*(this: WxMenuBase; position: csize): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItemByPosition", header: wxh.}
proc enable*(this: var WxMenuBase; itemid: WxWindowID; enable: bool) {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc isEnabled*(this: WxMenuBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsEnabled", header: wxh.}
proc check*(this: var WxMenuBase; itemid: WxWindowID; check: bool) {.cdecl, 
    importcpp: "Check", header: wxh.}
proc isChecked*(this: WxMenuBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: wxh.}
proc setLabel*(this: var WxMenuBase; itemid: WxWindowID; label: WxString) {.
    cdecl, importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxMenuBase; itemid: WxWindowID): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLabel", header: wxh.}
proc getLabelText*(this: WxMenuBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabelText", header: wxh.}
proc setHelpString*(this: var WxMenuBase; itemid: WxWindowID; 
                    helpString: WxString) {.cdecl, importcpp: "SetHelpString", 
    header: wxh.}
proc getHelpString*(this: WxMenuBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpString", header: wxh.}
proc setTitle*(this: var WxMenuBase; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: wxh.}
proc getTitle*(this: WxMenuBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: wxh.}
proc setEventHandler*(this: var WxMenuBase; handler: ptr WxEvtHandler) {.cdecl, 
    importcpp: "SetEventHandler", header: wxh.}
proc getEventHandler*(this: WxMenuBase): ptr WxEvtHandler {.noSideEffect, cdecl, 
    importcpp: "GetEventHandler", header: wxh.}
proc setInvokingWindow*(this: var WxMenuBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetInvokingWindow", header: wxh.}
proc getInvokingWindow*(this: WxMenuBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetInvokingWindow", header: wxh.}
proc getWindow*(this: WxMenuBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc getStyle*(this: WxMenuBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc updateUI*(this: var WxMenuBase; source: ptr WxEvtHandler = nil) {.cdecl, 
    importcpp: "UpdateUI", header: wxh.}
proc getMenuBar*(this: WxMenuBase): ptr WxMenuBar {.noSideEffect, cdecl, 
    importcpp: "GetMenuBar", header: wxh.}
proc attach*(this: var WxMenuBase; menubar: ptr WxMenuBarBase) {.cdecl, 
    importcpp: "Attach", header: wxh.}
proc detach*(this: var WxMenuBase) {.cdecl, importcpp: "Detach", header: wxh.}
proc isAttached*(this: WxMenuBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsAttached", header: wxh.}
proc setParent*(this: var WxMenuBase; parent: ptr WxMenu) {.cdecl, 
    importcpp: "SetParent", header: wxh.}
proc getParent*(this: WxMenuBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetParent", header: wxh.}
proc findChildItem*(this: WxMenuBase; itemid: WxWindowID; pos: ptr csize = nil): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindChildItem", header: wxh.}
proc sendEvent*(this: var WxMenuBase; itemid: WxWindowID; checked: cint = - 1): bool {.
    cdecl, importcpp: "SendEvent", header: wxh.}
proc append*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
             help: WxString; isCheckable: bool) {.cdecl, importcpp: "Append", 
    header: wxh.}
proc append*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
             submenu: ptr WxMenu; help: WxString = wxEmptyString) {.cdecl, 
    importcpp: "Append", header: wxh.}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString; help: WxString; isCheckable: bool) {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
              help: WxString; isCheckable: bool) {.cdecl, importcpp: "Prepend", 
    header: wxh.}
proc lockAccels*(locked: bool) {.cdecl, importcpp: "wxMenuBase::LockAccels(@)", 
                                 header: wxh.}

type 
  WxMenuInfoHelper* {.importcpp: "wxMenuInfoHelper", header: wxh.} = object of WxObject
  

proc constructwxMenuInfoHelper*(): WxMenuInfoHelper {.cdecl, constructor, 
    importcpp: "wxMenuInfoHelper(@)", header: wxh.}
proc destroywxMenuInfoHelper*(this: var WxMenuInfoHelper) {.cdecl, 
    importcpp: "#.~wxMenuInfoHelper()", header: wxh.}
proc create*(this: var WxMenuInfoHelper; menu: ptr WxMenu; title: WxString): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc getMenu*(this: WxMenuInfoHelper): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetMenu", header: wxh.}
proc getTitle*(this: WxMenuInfoHelper): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: wxh.}


type 
  WxMenuBarBase* {.importcpp: "wxMenuBarBase", header: wxh.} = object of WxWindow
  

proc constructwxMenuBarBase*(): WxMenuBarBase {.cdecl, constructor, 
    importcpp: "wxMenuBarBase(@)", header: wxh.}
proc destroywxMenuBarBase*(this: var WxMenuBarBase) {.cdecl, 
    importcpp: "#.~wxMenuBarBase()", header: wxh.}
proc append*(this: var WxMenuBarBase; menu: ptr WxMenu; title: WxString) {.
    cdecl, importcpp: "Append", header: wxh.}
proc insert*(this: var WxMenuBarBase; pos: csize; menu: ptr WxMenu; 
             title: WxString): bool {.cdecl, importcpp: "Insert", header: wxh.}
proc getMenuCount*(this: WxMenuBarBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetMenuCount", header: wxh.}
proc getMenu*(this: WxMenuBarBase; pos: csize): ptr WxMenu {.noSideEffect, 
    cdecl, importcpp: "GetMenu", header: wxh.}
proc replace*(this: var WxMenuBarBase; pos: csize; menu: ptr WxMenu; 
              title: WxString): ptr WxMenu {.cdecl, importcpp: "Replace", 
    header: wxh.}
proc remove*(this: var WxMenuBarBase; pos: csize): ptr WxMenu {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc enableTop*(this: var WxMenuBarBase; pos: csize; enable: bool) {.cdecl, 
    importcpp: "EnableTop", header: wxh.}
proc isEnabledTop*(this: WxMenuBarBase; pos: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabledTop", header: wxh.}
proc setMenuLabel*(this: var WxMenuBarBase; pos: csize; label: WxString) {.
    cdecl, importcpp: "SetMenuLabel", header: wxh.}
proc getMenuLabel*(this: WxMenuBarBase; pos: csize): WxString {.noSideEffect, 
    cdecl, importcpp: "GetMenuLabel", header: wxh.}
proc getMenuLabelText*(this: WxMenuBarBase; pos: csize): WxString {.
    noSideEffect, cdecl, importcpp: "GetMenuLabelText", header: wxh.}
proc findMenuItem*(this: WxMenuBarBase; menu: WxString; item: WxString): cint {.
    noSideEffect, cdecl, importcpp: "FindMenuItem", header: wxh.}
proc findItem*(this: WxMenuBarBase; itemid: WxWindowID; 
               menu: ptr ptr WxMenu = nil): ptr WxMenuItem {.noSideEffect, 
    cdecl, importcpp: "FindItem", header: wxh.}
proc findMenu*(this: WxMenuBarBase; title: WxString): cint {.noSideEffect, 
    cdecl, importcpp: "FindMenu", header: wxh.}
proc enable*(this: var WxMenuBarBase; itemid: WxWindowID; enable: bool) {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc check*(this: var WxMenuBarBase; itemid: WxWindowID; check: bool) {.cdecl, 
    importcpp: "Check", header: wxh.}
proc isChecked*(this: WxMenuBarBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: wxh.}
proc isEnabled*(this: WxMenuBarBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsEnabled", header: wxh.}
proc isEnabled*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: wxh.}
proc setLabel*(this: var WxMenuBarBase; itemid: WxWindowID; label: WxString) {.
    cdecl, importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxMenuBarBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabel", header: wxh.}
proc setHelpString*(this: var WxMenuBarBase; itemid: WxWindowID; 
                    helpString: WxString) {.cdecl, importcpp: "SetHelpString", 
    header: wxh.}
proc getHelpString*(this: WxMenuBarBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpString", header: wxh.}
proc getFrame*(this: WxMenuBarBase): ptr WxFrame {.noSideEffect, cdecl, 
    importcpp: "GetFrame", header: wxh.}
proc isAttached*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsAttached", header: wxh.}
proc attach*(this: var WxMenuBarBase; frame: ptr WxFrame) {.cdecl, 
    importcpp: "Attach", header: wxh.}
proc detach*(this: var WxMenuBarBase) {.cdecl, importcpp: "Detach", header: wxh.}
proc enable*(this: var WxMenuBarBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc setLabel*(this: var WxMenuBarBase; s: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxMenuBarBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc acceptsFocusFromKeyboard*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: wxh.}
proc updateMenus*(this: var WxMenuBarBase) {.cdecl, importcpp: "UpdateMenus", 
    header: wxh.}
proc canBeOutsideClientArea*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: wxh.}

type 
  WxMenuInvokingWindowSetter* {.importcpp: "wxMenuInvokingWindowSetter", 
                                header: wxh.} = object 
  

proc constructwxMenuInvokingWindowSetter*(menu: var WxMenu; win: ptr WxWindow): WxMenuInvokingWindowSetter {.
    cdecl, constructor, importcpp: "wxMenuInvokingWindowSetter(@)", header: wxh.}
proc destroywxMenuInvokingWindowSetter*(this: var WxMenuInvokingWindowSetter) {.
    cdecl, importcpp: "#.~wxMenuInvokingWindowSetter()", header: wxh.}
type 
  WxMenu* {.importcpp: "wxMenu", header: wxh.} = object of WxMenuBase
  

proc constructwxMenu*(title: WxString; style: clong = 0): WxMenu {.cdecl, 
    constructor, importcpp: "wxMenu(@)", header: wxh.}
proc constructwxMenu*(style: clong = 0): WxMenu {.cdecl, constructor, 
    importcpp: "wxMenu(@)", header: wxh.}
proc destroywxMenu*(this: var WxMenu) {.cdecl, importcpp: "#.~wxMenu()", 
                                        header: wxh.}
proc `break`*(this: var WxMenu) {.cdecl, importcpp: "Break", header: wxh.}
proc setTitle*(this: var WxMenu; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: wxh.}
proc hasAccels*(this: WxMenu): bool {.noSideEffect, cdecl, 
                                      importcpp: "HasAccels", header: wxh.}
proc getAccelCount*(this: WxMenu): csize {.noSideEffect, cdecl, 
    importcpp: "GetAccelCount", header: wxh.}
proc copyAccels*(this: WxMenu; accels: ptr WxAcceleratorEntry): csize {.
    noSideEffect, cdecl, importcpp: "CopyAccels", header: wxh.}
proc updateAccel*(this: var WxMenu; item: ptr WxMenuItem) {.cdecl, 
    importcpp: "UpdateAccel", header: wxh.}
proc findAccel*(this: WxMenu; id: cint): cint {.noSideEffect, cdecl, 
    importcpp: "FindAccel", header: wxh.}
proc createAccelTable*(this: WxMenu): ptr WxAcceleratorTable {.noSideEffect, 
    cdecl, importcpp: "CreateAccelTable", header: wxh.}

type 
  WxMenuBar* {.importcpp: "wxMenuBar", header: wxh.} = object of WxMenuBarBase
  

proc constructwxMenuBar*(): WxMenuBar {.cdecl, constructor, 
                                        importcpp: "wxMenuBar(@)", header: wxh.}
proc constructwxMenuBar*(style: clong): WxMenuBar {.cdecl, constructor, 
    importcpp: "wxMenuBar(@)", header: wxh.}
proc constructwxMenuBar*(n: csize; menus: ptr ptr WxMenu; titles: ptr WxString; 
                         style: clong = 0): WxMenuBar {.cdecl, constructor, 
    importcpp: "wxMenuBar(@)", header: wxh.}
proc destroywxMenuBar*(this: var WxMenuBar) {.cdecl, 
    importcpp: "#.~wxMenuBar()", header: wxh.}
proc append*(this: var WxMenuBar; menu: ptr WxMenu; title: WxString) {.cdecl, 
    importcpp: "Append", header: wxh.}
proc insert*(this: var WxMenuBar; pos: csize; menu: ptr WxMenu; title: WxString): bool {.
    cdecl, importcpp: "Insert", header: wxh.}
proc replace*(this: var WxMenuBar; pos: csize; menu: ptr WxMenu; title: WxString): ptr WxMenu {.
    cdecl, importcpp: "Replace", header: wxh.}
proc remove*(this: var WxMenuBar; pos: csize): ptr WxMenu {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc enableTop*(this: var WxMenuBar; pos: csize; flag: bool) {.cdecl, 
    importcpp: "EnableTop", header: wxh.}
proc isEnabledTop*(this: WxMenuBar; pos: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabledTop", header: wxh.}
proc setMenuLabel*(this: var WxMenuBar; pos: csize; label: WxString) {.cdecl, 
    importcpp: "SetMenuLabel", header: wxh.}
proc getMenuLabel*(this: WxMenuBar; pos: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "GetMenuLabel", header: wxh.}
proc detach*(this: var WxMenuBar) {.cdecl, importcpp: "Detach", header: wxh.}
proc attach*(this: var WxMenuBar; frame: ptr WxFrame) {.cdecl, 
    importcpp: "Attach", header: wxh.}
proc setToolBar*(this: var WxMenuBar; toolBar: ptr WxToolBar) {.cdecl, 
    importcpp: "SetToolBar", header: wxh.}
proc getToolBar*(this: WxMenuBar): ptr WxToolBar {.noSideEffect, cdecl, 
    importcpp: "GetToolBar", header: wxh.}
proc addAdornments*(this: var WxMenuBar; style: clong): bool {.discardable, 
    cdecl, importcpp: "AddAdornments", header: wxh.}
proc rebuildAccelTable*(this: var WxMenuBar) {.cdecl, 
    importcpp: "RebuildAccelTable", header: wxh.}
proc refresh*(this: var WxMenuBar) {.cdecl, importcpp: "Refresh", header: wxh.}
proc refresh*(this: var WxMenuBar; eraseBackground: bool; 
              rect: ptr WxRect = cast[ptr WxRect](nil)) {.cdecl, 
    importcpp: "Refresh", header: wxh.}