




template wxIS_KIND_OF*(obj, className: expr): expr = 
  obj.isKindOf(addr(msClassInfo))


template wxIsKindOf*(obj, className: expr): expr = 
  obj.isKindOf(addr(msClassInfo))


proc wxCheckCast*[T](`ptr`: pointer; a3: ptr T = nil): ptr T {.cdecl, 
    importcpp: "wxCheckCast(@)", header: "wx.h".}
template wxStaticCast*(obj, className: expr): expr = 
  wxCheckCast((obj), cast[ptr ClassName](nil))



type 
  WxRefCounter* {.importcpp: "wxRefCounter", header: "wx.h", inheritable.} = object 
    mCount* {.importc: "m_count".}: cint


proc constructwxRefCounter*(): WxRefCounter {.cdecl, constructor, 
    importcpp: "wxRefCounter(@)", header: "wx.h".}
proc getRefCount*(this: WxRefCounter): cint {.noSideEffect, cdecl, 
    importcpp: "GetRefCount", header: "wx.h".}
proc incRef*(this: var WxRefCounter) {.cdecl, importcpp: "IncRef", 
                                       header: "wx.h".}
proc decRef*(this: var WxRefCounter) {.cdecl, importcpp: "DecRef", 
                                       header: "wx.h".}

type 
  WxObjectRefData* = WxRefCounter


type 
  WxObjectDataPtr* {.importcpp: "wxObjectDataPtr", header: "wx.h", inheritable.}[
      T] = object 
    mPtr* {.importc: "m_ptr".}: ptr T


proc constructwxObjectDataPtr*[T](`ptr`: ptr T = nil): WxObjectDataPtr[T] {.
    cdecl, constructor, importcpp: "wxObjectDataPtr(@)", header: "wx.h".}
proc constructwxObjectDataPtr*[T](tocopy: WxObjectDataPtr[T]): WxObjectDataPtr[T] {.
    cdecl, constructor, importcpp: "wxObjectDataPtr(@)", header: "wx.h".}
proc destroywxObjectDataPtr*[T](this: var WxObjectDataPtr[T]) {.cdecl, 
    importcpp: "#.~wxObjectDataPtr()", header: "wx.h".}
proc get*[T](this: WxObjectDataPtr[T]): ptr T {.noSideEffect, cdecl, 
    importcpp: "get", header: "wx.h".}
proc `*`*[T](this: WxObjectDataPtr[T]): var T {.noSideEffect, cdecl, 
    importcpp: "(* #)", header: "wx.h".}
proc `->`*[T](this: WxObjectDataPtr[T]): ptr T {.noSideEffect, cdecl, 
    importcpp: "(# -> #)", header: "wx.h".}
proc reset*[T](this: var WxObjectDataPtr[T]; `ptr`: ptr T) {.cdecl, 
    importcpp: "reset", header: "wx.h".}

type 
  WxObject* {.importcpp: "wxObject", header: "wx.h", inheritable.} = object 
    mRefData* {.importc: "m_refData".}: ptr WxObjectRefData


proc constructwxObject*(): WxObject {.cdecl, constructor, 
                                      importcpp: "wxObject(@)", header: "wx.h".}
proc destroywxObject*(this: var WxObject) {.cdecl, importcpp: "#.~wxObject()", 
    header: "wx.h".}
proc constructwxObject*(other: WxObject): WxObject {.cdecl, constructor, 
    importcpp: "wxObject(@)", header: "wx.h".}
proc isKindOf*(this: WxObject; info: ptr WxClassInfo): bool {.noSideEffect, 
    cdecl, importcpp: "IsKindOf", header: "wx.h".}
proc getRefData*(this: WxObject): ptr WxObjectRefData {.noSideEffect, cdecl, 
    importcpp: "GetRefData", header: "wx.h".}
proc setRefData*(this: var WxObject; data: ptr WxObjectRefData) {.cdecl, 
    importcpp: "SetRefData", header: "wx.h".}
proc `ref`*(this: var WxObject; clone: WxObject) {.cdecl, importcpp: "Ref", 
    header: "wx.h".}
proc unRef*(this: var WxObject) {.cdecl, importcpp: "UnRef", header: "wx.h".}
proc unShare*(this: var WxObject) {.cdecl, importcpp: "UnShare", header: "wx.h".}
proc isSameAs*(this: WxObject; o: WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "IsSameAs", header: "wx.h".}
proc wxCheckDynamicCast*(obj: ptr WxObject; classInfo: ptr WxClassInfo): ptr WxObject {.
    cdecl, importcpp: "wxCheckDynamicCast(@)", header: "wx.h".}

template implement_Dynamic_Class*(n, b: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_Dynamic_Class2*(n, b1, b2: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b1, b2)

template implement_Abstract_Class*(n, b: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Abstract_Class2*(n, b1, b2: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b1, b2)

template implement_Class*(n, b: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Class2*(n, b1, b2: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b1, b2)

template implement_Pluggable_Class*(n, b: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_Pluggable_Class2*(n, b, b2: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b, b2)

template implement_Abstract_Pluggable_Class*(n, b: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_Abstract_Pluggable_Class2*(n, b, b2: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b, b2)

template implement_User_Exported_Pluggable_Class*(n, b: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS(n, b)

template implement_User_Exported_Pluggable_Class2*(n, b, b2: expr): expr = 
  wxIMPLEMENT_DYNAMIC_CLASS2(n, b, b2)

template implement_User_Exported_Abstract_Pluggable_Class*(n, b: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS(n, b)

template implement_User_Exported_Abstract_Pluggable_Class2*(n, b, b2: expr): expr = 
  wxIMPLEMENT_ABSTRACT_CLASS2(n, b, b2)

template classinfo*(n: expr): expr = 
  (addr(msClassInfo))
