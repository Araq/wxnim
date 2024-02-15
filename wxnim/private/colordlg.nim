

type 
  WxColourData* {.importcpp: "wxColourData", header: wxh.} = object 
  


proc wxGetColourFromUser*(parent: ptr WxWindow = nil; 
                          colInit: WxColour = wxNullColour; 
                          caption: WxString = wxEmptyString; 
                          data: ptr WxColourData = nil): WxColour {.cdecl, 
    importcpp: "wxGetColourFromUser(@)", header: wxh.}
