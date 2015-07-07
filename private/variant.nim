

type 
  WxClassInfo* {.importcpp: "wxClassInfo", header: "wx.h", inheritable.} = object 
  
  WxDynamicClassInfo* {.importcpp: "wxDynamicClassInfo", header: "wx.h".} = object of WxClassInfo
  

discard "forward decl of wxAny"
type 
  WxVariantData* {.importcpp: "wxVariantData", header: "wx.h".} = object of WxObjectRefData
  

proc constructwxVariantData*(): WxVariantData {.cdecl, constructor, 
    importcpp: "wxVariantData(@)", header: "wx.h".}
proc eq*(this: WxVariantData; data: var WxVariantData): bool {.noSideEffect, 
    cdecl, importcpp: "Eq", header: "wx.h".}
proc write*(this: WxVariantData; str: var WxString): bool {.noSideEffect, cdecl, 
    importcpp: "Write", header: "wx.h".}
proc read*(this: var WxVariantData; str: var WxString): bool {.cdecl, 
    importcpp: "Read", header: "wx.h".}
proc getType*(this: WxVariantData): WxString {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "wx.h".}
proc getValueClassInfo*(this: var WxVariantData): ptr WxClassInfo {.cdecl, 
    importcpp: "GetValueClassInfo", header: "wx.h".}
proc clone*(this: WxVariantData): ptr WxVariantData {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}
proc getAsAny*(this: WxVariantData; any: ptr WxAny): bool {.noSideEffect, cdecl, 
    importcpp: "GetAsAny", header: "wx.h".}

discard "forward decl of wxVariant"
type 
  WxVariant* {.importcpp: "wxVariant", header: "wx.h".} = object of WxObject
  

proc constructwxVariant*(): WxVariant {.cdecl, constructor, 
                                        importcpp: "wxVariant(@)", 
                                        header: "wx.h".}
proc constructwxVariant*(variant: WxVariant): WxVariant {.cdecl, constructor, 
    importcpp: "wxVariant(@)", header: "wx.h".}
proc constructwxVariant*(data: ptr WxVariantData; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc constructwxVariant*(any: WxAny): WxVariant {.cdecl, constructor, 
    importcpp: "wxVariant(@)", header: "wx.h".}
proc destroywxVariant*(this: var WxVariant) {.cdecl, 
    importcpp: "#.~wxVariant()", header: "wx.h".}
proc `==`*(this: WxVariant; variant: WxVariant): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc setName*(this: var WxVariant; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "wx.h".}
proc isNull*(this: WxVariant): bool {.noSideEffect, cdecl, importcpp: "IsNull", 
                                      header: "wx.h".}
proc getData*(this: WxVariant): ptr WxVariantData {.noSideEffect, cdecl, 
    importcpp: "GetData", header: "wx.h".}
proc setData*(this: var WxVariant; data: ptr WxVariantData) {.cdecl, 
    importcpp: "SetData", header: "wx.h".}
proc `ref`*(this: var WxVariant; clone: WxVariant) {.cdecl, importcpp: "Ref", 
    header: "wx.h".}
proc unshare*(this: var WxVariant): bool {.cdecl, importcpp: "Unshare", 
    header: "wx.h".}
proc makeNull*(this: var WxVariant) {.cdecl, importcpp: "MakeNull", 
                                      header: "wx.h".}
proc clear*(this: var WxVariant) {.cdecl, importcpp: "Clear", header: "wx.h".}
proc getType*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetType", header: "wx.h".}
proc isType*(this: WxVariant; `type`: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "IsType", header: "wx.h".}
proc isValueKindOf*(this: WxVariant; `type`: ptr WxClassInfo): bool {.
    noSideEffect, cdecl, importcpp: "IsValueKindOf", header: "wx.h".}
proc makeString*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "MakeString", header: "wx.h".}
proc getAny*(this: WxVariant): WxAny {.noSideEffect, cdecl, importcpp: "GetAny", 
                                       header: "wx.h".}
