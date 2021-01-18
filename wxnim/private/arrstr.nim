type 
  WxArrayString* {.importcpp: "wxArrayString", header: wxh.} = object 
  
  CompareFunction* = proc (first: WxString; second: WxString): cint {.cdecl.}
  CompareFunction2* = proc (first: ptr WxString; second: ptr WxString): cint {.
      cdecl.}

proc constructwxArrayString*(): WxArrayString {.cdecl, constructor, 
    importcpp: "wxArrayString(@)", header: wxh.}
proc constructwxArrayString*(autoSort: cint): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: wxh.}
proc constructwxArrayString*(sz: csize; a: cstringArray): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: wxh.}
proc constructwxArrayString*(sz: csize; a: ptr WxString): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: wxh.}
proc constructwxArrayString*(array: WxArrayString): WxArrayString {.cdecl, 
    constructor, importcpp: "wxArrayString(@)", header: wxh.}
proc destroywxArrayString*(this: var WxArrayString) {.cdecl, 
    importcpp: "#.~wxArrayString()", header: wxh.}
proc empty*(this: var WxArrayString) {.cdecl, importcpp: "Empty", header: wxh.}
proc clear*(this: var WxArrayString) {.cdecl, importcpp: "Clear", header: wxh.}
proc alloc*(this: var WxArrayString; nCount: csize) {.cdecl, importcpp: "Alloc", 
    header: wxh.}
proc shrink*(this: var WxArrayString) {.cdecl, importcpp: "Shrink", header: wxh.}
proc getCount*(this: WxArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc isEmpty*(this: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc count*(this: WxArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "Count", header: wxh.}
proc item*(this: var WxArrayString; nIndex: csize): var WxString {.cdecl, 
    importcpp: "Item", header: wxh.}
proc item*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "Item", header: wxh.}
proc `[]`*(this: var WxArrayString; nIndex: csize): var WxString {.cdecl, 
    importcpp: "#[@]", header: wxh.}
proc `[]`*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: wxh.}
proc last*(this: var WxArrayString): var WxString {.cdecl, importcpp: "Last", 
    header: wxh.}
proc last*(this: WxArrayString): WxString {.noSideEffect, cdecl, 
    importcpp: "Last", header: wxh.}
proc index*(this: WxArrayString; str: WxString; bCase: bool = true; 
            bFromEnd: bool = false): cint {.noSideEffect, cdecl, 
    importcpp: "Index", header: wxh.}
proc add*(this: var WxArrayString; str: WxString; nInsert: csize = 1): csize {.
    discardable, cdecl, importcpp: "Add", header: wxh.}
proc insert*(this: var WxArrayString; str: WxString; uiIndex: csize; 
             nInsert: csize = 1) {.cdecl, importcpp: "Insert", header: wxh.}
proc setCount*(this: var WxArrayString; count: csize) {.cdecl, 
    importcpp: "SetCount", header: wxh.}
proc remove*(this: var WxArrayString; sz: WxString) {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc removeAt*(this: var WxArrayString; nIndex: csize; nRemove: csize = 1) {.
    cdecl, importcpp: "RemoveAt", header: wxh.}
proc sort*(this: var WxArrayString; reverseOrder: bool = false) {.cdecl, 
    importcpp: "Sort", header: wxh.}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction) {.cdecl, 
    importcpp: "Sort", header: wxh.}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction2) {.cdecl, 
    importcpp: "Sort", header: wxh.}
proc `==`*(this: WxArrayString; a: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc capacity*(this: WxArrayString): clong {.noSideEffect, cdecl, 
    importcpp: "capacity", header: wxh.}
proc empty*(this: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "empty", header: wxh.}
proc reserve*(this: var WxArrayString; n: clong) {.cdecl, importcpp: "reserve", 
    header: wxh.}
proc resize*(this: var WxArrayString; n: clong) {.cdecl, importcpp: "resize", 
    header: wxh.}
proc size*(this: WxArrayString): clong {.noSideEffect, cdecl, importcpp: "size", 
    header: wxh.}
proc swap*(this: var WxArrayString; other: var WxArrayString) {.cdecl, 
    importcpp: "swap", header: wxh.}

type 
  WxCArrayString* {.importcpp: "wxCArrayString", header: wxh.} = object 
  

proc constructwxCArrayString*(array: WxArrayString): WxCArrayString {.cdecl, 
    constructor, importcpp: "wxCArrayString(@)", header: wxh.}
proc destroywxCArrayString*(this: var WxCArrayString) {.cdecl, 
    importcpp: "#.~wxCArrayString()", header: wxh.}
proc getCount*(this: WxCArrayString): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getStrings*(this: var WxCArrayString): ptr WxString {.cdecl, 
    importcpp: "GetStrings", header: wxh.}
proc release*(this: var WxCArrayString): ptr WxString {.cdecl, 
    importcpp: "Release", header: wxh.}

proc wxJoin*(arr: WxArrayString; sep: char; escape: char = '\x08'): WxString {.
    cdecl, importcpp: "wxJoin(@)", header: wxh.}
proc wxSplit*(str: WxString; sep: char; escape: char = '\x08'): WxArrayString {.
    cdecl, importcpp: "wxSplit(@)", header: wxh.}

type 
  WxArrayStringsAdapter* {.importcpp: "wxArrayStringsAdapter", header: wxh.} = object 
  

proc constructwxArrayStringsAdapter*(strings: WxArrayString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", header: wxh.}
proc constructwxArrayStringsAdapter*(n: cuint; strings: ptr WxString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", header: wxh.}
proc constructwxArrayStringsAdapter*(s: WxString): WxArrayStringsAdapter {.
    cdecl, constructor, importcpp: "wxArrayStringsAdapter(@)", header: wxh.}
proc getCount*(this: WxArrayStringsAdapter): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc isEmpty*(this: WxArrayStringsAdapter): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc `[]`*(this: WxArrayStringsAdapter; i: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "#[@]", header: wxh.}
proc asArrayString*(this: WxArrayStringsAdapter): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "AsArrayString", header: wxh.}