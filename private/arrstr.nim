type 
  WxArrayString* {.importcpp: "wxArrayString", header: "<wx/wx.h>".} = object 
  
  CompareFunction* = proc (first: WxString; second: WxString): cint {.cdecl.}
  CompareFunction2* = proc (first: ptr WxString; second: ptr WxString): cint {.
      cdecl.}

proc constructwxArrayString*(): WxArrayString {.cdecl, constructor, 
    importcpp: "wxArrayString(@)", header: "<wx/wx.h>".}
proc constructwxArrayString*(autoSort: cint): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: "<wx/wx.h>".}
proc constructwxArrayString*(sz: csize; a: cstringArray): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: "<wx/wx.h>".}
proc constructwxArrayString*(sz: csize; a: ptr WxString): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: "<wx/wx.h>".}
proc constructwxArrayString*(array: WxArrayString): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: "<wx/wx.h>".}
proc destroywxArrayString*(this: var WxArrayString) {.cdecl, 
    importcpp: "#.~wxArrayString()", header: "<wx/wx.h>".}
proc empty*(this: var WxArrayString) {.cdecl, importcpp: "Empty", 
                                       header: "<wx/wx.h>".}
proc clear*(this: var WxArrayString) {.cdecl, importcpp: "Clear", 
                                       header: "<wx/wx.h>".}
proc alloc*(this: var WxArrayString; nCount: csize) {.cdecl, importcpp: "Alloc", 
    header: "<wx/wx.h>".}
proc shrink*(this: var WxArrayString) {.cdecl, importcpp: "Shrink", 
                                        header: "<wx/wx.h>".}
proc getCount*(this: WxArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc isEmpty*(this: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc count*(this: WxArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: "<wx/wx.h>".}
proc item*(this: var WxArrayString; nIndex: csize): var WxString {.cdecl, 
    importcpp: "Item", header: "<wx/wx.h>".}
proc item*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "Item", header: "<wx/wx.h>".}
proc `[]`*(this: var WxArrayString; nIndex: csize): var WxString {.cdecl, 
    importcpp: "#[@]", header: "<wx/wx.h>".}
proc `[]`*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: "<wx/wx.h>".}
proc last*(this: var WxArrayString): var WxString {.cdecl, importcpp: "Last", 
    header: "<wx/wx.h>".}
proc last*(this: WxArrayString): WxString {.noSideEffect, cdecl, 
    importcpp: "Last", header: "<wx/wx.h>".}
proc index*(this: WxArrayString; str: WxString; bCase: bool = true; 
            bFromEnd: bool = false): cint {.noSideEffect, cdecl, 
    importcpp: "Index", header: "<wx/wx.h>".}
proc add*(this: var WxArrayString; str: WxString; nInsert: csize = 1): csize {.
    cdecl, importcpp: "Add", header: "<wx/wx.h>".}
proc insert*(this: var WxArrayString; str: WxString; uiIndex: csize; 
             nInsert: csize = 1) {.cdecl, importcpp: "Insert", 
                                   header: "<wx/wx.h>".}
proc setCount*(this: var WxArrayString; count: csize) {.cdecl, 
    importcpp: "SetCount", header: "<wx/wx.h>".}
proc remove*(this: var WxArrayString; sz: WxString) {.cdecl, 
    importcpp: "Remove", header: "<wx/wx.h>".}
proc removeAt*(this: var WxArrayString; nIndex: csize; nRemove: csize = 1) {.
    cdecl, importcpp: "RemoveAt", header: "<wx/wx.h>".}
proc sort*(this: var WxArrayString; reverseOrder: bool = false) {.cdecl, 
    importcpp: "Sort", header: "<wx/wx.h>".}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction) {.cdecl, 
    importcpp: "Sort", header: "<wx/wx.h>".}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction2) {.cdecl, 
    importcpp: "Sort", header: "<wx/wx.h>".}
proc `==`*(this: WxArrayString; a: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc capacity*(this: WxArrayString): clong {.noSideEffect, cdecl, 
    importcpp: "capacity", header: "<wx/wx.h>".}
proc empty*(this: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: "<wx/wx.h>".}
proc reserve*(this: var WxArrayString; n: clong) {.cdecl, importcpp: "reserve", 
    header: "<wx/wx.h>".}
proc resize*(this: var WxArrayString; n: clong) {.cdecl, importcpp: "resize", 
    header: "<wx/wx.h>".}
proc size*(this: WxArrayString): clong {.noSideEffect, cdecl, importcpp: "size", 
    header: "<wx/wx.h>".}
proc swap*(this: var WxArrayString; other: var WxArrayString) {.cdecl, 
    importcpp: "swap", header: "<wx/wx.h>".}

type 
  WxCArrayString* {.importcpp: "wxCArrayString", header: "<wx/wx.h>".} = object 
  

proc constructwxCArrayString*(array: WxArrayString): WxCArrayString {.cdecl, 
    constructor, importcpp: "wxCArrayString(@)", header: "<wx/wx.h>".}
proc destroywxCArrayString*(this: var WxCArrayString) {.cdecl, 
    importcpp: "#.~wxCArrayString()", header: "<wx/wx.h>".}
proc getCount*(this: WxCArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc getStrings*(this: var WxCArrayString): ptr WxString {.cdecl, 
    importcpp: "GetStrings", header: "<wx/wx.h>".}
proc release*(this: var WxCArrayString): ptr WxString {.cdecl, 
    importcpp: "Release", header: "<wx/wx.h>".}

proc wxJoin*(arr: WxArrayString; sep: char; escape: char = '\x08'): WxString {.
    cdecl, importcpp: "wxJoin(@)", header: "<wx/wx.h>".}
proc wxSplit*(str: WxString; sep: char; escape: char = '\x08'): WxArrayString {.
    cdecl, importcpp: "wxSplit(@)", header: "<wx/wx.h>".}

type 
  WxArrayStringsAdapter* {.importcpp: "wxArrayStringsAdapter", 
                           header: "<wx/wx.h>".} = object 
  

proc constructwxArrayStringsAdapter*(strings: WxArrayString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", 
    header: "<wx/wx.h>".}
proc constructwxArrayStringsAdapter*(n: cuint; strings: ptr WxString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", 
    header: "<wx/wx.h>".}
proc constructwxArrayStringsAdapter*(s: WxString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", 
    header: "<wx/wx.h>".}
proc getCount*(this: WxArrayStringsAdapter): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc isEmpty*(this: WxArrayStringsAdapter): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: "<wx/wx.h>".}
proc `[]`*(this: WxArrayStringsAdapter; i: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: "<wx/wx.h>".}
proc asArrayString*(this: WxArrayStringsAdapter): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "AsArrayString", header: "<wx/wx.h>".}