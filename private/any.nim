


type 
  Alignment_3260276896* {.importcpp: "no_name", header: "<wx/wx.h>".} = object  {.
      union.}
    mInt64* {.importc: "m_int64".}: WxInt64
    mLongDouble* {.importc: "m_longDouble".}: clongdouble
    mFuncPtr* {.importc: "m_funcPtr".}: proc () {.cdecl.}

  WxAnyValueBuffer* {.importcpp: "wxAnyValueBuffer", header: "<wx/wx.h>".} = object  {.
      union.}
    mAlignment* {.importc: "m_alignment".}: Alignment_3260276896
    mPtr* {.importc: "m_ptr".}: pointer
    mBuffer* {.importc: "m_buffer".}: array[16, WxByte]



type 
  WxAnyValueType* {.importcpp: "wxAnyValueType", header: "<wx/wx.h>", 
                    inheritable.} = object 
  

proc constructwxAnyValueType*(): WxAnyValueType {.cdecl, constructor, 
    importcpp: "wxAnyValueType(@)", header: "<wx/wx.h>".}
proc destroywxAnyValueType*(this: var WxAnyValueType) {.cdecl, 
    importcpp: "#.~wxAnyValueType()", header: "<wx/wx.h>".}
proc isSameType*(this: WxAnyValueType; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: "<wx/wx.h>".}
proc deleteValue*(this: WxAnyValueType; buf: var WxAnyValueBuffer) {.
    noSideEffect, cdecl, importcpp: "DeleteValue", header: "<wx/wx.h>".}
proc copyBuffer*(this: WxAnyValueType; src: WxAnyValueBuffer; 
                 dst: var WxAnyValueBuffer) {.noSideEffect, cdecl, 
    importcpp: "CopyBuffer", header: "<wx/wx.h>".}
proc convertValue*(this: WxAnyValueType; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: "<wx/wx.h>".}
proc checkType*[T](this: WxAnyValueType; reserved: ptr T = nil): bool {.
    noSideEffect, cdecl, importcpp: "CheckType", header: "<wx/wx.h>".}

type 
  WxAnyValueTypeScopedPtr* {.importcpp: "wxAnyValueTypeScopedPtr", 
                             header: "<wx/wx.h>".} = object 
  

proc constructwxAnyValueTypeScopedPtr*(`ptr`: ptr WxAnyValueType): WxAnyValueTypeScopedPtr {.
    cdecl, constructor, importcpp: "wxAnyValueTypeScopedPtr(@)", 
    header: "<wx/wx.h>".}
proc destroywxAnyValueTypeScopedPtr*(this: var WxAnyValueTypeScopedPtr) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeScopedPtr()", header: "<wx/wx.h>".}
proc get*(this: WxAnyValueTypeScopedPtr): ptr WxAnyValueType {.noSideEffect, 
    cdecl, importcpp: "get", header: "<wx/wx.h>".}

template wxANY_VALUE_TYPE_CHECK_TYPE*(valueTypePtr, t: expr): expr = 
  IsSameClass(valueTypePtr)



type 
  WxAnyValueTypeImplBase* {.importcpp: "wxAnyValueTypeImplBase", 
                            header: "<wx/wx.h>".}[T] = object of WxAnyValueType
  

