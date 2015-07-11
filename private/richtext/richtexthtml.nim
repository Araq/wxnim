



const 
  wxRICHTEXT_HANDLER_USE_CSS* = 0x00001000


type 
  WxRichTextHTMLHandler* {.importcpp: "wxRichTextHTMLHandler", header: wxh.} = object of WxRichTextFileHandler
  

proc constructwxRichTextHTMLHandler*(name: WxString = "HTML"; 
                                     ext: WxString = "html"; 
                                     `type` = wxRICHTEXT_TYPE_HTML): WxRichTextHTMLHandler {.
    cdecl, constructor, importcpp: "wxRichTextHTMLHandler(@)", header: wxh.}
proc canSave*(this: WxRichTextHTMLHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: wxh.}
proc canLoad*(this: WxRichTextHTMLHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: wxh.}
proc canHandle*(this: WxRichTextHTMLHandler; filename: WxString): bool {.
    noSideEffect, cdecl, importcpp: "CanHandle", header: wxh.}
proc setTemporaryImageLocations*(this: var WxRichTextHTMLHandler; 
                                 locations: WxArrayString) {.cdecl, 
    importcpp: "SetTemporaryImageLocations", header: wxh.}
proc getTemporaryImageLocations*(this: WxRichTextHTMLHandler): WxArrayString {.
    noSideEffect, cdecl, importcpp: "GetTemporaryImageLocations", header: wxh.}
proc clearTemporaryImageLocations*(this: var WxRichTextHTMLHandler) {.cdecl, 
    importcpp: "ClearTemporaryImageLocations", header: wxh.}
proc deleteTemporaryImages*(this: var WxRichTextHTMLHandler): bool {.cdecl, 
    importcpp: "DeleteTemporaryImages", header: wxh.}
proc deleteTemporaryImages*(flags: cint; imageLocations: WxArrayString): bool {.
    cdecl, importcpp: "wxRichTextHTMLHandler::DeleteTemporaryImages(@)", 
    header: wxh.}
proc setFileCounter*(counter: cint) {.cdecl, importcpp: "wxRichTextHTMLHandler::SetFileCounter(@)", 
                                      header: wxh.}
proc setTempDir*(this: var WxRichTextHTMLHandler; tempDir: WxString) {.cdecl, 
    importcpp: "SetTempDir", header: wxh.}
proc getTempDir*(this: WxRichTextHTMLHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTempDir", header: wxh.}
proc setFontSizeMapping*(this: var WxRichTextHTMLHandler; 
                         fontSizeMapping: WxArrayInt) {.cdecl, 
    importcpp: "SetFontSizeMapping", header: wxh.}
proc getFontSizeMapping*(this: WxRichTextHTMLHandler): WxArrayInt {.
    noSideEffect, cdecl, importcpp: "GetFontSizeMapping", header: wxh.}
