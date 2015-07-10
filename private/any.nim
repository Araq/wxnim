


type 
  Alignment_3260276896* {.importcpp: "no_name", header: wxh.} = object  {.union.}
    mInt64* {.importc: "m_int64".}: WxInt64
    mLongDouble* {.importc: "m_longDouble".}: clongdouble
    mFuncPtr* {.importc: "m_funcPtr".}: proc () {.cdecl.}

  WxAnyValueBuffer* {.importcpp: "wxAnyValueBuffer", header: wxh.} = object  {.
      union.}
    mAlignment* {.importc: "m_alignment".}: Alignment_3260276896
    mPtr* {.importc: "m_ptr".}: pointer
    mBuffer* {.importc: "m_buffer".}: array[16, WxByte]



type 
  WxAnyValueType* {.importcpp: "wxAnyValueType", header: wxh, inheritable.} = object 
  

proc constructwxAnyValueType*(): WxAnyValueType {.cdecl, constructor, 
    importcpp: "wxAnyValueType(@)", header: wxh.}
proc destroywxAnyValueType*(this: var WxAnyValueType) {.cdecl, 
    importcpp: "#.~wxAnyValueType()", header: wxh.}
proc isSameType*(this: WxAnyValueType; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: wxh.}
proc deleteValue*(this: WxAnyValueType; buf: var WxAnyValueBuffer) {.
    noSideEffect, cdecl, importcpp: "DeleteValue", header: wxh.}
proc copyBuffer*(this: WxAnyValueType; src: WxAnyValueBuffer; 
                 dst: var WxAnyValueBuffer) {.noSideEffect, cdecl, 
    importcpp: "CopyBuffer", header: wxh.}
proc convertValue*(this: WxAnyValueType; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: wxh.}
proc checkType*[T](this: WxAnyValueType; reserved: ptr T = nil): bool {.
    noSideEffect, cdecl, importcpp: "CheckType", header: wxh.}

type 
  WxAnyValueTypeScopedPtr* {.importcpp: "wxAnyValueTypeScopedPtr", header: wxh.} = object 
  

proc constructwxAnyValueTypeScopedPtr*(`ptr`: ptr WxAnyValueType): WxAnyValueTypeScopedPtr {.
    cdecl, constructor, importcpp: "wxAnyValueTypeScopedPtr(@)", header: wxh.}
proc destroywxAnyValueTypeScopedPtr*(this: var WxAnyValueTypeScopedPtr) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeScopedPtr()", header: wxh.}
proc get*(this: WxAnyValueTypeScopedPtr): ptr WxAnyValueType {.noSideEffect, 
    cdecl, importcpp: "get", header: wxh.}

template wxANY_VALUE_TYPE_CHECK_TYPE*(valueTypePtr, t: expr): expr = 
  IsSameClass(valueTypePtr)



type 
  WxAnyValueTypeImplBase* {.importcpp: "wxAnyValueTypeImplBase", header: wxh.}[T] = object of WxAnyValueType
  

