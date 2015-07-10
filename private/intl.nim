


type 
  WxLayoutDirection* {.size: sizeof(cint), importcpp: "wxLayoutDirection", 
                       header: wxh.} = enum 
    wxLayoutDefault, wxLayoutLeftToRight, wxLayoutRightToLeft



type 
  WxLanguage* {.importcpp: "wxLanguage", header: wxh.} = object 
  

discard "forward decl of wxLocale"
discard "forward decl of wxLanguageInfoArray"
type 
  WxLanguageInfo* {.importcpp: "wxLanguageInfo", header: wxh.} = object 
    language* {.importc: "Language".}: cint
    canonicalName* {.importc: "CanonicalName".}: WxString
    description* {.importc: "Description".}: WxString
    layoutDirection* {.importc: "LayoutDirection".}: WxLayoutDirection


proc getLocaleName*(this: WxLanguageInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLocaleName", header: wxh.}

type 
  WxLocaleCategory* {.size: sizeof(cint), 
                      importcpp: "wxLanguageInfoArray::wxLocaleCategory", 
                      header: wxh.} = enum 
    wxLOCALE_CAT_NUMBER, wxLOCALE_CAT_DATE, wxLOCALE_CAT_MONEY, 
    wxLOCALE_CAT_DEFAULT, wxLOCALE_CAT_MAX



type 
  WxLocaleInfo* {.size: sizeof(cint), 
                  importcpp: "wxLanguageInfoArray::wxLocaleInfo", header: wxh.} = enum 
    wxLOCALE_THOUSANDS_SEP, wxLOCALE_DECIMAL_POINT, wxLOCALE_SHORT_DATE_FMT, 
    wxLOCALE_LONG_DATE_FMT, wxLOCALE_DATE_TIME_FMT, wxLOCALE_TIME_FMT



type 
  WxLocaleInitFlags* {.size: sizeof(cint), 
                       importcpp: "wxLanguageInfoArray::wxLocaleInitFlags", 
                       header: wxh.} = enum 
    wxLOCALE_DONT_LOAD_DEFAULT = 0x00000000, wxLOCALE_LOAD_DEFAULT = 0x00000001


type 
  WxLocale* {.importcpp: "wxLocale", header: wxh.} = object 
  

proc constructwxLocale*(): WxLocale {.cdecl, constructor, 
                                      importcpp: "wxLocale(@)", header: wxh.}
proc constructwxLocale*(name: WxString; shortName: WxString = wxEmptyString; 
                        locale: WxString = wxEmptyString; 
                        bLoadDefault: bool = true): WxLocale {.cdecl, 
    constructor, importcpp: "wxLocale(@)", header: wxh.}
proc constructwxLocale*(language: cint; flags = wxLOCALE_LOAD_DEFAULT): WxLocale {.
    cdecl, constructor, importcpp: "wxLocale(@)", header: wxh.}
proc init*(this: var WxLocale; name: WxString; 
           shortName: WxString = wxEmptyString; 
           locale: WxString = wxEmptyString; bLoadDefault: bool = true): bool {.
    cdecl, importcpp: "Init", header: wxh.}
proc destroywxLocale*(this: var WxLocale) {.cdecl, importcpp: "#.~wxLocale()", 
    header: wxh.}
proc getSystemLanguage*(): cint {.cdecl, 
                                  importcpp: "wxLocale::GetSystemLanguage(@)", 
                                  header: wxh.}
proc getSystemEncoding*(): WxFontEncoding {.cdecl, 
    importcpp: "wxLocale::GetSystemEncoding(@)", header: wxh.}
proc getSystemEncodingName*(): WxString {.cdecl, 
    importcpp: "wxLocale::GetSystemEncodingName(@)", header: wxh.}
proc getInfo*(index: WxLocaleInfo; cat: WxLocaleCategory = wxLOCALE_CAT_DEFAULT): WxString {.
    cdecl, importcpp: "wxLocale::GetInfo(@)", header: wxh.}
proc isOk*(this: WxLocale): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                   header: wxh.}
proc getLocale*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLocale", header: wxh.}
proc getLanguage*(this: WxLocale): cint {.noSideEffect, cdecl, 
    importcpp: "GetLanguage", header: wxh.}
proc getSysName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSysName", header: wxh.}
proc getCanonicalName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCanonicalName", header: wxh.}
proc addCatalogLookupPathPrefix*(prefix: WxString) {.cdecl, 
    importcpp: "wxLocale::AddCatalogLookupPathPrefix(@)", header: wxh.}
proc addCatalog*(this: var WxLocale; domain: WxString): bool {.cdecl, 
    importcpp: "AddCatalog", header: wxh.}
proc addCatalog*(this: var WxLocale; domain: WxString; msgIdLanguage: WxLanguage): bool {.
    cdecl, importcpp: "AddCatalog", header: wxh.}
proc addCatalog*(this: var WxLocale; domain: WxString; 
                 msgIdLanguage: WxLanguage; msgIdCharset: WxString): bool {.
    cdecl, importcpp: "AddCatalog", header: wxh.}
proc isAvailable*(lang: cint): bool {.cdecl, 
                                      importcpp: "wxLocale::IsAvailable(@)", 
                                      header: wxh.}
proc isLoaded*(this: WxLocale; domain: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "IsLoaded", header: wxh.}
proc getLanguageInfo*(lang: cint): ptr WxLanguageInfo {.cdecl, 
    importcpp: "wxLocale::GetLanguageInfo(@)", header: wxh.}
proc getLanguageName*(lang: cint): WxString {.cdecl, 
    importcpp: "wxLocale::GetLanguageName(@)", header: wxh.}
proc getLanguageCanonicalName*(lang: cint): WxString {.cdecl, 
    importcpp: "wxLocale::GetLanguageCanonicalName(@)", header: wxh.}
proc findLanguageInfo*(locale: WxString): ptr WxLanguageInfo {.cdecl, 
    importcpp: "wxLocale::FindLanguageInfo(@)", header: wxh.}
proc addLanguage*(info: WxLanguageInfo) {.cdecl, 
    importcpp: "wxLocale::AddLanguage(@)", header: wxh.}
proc getString*(this: WxLocale; origString: WxString; 
                domain: WxString = wxEmptyString): WxString {.noSideEffect, 
    cdecl, importcpp: "GetString", header: wxh.}
proc getString*(this: WxLocale; origString: WxString; origString2: WxString; 
                n: cuint; domain: WxString = wxEmptyString): WxString {.
    noSideEffect, cdecl, importcpp: "GetString", header: wxh.}
proc getName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc getHeaderValue*(this: WxLocale; header: WxString; 
                     domain: WxString = wxEmptyString): WxString {.noSideEffect, 
    cdecl, importcpp: "GetHeaderValue", header: wxh.}
proc createLanguagesDB*() {.cdecl, importcpp: "wxLocale::CreateLanguagesDB(@)", 
                            header: wxh.}
proc destroyLanguagesDB*() {.cdecl, 
                             importcpp: "wxLocale::DestroyLanguagesDB(@)", 
                             header: wxh.}

proc wxGetLocale*(): ptr WxLocale {.cdecl, importcpp: "wxGetLocale(@)", 
                                    header: wxh.}