


discard "forward decl of wxControlContainer"
type 
  WxPanelBase* {.importcpp: "wxPanelBase", header: "<wx/wx.h>".} = object of WxWindow
  

proc constructwxPanelBase*(): WxPanelBase {.cdecl, constructor, 
    importcpp: "wxPanelBase(@)", header: "<wx/wx.h>".}
proc create*(this: var WxPanelBase; parent: ptr WxWindow; 
             winid: WxWindowID = WxWindowID(wxID_ANY); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
             name: WxString = constructWxString("panel")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc initDialog*(this: var WxPanelBase) {.cdecl, importcpp: "InitDialog", 
    header: "<wx/wx.h>".}
type 
  WxPanel* {.importcpp: "wxPanel", header: "<wx/wx.h>".} = object of WxPanelBase
  

proc constructwxPanel*(): WxPanel {.cdecl, constructor, importcpp: "wxPanel(@)", 
                                    header: "<wx/wx.h>".}
proc constructwxPanel*(parent: ptr WxWindow; 
                       winid: WxWindowID = WxWindowID(wxID_ANY); 
                       pos: WxPoint = wxDefaultPosition; 
                       size: WxSize = wxDefaultSize; 
                       style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
                       name: WxString = constructWxString("panel")): WxPanel {.
    cdecl, constructor, importcpp: "wxPanel(@)", header: "<wx/wx.h>".}
proc hasTransparentBackground*(this: var WxPanel): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: "<wx/wx.h>".}