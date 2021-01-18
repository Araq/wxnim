

var wxDEFAULT_DIALOG_STYLE* {.importcpp: "wxDEFAULT_DIALOG_STYLE", header: wxh.}: clong


type 
  WxDialog* {.importcpp: "wxDialog", header: wxh.} = object of WxWindow
  

proc constructwxDialog*(): WxDialog {.cdecl, constructor, 
                                      importcpp: "wxDialog(@)", header: wxh.}
proc constructwxDialog*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; 
                        style: clong = wxDEFAULT_DIALOG_STYLE; 
                        name: WxString = constructWxString("dialog")): WxDialog {.
    cdecl, constructor, importcpp: "wxDialog(@)", header: wxh.}
proc create*(this: var WxDialog; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; 
             style: clong = wxDEFAULT_DIALOG_STYLE; 
             name: WxString = constructWxString("dialog")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxDialog*(this: var WxDialog) {.cdecl, importcpp: "#.~wxDialog()", 
    header: wxh.}
proc isModal*(this: WxDialog): bool {.noSideEffect, cdecl, importcpp: "IsModal", 
                                      header: wxh.}
proc showModal*(this: var WxDialog): cint {.discardable, cdecl, 
    importcpp: "ShowModal", header: wxh.}
proc endModal*(this: var WxDialog; retCode: cint) {.cdecl, 
    importcpp: "EndModal", header: wxh.}
proc isModalShowing*(this: WxDialog): bool {.noSideEffect, cdecl, 
    importcpp: "IsModalShowing", header: wxh.}
proc show*(this: var WxDialog; show: bool = true): bool {.discardable, cdecl, 
    importcpp: "Show", header: wxh.}
proc onCloseWindow*(this: var WxDialog; event: var WxCloseEvent) {.cdecl, 
    importcpp: "OnCloseWindow", header: wxh.}
proc onOK*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnOK", header: wxh.}
proc onApply*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnApply", header: wxh.}
proc onCancel*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCancel", header: wxh.}
