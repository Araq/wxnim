



type 
  WxItemContainerImmutable* {.importcpp: "wxItemContainerImmutable", 
                              header: wxh, inheritable.} = object 
  
  WxItemContainer* {.importcpp: "wxItemContainer", header: wxh.} = object of WxItemContainerImmutable
  
  WxComboBoxBase* {.importcpp: "wxComboBoxBase", header: wxh.} = object of WxItemContainer
  

proc clear*(this: var WxComboBoxBase) {.cdecl, importcpp: "Clear", header: wxh.}
proc isListEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsListEmpty", header: wxh.}
proc isTextEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTextEmpty", header: wxh.}
proc getSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getSelection*(this: WxComboBoxBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc popup*(this: var WxComboBoxBase) {.cdecl, importcpp: "Popup", header: wxh.}
proc dismiss*(this: var WxComboBoxBase) {.cdecl, importcpp: "Dismiss", 
    header: wxh.}
proc getCurrentSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: wxh.}
type 
  WxComboBox* {.importcpp: "wxComboBox", header: wxh.} = object of WxChoice
  

proc constructwxComboBox*(): WxComboBox {.cdecl, constructor, 
    importcpp: "wxComboBox(@)", header: wxh.}
proc constructwxComboBox*(parent: ptr WxWindow; id: WxWindowID; 
                          value: WxString = wxEmptyString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; n: cint = 0; 
                          choices: ptr WxString = nil; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("combobox")): WxComboBox {.
    cdecl, constructor, importcpp: "wxComboBox(@)", header: wxh.}
proc constructwxComboBox*(parent: ptr WxWindow; id: WxWindowID; value: WxString; 
                          pos: WxPoint; size: WxSize; choices: WxArrayString; 
                          style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("combobox")): WxComboBox {.
    cdecl, constructor, importcpp: "wxComboBox(@)", header: wxh.}
template constructwxComboBox*(parent: ptr WxWindow; id: WxWindowID; choices: WxArrayString;
                          value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition;
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("combobox")): WxComboBox =
  constructwxComboBox(parent, id, value, pos, size, choices, style, validator, name)
proc create*(this: var WxComboBox; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; n: cint = 0; 
             choices: ptr WxString = nil; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("combobox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxComboBox; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString; pos: WxPoint; size: WxSize; 
             choices: WxArrayString; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("combobox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc isListEmpty*(this: WxComboBox): bool {.noSideEffect, cdecl, 
    importcpp: "IsListEmpty", header: wxh.}
proc isTextEmpty*(this: WxComboBox): bool {.noSideEffect, cdecl, 
    importcpp: "IsTextEmpty", header: wxh.}
proc clear*(this: var WxComboBox) {.cdecl, importcpp: "Clear", header: wxh.}
proc getValue*(this: WxComboBox): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxComboBox; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getStringSelection*(this: WxComboBox): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStringSelection", header: wxh.}
proc popup*(this: var WxComboBox) {.cdecl, importcpp: "Popup", header: wxh.}
proc dismiss*(this: var WxComboBox) {.cdecl, importcpp: "Dismiss", header: wxh.}
proc setSelection*(this: var WxComboBox; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc setSelection*(this: var WxComboBox; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc getSelection*(this: WxComboBox): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getSelection*(this: WxComboBox; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc isEditable*(this: WxComboBox): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: wxh.}
proc onCut*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCut", header: wxh.}
proc onCopy*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCopy", header: wxh.}
proc onPaste*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPaste", header: wxh.}
proc onUndo*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUndo", header: wxh.}
proc onRedo*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRedo", header: wxh.}
proc onDelete*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnDelete", header: wxh.}
proc onSelectAll*(this: var WxComboBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSelectAll", header: wxh.}
proc onUpdateCut*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCut", header: wxh.}
proc onUpdateCopy*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateCopy", header: wxh.}
proc onUpdatePaste*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdatePaste", header: wxh.}
proc onUpdateUndo*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateUndo", header: wxh.}
proc onUpdateRedo*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateRedo", header: wxh.}
proc onUpdateDelete*(this: var WxComboBox; event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateDelete", header: wxh.}
proc onUpdateSelectAll*(this: var WxComboBox; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnUpdateSelectAll", header: wxh.}
proc setHint*(this: var WxComboBox; hint: WxString): bool {.discardable, cdecl, 
    importcpp: "SetHint", header: wxh.}