proc constructwxAnyValueTypeImplBase*[T](): WxAnyValueTypeImplBase[T] {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplBase(@)", header: wxh.}
proc destroywxAnyValueTypeImplBase*[T](this: var WxAnyValueTypeImplBase[T]) {.
    cdecl, importcpp: "#.~wxAnyValueTypeImplBase()", header: wxh.}
proc deleteValue*[T](this: WxAnyValueTypeImplBase[T]; buf: var WxAnyValueBuffer) {.
    noSideEffect, cdecl, importcpp: "DeleteValue", header: wxh.}
proc copyBuffer*[T](this: WxAnyValueTypeImplBase[T]; src: WxAnyValueBuffer; 
                    dst: var WxAnyValueBuffer) {.noSideEffect, cdecl, 
    importcpp: "CopyBuffer", header: wxh.}
proc setValue*[T](value: T; buf: var WxAnyValueBuffer) {.cdecl, 
    importcpp: "wxAnyValueTypeImplBase::SetValue(@)", header: wxh.}
proc getValue*[T](buf: WxAnyValueBuffer): T {.cdecl, 
    importcpp: "wxAnyValueTypeImplBase::GetValue(@)", header: wxh.}

type 
  WxAnyValueTypeImpl* {.importcpp: "wxAnyValueTypeImpl", header: wxh.}[T] = object of WxAnyValueTypeImplBase[
      T]
  

proc isSameType*[T](this: WxAnyValueTypeImpl[T]; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: wxh.}
proc constructwxAnyValueTypeImpl*[T](): WxAnyValueTypeImpl[T] {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImpl(@)", header: wxh.}
proc destroywxAnyValueTypeImpl*[T](this: var WxAnyValueTypeImpl[T]) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImpl()", header: wxh.}
proc convertValue*[T](this: WxAnyValueTypeImpl[T]; src: WxAnyValueBuffer; 
                      dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: wxh.}


type
  WxAnyBaseIntType* = int64
  WxAnyBaseUintType* = uint64
type 
  WxAnyValueTypeImplInt* {.importcpp: "wxAnyValueTypeImplInt", header: wxh.} = object of WxAnyValueTypeImplBase[
      WxAnyBaseIntType]
  

proc isSameType*(this: WxAnyValueTypeImplInt; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: wxh.}
proc constructwxAnyValueTypeImplInt*(): WxAnyValueTypeImplInt {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplInt(@)", header: wxh.}
proc destroywxAnyValueTypeImplInt*(this: var WxAnyValueTypeImplInt) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImplInt()", header: wxh.}
proc convertValue*(this: WxAnyValueTypeImplInt; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: wxh.}
type 
  WxAnyValueTypeImplUint* {.importcpp: "wxAnyValueTypeImplUint", header: wxh.} = object of WxAnyValueTypeImplBase[
      WxAnyBaseUintType]
  

proc isSameType*(this: WxAnyValueTypeImplUint; otherType: ptr WxAnyValueType): bool {.
    noSideEffect, cdecl, importcpp: "IsSameType", header: wxh.}
proc constructwxAnyValueTypeImplUint*(): WxAnyValueTypeImplUint {.cdecl, 
    constructor, importcpp: "wxAnyValueTypeImplUint(@)", header: wxh.}
proc destroywxAnyValueTypeImplUint*(this: var WxAnyValueTypeImplUint) {.cdecl, 
    importcpp: "#.~wxAnyValueTypeImplUint()", header: wxh.}
proc convertValue*(this: WxAnyValueTypeImplUint; src: WxAnyValueBuffer; 
                   dstType: ptr WxAnyValueType; dst: var WxAnyValueBuffer): bool {.
    noSideEffect, cdecl, importcpp: "ConvertValue", header: wxh.}

proc wxAnyConvertString*(value: WxString; dstType: ptr WxAnyValueType; 
                         dst: var WxAnyValueBuffer): bool {.cdecl, 
    importcpp: "wxAnyConvertString(@)", header: wxh.}

type 
  WxAnyBaseDoubleType* = cdouble



type 
  WxAny* {.importcpp: "wxAny", header: wxh.} = object 
  

proc constructwxAny*(): WxAny {.cdecl, constructor, importcpp: "wxAny(@)", 
                                header: wxh.}
proc destroywxAny*(this: var WxAny) {.cdecl, importcpp: "#.~wxAny()", 
                                      header: wxh.}
proc constructwxAny*[T](value: T): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: wxh.}
proc constructwxAny*(value: cstring): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: wxh.}
proc constructwxAny*(any: WxAny): WxAny {.cdecl, constructor, 
    importcpp: "wxAny(@)", header: wxh.}
proc getType*(this: WxAny): ptr WxAnyValueType {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc hasSameType*(this: WxAny; other: WxAny): bool {.noSideEffect, cdecl, 
    importcpp: "HasSameType", header: wxh.}
proc isNull*(this: WxAny): bool {.noSideEffect, cdecl, importcpp: "IsNull", 
                                  header: wxh.}
proc makeNull*(this: var WxAny) {.cdecl, importcpp: "MakeNull", header: wxh.}
proc `==`*(this: WxAny; value: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cstring): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cshort): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cushort): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cint): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cfloat): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxAny; value: bool): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `as`*[T](this: WxAny; a3: ptr T = nil): T {.noSideEffect, cdecl, 
    importcpp: "As", header: wxh.}
proc `as`*(this: WxAny; a3: ptr WxString): WxString {.noSideEffect, cdecl, 
    importcpp: "As", header: wxh.}
proc getAs*[T](this: WxAny; value: ptr T): bool {.noSideEffect, cdecl, 
    importcpp: "GetAs", header: wxh.}