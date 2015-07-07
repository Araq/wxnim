

discard "forward decl of wxBitmap"
discard "forward decl of wxColour"
discard "forward decl of wxDC"
type 
  WxBannerWindow* {.importcpp: "wxBannerWindow", header: "wx.h".} = object of WxWindow
    mDirection* {.importc: "m_direction".}: WxDirection
    mBitmap* {.importc: "m_bitmap".}: WxBitmap
    mColBitmapBg* {.importc: "m_colBitmapBg".}: WxColour
    mTitle* {.importc: "m_title".}: WxString
    mMessage* {.importc: "m_message".}: WxString
    mColStart* {.importc: "m_colStart".}: WxColour
    mColEnd* {.importc: "m_colEnd".}: WxColour


proc constructwxBannerWindow*(): WxBannerWindow {.cdecl, constructor, 
    importcpp: "wxBannerWindow(@)", header: "wx.h".}
proc constructwxBannerWindow*(parent: ptr WxWindow; dir: WxDirection = wxLEFT): WxBannerWindow {.
    cdecl, constructor, importcpp: "wxBannerWindow(@)", header: "wx.h".}
proc constructwxBannerWindow*(parent: ptr WxWindow; winid: WxWindowID; 
                              dir: WxDirection = wxLEFT; 
                              pos: WxPoint = wxDefaultPosition; 
                              size: WxSize = wxDefaultSize; style: clong = 0; 
    name: WxString = constructWxString("bannerwindow")): WxBannerWindow {.cdecl, 
    constructor, importcpp: "wxBannerWindow(@)", header: "wx.h".}
proc create*(this: var WxBannerWindow; parent: ptr WxWindow; winid: WxWindowID; 
             dir: WxDirection = wxLEFT; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             name: WxString = constructWxString("bannerwindow")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc setBitmap*(this: var WxBannerWindow; bmp: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: "wx.h".}
proc setText*(this: var WxBannerWindow; title: WxString; message: WxString) {.
    cdecl, importcpp: "SetText", header: "wx.h".}
proc setGradient*(this: var WxBannerWindow; start: WxColour; `end`: WxColour) {.
    cdecl, importcpp: "SetGradient", header: "wx.h".}