


type 
  WxFontDialogBase* {.importcpp: "wxFontDialogBase", header: "<wx/wx.h>".} = object of WxDialog
  

proc constructwxFontDialogBase*(): WxFontDialogBase {.cdecl, constructor, 
    importcpp: "wxFontDialogBase(@)", header: "<wx/wx.h>".}
proc constructwxFontDialogBase*(parent: ptr WxWindow): WxFontDialogBase {.cdecl, 
    constructor, importcpp: "wxFontDialogBase(@)", header: "<wx/wx.h>".}
proc constructwxFontDialogBase*(parent: ptr WxWindow; data: WxFontData): WxFontDialogBase {.
    cdecl, constructor, importcpp: "wxFontDialogBase(@)", header: "<wx/wx.h>".}
proc create*(this: var WxFontDialogBase; parent: ptr WxWindow): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxFontDialogBase; parent: ptr WxWindow; data: WxFontData): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc getFontData*(this: WxFontDialogBase): WxFontData {.noSideEffect, cdecl, 
    importcpp: "GetFontData", header: "<wx/wx.h>".}
proc getFontData*(this: var WxFontDialogBase): var WxFontData {.cdecl, 
    importcpp: "GetFontData", header: "<wx/wx.h>".}

proc wxGetFontFromUser*(parent: ptr WxWindow = nil; 
                        fontInit: WxFont = wxNullFont; 
                        caption: WxString = wxEmptyString): WxFont {.cdecl, 
    importcpp: "wxGetFontFromUser(@)", header: "<wx/wx.h>".}
