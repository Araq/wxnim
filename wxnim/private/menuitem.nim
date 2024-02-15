



discard "forward decl of wxAcceleratorEntry"
discard "forward decl of wxMenuItem"
discard "forward decl of wxMenu"
type 
  WxMenuItemBase* {.importcpp: "wxMenuItemBase", header: wxh.} = object of WxObject
  

proc wxNew*(parentMenu: ptr WxMenu = nil; itemid = wxID_SEPARATOR; 
            text: WxString = wxEmptyString; help: WxString = wxEmptyString; 
            kind: WxItemKind = wxITEM_NORMAL; subMenu: ptr WxMenu = nil): ptr WxMenuItem {.
    cdecl, importcpp: "wxMenuItemBase::New(@)", header: wxh.}
proc destroywxMenuItemBase*(this: var WxMenuItemBase) {.cdecl, 
    importcpp: "#.~wxMenuItemBase()", header: wxh.}
proc getMenu*(this: WxMenuItemBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetMenu", header: wxh.}
proc setMenu*(this: var WxMenuItemBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetMenu", header: wxh.}
proc setId*(this: var WxMenuItemBase; itemid: cint) {.cdecl, importcpp: "SetId", 
    header: wxh.}
proc getId*(this: WxMenuItemBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetId", header: wxh.}
proc setItemLabel*(this: var WxMenuItemBase; str: WxString) {.cdecl, 
    importcpp: "SetItemLabel", header: wxh.}
proc getItemLabel*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetItemLabel", header: wxh.}
proc getItemLabelText*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetItemLabelText", header: wxh.}
proc getKind*(this: WxMenuItemBase): WxItemKind {.noSideEffect, cdecl, 
    importcpp: "GetKind", header: wxh.}
proc setKind*(this: var WxMenuItemBase; kind: WxItemKind) {.cdecl, 
    importcpp: "SetKind", header: wxh.}
proc isSeparator*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSeparator", header: wxh.}
proc isCheck*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheck", header: wxh.}
proc isRadio*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsRadio", header: wxh.}
proc setCheckable*(this: var WxMenuItemBase; checkable: bool) {.cdecl, 
    importcpp: "SetCheckable", header: wxh.}
proc isCheckable*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheckable", header: wxh.}
proc isSubMenu*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSubMenu", header: wxh.}
proc setSubMenu*(this: var WxMenuItemBase; menu: ptr WxMenu) {.cdecl, 
    importcpp: "SetSubMenu", header: wxh.}
proc getSubMenu*(this: WxMenuItemBase): ptr WxMenu {.noSideEffect, cdecl, 
    importcpp: "GetSubMenu", header: wxh.}
proc enable*(this: var WxMenuItemBase; enable: bool = true) {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc isEnabled*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: wxh.}
proc check*(this: var WxMenuItemBase; check: bool = true) {.cdecl, 
    importcpp: "Check", header: wxh.}
proc isChecked*(this: WxMenuItemBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: wxh.}
proc toggle*(this: var WxMenuItemBase) {.cdecl, importcpp: "Toggle", header: wxh.}
proc setHelp*(this: var WxMenuItemBase; str: WxString) {.cdecl, 
    importcpp: "SetHelp", header: wxh.}
proc getHelp*(this: WxMenuItemBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHelp", header: wxh.}
proc getAccelFromString*(label: WxString): ptr WxAcceleratorEntry {.cdecl, 
    importcpp: "wxMenuItemBase::GetAccelFromString(@)", header: wxh.}
proc getAccel*(this: WxMenuItemBase): ptr WxAcceleratorEntry {.noSideEffect, 
    cdecl, importcpp: "GetAccel", header: wxh.}
proc setAccel*(this: var WxMenuItemBase; accel: ptr WxAcceleratorEntry) {.cdecl, 
    importcpp: "SetAccel", header: wxh.}
proc wxNew*(parentMenu: ptr WxMenu; itemid: cint; text: WxString; 
            help: WxString; isCheckable: bool; subMenu: ptr WxMenu = nil): ptr WxMenuItem {.
    cdecl, importcpp: "wxMenuItemBase::New(@)", header: wxh.}
type 
  WxMenuItem* {.importcpp: "wxMenuItem", header: wxh.} = object of WxMenuItemBase
  

proc constructwxMenuItem*(parentMenu: ptr WxMenu = nil; id = wxID_SEPARATOR; 
                          name: WxString = wxEmptyString; 
                          help: WxString = wxEmptyString; 
                          kind: WxItemKind = wxITEM_NORMAL; 
                          subMenu: ptr WxMenu = nil): WxMenuItem {.cdecl, 
    constructor, importcpp: "wxMenuItem(@)", header: wxh.}
proc destroywxMenuItem*(this: var WxMenuItem) {.cdecl, 
    importcpp: "#.~wxMenuItem()", header: wxh.}
proc setItemLabel*(this: var WxMenuItem; strName: WxString) {.cdecl, 
    importcpp: "SetItemLabel", header: wxh.}
proc enable*(this: var WxMenuItem; bDoEnable: bool = true) {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc check*(this: var WxMenuItem; bDoCheck: bool = true) {.cdecl, 
    importcpp: "Check", header: wxh.}
proc isChecked*(this: WxMenuItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: wxh.}
proc isCheckable*(this: WxMenuItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsCheckable", header: wxh.}
proc setBitmaps*(this: var WxMenuItem; bmpChecked: WxBitmap; 
                 bmpUnchecked: WxBitmap = wxNullBitmap) {.cdecl, 
    importcpp: "SetBitmaps", header: wxh.}
proc setBitmap*(this: var WxMenuItem; bmp: WxBitmap; bChecked: bool = true) {.
    cdecl, importcpp: "SetBitmap", header: wxh.}
proc getBitmap*(this: WxMenuItem): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}
