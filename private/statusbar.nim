


type 
  WxStatusBarPane* {.importcpp: "wxStatusBarPane", header: wxh.} = object 
  

proc constructwxStatusBarPane*(style: cint = wxSB_NORMAL; width: cint = 0): WxStatusBarPane {.
    cdecl, constructor, importcpp: "wxStatusBarPane(@)", header: wxh.}
proc getWidth*(this: WxStatusBarPane): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: wxh.}
proc getStyle*(this: WxStatusBarPane): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getText*(this: WxStatusBarPane): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc isEllipsized*(this: WxStatusBarPane): bool {.noSideEffect, cdecl, 
    importcpp: "IsEllipsized", header: wxh.}
proc setIsEllipsized*(this: var WxStatusBarPane; isEllipsized: bool) {.cdecl, 
    importcpp: "SetIsEllipsized", header: wxh.}
proc setWidth*(this: var WxStatusBarPane; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: wxh.}
proc setStyle*(this: var WxStatusBarPane; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: wxh.}
proc setText*(this: var WxStatusBarPane; text: WxString): bool {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc pushText*(this: var WxStatusBarPane; text: WxString): bool {.cdecl, 
    importcpp: "PushText", header: wxh.}
proc popText*(this: var WxStatusBarPane): bool {.cdecl, importcpp: "PopText", 
    header: wxh.}

type 
  WxStatusBarBase* {.importcpp: "wxStatusBarBase", header: wxh.} = object of WxControl
  

proc constructwxStatusBarBase*(): WxStatusBarBase {.cdecl, constructor, 
    importcpp: "wxStatusBarBase(@)", header: wxh.}
proc destroywxStatusBarBase*(this: var WxStatusBarBase) {.cdecl, 
    importcpp: "#.~wxStatusBarBase()", header: wxh.}
proc setFieldsCount*(this: var WxStatusBarBase; number: cint = 1; 
                     widths: ptr cint = nil) {.cdecl, 
    importcpp: "SetFieldsCount", header: wxh.}
proc getFieldsCount*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetFieldsCount", header: wxh.}
proc setStatusText*(this: var WxStatusBarBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "SetStatusText", header: wxh.}
proc getStatusText*(this: WxStatusBarBase; number: cint = 0): WxString {.
    noSideEffect, cdecl, importcpp: "GetStatusText", header: wxh.}
proc pushStatusText*(this: var WxStatusBarBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "PushStatusText", header: wxh.}
proc popStatusText*(this: var WxStatusBarBase; number: cint = 0) {.cdecl, 
    importcpp: "PopStatusText", header: wxh.}
proc setStatusWidths*(this: var WxStatusBarBase; n: cint; widths: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: wxh.}
proc getStatusWidth*(this: WxStatusBarBase; n: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetStatusWidth", header: wxh.}
proc setStatusStyles*(this: var WxStatusBarBase; n: cint; styles: ptr cint) {.
    cdecl, importcpp: "SetStatusStyles", header: wxh.}
proc getStatusStyle*(this: WxStatusBarBase; n: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetStatusStyle", header: wxh.}
proc getFieldRect*(this: WxStatusBarBase; i: cint; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetFieldRect", header: wxh.}
proc setMinHeight*(this: var WxStatusBarBase; height: cint) {.cdecl, 
    importcpp: "SetMinHeight", header: wxh.}
proc getBorderX*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderX", header: wxh.}
proc getBorderY*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderY", header: wxh.}
proc getBorders*(this: WxStatusBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBorders", header: wxh.}
proc getField*(this: WxStatusBarBase; n: cint): WxStatusBarPane {.noSideEffect, 
    cdecl, importcpp: "GetField", header: wxh.}
proc acceptsFocus*(this: WxStatusBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc canBeOutsideClientArea*(this: WxStatusBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: wxh.}

discard "forward decl of wxClientDC"
type 
  WxStatusBar* {.importcpp: "wxStatusBar", header: wxh.} = object of WxStatusBarBase
  

proc constructwxStatusBar*(): WxStatusBar {.cdecl, constructor, 
    importcpp: "wxStatusBar(@)", header: wxh.}
proc constructwxStatusBar*(parent: ptr WxWindow; 
                           id: WxWindowID = WxWindowID(wxID_ANY); 
                           style: clong = wxSTB_DEFAULT_STYLE; 
                           name: WxString = constructWxString("statusBar")): WxStatusBar {.
    cdecl, constructor, importcpp: "wxStatusBar(@)", header: wxh.}
proc create*(this: var WxStatusBar; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             style: clong = wxSTB_DEFAULT_STYLE; 
             name: WxString = constructWxString("statusBar")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxStatusBar*(this: var WxStatusBar) {.cdecl, 
    importcpp: "#.~wxStatusBar()", header: wxh.}
proc setFieldsCount*(this: var WxStatusBar; number: cint = 1; 
                     widths: ptr cint = nil) {.cdecl, 
    importcpp: "SetFieldsCount", header: wxh.}
proc setStatusWidths*(this: var WxStatusBar; n: cint; widthsField: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: wxh.}
proc setStatusStyles*(this: var WxStatusBar; n: cint; styles: ptr cint) {.cdecl, 
    importcpp: "SetStatusStyles", header: wxh.}
proc setMinHeight*(this: var WxStatusBar; height: cint) {.cdecl, 
    importcpp: "SetMinHeight", header: wxh.}
proc getFieldRect*(this: WxStatusBar; i: cint; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetFieldRect", header: wxh.}
proc getBorderX*(this: WxStatusBar): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderX", header: wxh.}
proc getBorderY*(this: WxStatusBar): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderY", header: wxh.}
proc setFont*(this: var WxStatusBar; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
