



discard "forward decl of wxFrame"
discard "forward decl of wxMenu"
discard "forward decl of wxMenuBarBase"
discard "forward decl of wxMenuBar"
discard "forward decl of wxMenuItem"
type 
  WxAcceleratorEntry* {.importcpp: "wxAcceleratorEntry", header: "<wx/wx.h>".} = object 
  


type 
  WxMenuBase* {.importcpp: "wxMenuBase", header: "<wx/wx.h>".} = object of WxEvtHandler
  

proc new*(title: WxString = wxEmptyString; style: clong = 0): ptr WxMenu {.
    cdecl, importcpp: "wxMenuBase::New(@)", header: "<wx/wx.h>".}
proc constructwxMenuBase*(title: WxString; style: clong = 0): WxMenuBase {.
    cdecl, constructor, importcpp: "wxMenuBase(@)", header: "<wx/wx.h>".}
proc constructwxMenuBase*(style: clong = 0): WxMenuBase {.cdecl, constructor, 
    importcpp: "wxMenuBase(@)", header: "<wx/wx.h>".}
proc destroywxMenuBase*(this: var WxMenuBase) {.cdecl, 
    importcpp: "#.~wxMenuBase()", header: "<wx/wx.h>".}
proc append*(this: var WxMenuBase; itemid: WxWindowID; 
             text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
             kind: WxItemKind = wxITEM_NORMAL) {.cdecl, importcpp: "Append", 
    header: "<wx/wx.h>".}
proc appendSeparator*(this: var WxMenuBase) {.cdecl, 
    importcpp: "AppendSeparator", header: "<wx/wx.h>".}
proc appendCheckItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                      help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendCheckItem", header: "<wx/wx.h>".}
proc appendRadioItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                      help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendRadioItem", header: "<wx/wx.h>".}
proc appendSubMenu*(this: var WxMenuBase; submenu: ptr WxMenu; text: WxString; 
                    help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "AppendSubMenu", header: "<wx/wx.h>".}
proc append*(this: var WxMenuBase; item: ptr WxMenuItem) {.cdecl, 
    importcpp: "Append", header: "<wx/wx.h>".}
proc `break`*(this: var WxMenuBase) {.cdecl, importcpp: "Break", 
                                      header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBase; pos: csize; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
             kind: WxItemKind = wxITEM_NORMAL): ptr WxMenuItem {.cdecl, 
    importcpp: "Insert", header: "<wx/wx.h>".}
proc insertSeparator*(this: var WxMenuBase; pos: csize): ptr WxMenuItem {.cdecl, 
    importcpp: "InsertSeparator", header: "<wx/wx.h>".}
proc insertCheckItem*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
                      text: WxString; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "InsertCheckItem", header: "<wx/wx.h>".}
proc insertRadioItem*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
                      text: WxString; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "InsertRadioItem", header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString; submenu: ptr WxMenu; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc prepend*(this: var WxMenuBase; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Prepend", header: "<wx/wx.h>".}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; 
              text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
              kind: WxItemKind = wxITEM_NORMAL): ptr WxMenuItem {.cdecl, 
    importcpp: "Prepend", header: "<wx/wx.h>".}
proc prependSeparator*(this: var WxMenuBase): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependSeparator", header: "<wx/wx.h>".}
proc prependCheckItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                       help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependCheckItem", header: "<wx/wx.h>".}
proc prependRadioItem*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
                       help: WxString = wxEmptyString): ptr WxMenuItem {.cdecl, 
    importcpp: "PrependRadioItem", header: "<wx/wx.h>".}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
              submenu: ptr WxMenu; help: WxString = wxEmptyString): ptr WxMenuItem {.
    cdecl, importcpp: "Prepend", header: "<wx/wx.h>".}
