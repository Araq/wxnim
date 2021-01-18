

discard "forward decl of wxBitmap"
discard "forward decl of wxColour"
discard "forward decl of wxDC"
type 
  WxBannerWindow* {.importcpp: "wxBannerWindow", header: wxh.} = object of WxWindow
  

proc constructwxBannerWindow*(): WxBannerWindow {.cdecl, constructor, 
    importcpp: "wxBannerWindow(@)", header: wxh.}
proc constructwxBannerWindow*(parent: ptr WxWindow; dir: WxDirection = wxLEFT): WxBannerWindow {.
    cdecl, constructor, importcpp: "wxBannerWindow(@)", header: wxh.}
proc constructwxBannerWindow*(parent: ptr WxWindow; winid: WxWindowID; 
                              dir: WxDirection = wxLEFT; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; style: clong = 0; 
    name: WxString = constructWxString("bannerwindow")): WxBannerWindow {.cdecl, 
    constructor, importcpp: "wxBannerWindow(@)", header: wxh.}
proc create*(this: var WxBannerWindow; parent: ptr WxWindow; winid: WxWindowID; 
             dir: WxDirection = wxLEFT; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             name: WxString = constructWxString("bannerwindow")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setBitmap*(this: var WxBannerWindow; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: wxh.}
proc setText*(this: var WxBannerWindow; title: WxString; message: WxString) {.
    cdecl, importcpp: "SetText", header: wxh.}
proc setGradient*(this: var WxBannerWindow; start: WxColour; `end`: WxColour) {.
    cdecl, importcpp: "SetGradient", header: wxh.}