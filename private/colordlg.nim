

type 
  WxColourData* {.importcpp: "wxColourData", header: "wx.h".} = object 
  


proc wxGetColourFromUser*(parent: ptr WxWindow = nil; 
                          colInit: WxColour = wxNullColour; 
                          caption: WxString = wxEmptyString; 
                          data: ptr WxColourData = nil): WxColour {.cdecl, 
    importcpp: "wxGetColourFromUser(@)", header: "wx.h".}
