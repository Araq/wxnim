


discard "forward decl of wxControlContainer"
type 
  WxPanelBase* {.importcpp: "wxPanelBase", header: "wx.h".} = object of WxWindow
  

proc constructwxPanelBase*(): WxPanelBase {.cdecl, constructor, 
    importcpp: "wxPanelBase(@)", header: "wx.h".}
proc create*(this: var WxPanelBase; parent: ptr WxWindow; 
             winid: WxWindowID = WxWindowID(wxID_ANY); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
             name: WxString = constructWxString("panel")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc initDialog*(this: var WxPanelBase) {.cdecl, importcpp: "InitDialog", 
    header: "wx.h".}
type 
  WxPanel* {.importcpp: "wxPanel", header: "wx.h".} = object of WxPanelBase
  

proc constructwxPanel*(): WxPanel {.cdecl, constructor, importcpp: "wxPanel(@)", 
                                    header: "wx.h".}
proc constructwxPanel*(parent: ptr WxWindow; 
                       winid: WxWindowID = WxWindowID(wxID_ANY); 
                       pos: WxPoint = wxDefaultPosition; 
                       size: WxSize = wxDefaultSize; 
                       style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
                       name: WxString = constructWxString("panel")): WxPanel {.
    cdecl, constructor, importcpp: "wxPanel(@)", header: "wx.h".}
proc hasTransparentBackground*(this: var WxPanel): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: "wx.h".}