


const 
  wxHL_CONTEXTMENU* = 0x00000001
  wxHL_ALIGN_LEFT* = 0x00000002
  wxHL_ALIGN_RIGHT* = 0x00000004
  wxHL_ALIGN_CENTER* = 0x00000008
  wxHL_DEFAULT_STYLE* = (
    wxHL_CONTEXTMENU or int(wxNO_BORDER) or wxHL_ALIGN_CENTER)


type 
  WxHyperlinkCtrlBase* {.importcpp: "wxHyperlinkCtrlBase", header: wxh.} = object of WxControl
  

proc getHoverColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetHoverColour", header: wxh.}
proc setHoverColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetHoverColour", header: wxh.}
proc getNormalColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetNormalColour", header: wxh.}
proc setNormalColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetNormalColour", header: wxh.}
proc getVisitedColour*(this: WxHyperlinkCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetVisitedColour", header: wxh.}
proc setVisitedColour*(this: var WxHyperlinkCtrlBase; colour: WxColour) {.cdecl, 
    importcpp: "SetVisitedColour", header: wxh.}
proc getURL*(this: WxHyperlinkCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: wxh.}
proc setURL*(this: var WxHyperlinkCtrlBase; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: wxh.}
proc setVisited*(this: var WxHyperlinkCtrlBase; visited: bool = true) {.cdecl, 
    importcpp: "SetVisited", header: wxh.}
proc getVisited*(this: WxHyperlinkCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetVisited", header: wxh.}
proc hasTransparentBackground*(this: var WxHyperlinkCtrlBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: wxh.}
proc sendEvent*(this: var WxHyperlinkCtrlBase) {.cdecl, importcpp: "SendEvent", 
    header: wxh.}

discard "forward decl of wxHyperlinkEvent"
var wxEVT_HYPERLINK* {.importcpp: "wxEVT_HYPERLINK", header: wxh.}: WxEventTypeTag[
    WxHyperlinkEvent]


type 
  WxHyperlinkEvent* {.importcpp: "wxHyperlinkEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxHyperlinkEvent*(): WxHyperlinkEvent {.cdecl, constructor, 
    importcpp: "wxHyperlinkEvent(@)", header: wxh.}
proc constructwxHyperlinkEvent*(generator: ptr WxObject; id: WxWindowID; 
                                url: WxString): WxHyperlinkEvent {.cdecl, 
    constructor, importcpp: "wxHyperlinkEvent(@)", header: wxh.}
proc getURL*(this: WxHyperlinkEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: wxh.}
proc setURL*(this: var WxHyperlinkEvent; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: wxh.}
proc clone*(this: WxHyperlinkEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

type 
  WxHyperlinkCtrl* {.importcpp: "wxHyperlinkCtrl", header: wxh.} = object of WxHyperlinkCtrlBase
  

proc constructwxHyperlinkCtrl*(): WxHyperlinkCtrl {.cdecl, constructor, 
    importcpp: "wxHyperlinkCtrl(@)", header: wxh.}
proc constructwxHyperlinkCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                               label: WxString; url: WxString; 
                               pos: WxPoint = wxDefaultPosition; 
                               size: WxSize = wxDefaultSize; 
                               style: clong = wxHL_DEFAULT_STYLE; 
                               name: WxString = constructWxString("hyperlink")): WxHyperlinkCtrl {.
    cdecl, constructor, importcpp: "wxHyperlinkCtrl(@)", header: wxh.}