


discard "forward decl of wxControlContainer"
type 
  WxPanelBase* {.importcpp: "wxPanelBase", header: wxh.} = object of WxWindow
  

proc constructwxPanelBase*(): WxPanelBase {.cdecl, constructor, 
    importcpp: "wxPanelBase(@)", header: wxh.}
proc create*(this: var WxPanelBase; parent: ptr WxWindow; 
             winid: WxWindowID = WxWindowID(wxID_ANY); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
             name: WxString = constructWxString("panel")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc initDialog*(this: var WxPanelBase) {.cdecl, importcpp: "InitDialog", 
    header: wxh.}
type 
  WxPanel* {.importcpp: "wxPanel", header: wxh.} = object of WxPanelBase
  

proc constructwxPanel*(): WxPanel {.cdecl, constructor, importcpp: "wxPanel(@)", 
                                    header: wxh.}
proc constructwxPanel*(parent: ptr WxWindow; 
                       winid: WxWindowID = WxWindowID(wxID_ANY); 
                       pos: WxPoint = wxDefaultPosition; 
                       size: WxSize = wxDefaultSize; 
                       style: clong = int(wxTAB_TRAVERSAL) or int(wxNO_BORDER); 
                       name: WxString = constructWxString("panel")): WxPanel {.
    cdecl, constructor, importcpp: "wxPanel(@)", header: wxh.}
proc hasTransparentBackground*(this: var WxPanel): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: wxh.}