proc constructwxAnyValueTypeImplBase*[T](): WxAnyValueTypeImplBase[T] {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplBase(@)", header: "<wx/wx.h>".}
proc destroywxAnyValueTypeImplBase*[T](this: var WxAnyValueTypeImplBase[T]) {.
    cdecl, importcpp: "#.~wxAnyValueTypeImplBase()", header: "<wx/wx.h>".}
proc deleteValue*[T](this: WxAnyValueTypeImplBase[T]; buf: var WxAnyValueBuffer) {.
    noSideEffect, cdecl, importcpp: "DeleteValue", header: "<wx/wx.h>".}
proc copyBuffer*[T](this: WxAnyValueTypeImplBase[T]; src: WxAnyValueBuffer; 
                    dst: var WxAnyValueBuffer) {.noSideEffect, cdecl, 
    importcpp: "CopyBuffer", header: "<wx/wx.h>".}
proc setValue*[T](value: T; buf: var WxAnyValueBuffer) {.cdecl, 
    importcpp: "wxAnyValueTypeImplBase::SetValue(@)", header: "<wx/wx.h>".}
proc getValue*[T](buf: WxAnyValueBuffer): T {.cdecl, 
    importcpp: "wxAnyValueTypeImplBase::GetValue(@)", header: "<wx/wx.h>".}

type 
  WxAnyValueTypeImpl* {.importcpp: "wxAnyValueTypeImpl", header: "<wx/wx.h>".}[T] = object of WxAnyValueTypeImplBase[
      T]
  

proc isSameType*[T](this: WxAnyValueTypeImpl[T]; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: "<wx/wx.h>".}
proc constructwxAnyValueTypeImpl*[T](): WxAnyValueTypeImpl[T] {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImpl(@)", header: "<wx/wx.h>".}
proc destroywxAnyValueTypeImpl*[T](this: var WxAnyValueTypeImpl[T]) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImpl()", header: "<wx/wx.h>".}
proc convertValue*[T](this: WxAnyValueTypeImpl[T]; src: WxAnyValueBuffer; 
                      dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: "<wx/wx.h>".}


type
  WxAnyBaseIntType* = int64
  WxAnyBaseUintType* = uint64
type 
  WxAnyValueTypeImplInt* {.importcpp: "wxAnyValueTypeImplInt", 
                           header: "<wx/wx.h>".} = object of WxAnyValueTypeImplBase[
      WxAnyBaseIntType]
  

proc isSameType*(this: WxAnyValueTypeImplInt; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: "<wx/wx.h>".}
proc constructwxAnyValueTypeImplInt*(): WxAnyValueTypeImplInt {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplInt(@)", header: "<wx/wx.h>".}
proc destroywxAnyValueTypeImplInt*(this: var WxAnyValueTypeImplInt) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImplInt()", header: "<wx/wx.h>".}
proc convertValue*(this: WxAnyValueTypeImplInt; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: "<wx/wx.h>".}
type 
  WxAnyValueTypeImplUint* {.importcpp: "wxAnyValueTypeImplUint", 
                            header: "<wx/wx.h>".} = object of WxAnyValueTypeImplBase[
      WxAnyBaseUintType]
  

proc isSameType*(this: WxAnyValueTypeImplUint; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: "<wx/wx.h>".}
proc constructwxAnyValueTypeImplUint*(): WxAnyValueTypeImplUint {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplUint(@)", header: "<wx/wx.h>".}
proc destroywxAnyValueTypeImplUint*(this: var WxAnyValueTypeImplUint) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImplUint()", header: "<wx/wx.h>".}
proc convertValue*(this: WxAnyValueTypeImplUint; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: "<wx/wx.h>".}

proc wxAnyConvertString*(value: WxString; dstType: ptr WxAnyValueType; 
                         dst: var WxAnyValueBuffer): bool {.cdecl, 
    importcpp: "wxAnyConvertString(@)", header: "<wx/wx.h>".}

type 
  WxAnyBaseDoubleType* = cdouble



type 
  WxAny* {.importcpp: "wxAny", header: "<wx/wx.h>".} = object 
  

proc constructwxAny*(): WxAny {.cdecl, constructor, importcpp: "wxAny(@)", 
                                header: "<wx/wx.h>".}
proc destroywxAny*(this: var WxAny) {.cdecl, importcpp: "#.~wxAny()", 
                                      header: "<wx/wx.h>".}
proc constructwxAny*[T](value: T): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: "<wx/wx.h>".}
proc constructwxAny*(value: cstring): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: "<wx/wx.h>".}
proc constructwxAny*(any: WxAny): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: "<wx/wx.h>".}
proc getType*(this: WxAny): ptr WxAnyValueType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "<wx/wx.h>".}
proc hasSameType*(this: WxAny; other: WxAny): bool {.noSideEffect, cdecl, 
    importcpp: "HasSameType", header: "<wx/wx.h>".}
proc isNull*(this: WxAny): bool {.noSideEffect, cdecl, importcpp: "IsNull", 
                                  header: "<wx/wx.h>".}
proc makeNull*(this: var WxAny) {.cdecl, importcpp: "MakeNull", 
                                  header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cstring): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cshort): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cushort): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cint): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cfloat): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `==`*(this: WxAny; value: bool): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `as`*[T](this: WxAny; a3: ptr T = nil): T {.noSideEffect, cdecl, 
    importcpp: "As", header: "<wx/wx.h>".}
proc `as`*(this: WxAny; a3: ptr WxString): WxString {.noSideEffect, cdecl, 
    importcpp: "As", header: "<wx/wx.h>".}
proc getAs*[T](this: WxAny; value: ptr T): bool {.noSideEffect, cdecl, 
    importcpp: "GetAs", header: "<wx/wx.h>".}