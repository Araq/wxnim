

type 
  WxClassInfo* {.importcpp: "wxClassInfo", header: wxh, inheritable.} = object 
  
  WxDynamicClassInfo* {.importcpp: "wxDynamicClassInfo", header: wxh.} = object of WxClassInfo
  

discard "forward decl of wxAny"
type 
  WxVariantData* {.importcpp: "wxVariantData", header: wxh.} = object of WxObjectRefData
  

proc constructwxVariantData*(): WxVariantData {.cdecl, constructor, 
    importcpp: "wxVariantData(@)", header: wxh.}
proc eq*(this: WxVariantData; data: var WxVariantData): bool {.noSideEffect, 
    cdecl, importcpp: "Eq", header: wxh.}
proc write*(this: WxVariantData; str: var WxString): bool {.noSideEffect, cdecl, 
    importcpp: "Write", header: wxh.}
proc read*(this: var WxVariantData; str: var WxString): bool {.cdecl, 
    importcpp: "Read", header: wxh.}
proc getType*(this: WxVariantData): WxString {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc getValueClassInfo*(this: var WxVariantData): ptr WxClassInfo {.cdecl, 
    importcpp: "GetValueClassInfo", header: wxh.}
proc clone*(this: WxVariantData): ptr WxVariantData {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
proc getAsAny*(this: WxVariantData; any: ptr WxAny): bool {.noSideEffect, cdecl, 
    importcpp: "GetAsAny", header: wxh.}

discard "forward decl of wxVariant"
type 
  WxVariant* {.importcpp: "wxVariant", header: wxh.} = object of WxObject
  

proc constructwxVariant*(): WxVariant {.cdecl, constructor, 
                                        importcpp: "wxVariant(@)", header: wxh.}
proc constructwxVariant*(variant: WxVariant): WxVariant {.cdecl, constructor, 
    importcpp: "wxVariant(@)", header: wxh.}
proc constructwxVariant*(data: ptr WxVariantData; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc constructwxVariant*(any: WxAny): WxVariant {.cdecl, constructor, 
    importcpp: "wxVariant(@)", header: wxh.}
proc destroywxVariant*(this: var WxVariant) {.cdecl, 
    importcpp: "#.~wxVariant()", header: wxh.}
proc `==`*(this: WxVariant; variant: WxVariant): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc setName*(this: var WxVariant; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc isNull*(this: WxVariant): bool {.noSideEffect, cdecl, importcpp: "IsNull", 
                                      header: wxh.}
proc getData*(this: WxVariant): ptr WxVariantData {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc setData*(this: var WxVariant; data: ptr WxVariantData) {.cdecl, 
    importcpp: "SetData", header: wxh.}
proc `ref`*(this: var WxVariant; clone: WxVariant) {.cdecl, importcpp: "Ref", 
    header: wxh.}
proc unshare*(this: var WxVariant): bool {.cdecl, importcpp: "Unshare", 
    header: wxh.}
proc makeNull*(this: var WxVariant) {.cdecl, importcpp: "MakeNull", header: wxh.}
proc clear*(this: var WxVariant) {.cdecl, importcpp: "Clear", header: wxh.}
proc getType*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc isType*(this: WxVariant; `type`: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "IsType", header: wxh.}
proc isValueKindOf*(this: WxVariant; `type`: ptr WxClassInfo): bool {.
    noSideEffect, cdecl, importcpp: "IsValueKindOf", header: wxh.}
proc makeString*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "MakeString", header: wxh.}
proc getAny*(this: WxVariant): WxAny {.noSideEffect, cdecl, importcpp: "GetAny", 
                                       header: wxh.}
proc constructwxVariant*(val: cdouble; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getReal*(this: WxVariant): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetReal", header: wxh.}
proc getDouble*(this: WxVariant): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDouble", header: wxh.}
proc constructwxVariant*(val: clong; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: clong): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getInteger*(this: WxVariant): clong {.noSideEffect, cdecl, 
    importcpp: "GetInteger", header: wxh.}
proc getLong*(this: WxVariant): clong {.noSideEffect, cdecl, 
                                        importcpp: "GetLong", header: wxh.}
proc constructwxVariant*(val: bool; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: bool): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getBool*(this: WxVariant): bool {.noSideEffect, cdecl, 
                                       importcpp: "GetBool", header: wxh.}
proc constructwxVariant*(val: WxDateTime; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: WxDateTime): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getDateTime*(this: WxVariant): WxDateTime {.noSideEffect, cdecl, 
    importcpp: "GetDateTime", header: wxh.}
proc constructwxVariant*(val: WxString; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc constructwxVariant*(val: cstring; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getString*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc constructwxVariant*(val: WxUniChar; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc constructwxVariant*(val: char; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: WxUniChar): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxVariant; value: char): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getChar*(this: WxVariant): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "GetChar", header: wxh.}
proc constructwxVariant*(val: WxArrayString; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getArrayString*(this: WxVariant): WxArrayString {.noSideEffect, cdecl, 
    importcpp: "GetArrayString", header: wxh.}
proc constructwxVariant*(`ptr`: pointer; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: pointer): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getVoidPtr*(this: WxVariant): pointer {.noSideEffect, cdecl, 
    importcpp: "GetVoidPtr", header: wxh.}
proc constructwxVariant*(`ptr`: ptr WxObject; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: ptr WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getWxObjectPtr*(this: WxVariant): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetWxObjectPtr", header: wxh.}
proc constructwxVariant*(a2: int64; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: wxh.}
proc `==`*(this: WxVariant; value: int64): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc getLongLong*(this: WxVariant): int64 {.noSideEffect, cdecl, 
    importcpp: "GetLongLong", header: wxh.}
proc `[]`*(this: WxVariant; idx: csize): WxVariant {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: wxh.}
proc `[]`*(this: var WxVariant; idx: csize): var WxVariant {.cdecl, 
    importcpp: "#[@]", header: wxh.}
proc getCount*(this: WxVariant): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc nullList*(this: var WxVariant) {.cdecl, importcpp: "NullList", header: wxh.}
proc append*(this: var WxVariant; value: WxVariant) {.cdecl, 
    importcpp: "Append", header: wxh.}
proc insert*(this: var WxVariant; value: WxVariant) {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc member*(this: WxVariant; value: WxVariant): bool {.noSideEffect, cdecl, 
    importcpp: "Member", header: wxh.}
proc delete*(this: var WxVariant; item: csize): bool {.cdecl, 
    importcpp: "Delete", header: wxh.}
proc clearList*(this: var WxVariant) {.cdecl, importcpp: "ClearList", 
                                       header: wxh.}
proc convert*(this: WxVariant; value: ptr clong): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr bool): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr WxString): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr WxUniChar): bool {.noSideEffect, 
    cdecl, importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: cstring): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr WxDateTime): bool {.noSideEffect, 
    cdecl, importcpp: "Convert", header: wxh.}
proc convert*(this: WxVariant; value: ptr int64): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: wxh.}


type 
  WxVariantDataFactory* = proc (any: WxAny): ptr WxVariantData {.cdecl.}


type 
  WxAnyToVariantRegistration* {.importcpp: "wxAnyToVariantRegistration", 
                                header: wxh, inheritable.} = object 
  

proc constructwxAnyToVariantRegistration*(factory: WxVariantDataFactory): WxAnyToVariantRegistration {.
    cdecl, constructor, importcpp: "wxAnyToVariantRegistration(@)", header: wxh.}
proc destroywxAnyToVariantRegistration*(this: var WxAnyToVariantRegistration) {.
    cdecl, importcpp: "#.~wxAnyToVariantRegistration()", header: wxh.}
proc getAssociatedType*(this: var WxAnyToVariantRegistration): ptr WxAnyValueType {.
    cdecl, importcpp: "GetAssociatedType", header: wxh.}
proc getFactory*(this: WxAnyToVariantRegistration): WxVariantDataFactory {.
    noSideEffect, cdecl, importcpp: "GetFactory", header: wxh.}
type 
  WxAnyToVariantRegistrationImpl*[T] {.importcpp: "wxAnyToVariantRegistrationImpl", 
                                    header: wxh.} = object of WxAnyToVariantRegistration
  

proc constructwxAnyToVariantRegistrationImpl*[T](factory: WxVariantDataFactory): WxAnyToVariantRegistrationImpl[
    T] {.cdecl, constructor, importcpp: "wxAnyToVariantRegistrationImpl(@)", 
         header: wxh.}
proc getAssociatedType*[T](this: var WxAnyToVariantRegistrationImpl[T]): ptr WxAnyValueType {.
    cdecl, importcpp: "GetAssociatedType", header: wxh.}



var wxNullVariant* {.importcpp: "wxNullVariant", header: wxh.}: WxVariant
