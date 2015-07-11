

discard "forward decl of wxListView"
discard "forward decl of wxListEvent"
type 
  WxBookCtrlEvent* {.importcpp: "wxBookCtrlEvent", header: wxh.} = object 
  

var wxEVT_LISTBOOK_PAGE_CHANGED* {.importcpp: "wxEVT_LISTBOOK_PAGE_CHANGED", 
                                   header: wxh.}: WxEventTypeTag[WxBookCtrlEvent]

var wxEVT_LISTBOOK_PAGE_CHANGING* {.importcpp: "wxEVT_LISTBOOK_PAGE_CHANGING", 
                                    header: wxh.}: WxEventTypeTag[
    WxBookCtrlEvent]


type 
  WxListbook* {.importcpp: "wxListbook", header: wxh.} = object of WxControl
  

proc constructwxListbook*(): WxListbook {.cdecl, constructor, 
    importcpp: "wxListbook(@)", header: wxh.}
proc constructwxListbook*(parent: ptr WxWindow; id: WxWindowID; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          name: WxString = wxEmptyString): WxListbook {.cdecl, 
    constructor, importcpp: "wxListbook(@)", header: wxh.}
proc create*(this: var WxListbook; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setPageText*(this: var WxListbook; n: csize; strText: WxString): bool {.
    discardable, cdecl, importcpp: "SetPageText", header: wxh.}
proc getPageText*(this: WxListbook; n: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageText", header: wxh.}
proc getPageImage*(this: WxListbook; n: csize): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageImage", header: wxh.}
proc setPageImage*(this: var WxListbook; n: csize; imageId: cint): bool {.
    discardable, cdecl, importcpp: "SetPageImage", header: wxh.}
proc insertPage*(this: var WxListbook; n: csize; page: ptr WxWindow; 
                 text: WxString; bSelect: bool = false; imageId: cint = - 1): bool {.
    cdecl, importcpp: "InsertPage", header: wxh.}
proc setSelection*(this: var WxListbook; n: csize): cint {.discardable, cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc changeSelection*(this: var WxListbook; n: csize): cint {.cdecl, 
    importcpp: "ChangeSelection", header: wxh.}
proc hitTest*(this: WxListbook; pt: WxPoint; flags: ptr clong = nil): cint {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc setImageList*(this: var WxListbook; imageList: ptr WxImageList) {.cdecl, 
    importcpp: "SetImageList", header: wxh.}
proc deleteAllPages*(this: var WxListbook): bool {.cdecl, 
    importcpp: "DeleteAllPages", header: wxh.}
proc getListView*(this: WxListbook): ptr WxListView {.noSideEffect, cdecl, 
    importcpp: "GetListView", header: wxh.}