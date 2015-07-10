


type 
  WxCheckListBoxBase* {.importcpp: "wxCheckListBoxBase", header: wxh.} = object of WxListBox
  

proc constructwxCheckListBoxBase*(): WxCheckListBoxBase {.cdecl, constructor, 
    importcpp: "wxCheckListBoxBase(@)", header: wxh.}
proc isChecked*(this: WxCheckListBoxBase; item: cuint): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: wxh.}
proc check*(this: var WxCheckListBoxBase; item: cuint; check: bool = true) {.
    cdecl, importcpp: "Check", header: wxh.}
proc getCheckedItems*(this: WxCheckListBoxBase; checkedItems: var WxArrayInt): cuint {.
    noSideEffect, cdecl, importcpp: "GetCheckedItems", header: wxh.}
