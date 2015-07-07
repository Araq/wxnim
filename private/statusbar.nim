


type 
  WxStatusBarPane* {.importcpp: "wxStatusBarPane", header: "wx.h".} = object 
  

proc constructwxStatusBarPane*(style: cint = wxSB_NORMAL; width: cint = 0): WxStatusBarPane {.
    cdecl, constructor, importcpp: "wxStatusBarPane(@)", header: "wx.h".}
proc getWidth*(this: WxStatusBarPane): cint {.noSideEffect, cdecl, 
    importcpp: "GetWidth", header: "wx.h".}
proc getStyle*(this: WxStatusBarPane): cint {.noSideEffect, cdecl, 
    importcpp: "GetStyle", header: "wx.h".}
proc getText*(this: WxStatusBarPane): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: "wx.h".}
proc isEllipsized*(this: WxStatusBarPane): bool {.noSideEffect, cdecl, 
    importcpp: "IsEllipsized", header: "wx.h".}
proc setIsEllipsized*(this: var WxStatusBarPane; isEllipsized: bool) {.cdecl, 
    importcpp: "SetIsEllipsized", header: "wx.h".}
proc setWidth*(this: var WxStatusBarPane; width: cint) {.cdecl, 
    importcpp: "SetWidth", header: "wx.h".}
proc setStyle*(this: var WxStatusBarPane; style: cint) {.cdecl, 
    importcpp: "SetStyle", header: "wx.h".}
proc setText*(this: var WxStatusBarPane; text: WxString): bool {.cdecl, 
    importcpp: "SetText", header: "wx.h".}
proc pushText*(this: var WxStatusBarPane; text: WxString): bool {.cdecl, 
    importcpp: "PushText", header: "wx.h".}
proc popText*(this: var WxStatusBarPane): bool {.cdecl, importcpp: "PopText", 
    header: "wx.h".}

type 
  WxStatusBarBase* {.importcpp: "wxStatusBarBase", header: "wx.h".} = object of WxControl
  

proc constructwxStatusBarBase*(): WxStatusBarBase {.cdecl, constructor, 
    importcpp: "wxStatusBarBase(@)", header: "wx.h".}
proc destroywxStatusBarBase*(this: var WxStatusBarBase) {.cdecl, 
    importcpp: "#.~wxStatusBarBase()", header: "wx.h".}
proc setFieldsCount*(this: var WxStatusBarBase; number: cint = 1; 
                     widths: ptr cint = nil) {.cdecl, 
    importcpp: "SetFieldsCount", header: "wx.h".}
proc getFieldsCount*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetFieldsCount", header: "wx.h".}
proc setStatusText*(this: var WxStatusBarBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "SetStatusText", header: "wx.h".}
proc getStatusText*(this: WxStatusBarBase; number: cint = 0): WxString {.
    noSideEffect, cdecl, importcpp: "GetStatusText", header: "wx.h".}
proc pushStatusText*(this: var WxStatusBarBase; text: WxString; number: cint = 0) {.
    cdecl, importcpp: "PushStatusText", header: "wx.h".}
proc popStatusText*(this: var WxStatusBarBase; number: cint = 0) {.cdecl, 
    importcpp: "PopStatusText", header: "wx.h".}
proc setStatusWidths*(this: var WxStatusBarBase; n: cint; widths: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: "wx.h".}
proc getStatusWidth*(this: WxStatusBarBase; n: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetStatusWidth", header: "wx.h".}
proc setStatusStyles*(this: var WxStatusBarBase; n: cint; styles: ptr cint) {.
    cdecl, importcpp: "SetStatusStyles", header: "wx.h".}
proc getStatusStyle*(this: WxStatusBarBase; n: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetStatusStyle", header: "wx.h".}
proc getFieldRect*(this: WxStatusBarBase; i: cint; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetFieldRect", header: "wx.h".}
proc setMinHeight*(this: var WxStatusBarBase; height: cint) {.cdecl, 
    importcpp: "SetMinHeight", header: "wx.h".}
proc getBorderX*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderX", header: "wx.h".}
proc getBorderY*(this: WxStatusBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderY", header: "wx.h".}
proc getBorders*(this: WxStatusBarBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBorders", header: "wx.h".}
proc getField*(this: WxStatusBarBase; n: cint): WxStatusBarPane {.noSideEffect, 
    cdecl, importcpp: "GetField", header: "wx.h".}
proc acceptsFocus*(this: WxStatusBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "wx.h".}
proc canBeOutsideClientArea*(this: WxStatusBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: "wx.h".}

discard "forward decl of wxClientDC"
type 
  WxStatusBar* {.importcpp: "wxStatusBar", header: "wx.h".} = object of WxStatusBarBase
  

proc constructwxStatusBar*(): WxStatusBar {.cdecl, constructor, 
    importcpp: "wxStatusBar(@)", header: "wx.h".}
proc constructwxStatusBar*(parent: ptr WxWindow; 
                           id: WxWindowID = WxWindowID(wxID_ANY); 
                           style: clong = wxSTB_DEFAULT_STYLE; 
                           name: WxString = constructWxString("statusBar")): WxStatusBar {.
    cdecl, constructor, importcpp: "wxStatusBar(@)", header: "wx.h".}
proc create*(this: var WxStatusBar; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             style: clong = wxSTB_DEFAULT_STYLE; 
             name: WxString = constructWxString("statusBar")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxStatusBar*(this: var WxStatusBar) {.cdecl, 
    importcpp: "#.~wxStatusBar()", header: "wx.h".}
proc setFieldsCount*(this: var WxStatusBar; number: cint = 1; 
                     widths: ptr cint = nil) {.cdecl, 
    importcpp: "SetFieldsCount", header: "wx.h".}
proc setStatusWidths*(this: var WxStatusBar; n: cint; widthsField: ptr cint) {.
    cdecl, importcpp: "SetStatusWidths", header: "wx.h".}
proc setStatusStyles*(this: var WxStatusBar; n: cint; styles: ptr cint) {.cdecl, 
    importcpp: "SetStatusStyles", header: "wx.h".}
proc setMinHeight*(this: var WxStatusBar; height: cint) {.cdecl, 
    importcpp: "SetMinHeight", header: "wx.h".}
proc getFieldRect*(this: WxStatusBar; i: cint; rect: var WxRect): bool {.
    noSideEffect, cdecl, importcpp: "GetFieldRect", header: "wx.h".}
proc getBorderX*(this: WxStatusBar): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderX", header: "wx.h".}
proc getBorderY*(this: WxStatusBar): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderY", header: "wx.h".}
proc setFont*(this: var WxStatusBar; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "wx.h".}
