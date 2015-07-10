


discard "forward decl of wxObjectListNode"
type 
  WxNode* {.importcpp: "wxNode", header: wxh.} = object 
  
  WxListSortFunction* {.importcpp: "wxList_SortFunction", header: wxh.}[T] = object 
  

proc constructwxListSortFunction*[T](f: WxSortCompareFunction): WxListSortFunction[
    T] {.cdecl, constructor, importcpp: "wxList_SortFunction(@)", header: wxh.}
proc `()`*[T](this: var WxListSortFunction[T]; i1: T; i2: T): bool {.cdecl, 
    importcpp: "#(@)", header: wxh.}





type 
  WxObjectList* {.importcpp: "wxObjectList", header: wxh, inheritable.} = object 
  

proc constructwxObjectList*(): WxObjectList {.cdecl, constructor, 
    importcpp: "wxObjectList(@)", header: wxh.}
proc isEmpty*(this: WxObjectList): bool {.noSideEffect, cdecl, 
    importcpp: "IsEmpty", header: wxh.}
proc getCount*(this: WxObjectList): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc number*(this: WxObjectList): cint {.noSideEffect, cdecl, 
    importcpp: "Number", header: wxh.}
proc `[]`*(this: WxObjectList; idx: csize): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: wxh.}
proc member*(this: WxObjectList; e: ptr WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "Member", header: wxh.}
proc indexOf*(this: WxObjectList; e: ptr WxObject): cint {.noSideEffect, cdecl, 
    importcpp: "IndexOf", header: wxh.}
proc deleteContents*(this: var WxObjectList; destroy: bool) {.cdecl, 
    importcpp: "DeleteContents", header: wxh.}
proc getDeleteContents*(this: WxObjectList): bool {.noSideEffect, cdecl, 
    importcpp: "GetDeleteContents", header: wxh.}
proc deleteObject*(this: var WxObjectList; e: ptr WxObject): bool {.cdecl, 
    importcpp: "DeleteObject", header: wxh.}
proc clear*(this: var WxObjectList) {.cdecl, importcpp: "Clear", header: wxh.}
proc sort*(this: var WxObjectList; compfunc: WxSortCompareFunction) {.cdecl, 
    importcpp: "Sort", header: wxh.}
proc destroywxObjectList*(this: var WxObjectList) {.cdecl, 
    importcpp: "#.~wxObjectList()", header: wxh.}
type 
  WxList* {.importcpp: "wxList", header: wxh.} = object of WxObjectList
  

proc constructwxList*(keyType = wxKEY_NONE): WxList {.cdecl, constructor, 
    importcpp: "wxList(@)", header: wxh.}
proc destroywxList*(this: var WxList) {.cdecl, importcpp: "#.~wxList()", 
                                        header: wxh.}