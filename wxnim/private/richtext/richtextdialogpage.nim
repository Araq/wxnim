


type 
  WxRichTextDialogPage* {.importcpp: "wxRichTextDialogPage", header: wxh.} = object of WxPanel
  

proc constructwxRichTextDialogPage*(): WxRichTextDialogPage {.cdecl, 
    constructor, importcpp: "wxRichTextDialogPage(@)", header: wxh.}
proc constructwxRichTextDialogPage*(parent: ptr WxWindow; 
                                    id: WxWindowID = wxID_ANY; 
                                    pos: WxPoint = wxDefaultPosition; 
                                    size: WxSize = wxDefaultSize; 
                                    style: clong = 0): WxRichTextDialogPage {.
    cdecl, constructor, importcpp: "wxRichTextDialogPage(@)", header: wxh.}

