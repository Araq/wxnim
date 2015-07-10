


type 
  WxArrayInt* {.importcpp: "wxArrayInt", header: wxh.} = object 
  
  WxControlWithItems* {.importcpp: "wxControlWithItems", header: wxh.} = object of WxControl
  
  WxOwnerDrawn* {.importcpp: "wxOwnerDrawn", header: wxh.} = object 
  


type 
  WxListBoxBase* {.importcpp: "wxListBoxBase", header: wxh.} = object of WxControlWithItems
  

proc constructwxListBoxBase*(): WxListBoxBase {.cdecl, constructor, 
    importcpp: "wxListBoxBase(@)", header: wxh.}
proc destroywxListBoxBase*(this: var WxListBoxBase) {.cdecl, 
    importcpp: "#.~wxListBoxBase()", header: wxh.}
proc insertItems*(this: var WxListBoxBase; nItems: cuint; items: ptr WxString; 
                  pos: cuint) {.cdecl, importcpp: "InsertItems", header: wxh.}
proc insertItems*(this: var WxListBoxBase; items: WxArrayString; pos: cuint) {.
    cdecl, importcpp: "InsertItems", header: wxh.}
proc isSelected*(this: WxListBoxBase; n: cint): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: wxh.}
proc setSelection*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc setSelection*(this: var WxListBoxBase; n: cint; select: bool) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc deselect*(this: var WxListBoxBase; n: cint) {.cdecl, importcpp: "Deselect", 
    header: wxh.}
proc deselectAll*(this: var WxListBoxBase; itemToLeaveSelected: cint = - 1) {.
    cdecl, importcpp: "DeselectAll", header: wxh.}
proc setStringSelection*(this: var WxListBoxBase; s: WxString; select: bool): bool {.
    cdecl, importcpp: "SetStringSelection", header: wxh.}
proc setStringSelection*(this: var WxListBoxBase; s: WxString): bool {.cdecl, 
    importcpp: "SetStringSelection", header: wxh.}
proc getSelections*(this: WxListBoxBase; aSelections: var WxArrayInt): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: wxh.}
proc setFirstItem*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "SetFirstItem", header: wxh.}
proc setFirstItem*(this: var WxListBoxBase; s: WxString) {.cdecl, 
    importcpp: "SetFirstItem", header: wxh.}
proc ensureVisible*(this: var WxListBoxBase; n: cint) {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc appendAndEnsureVisible*(this: var WxListBoxBase; s: WxString) {.cdecl, 
    importcpp: "AppendAndEnsureVisible", header: wxh.}
proc hasMultipleSelection*(this: WxListBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasMultipleSelection", header: wxh.}
proc isSorted*(this: WxListBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSorted", header: wxh.}
proc command*(this: var WxListBoxBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc hitTest*(this: WxListBoxBase; point: WxPoint): cint {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxListBoxBase; x: cint; y: cint): cint {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
type 
  WxListBox* {.importcpp: "wxListBox", header: wxh.} = object of WxListBoxBase
  

proc constructwxListBox*(): WxListBox {.cdecl, constructor, 
                                        importcpp: "wxListBox(@)", header: wxh.}
proc constructwxListBox*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; n: cint = 0; 
                         choices: ptr WxString = nil; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("listbox")): WxListBox {.
    cdecl, constructor, importcpp: "wxListBox(@)", header: wxh.}
proc constructwxListBox*(parent: ptr WxWindow; id: WxWindowID; pos: WxPoint; 
                         size: WxSize; choices: WxArrayString; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("listbox")): WxListBox {.
    cdecl, constructor, importcpp: "wxListBox(@)", header: wxh.}
proc create*(this: var WxListBox; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             n: cint = 0; choices: ptr WxString = nil; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listbox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxListBox; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint; size: WxSize; choices: WxArrayString; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("listbox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxListBox*(this: var WxListBox) {.cdecl, 
    importcpp: "#.~wxListBox()", header: wxh.}
proc getCount*(this: WxListBox): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getString*(this: WxListBox; n: cuint): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc setString*(this: var WxListBox; n: cuint; s: WxString) {.cdecl, 
    importcpp: "SetString", header: wxh.}
proc findString*(this: WxListBox; s: WxString; bCase: bool = false): cint {.
    noSideEffect, cdecl, importcpp: "FindString", header: wxh.}
proc isSelected*(this: WxListBox; n: cint): bool {.noSideEffect, cdecl, 
    importcpp: "IsSelected", header: wxh.}
proc getSelection*(this: WxListBox): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getSelections*(this: WxListBox; aSelections: var WxArrayInt): cint {.
    noSideEffect, cdecl, importcpp: "GetSelections", header: wxh.}
proc hitTest*(this: WxListBox; pt: WxPoint): cint {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxListBox; x: WxCoord; y: WxCoord): cint {.noSideEffect, 
    cdecl, importcpp: "HitTest", header: wxh.}
proc setFont*(this: var WxListBox; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc createLboxItem*(this: var WxListBox; n: csize): ptr WxOwnerDrawn {.cdecl, 
    importcpp: "CreateLboxItem", header: wxh.}
proc getItem*(this: WxListBox; n: csize): ptr WxOwnerDrawn {.noSideEffect, 
    cdecl, importcpp: "GetItem", header: wxh.}
proc getItemIndex*(this: WxListBox; item: ptr WxOwnerDrawn): cint {.
    noSideEffect, cdecl, importcpp: "GetItemIndex", header: wxh.}
proc getItemRect*(this: WxListBox; n: csize; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetItemRect", header: wxh.}
proc refreshItem*(this: var WxListBox; n: csize): bool {.cdecl, 
    importcpp: "RefreshItem", header: wxh.}
proc setHorizontalExtent*(this: var WxListBox; s: WxString = wxEmptyString) {.
    cdecl, importcpp: "SetHorizontalExtent", header: wxh.}
proc getDefaultAttributes*(this: WxListBox): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxh.}
proc canApplyThemeBorder*(this: WxListBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
proc onInternalIdle*(this: var WxListBox) {.cdecl, importcpp: "OnInternalIdle", 
    header: wxh.}
