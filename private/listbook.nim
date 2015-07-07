

discard "forward decl of wxListView"
discard "forward decl of wxListEvent"
type 
  WxBookCtrlEvent* {.importcpp: "wxBookCtrlEvent", header: "wx.h".} = object 
  

var wxEVT_LISTBOOK_PAGE_CHANGED* {.importcpp: "wxEVT_LISTBOOK_PAGE_CHANGED", 
                                   header: "wx.h".}: WxEventTypeTag[
    WxBookCtrlEvent]

var wxEVT_LISTBOOK_PAGE_CHANGING* {.importcpp: "wxEVT_LISTBOOK_PAGE_CHANGING", 
                                    header: "wx.h".}: WxEventTypeTag[
    WxBookCtrlEvent]


type 
  WxListbook* {.importcpp: "wxListbook", header: "wx.h".} = object of WxControl
  

proc constructwxListbook*(): WxListbook {.cdecl, constructor, 
    importcpp: "wxListbook(@)", header: "wx.h".}
proc constructwxListbook*(parent: ptr WxWindow; id: WxWindowID; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          name: WxString = wxEmptyString): WxListbook {.cdecl, 
    constructor, importcpp: "wxListbook(@)", header: "wx.h".}
proc create*(this: var WxListbook; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc setPageText*(this: var WxListbook; n: csize; strText: WxString): bool {.
    cdecl, importcpp: "SetPageText", header: "wx.h".}
proc getPageText*(this: WxListbook; n: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageText", header: "wx.h".}
proc getPageImage*(this: WxListbook; n: csize): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageImage", header: "wx.h".}
proc setPageImage*(this: var WxListbook; n: csize; imageId: cint): bool {.cdecl, 
    importcpp: "SetPageImage", header: "wx.h".}
proc insertPage*(this: var WxListbook; n: csize; page: ptr WxWindow; 
                 text: WxString; bSelect: bool = false; imageId: cint = - 1): bool {.
    cdecl, importcpp: "InsertPage", header: "wx.h".}
proc setSelection*(this: var WxListbook; n: csize): cint {.cdecl, 
    importcpp: "SetSelection", header: "wx.h".}
proc changeSelection*(this: var WxListbook; n: csize): cint {.cdecl, 
    importcpp: "ChangeSelection", header: "wx.h".}
proc hitTest*(this: WxListbook; pt: WxPoint; flags: ptr clong = nil): cint {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "wx.h".}
proc setImageList*(this: var WxListbook; imageList: ptr WxImageList) {.cdecl, 
    importcpp: "SetImageList", header: "wx.h".}
proc deleteAllPages*(this: var WxListbook): bool {.cdecl, 
    importcpp: "DeleteAllPages", header: "wx.h".}
proc getListView*(this: WxListbook): ptr WxListView {.noSideEffect, cdecl, 
    importcpp: "GetListView", header: "wx.h".}