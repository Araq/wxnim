


type 
  WxCheckListBoxBase* {.importcpp: "wxCheckListBoxBase", header: "<wx/wx.h>".} = object of WxListBox
  

proc constructwxCheckListBoxBase*(): WxCheckListBoxBase {.cdecl, constructor, 
    importcpp: "wxCheckListBoxBase(@)", header: "<wx/wx.h>".}
proc isChecked*(this: WxCheckListBoxBase; item: cuint): bool {.noSideEffect, 
    cdecl, importcpp: "IsChecked", header: "<wx/wx.h>".}
proc check*(this: var WxCheckListBoxBase; item: cuint; check: bool = true) {.
    cdecl, importcpp: "Check", header: "<wx/wx.h>".}
proc getCheckedItems*(this: WxCheckListBoxBase; checkedItems: var WxArrayInt): cuint {.
    noSideEffect, cdecl, importcpp: "GetCheckedItems", header: "<wx/wx.h>".}
