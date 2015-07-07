


const 
  wxDD_CHANGE_DIR* = 0x00000100
  wxDD_DIR_MUST_EXIST* = 0x00000200


const 
  wxDD_NEW_DIR_BUTTON* = 0

var wxDD_DEFAULT_STYLE* {.importcpp: "wxDD_DEFAULT_STYLE", header: "wx.h".}: clong


type 
  WxDirDialogBase* {.importcpp: "wxDirDialogBase", header: "wx.h".} = object of WxDialog
    mMessage* {.importc: "m_message".}: WxString
    mPath* {.importc: "m_path".}: WxString


proc constructwxDirDialogBase*(): WxDirDialogBase {.cdecl, constructor, 
    importcpp: "wxDirDialogBase(@)", header: "wx.h".}
proc constructwxDirDialogBase*(parent: ptr WxWindow; title: WxString = constructWxString(
    "Select a directory"); defaultPath: WxString = wxEmptyString; 
                               style: clong = wxDD_DEFAULT_STYLE; 
                               pos: WxPoint = wxDefaultPosition; 
                               sz: WxSize = wxDefaultSize; 
                               name: WxString = constructWxString("wxDirCtrl")): WxDirDialogBase {.
    cdecl, constructor, importcpp: "wxDirDialogBase(@)", header: "wx.h".}
proc destroywxDirDialogBase*(this: var WxDirDialogBase) {.cdecl, 
    importcpp: "#.~wxDirDialogBase()", header: "wx.h".}
proc create*(this: var WxDirDialogBase; parent: ptr WxWindow; 
             title: WxString = constructWxString("Select a directory"); 
             defaultPath: WxString = wxEmptyString; 
             style: clong = wxDD_DEFAULT_STYLE; 
             pos: WxPoint = wxDefaultPosition; sz: WxSize = wxDefaultSize; 
             name: WxString = constructWxString("wxDirCtrl")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc setMessage*(this: var WxDirDialogBase; message: WxString) {.cdecl, 
    importcpp: "SetMessage", header: "wx.h".}
proc setPath*(this: var WxDirDialogBase; path: WxString) {.cdecl, 
    importcpp: "SetPath", header: "wx.h".}
proc getMessage*(this: WxDirDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetMessage", header: "wx.h".}
proc getPath*(this: WxDirDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPath", header: "wx.h".}

proc wxDirSelector*(message: WxString = constructWxString("Select a directory"); 
                    defaultPath: WxString = wxEmptyString; 
                    style: clong = wxDD_DEFAULT_STYLE; 
                    pos: WxPoint = wxDefaultPosition; parent: ptr WxWindow = nil): WxString {.
    cdecl, importcpp: "wxDirSelector(@)", header: "wx.h".}
