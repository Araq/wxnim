


type 
  WxRichTextUICustomization* {.importcpp: "wxRichTextUICustomization", 
                               header: wxh.} = object 
  

proc constructwxRichTextUICustomization*(): WxRichTextUICustomization {.cdecl, 
    constructor, importcpp: "wxRichTextUICustomization(@)", header: wxh.}
proc destroywxRichTextUICustomization*(this: var WxRichTextUICustomization) {.
    cdecl, importcpp: "#.~wxRichTextUICustomization()", header: wxh.}
proc showHelp*(this: var WxRichTextUICustomization; win: ptr WxWindow; id: clong): bool {.
    cdecl, importcpp: "ShowHelp", header: wxh.}

type 
  WxRichTextHelpInfo* {.importcpp: "wxRichTextHelpInfo", header: wxh.} = object 
  

proc constructwxRichTextHelpInfo*(): WxRichTextHelpInfo {.cdecl, constructor, 
    importcpp: "wxRichTextHelpInfo(@)", header: wxh.}
proc destroywxRichTextHelpInfo*(this: var WxRichTextHelpInfo) {.cdecl, 
    importcpp: "#.~wxRichTextHelpInfo()", header: wxh.}
proc showHelp*(this: var WxRichTextHelpInfo; win: ptr WxWindow): bool {.cdecl, 
    importcpp: "ShowHelp", header: wxh.}
proc getHelpId*(this: WxRichTextHelpInfo): clong {.noSideEffect, cdecl, 
    importcpp: "GetHelpId", header: wxh.}
proc setHelpId*(this: var WxRichTextHelpInfo; id: clong) {.cdecl, 
    importcpp: "SetHelpId", header: wxh.}
proc getUICustomization*(this: WxRichTextHelpInfo): ptr WxRichTextUICustomization {.
    noSideEffect, cdecl, importcpp: "GetUICustomization", header: wxh.}
proc setUICustomization*(this: var WxRichTextHelpInfo; 
                         customization: ptr WxRichTextUICustomization) {.cdecl, 
    importcpp: "SetUICustomization", header: wxh.}
proc hasHelpId*(this: WxRichTextHelpInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasHelpId", header: wxh.}
proc hasUICustomization*(this: WxRichTextHelpInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasUICustomization", header: wxh.}




