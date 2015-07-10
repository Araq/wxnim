


type 
  WxLayoutDirection* {.size: sizeof(cint), importcpp: "wxLayoutDirection", 
                       header: "<wx/wx.h>".} = enum 
    wxLayoutDefault, wxLayoutLeftToRight, wxLayoutRightToLeft



type 
  WxLanguage* {.importcpp: "wxLanguage", header: "<wx/wx.h>".} = object 
  

discard "forward decl of wxLocale"
discard "forward decl of wxLanguageInfoArray"
type 
  WxLanguageInfo* {.importcpp: "wxLanguageInfo", header: "<wx/wx.h>".} = object 
    language* {.importc: "Language".}: cint
    canonicalName* {.importc: "CanonicalName".}: WxString
    description* {.importc: "Description".}: WxString
    layoutDirection* {.importc: "LayoutDirection".}: WxLayoutDirection


proc getLocaleName*(this: WxLanguageInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLocaleName", header: "<wx/wx.h>".}

type 
  WxLocaleCategory* {.size: sizeof(cint), 
                      importcpp: "wxLanguageInfoArray::wxLocaleCategory", 
                      header: "<wx/wx.h>".} = enum 
    wxLOCALE_CAT_NUMBER, wxLOCALE_CAT_DATE, wxLOCALE_CAT_MONEY, 
    wxLOCALE_CAT_DEFAULT, wxLOCALE_CAT_MAX



type 
  WxLocaleInfo* {.size: sizeof(cint), 
                  importcpp: "wxLanguageInfoArray::wxLocaleInfo", 
                  header: "<wx/wx.h>".} = enum 
    wxLOCALE_THOUSANDS_SEP, wxLOCALE_DECIMAL_POINT, wxLOCALE_SHORT_DATE_FMT, 
    wxLOCALE_LONG_DATE_FMT, wxLOCALE_DATE_TIME_FMT, wxLOCALE_TIME_FMT



type 
  WxLocaleInitFlags* {.size: sizeof(cint), 
                       importcpp: "wxLanguageInfoArray::wxLocaleInitFlags", 
                       header: "<wx/wx.h>".} = enum 
    wxLOCALE_DONT_LOAD_DEFAULT = 0x00000000, wxLOCALE_LOAD_DEFAULT = 0x00000001


type 
  WxLocale* {.importcpp: "wxLocale", header: "<wx/wx.h>".} = object 
  

proc constructwxLocale*(): WxLocale {.cdecl, constructor, 
                                      importcpp: "wxLocale(@)", 
                                      header: "<wx/wx.h>".}
proc constructwxLocale*(name: WxString; shortName: WxString = wxEmptyString; 
                        locale: WxString = wxEmptyString; 
                        bLoadDefault: bool = true): WxLocale {.cdecl, 
    constructor, importcpp: "wxLocale(@)", header: "<wx/wx.h>".}
proc constructwxLocale*(language: cint; flags = wxLOCALE_LOAD_DEFAULT): WxLocale {.
    cdecl, constructor, importcpp: "wxLocale(@)", header: "<wx/wx.h>".}
proc init*(this: var WxLocale; name: WxString; 
           shortName: WxString = wxEmptyString; 
           locale: WxString = wxEmptyString; bLoadDefault: bool = true): bool {.
    cdecl, importcpp: "Init", header: "<wx/wx.h>".}
proc destroywxLocale*(this: var WxLocale) {.cdecl, importcpp: "#.~wxLocale()", 
    header: "<wx/wx.h>".}
proc getSystemLanguage*(): cint {.cdecl, 
                                  importcpp: "wxLocale::GetSystemLanguage(@)", 
                                  header: "<wx/wx.h>".}
proc getSystemEncoding*(): WxFontEncoding {.cdecl, 
    importcpp: "wxLocale::GetSystemEncoding(@)", header: "<wx/wx.h>".}
proc getSystemEncodingName*(): WxString {.cdecl, 
    importcpp: "wxLocale::GetSystemEncodingName(@)", header: "<wx/wx.h>".}
proc getInfo*(index: WxLocaleInfo; cat: WxLocaleCategory = wxLOCALE_CAT_DEFAULT): WxString {.
    cdecl, importcpp: "wxLocale::GetInfo(@)", header: "<wx/wx.h>".}
proc isOk*(this: WxLocale): bool {.noSideEffect, cdecl, importcpp: "IsOk", 
                                   header: "<wx/wx.h>".}
proc getLocale*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLocale", header: "<wx/wx.h>".}
proc getLanguage*(this: WxLocale): cint {.noSideEffect, cdecl, 
    importcpp: "GetLanguage", header: "<wx/wx.h>".}
proc getSysName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSysName", header: "<wx/wx.h>".}
proc getCanonicalName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCanonicalName", header: "<wx/wx.h>".}
proc addCatalogLookupPathPrefix*(prefix: WxString) {.cdecl, 
    importcpp: "wxLocale::AddCatalogLookupPathPrefix(@)", header: "<wx/wx.h>".}
proc addCatalog*(this: var WxLocale; domain: WxString): bool {.cdecl, 
    importcpp: "AddCatalog", header: "<wx/wx.h>".}
proc addCatalog*(this: var WxLocale; domain: WxString; msgIdLanguage: WxLanguage): bool {.
    cdecl, importcpp: "AddCatalog", header: "<wx/wx.h>".}
proc addCatalog*(this: var WxLocale; domain: WxString; 
                 msgIdLanguage: WxLanguage; msgIdCharset: WxString): bool {.
    cdecl, importcpp: "AddCatalog", header: "<wx/wx.h>".}
proc isAvailable*(lang: cint): bool {.cdecl, 
                                      importcpp: "wxLocale::IsAvailable(@)", 
                                      header: "<wx/wx.h>".}
proc isLoaded*(this: WxLocale; domain: WxString): bool {.noSideEffect, cdecl, 
    importcpp: "IsLoaded", header: "<wx/wx.h>".}
proc getLanguageInfo*(lang: cint): ptr WxLanguageInfo {.cdecl, 
    importcpp: "wxLocale::GetLanguageInfo(@)", header: "<wx/wx.h>".}
proc getLanguageName*(lang: cint): WxString {.cdecl, 
    importcpp: "wxLocale::GetLanguageName(@)", header: "<wx/wx.h>".}
proc getLanguageCanonicalName*(lang: cint): WxString {.cdecl, 
    importcpp: "wxLocale::GetLanguageCanonicalName(@)", header: "<wx/wx.h>".}
proc findLanguageInfo*(locale: WxString): ptr WxLanguageInfo {.cdecl, 
    importcpp: "wxLocale::FindLanguageInfo(@)", header: "<wx/wx.h>".}
proc addLanguage*(info: WxLanguageInfo) {.cdecl, 
    importcpp: "wxLocale::AddLanguage(@)", header: "<wx/wx.h>".}
proc getString*(this: WxLocale; origString: WxString; 
                domain: WxString = wxEmptyString): WxString {.noSideEffect, 
    cdecl, importcpp: "GetString", header: "<wx/wx.h>".}
proc getString*(this: WxLocale; origString: WxString; origString2: WxString; 
                n: cuint; domain: WxString = wxEmptyString): WxString {.
    noSideEffect, cdecl, importcpp: "GetString", header: "<wx/wx.h>".}
proc getName*(this: WxLocale): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc getHeaderValue*(this: WxLocale; header: WxString; 
                     domain: WxString = wxEmptyString): WxString {.noSideEffect, 
    cdecl, importcpp: "GetHeaderValue", header: "<wx/wx.h>".}
proc createLanguagesDB*() {.cdecl, importcpp: "wxLocale::CreateLanguagesDB(@)", 
                            header: "<wx/wx.h>".}
proc destroyLanguagesDB*() {.cdecl, 
                             importcpp: "wxLocale::DestroyLanguagesDB(@)", 
                             header: "<wx/wx.h>".}

proc wxGetLocale*(): ptr WxLocale {.cdecl, importcpp: "wxGetLocale(@)", 
                                    header: "<wx/wx.h>".}