



discard "forward decl of wxAcceleratorEntry"
discard "forward decl of wxMenuItem"
discard "forward decl of wxMenu"
type 
  WxMenuItemBase* {.importcpp: "wxMenuItemBase", header: "<wx/wx.h>".} = object of WxObject
  

proc wxNew*(parentMenu: ptr WxMenu = nil; itemid = wxID_SEPARATOR; 
            text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
            kind: WxItemKind = wxITEM_NORMAL; subMenu: ptr WxMenu = nil): ptr WxMenuItem {.
    cdecl, importcpp: "wxMenuItemBase::New(@)", header: "<wx/wx.h>".}
proc destroywxMenuItemBase*(this: var WxMenuItemBase) {.cdecl, 
    importcpp: "#.~wxMenuItemBase()", header: "<wx/wx.h>".}
proc getMenu*(this: WxMenuItemBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetMenu", header: "<wx/wx.h>".}
proc setMenu*(this: var WxMenuItemBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetMenu", header: "<wx/wx.h>".}
proc setId*(this: var WxMenuItemBase; itemid: cint) {.cdecl, importcpp: "SetId", 
    header: "<wx/wx.h>".}
proc getId*(this: WxMenuItemBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetId", header: "<wx/wx.h>".}
proc setItemLabel*(this: var WxMenuItemBase; str: WxString) {.cdecl, 
    importcpp: "SetItemLabel", header: "<wx/wx.h>".}
proc getItemLabel*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetItemLabel", header: "<wx/wx.h>".}
proc getItemLabelText*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetItemLabelText", header: "<wx/wx.h>".}
proc getKind*(this: WxMenuItemBase): WxItemKind {.noSideEffect, cdecl, 
    importcpp: "GetKind", header: "<wx/wx.h>".}
proc setKind*(this: var WxMenuItemBase; kind: WxItemKind) {.cdecl, 
    importcpp: "SetKind", header: "<wx/wx.h>".}
proc isSeparator*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSeparator", header: "<wx/wx.h>".}
proc isCheck*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheck", header: "<wx/wx.h>".}
proc isRadio*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsRadio", header: "<wx/wx.h>".}
proc setCheckable*(this: var WxMenuItemBase; checkable: bool) {.cdecl, 
    importcpp: "SetCheckable", header: "<wx/wx.h>".}
proc isCheckable*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheckable", header: "<wx/wx.h>".}
proc isSubMenu*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSubMenu", header: "<wx/wx.h>".}
proc setSubMenu*(this: var WxMenuItemBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetSubMenu", header: "<wx/wx.h>".}
proc getSubMenu*(this: WxMenuItemBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetSubMenu", header: "<wx/wx.h>".}
proc enable*(this: var WxMenuItemBase; enable: bool = true) {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc isEnabled*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: "<wx/wx.h>".}
proc check*(this: var WxMenuItemBase; check: bool = true) {.cdecl, 
    importcpp: "Check", header: "<wx/wx.h>".}
proc isChecked*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: "<wx/wx.h>".}
proc toggle*(this: var WxMenuItemBase) {.cdecl, importcpp: "Toggle", 
    header: "<wx/wx.h>".}
proc setHelp*(this: var WxMenuItemBase; str: WxString) {.cdecl, 
    importcpp: "SetHelp", header: "<wx/wx.h>".}
proc getHelp*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHelp", header: "<wx/wx.h>".}
proc getAccelFromString*(label: WxString): ptr WxAcceleratorEntry {.cdecl, 
    importcpp: "wxMenuItemBase::GetAccelFromString(@)", header: "<wx/wx.h>".}
proc getAccel*(this: WxMenuItemBase): ptr WxAcceleratorEntry {.noSideEffect, 
    cdecl, importcpp: "GetAccel", header: "<wx/wx.h>".}
proc setAccel*(this: var WxMenuItemBase; accel: ptr WxAcceleratorEntry) {.cdecl, 
    importcpp: "SetAccel", header: "<wx/wx.h>".}
proc wxNew*(parentMenu: ptr WxMenu; itemid: cint; text: WxString; 
            help: WxString; isCheckable: bool; subMenu: ptr WxMenu = nil): ptr WxMenuItem {.
    cdecl, importcpp: "wxMenuItemBase::New(@)", header: "<wx/wx.h>".}
type 
  WxMenuItem* {.importcpp: "wxMenuItem", header: "<wx/wx.h>".} = object of WxMenuItemBase
  

proc constructwxMenuItem*(parentMenu: ptr WxMenu = nil; id = wxID_SEPARATOR; 
                          name: WxString = wxEmptyString; 
                          help: WxString = wxEmptyString; 
                          kind: WxItemKind = wxITEM_NORMAL; 
                          subMenu: ptr WxMenu = nil): WxMenuItem {.cdecl, 
    constructor, importcpp: "wxMenuItem(@)", header: "<wx/wx.h>".}
proc destroywxMenuItem*(this: var WxMenuItem) {.cdecl, 
    importcpp: "#.~wxMenuItem()", header: "<wx/wx.h>".}
proc setItemLabel*(this: var WxMenuItem; strName: WxString) {.cdecl, 
    importcpp: "SetItemLabel", header: "<wx/wx.h>".}
proc enable*(this: var WxMenuItem; bDoEnable: bool = true) {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc check*(this: var WxMenuItem; bDoCheck: bool = true) {.cdecl, 
    importcpp: "Check", header: "<wx/wx.h>".}
proc isChecked*(this: WxMenuItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: "<wx/wx.h>".}
proc isCheckable*(this: WxMenuItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheckable", header: "<wx/wx.h>".}
proc setBitmaps*(this: var WxMenuItem; bmpChecked: WxBitmap; 
                 bmpUnchecked: WxBitmap = wxNullBitmap) {.cdecl, 
    importcpp: "SetBitmaps", header: "<wx/wx.h>".}
proc setBitmap*(this: var WxMenuItem; bmp: WxBitmap; bChecked: bool = true) {.
    cdecl, importcpp: "SetBitmap", header: "<wx/wx.h>".}
proc getBitmap*(this: WxMenuItem): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: "<wx/wx.h>".}
