




template wxIS_KIND_OF*(obj, className: untyped): untyped = 
  obj.isKindOf(addr(msClassInfo))


template wxIsKindOf*(obj, className: untyped): untyped = 
  obj.isKindOf(addr(msClassInfo))


proc wxCheckCast*[T](`ptr`: pointer; a3: ptr T = nil): ptr T {.cdecl, 
    importcpp: "wxCheckCast(@)", header: wxh.}
template wxStaticCast*(obj, className: untyped): untyped = 
  wxCheckCast((obj), cast[ptr ClassName](nil))



type 
  WxRefCounter* {.importcpp: "wxRefCounter", header: wxh, inheritable.} = object 
  

proc constructwxRefCounter*(): WxRefCounter {.cdecl, constructor, 
    importcpp: "wxRefCounter(@)", header: wxh.}
proc getRefCount*(this: WxRefCounter): cint {.noSideEffect, cdecl, 
    importcpp: "GetRefCount", header: wxh.}
proc incRef*(this: var WxRefCounter) {.cdecl, importcpp: "IncRef", header: wxh.}
proc decRef*(this: var WxRefCounter) {.cdecl, importcpp: "DecRef", header: wxh.}

type 
  WxObjectRefData* = WxRefCounter


type 
  WxObjectDataPtr*[T] {.importcpp: "wxObjectDataPtr", header: wxh, inheritable.} = object 
  

proc constructwxObjectDataPtr*[T](`ptr`: ptr T = nil): WxObjectDataPtr[T] {.
    cdecl, constructor, importcpp: "wxObjectDataPtr(@)", header: wxh.}
proc constructwxObjectDataPtr*[T](tocopy: WxObjectDataPtr[T]): WxObjectDataPtr[T] {.
    cdecl, constructor, importcpp: "wxObjectDataPtr(@)", header: wxh.}
proc destroywxObjectDataPtr*[T](this: var WxObjectDataPtr[T]) {.cdecl, 
    importcpp: "#.~wxObjectDataPtr()", header: wxh.}
proc get*[T](this: WxObjectDataPtr[T]): ptr T {.noSideEffect, cdecl, 
    importcpp: "get", header: wxh.}
proc `*`*[T](this: WxObjectDataPtr[T]): var T {.noSideEffect, cdecl, 
    importcpp: "(* #)", header: wxh.}
proc `->`*[T](this: WxObjectDataPtr[T]): ptr T {.noSideEffect, cdecl, 
    importcpp: "(# -> #)", header: wxh.}
proc reset*[T](this: var WxObjectDataPtr[T]; `ptr`: ptr T) {.cdecl, 
    importcpp: "reset", header: wxh.}

type 
  WxObject* {.importcpp: "wxObject", header: wxh, inheritable.} = object 
  

proc constructwxObject*(): WxObject {.cdecl, constructor, 
                                      importcpp: "wxObject(@)", header: wxh.}
proc destroywxObject*(this: var WxObject) {.cdecl, importcpp: "#.~wxObject()", 
    header: wxh.}
proc constructwxObject*(other: WxObject): WxObject {.cdecl, constructor, 
    importcpp: "wxObject(@)", header: wxh.}
proc isKindOf*(this: WxObject; info: ptr WxClassInfo): bool {.noSideEffect, 
    cdecl, importcpp: "IsKindOf", header: wxh.}
proc getRefData*(this: WxObject): ptr WxObjectRefData {.noSideEffect, cdecl, 
    importcpp: "GetRefData", header: wxh.}
proc setRefData*(this: var WxObject; data: ptr WxObjectRefData) {.cdecl, 
    importcpp: "SetRefData", header: wxh.}
proc `ref`*(this: var WxObject; clone: WxObject) {.cdecl, importcpp: "Ref", 
    header: wxh.}
proc unRef*(this: var WxObject) {.cdecl, importcpp: "UnRef", header: wxh.}
proc unShare*(this: var WxObject) {.cdecl, importcpp: "UnShare", header: wxh.}
proc isSameAs*(this: WxObject; o: WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsSameAs", header: wxh.}
proc wxCheckDynamicCast*(obj: ptr WxObject; classInfo: ptr WxClassInfo): ptr WxObject {.
    cdecl, importcpp: "wxCheckDynamicCast(@)", header: wxh.}

template implement_Dynamic_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_Dynamic_Class2*(n, b1, b2: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b1, b2)

template implement_Abstract_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Abstract_Class2*(n, b1, b2: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b1, b2)

template implement_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Class2*(n, b1, b2: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b1, b2)

template implement_Pluggable_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_Pluggable_Class2*(n, b, b2: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b, b2)

template implement_Abstract_Pluggable_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Abstract_Pluggable_Class2*(n, b, b2: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b, b2)

template implement_User_Exported_Pluggable_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_User_Exported_Pluggable_Class2*(n, b, b2: untyped): untyped = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b, b2)

template implement_User_Exported_Abstract_Pluggable_Class*(n, b: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_User_Exported_Abstract_Pluggable_Class2*(n, b, b2: untyped): untyped = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b, b2)

template classinfo*(n: untyped): untyped = 
  (addr(msClassInfo))
