

type 
  WxUniChar* {.importcpp: "wxUniChar", header: wxh.} = object 
  
  WxCStrData* {.importcpp: "wxCStrData", header: wxh.} = object 
  
  WxString* {.importcpp: "wxString", header: wxh.} = object 
  

proc constructwxString*(): WxString {.cdecl, constructor, 
                                      importcpp: "wxString(@)", header: wxh.}
proc constructwxString*(stringSrc: WxString): WxString {.cdecl, constructor, 
    importcpp: "wxString(@)", header: wxh.}
proc constructwxString*(psz: cstring; nLength: csize): WxString {.cdecl, 
    constructor, importcpp: "wxString(@)", header: wxh.}
proc clone*(this: WxString): WxString {.noSideEffect, cdecl, importcpp: "Clone", 
                                        header: wxh.}
proc length*(this: WxString): csize {.noSideEffect, cdecl, importcpp: "length", 
                                      header: wxh.}
proc empty*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "empty", 
                                    header: wxh.}
proc substr*(this: WxString; nStart: csize = 0; nLen: csize): WxString {.
    noSideEffect, cdecl, importcpp: "substr", header: wxh.}
proc len*(this: WxString): csize {.noSideEffect, cdecl, importcpp: "Len", 
                                   header: wxh.}
proc isEmpty*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                      header: wxh.}
proc truncate*(this: var WxString; uiLen: csize): var WxString {.cdecl, 
    importcpp: "Truncate", header: wxh.}
proc clear*(this: var WxString) {.cdecl, importcpp: "Clear", header: wxh.}
proc isAscii*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsAscii", 
                                      header: wxh.}
proc isNumber*(this: WxString): bool {.noSideEffect, cdecl, 
                                       importcpp: "IsNumber", header: wxh.}
proc isWord*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsWord", 
                                     header: wxh.}
proc at*(this: WxString; n: csize): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "at", header: wxh.}
proc getChar*(this: WxString; n: csize): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "GetChar", header: wxh.}
proc setChar*(this: var WxString; n: csize; ch: WxUniChar) {.cdecl, 
    importcpp: "SetChar", header: wxh.}
proc last*(this: WxString): WxUniChar {.noSideEffect, cdecl, importcpp: "Last", 
                                        header: wxh.}
proc `[]`*(this: WxString; n: cint): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: wxh.}
proc cStr*(this: WxString): WxCStrData {.noSideEffect, cdecl, 
    importcpp: "c_str", header: wxh.}
proc data*(this: WxString): WxCStrData {.noSideEffect, cdecl, importcpp: "data", 
    header: wxh.}
proc getData*(this: WxString): WxCStrData {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc fromAscii*(ascii: ptr cuchar): WxString {.cdecl, 
    importcpp: "wxString::FromAscii(@)", header: wxh.}
proc fromAscii*(ascii: ptr cuchar; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromAscii(@)", header: wxh.}
proc fromUTF8Unchecked*(utf8: cstring): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8Unchecked(@)", header: wxh.}
proc fromUTF8Unchecked*(utf8: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8Unchecked(@)", header: wxh.}
proc fromUTF8*(utf8: cstring): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8(@)", header: wxh.}
proc fromUTF8*(utf8: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8(@)", header: wxh.}
proc utf8Length*(this: WxString): csize {.noSideEffect, cdecl, 
    importcpp: "utf8_length", header: wxh.}
proc from8BitData*(data: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::From8BitData(@)", header: wxh.}
proc from8BitData*(data: cstring): WxString {.cdecl, 
    importcpp: "wxString::From8BitData(@)", header: wxh.}

proc asCString*(this: WxCStrData): cstring {.noSideEffect, cdecl, 
    importcpp: "AsChar", header: wxh.}