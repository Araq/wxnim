

type 
  WxUniChar* {.importcpp: "wxUniChar", header: "<wx/wx.h>".} = object 
  
  WxCStrData* {.importcpp: "wxCStrData", header: "<wx/wx.h>".} = object 
  
  WxString* {.importcpp: "wxString", header: "<wx/wx.h>".} = object 
  

proc constructwxString*(): WxString {.cdecl, constructor, 
                                      importcpp: "wxString(@)", 
                                      header: "<wx/wx.h>".}
proc constructwxString*(stringSrc: WxString): WxString {.cdecl, constructor, 
    importcpp: "wxString(@)", header: "<wx/wx.h>".}
proc constructwxString*(psz: cstring): WxString {.cdecl, constructor, 
    importcpp: "wxString(@)", header: "<wx/wx.h>".}
proc constructwxString*(psz: cstring; nLength: csize): WxString {.cdecl, 
    constructor, importcpp: "wxString(@)", header: "<wx/wx.h>".}
proc clone*(this: WxString): WxString {.noSideEffect, cdecl, importcpp: "Clone", 
                                        header: "<wx/wx.h>".}
proc length*(this: WxString): csize {.noSideEffect, cdecl, importcpp: "length", 
                                      header: "<wx/wx.h>".}
proc empty*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "empty", 
                                    header: "<wx/wx.h>".}
proc substr*(this: WxString; nStart: csize = 0; nLen: csize): WxString {.
    noSideEffect, cdecl, importcpp: "substr", header: "<wx/wx.h>".}
proc len*(this: WxString): csize {.noSideEffect, cdecl, importcpp: "Len", 
                                   header: "<wx/wx.h>".}
proc isEmpty*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                      header: "<wx/wx.h>".}
proc truncate*(this: var WxString; uiLen: csize): var WxString {.cdecl, 
    importcpp: "Truncate", header: "<wx/wx.h>".}
proc clear*(this: var WxString) {.cdecl, importcpp: "Clear", header: "<wx/wx.h>".}
proc isAscii*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsAscii", 
                                      header: "<wx/wx.h>".}
proc isNumber*(this: WxString): bool {.noSideEffect, cdecl, 
                                       importcpp: "IsNumber", 
                                       header: "<wx/wx.h>".}
proc isWord*(this: WxString): bool {.noSideEffect, cdecl, importcpp: "IsWord", 
                                     header: "<wx/wx.h>".}
proc at*(this: WxString; n: csize): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "at", header: "<wx/wx.h>".}
proc getChar*(this: WxString; n: csize): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "GetChar", header: "<wx/wx.h>".}
proc setChar*(this: var WxString; n: csize; ch: WxUniChar) {.cdecl, 
    importcpp: "SetChar", header: "<wx/wx.h>".}
proc last*(this: WxString): WxUniChar {.noSideEffect, cdecl, importcpp: "Last", 
                                        header: "<wx/wx.h>".}
proc `[]`*(this: WxString; n: cint): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: "<wx/wx.h>".}
proc cStr*(this: WxString): WxCStrData {.noSideEffect, cdecl, 
    importcpp: "c_str", header: "<wx/wx.h>".}
proc data*(this: WxString): WxCStrData {.noSideEffect, cdecl, importcpp: "data", 
    header: "<wx/wx.h>".}
proc getData*(this: WxString): WxCStrData {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "<wx/wx.h>".}
proc fromAscii*(ascii: ptr cuchar): WxString {.cdecl, 
    importcpp: "wxString::FromAscii(@)", header: "<wx/wx.h>".}
proc fromAscii*(ascii: ptr cuchar; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromAscii(@)", header: "<wx/wx.h>".}
proc fromUTF8Unchecked*(utf8: cstring): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8Unchecked(@)", header: "<wx/wx.h>".}
proc fromUTF8Unchecked*(utf8: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8Unchecked(@)", header: "<wx/wx.h>".}
proc fromUTF8*(utf8: cstring): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8(@)", header: "<wx/wx.h>".}
proc fromUTF8*(utf8: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::FromUTF8(@)", header: "<wx/wx.h>".}
proc utf8Length*(this: WxString): csize {.noSideEffect, cdecl, 
    importcpp: "utf8_length", header: "<wx/wx.h>".}
proc from8BitData*(data: cstring; len: csize): WxString {.cdecl, 
    importcpp: "wxString::From8BitData(@)", header: "<wx/wx.h>".}
proc from8BitData*(data: cstring): WxString {.cdecl, 
    importcpp: "wxString::From8BitData(@)", header: "<wx/wx.h>".}

proc asCString*(this: WxCStrData): cstring {.noSideEffect, cdecl, 
    importcpp: "AsChar", header: "<wx/wx.h>".}