proc remove*(this: var WxMenuBase; itemid: WxWindowID): ptr WxMenuItem {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc remove*(this: var WxMenuBase; item: ptr WxMenuItem): ptr WxMenuItem {.
    cdecl, importcpp: "Remove", header: "<wx/wx.h>".}
proc delete*(this: var WxMenuBase; itemid: WxWindowID): bool {.cdecl, 
    importcpp: "Delete", header: "<wx/wx.h>".}
proc delete*(this: var WxMenuBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "Delete", header: "<wx/wx.h>".}
proc destroy*(this: var WxMenuBase; itemid: WxWindowID): bool {.cdecl, 
    importcpp: "Destroy", header: "<wx/wx.h>".}
proc destroy*(this: var WxMenuBase; item: ptr WxMenuItem): bool {.cdecl, 
    importcpp: "Destroy", header: "<wx/wx.h>".}
proc getMenuItemCount*(this: WxMenuBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetMenuItemCount", header: "<wx/wx.h>".}
proc findItem*(this: WxMenuBase; item: WxString): cint {.noSideEffect, cdecl, 
    importcpp: "FindItem", header: "<wx/wx.h>".}
proc findItem*(this: WxMenuBase; itemid: WxWindowID; menu: ptr ptr WxMenu = nil): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItem", header: "<wx/wx.h>".}
proc findItemByPosition*(this: WxMenuBase; position: csize): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindItemByPosition", header: "<wx/wx.h>".}
proc enable*(this: var WxMenuBase; itemid: WxWindowID; enable: bool) {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc isEnabled*(this: WxMenuBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsEnabled", header: "<wx/wx.h>".}
proc check*(this: var WxMenuBase; itemid: WxWindowID; check: bool) {.cdecl, 
    importcpp: "Check", header: "<wx/wx.h>".}
proc isChecked*(this: WxMenuBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: "<wx/wx.h>".}
proc setLabel*(this: var WxMenuBase; itemid: WxWindowID; label: WxString) {.
    cdecl, importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxMenuBase; itemid: WxWindowID): WxString {.noSideEffect, 
    cdecl, importcpp: "GetLabel", header: "<wx/wx.h>".}
proc getLabelText*(this: WxMenuBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabelText", header: "<wx/wx.h>".}
proc setHelpString*(this: var WxMenuBase; itemid: WxWindowID; 
                    helpString: WxString) {.cdecl, importcpp: "SetHelpString", 
    header: "<wx/wx.h>".}
proc getHelpString*(this: WxMenuBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpString", header: "<wx/wx.h>".}
proc setTitle*(this: var WxMenuBase; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: "<wx/wx.h>".}
proc getTitle*(this: WxMenuBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: "<wx/wx.h>".}
proc setEventHandler*(this: var WxMenuBase; handler: ptr WxEvtHandler) {.cdecl, 
    importcpp: "SetEventHandler", header: "<wx/wx.h>".}
proc getEventHandler*(this: WxMenuBase): ptr WxEvtHandler {.noSideEffect, cdecl, 
    importcpp: "GetEventHandler", header: "<wx/wx.h>".}
proc setInvokingWindow*(this: var WxMenuBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetInvokingWindow", header: "<wx/wx.h>".}
proc getInvokingWindow*(this: WxMenuBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetInvokingWindow", header: "<wx/wx.h>".}
proc getWindow*(this: WxMenuBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: "<wx/wx.h>".}
proc getStyle*(this: WxMenuBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "<wx/wx.h>".}
proc updateUI*(this: var WxMenuBase; source: ptr WxEvtHandler = nil) {.cdecl, 
    importcpp: "UpdateUI", header: "<wx/wx.h>".}
proc getMenuBar*(this: WxMenuBase): ptr WxMenuBar {.noSideEffect, cdecl, 
    importcpp: "GetMenuBar", header: "<wx/wx.h>".}
proc attach*(this: var WxMenuBase; menubar: ptr WxMenuBarBase) {.cdecl, 
    importcpp: "Attach", header: "<wx/wx.h>".}
proc detach*(this: var WxMenuBase) {.cdecl, importcpp: "Detach", 
                                     header: "<wx/wx.h>".}
proc isAttached*(this: WxMenuBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsAttached", header: "<wx/wx.h>".}
proc setParent*(this: var WxMenuBase; parent: ptr WxMenu) {.cdecl, 
    importcpp: "SetParent", header: "<wx/wx.h>".}
proc getParent*(this: WxMenuBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetParent", header: "<wx/wx.h>".}
proc findChildItem*(this: WxMenuBase; itemid: WxWindowID; pos: ptr csize = nil): ptr WxMenuItem {.
    noSideEffect, cdecl, importcpp: "FindChildItem", header: "<wx/wx.h>".}
proc sendEvent*(this: var WxMenuBase; itemid: WxWindowID; checked: cint = - 1): bool {.
    cdecl, importcpp: "SendEvent", header: "<wx/wx.h>".}
proc append*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
             help: WxString; isCheckable: bool) {.cdecl, importcpp: "Append", 
    header: "<wx/wx.h>".}
proc append*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
             submenu: ptr WxMenu; help: WxString = wxEmptyString) {.cdecl, 
    importcpp: "Append", header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBase; pos: csize; itemid: WxWindowID; 
             text: WxString; help: WxString; isCheckable: bool) {.cdecl, 
    importcpp: "Insert", header: "<wx/wx.h>".}
proc prepend*(this: var WxMenuBase; itemid: WxWindowID; text: WxString; 
              help: WxString; isCheckable: bool) {.cdecl, importcpp: "Prepend", 
    header: "<wx/wx.h>".}
proc lockAccels*(locked: bool) {.cdecl, importcpp: "wxMenuBase::LockAccels(@)", 
                                 header: "<wx/wx.h>".}

type 
  WxMenuInfoHelper* {.importcpp: "wxMenuInfoHelper", header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxMenuInfoHelper*(): WxMenuInfoHelper {.cdecl, constructor, 
    importcpp: "wxMenuInfoHelper(@)", header: "<wx/wx.h>".}
proc destroywxMenuInfoHelper*(this: var WxMenuInfoHelper) {.cdecl, 
    importcpp: "#.~wxMenuInfoHelper()", header: "<wx/wx.h>".}
proc create*(this: var WxMenuInfoHelper; menu: ptr WxMenu; title: WxString): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc getMenu*(this: WxMenuInfoHelper): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetMenu", header: "<wx/wx.h>".}
proc getTitle*(this: WxMenuInfoHelper): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: "<wx/wx.h>".}


type 
  WxMenuBarBase* {.importcpp: "wxMenuBarBase", header: "<wx/wx.h>".} = object of WxWindow
  

proc constructwxMenuBarBase*(): WxMenuBarBase {.cdecl, constructor, 
    importcpp: "wxMenuBarBase(@)", header: "<wx/wx.h>".}
proc destroywxMenuBarBase*(this: var WxMenuBarBase) {.cdecl, 
    importcpp: "#.~wxMenuBarBase()", header: "<wx/wx.h>".}
proc append*(this: var WxMenuBarBase; menu: ptr WxMenu; title: WxString) {.
    cdecl, importcpp: "Append", header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBarBase; pos: csize; menu: ptr WxMenu; 
             title: WxString): bool {.cdecl, importcpp: "Insert", 
                                      header: "<wx/wx.h>".}
proc getMenuCount*(this: WxMenuBarBase): csize {.noSideEffect, cdecl, 
    importcpp: "GetMenuCount", header: "<wx/wx.h>".}
proc getMenu*(this: WxMenuBarBase; pos: csize): ptr WxMenu {.noSideEffect, 
    cdecl, importcpp: "GetMenu", header: "<wx/wx.h>".}
proc replace*(this: var WxMenuBarBase; pos: csize; menu: ptr WxMenu; 
              title: WxString): ptr WxMenu {.cdecl, importcpp: "Replace", 
    header: "<wx/wx.h>".}
proc remove*(this: var WxMenuBarBase; pos: csize): ptr WxMenu {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc enableTop*(this: var WxMenuBarBase; pos: csize; enable: bool) {.cdecl, 
    importcpp: "EnableTop", header: "<wx/wx.h>".}
proc isEnabledTop*(this: WxMenuBarBase; pos: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabledTop", header: "<wx/wx.h>".}
proc setMenuLabel*(this: var WxMenuBarBase; pos: csize; label: WxString) {.
    cdecl, importcpp: "SetMenuLabel", header: "<wx/wx.h>".}
proc getMenuLabel*(this: WxMenuBarBase; pos: csize): WxString {.noSideEffect, 
    cdecl, importcpp: "GetMenuLabel", header: "<wx/wx.h>".}
proc getMenuLabelText*(this: WxMenuBarBase; pos: csize): WxString {.
    noSideEffect, cdecl, importcpp: "GetMenuLabelText", header: "<wx/wx.h>".}
proc findMenuItem*(this: WxMenuBarBase; menu: WxString; item: WxString): cint {.
    noSideEffect, cdecl, importcpp: "FindMenuItem", header: "<wx/wx.h>".}
proc findItem*(this: WxMenuBarBase; itemid: WxWindowID; 
               menu: ptr ptr WxMenu = nil): ptr WxMenuItem {.noSideEffect, 
    cdecl, importcpp: "FindItem", header: "<wx/wx.h>".}
proc findMenu*(this: WxMenuBarBase; title: WxString): cint {.noSideEffect, 
    cdecl, importcpp: "FindMenu", header: "<wx/wx.h>".}
proc enable*(this: var WxMenuBarBase; itemid: WxWindowID; enable: bool) {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc check*(this: var WxMenuBarBase; itemid: WxWindowID; check: bool) {.cdecl, 
    importcpp: "Check", header: "<wx/wx.h>".}
proc isChecked*(this: WxMenuBarBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: "<wx/wx.h>".}
proc isEnabled*(this: WxMenuBarBase; itemid: WxWindowID): bool {.noSideEffect, 
    cdecl, importcpp: "IsEnabled", header: "<wx/wx.h>".}
proc isEnabled*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: "<wx/wx.h>".}
proc setLabel*(this: var WxMenuBarBase; itemid: WxWindowID; label: WxString) {.
    cdecl, importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxMenuBarBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetLabel", header: "<wx/wx.h>".}
proc setHelpString*(this: var WxMenuBarBase; itemid: WxWindowID; 
                    helpString: WxString) {.cdecl, importcpp: "SetHelpString", 
    header: "<wx/wx.h>".}
proc getHelpString*(this: WxMenuBarBase; itemid: WxWindowID): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpString", header: "<wx/wx.h>".}
proc getFrame*(this: WxMenuBarBase): ptr WxFrame {.noSideEffect, cdecl, 
    importcpp: "GetFrame", header: "<wx/wx.h>".}
proc isAttached*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsAttached", header: "<wx/wx.h>".}
proc attach*(this: var WxMenuBarBase; frame: ptr WxFrame) {.cdecl, 
    importcpp: "Attach", header: "<wx/wx.h>".}
proc detach*(this: var WxMenuBarBase) {.cdecl, importcpp: "Detach", 
                                        header: "<wx/wx.h>".}
proc enable*(this: var WxMenuBarBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc setLabel*(this: var WxMenuBarBase; s: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxMenuBarBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "<wx/wx.h>".}
proc acceptsFocusFromKeyboard*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: "<wx/wx.h>".}
proc updateMenus*(this: var WxMenuBarBase) {.cdecl, importcpp: "UpdateMenus", 
    header: "<wx/wx.h>".}
proc canBeOutsideClientArea*(this: WxMenuBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: "<wx/wx.h>".}

type 
  WxMenuInvokingWindowSetter* {.importcpp: "wxMenuInvokingWindowSetter", 
                                header: "<wx/wx.h>".} = object 
  

proc constructwxMenuInvokingWindowSetter*(menu: var WxMenu; win: ptr WxWindow): WxMenuInvokingWindowSetter {.
    cdecl, constructor, importcpp: "wxMenuInvokingWindowSetter(@)", 
    header: "<wx/wx.h>".}
proc destroywxMenuInvokingWindowSetter*(this: var WxMenuInvokingWindowSetter) {.
    cdecl, importcpp: "#.~wxMenuInvokingWindowSetter()", header: "<wx/wx.h>".}
type 
  WxMenu* {.importcpp: "wxMenu", header: "<wx/wx.h>".} = object of WxMenuBase
  

proc constructwxMenu*(title: WxString; style: clong = 0): WxMenu {.cdecl, 
    constructor, importcpp: "wxMenu(@)", header: "<wx/wx.h>".}
proc constructwxMenu*(style: clong = 0): WxMenu {.cdecl, constructor, 
    importcpp: "wxMenu(@)", header: "<wx/wx.h>".}
proc destroywxMenu*(this: var WxMenu) {.cdecl, importcpp: "#.~wxMenu()", 
                                        header: "<wx/wx.h>".}
proc `break`*(this: var WxMenu) {.cdecl, importcpp: "Break", header: "<wx/wx.h>".}
proc setTitle*(this: var WxMenu; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: "<wx/wx.h>".}
proc hasAccels*(this: WxMenu): bool {.noSideEffect, cdecl, 
                                      importcpp: "HasAccels", 
                                      header: "<wx/wx.h>".}
proc getAccelCount*(this: WxMenu): csize {.noSideEffect, cdecl, 
    importcpp: "GetAccelCount", header: "<wx/wx.h>".}
proc copyAccels*(this: WxMenu; accels: ptr WxAcceleratorEntry): csize {.
    noSideEffect, cdecl, importcpp: "CopyAccels", header: "<wx/wx.h>".}
proc updateAccel*(this: var WxMenu; item: ptr WxMenuItem) {.cdecl, 
    importcpp: "UpdateAccel", header: "<wx/wx.h>".}
proc findAccel*(this: WxMenu; id: cint): cint {.noSideEffect, cdecl, 
    importcpp: "FindAccel", header: "<wx/wx.h>".}
proc createAccelTable*(this: WxMenu): ptr WxAcceleratorTable {.noSideEffect, 
    cdecl, importcpp: "CreateAccelTable", header: "<wx/wx.h>".}

type 
  WxMenuBar* {.importcpp: "wxMenuBar", header: "<wx/wx.h>".} = object of WxMenuBarBase
  

proc constructwxMenuBar*(): WxMenuBar {.cdecl, constructor, 
                                        importcpp: "wxMenuBar(@)", 
                                        header: "<wx/wx.h>".}
proc constructwxMenuBar*(style: clong): WxMenuBar {.cdecl, constructor, 
    importcpp: "wxMenuBar(@)", header: "<wx/wx.h>".}
proc constructwxMenuBar*(n: csize; menus: ptr ptr WxMenu; titles: ptr WxString; 
                         style: clong = 0): WxMenuBar {.cdecl, constructor, 
    importcpp: "wxMenuBar(@)", header: "<wx/wx.h>".}
proc destroywxMenuBar*(this: var WxMenuBar) {.cdecl, 
    importcpp: "#.~wxMenuBar()", header: "<wx/wx.h>".}
proc append*(this: var WxMenuBar; menu: ptr WxMenu; title: WxString) {.cdecl, 
    importcpp: "Append", header: "<wx/wx.h>".}
proc insert*(this: var WxMenuBar; pos: csize; menu: ptr WxMenu; title: WxString): bool {.
    cdecl, importcpp: "Insert", header: "<wx/wx.h>".}
proc replace*(this: var WxMenuBar; pos: csize; menu: ptr WxMenu; title: WxString): ptr WxMenu {.
    cdecl, importcpp: "Replace", header: "<wx/wx.h>".}
proc remove*(this: var WxMenuBar; pos: csize): ptr WxMenu {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc enableTop*(this: var WxMenuBar; pos: csize; flag: bool) {.cdecl, 
    importcpp: "EnableTop", header: "<wx/wx.h>".}
proc isEnabledTop*(this: WxMenuBar; pos: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabledTop", header: "<wx/wx.h>".}
proc setMenuLabel*(this: var WxMenuBar; pos: csize; label: WxString) {.cdecl, 
    importcpp: "SetMenuLabel", header: "<wx/wx.h>".}
proc getMenuLabel*(this: WxMenuBar; pos: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "GetMenuLabel", header: "<wx/wx.h>".}
proc detach*(this: var WxMenuBar) {.cdecl, importcpp: "Detach", 
                                    header: "<wx/wx.h>".}
proc attach*(this: var WxMenuBar; frame: ptr WxFrame) {.cdecl, 
    importcpp: "Attach", header: "<wx/wx.h>".}
proc setToolBar*(this: var WxMenuBar; toolBar: ptr WxToolBar) {.cdecl, 
    importcpp: "SetToolBar", header: "<wx/wx.h>".}
proc getToolBar*(this: WxMenuBar): ptr WxToolBar {.noSideEffect, cdecl, 
    importcpp: "GetToolBar", header: "<wx/wx.h>".}
proc addAdornments*(this: var WxMenuBar; style: clong): bool {.cdecl, 
    importcpp: "AddAdornments", header: "<wx/wx.h>".}
proc rebuildAccelTable*(this: var WxMenuBar) {.cdecl, 
    importcpp: "RebuildAccelTable", header: "<wx/wx.h>".}
proc refresh*(this: var WxMenuBar) {.cdecl, importcpp: "Refresh", 
                                     header: "<wx/wx.h>".}
proc refresh*(this: var WxMenuBar; eraseBackground: bool; 
              rect: ptr WxRect = cast[ptr WxRect](nil)) {.cdecl, 
    importcpp: "Refresh", header: "<wx/wx.h>".}