proc constructwxVariant*(val: cdouble; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getReal*(this: WxVariant): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetReal", header: "wx.h".}
proc getDouble*(this: WxVariant): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetDouble", header: "wx.h".}
proc constructwxVariant*(val: clong; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: clong): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getInteger*(this: WxVariant): clong {.noSideEffect, cdecl, 
    importcpp: "GetInteger", header: "wx.h".}
proc getLong*(this: WxVariant): clong {.noSideEffect, cdecl, 
                                        importcpp: "GetLong", header: "wx.h".}
proc constructwxVariant*(val: bool; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: bool): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getBool*(this: WxVariant): bool {.noSideEffect, cdecl, 
                                       importcpp: "GetBool", header: "wx.h".}
proc constructwxVariant*(val: WxDateTime; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: WxDateTime): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getDateTime*(this: WxVariant): WxDateTime {.noSideEffect, cdecl, 
    importcpp: "GetDateTime", header: "wx.h".}
proc constructwxVariant*(val: WxString; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc constructwxVariant*(val: cstring; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getString*(this: WxVariant): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: "wx.h".}
proc constructwxVariant*(val: WxUniChar; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc constructwxVariant*(val: char; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: WxUniChar): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc `==`*(this: WxVariant; value: char): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getChar*(this: WxVariant): WxUniChar {.noSideEffect, cdecl, 
    importcpp: "GetChar", header: "wx.h".}
proc constructwxVariant*(val: WxArrayString; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: WxArrayString): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getArrayString*(this: WxVariant): WxArrayString {.noSideEffect, cdecl, 
    importcpp: "GetArrayString", header: "wx.h".}
proc constructwxVariant*(`ptr`: pointer; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: pointer): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getVoidPtr*(this: WxVariant): pointer {.noSideEffect, cdecl, 
    importcpp: "GetVoidPtr", header: "wx.h".}
proc constructwxVariant*(`ptr`: ptr WxObject; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: ptr WxObject): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getWxObjectPtr*(this: WxVariant): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetWxObjectPtr", header: "wx.h".}
proc constructwxVariant*(a2: int64; name: WxString = wxEmptyString): WxVariant {.
    cdecl, constructor, importcpp: "wxVariant(@)", header: "wx.h".}
proc `==`*(this: WxVariant; value: int64): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "wx.h".}
proc getLongLong*(this: WxVariant): int64 {.noSideEffect, cdecl, 
    importcpp: "GetLongLong", header: "wx.h".}
proc `[]`*(this: WxVariant; idx: csize): WxVariant {.noSideEffect, cdecl, 
    importcpp: "#[@]", header: "wx.h".}
proc `[]`*(this: var WxVariant; idx: csize): var WxVariant {.cdecl, 
    importcpp: "#[@]", header: "wx.h".}
proc getCount*(this: WxVariant): csize {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "wx.h".}
proc nullList*(this: var WxVariant) {.cdecl, importcpp: "NullList", 
                                      header: "wx.h".}
proc append*(this: var WxVariant; value: WxVariant) {.cdecl, 
    importcpp: "Append", header: "wx.h".}
proc insert*(this: var WxVariant; value: WxVariant) {.cdecl, 
    importcpp: "Insert", header: "wx.h".}
proc member*(this: WxVariant; value: WxVariant): bool {.noSideEffect, cdecl, 
    importcpp: "Member", header: "wx.h".}
proc delete*(this: var WxVariant; item: csize): bool {.cdecl, 
    importcpp: "Delete", header: "wx.h".}
proc clearList*(this: var WxVariant) {.cdecl, importcpp: "ClearList", 
                                       header: "wx.h".}
proc convert*(this: WxVariant; value: ptr clong): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr bool): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr cdouble): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr WxString): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr WxUniChar): bool {.noSideEffect, 
    cdecl, importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: cstring): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr WxDateTime): bool {.noSideEffect, 
    cdecl, importcpp: "Convert", header: "wx.h".}
proc convert*(this: WxVariant; value: ptr int64): bool {.noSideEffect, cdecl, 
    importcpp: "Convert", header: "wx.h".}


type 
  WxVariantDataFactory* = proc (any: WxAny): ptr WxVariantData {.cdecl.}


type 
  WxAnyToVariantRegistration* {.importcpp: "wxAnyToVariantRegistration", 
                                header: "wx.h", inheritable.} = object 
    mFactory* {.importc: "m_factory".}: WxVariantDataFactory


proc constructwxAnyToVariantRegistration*(factory: WxVariantDataFactory): WxAnyToVariantRegistration {.
    cdecl, constructor, importcpp: "wxAnyToVariantRegistration(@)", 
    header: "wx.h".}
proc destroywxAnyToVariantRegistration*(this: var WxAnyToVariantRegistration) {.
    cdecl, importcpp: "#.~wxAnyToVariantRegistration()", header: "wx.h".}
proc getAssociatedType*(this: var WxAnyToVariantRegistration): ptr WxAnyValueType {.
    cdecl, importcpp: "GetAssociatedType", header: "wx.h".}
proc getFactory*(this: WxAnyToVariantRegistration): WxVariantDataFactory {.
    noSideEffect, cdecl, importcpp: "GetFactory", header: "wx.h".}
type 
  WxAnyToVariantRegistrationImpl* {.importcpp: "wxAnyToVariantRegistrationImpl", 
                                    header: "wx.h".}[T] = object of WxAnyToVariantRegistration
  

proc constructwxAnyToVariantRegistrationImpl*[T](factory: WxVariantDataFactory): WxAnyToVariantRegistrationImpl[
    T] {.cdecl, constructor, importcpp: "wxAnyToVariantRegistrationImpl(@)", 
         header: "wx.h".}
proc getAssociatedType*[T](this: var WxAnyToVariantRegistrationImpl[T]): ptr WxAnyValueType {.
    cdecl, importcpp: "GetAssociatedType", header: "wx.h".}



var wxNullVariant* {.importcpp: "wxNullVariant", header: "wx.h".}: WxVariant
