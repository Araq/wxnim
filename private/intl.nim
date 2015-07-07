#///////////////////////////////////////////////////////////////////////////
# Name:        wx/intl.h
# Purpose:     Internationalization and localisation for wxWidgets
# Author:      Vadim Zeitlin
# Modified by: Michael N. Filippov <michael@idisys.iae.nsk.su>
#              (2003/09/30 - plural forms support)
# Created:     29/01/98
# Copyright:   (c) 1998 Vadim Zeitlin <zeitlin@dptmaths.ens-cachan.fr>
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# Make wxLayoutDirection enum available without need for wxUSE_INTL so wxWindow, wxApp
# and other classes are not distrubed by wxUSE_INTL

type
  WxLayoutDirection* = enum
    wxLayoutDefault, wxLayoutLeftToRight, wxLayoutRightToLeft


# ============================================================================
# global decls
# ============================================================================
# ----------------------------------------------------------------------------
# macros
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# forward decls
# ----------------------------------------------------------------------------

discard "forward decl of wxLocale"
discard "forward decl of wxLanguageInfoArray"
type
  WxLanguageInfo* {.importcpp: "wxLanguageInfo", header: "wx.h".} = object
    language* {.importc: "Language".}: cint # wxLanguage id
    canonicalName* {.importc: "CanonicalName".}: WxString # Canonical name, e.g. fr_FR
    description* {.importc: "Description".}: WxString # human-readable name of the language
    layoutDirection* {.importc: "LayoutDirection".}: WxLayoutDirection # return the locale name
                                                                       # corresponding to this language usable with
                                                                       #
                                                                       # setlocale() on the current system


proc getLocaleName*(this: WxLanguageInfo): WxString {.noSideEffect,
    importcpp: "GetLocaleName", header: "wx.h".}
# ----------------------------------------------------------------------------
# wxLocaleCategory: the category of locale settings
# ----------------------------------------------------------------------------

type
  WxLocaleCategory* = enum    # (any) numbers
    wxLOCALE_CAT_NUMBER,      # date/time
    wxLOCALE_CAT_DATE,        # monetary value
    wxLOCALE_CAT_MONEY, # default category for wxLocaleInfo values which only apply to a single
                        # category (e.g. wxLOCALE_SHORT_DATE_FMT)
    wxLOCALE_CAT_DEFAULT, wxLOCALE_CAT_MAX


# ----------------------------------------------------------------------------
# wxLocaleInfo: the items understood by wxLocale::GetInfo()
# ----------------------------------------------------------------------------

type
  WxLocaleInfo* = enum        # the thousands separator (for wxLOCALE_CAT_NUMBER or MONEY)
    wxLOCALE_THOUSANDS_SEP,   # the character used as decimal point (for wxLOCALE_CAT_NUMBER or MONEY)
    wxLOCALE_DECIMAL_POINT, # the stftime()-formats used for short/long date and time representations
                            # (under some platforms short and long date formats are the same)
                            #
                            # NB: these elements should appear in this order, code in GetInfo() relies
                            #     on it
    wxLOCALE_SHORT_DATE_FMT, wxLOCALE_LONG_DATE_FMT, wxLOCALE_DATE_TIME_FMT,
    wxLOCALE_TIME_FMT


# ----------------------------------------------------------------------------
# wxLocale: encapsulates all language dependent settings, including current
#           message catalogs, date, time and currency formats (TODO) &c
# ----------------------------------------------------------------------------

type
  WxLocaleInitFlags* = enum
    wxLOCALE_DONT_LOAD_DEFAULT = 0x00000000, # don't load wxwin.mo
    wxLOCALE_LOAD_DEFAULT = 0x00000001


type
  WxLocale* {.importcpp: "wxLocale", header: "wx.h".} = object

proc constructwxLocale*(): WxLocale {.constructor, importcpp: "wxLocale(@)",
                                      header: "wx.h".}
proc constructwxLocale*(name: WxString; shortName: WxString = wxEmptyString;
                        locale: WxString = wxEmptyString;
                        bLoadDefault: bool = true): WxLocale {.constructor,
    importcpp: "wxLocale(@)", header: "wx.h".}
  # name (for messages)
  # dir prefix (for msg files)
  # locale (for setlocale)
proc constructwxLocale*(language: cint; flags = wxLOCALE_LOAD_DEFAULT): WxLocale {.
    constructor, importcpp: "wxLocale(@)", header: "wx.h".}
  # wxLanguage id or custom language
proc init*(this: var WxLocale; name: WxString;
           shortName: WxString = wxEmptyString;
           locale: WxString = wxEmptyString; bLoadDefault: bool = true): bool {.
    importcpp: "Init", header: "wx.h".}
proc init*(this: var WxLocale; language: cint;
           flags = wxLOCALE_LOAD_DEFAULT): bool {.importcpp: "Init",
    header: "wx.h".}
proc destroywxLocale*(this: var WxLocale) {.importcpp: "#.~wxLocale()",
    header: "wx.h".}
proc getSystemLanguage*(): cint {.importcpp: "wxLocale::GetSystemLanguage(@)",
                                  header: "wx.h".}
proc getSystemEncoding*(): WxFontEncoding {.
    importcpp: "wxLocale::GetSystemEncoding(@)", header: "wx.h".}
proc getSystemEncodingName*(): WxString {.
    importcpp: "wxLocale::GetSystemEncodingName(@)", header: "wx.h".}
proc getInfo*(index: WxLocaleInfo; cat: WxLocaleCategory = wxLOCALE_CAT_DEFAULT): WxString {.
    importcpp: "wxLocale::GetInfo(@)", header: "wx.h".}
proc isOk*(this: WxLocale): bool {.noSideEffect, importcpp: "IsOk",
                                   header: "wx.h".}
proc getLocale*(this: WxLocale): WxString {.noSideEffect,
    importcpp: "GetLocale", header: "wx.h".}
proc getLanguage*(this: WxLocale): cint {.noSideEffect,
    importcpp: "GetLanguage", header: "wx.h".}
proc getSysName*(this: WxLocale): WxString {.noSideEffect,
    importcpp: "GetSysName", header: "wx.h".}
proc getCanonicalName*(this: WxLocale): WxString {.noSideEffect,
    importcpp: "GetCanonicalName", header: "wx.h".}
proc addCatalogLookupPathPrefix*(prefix: WxString) {.
    importcpp: "wxLocale::AddCatalogLookupPathPrefix(@)", header: "wx.h".}
proc addCatalog*(this: var WxLocale; domain: WxString): bool {.
    importcpp: "AddCatalog", header: "wx.h".}
when false:
  proc addCatalog*(this: var WxLocale; domain: WxString; msgIdLanguage: WxLanguage): bool {.
      importcpp: "AddCatalog", header: "wx.h".}
  proc addCatalog*(this: var WxLocale; domain: WxString;
                   msgIdLanguage: WxLanguage; msgIdCharset: WxString): bool {.
      importcpp: "AddCatalog", header: "wx.h".}
proc isAvailable*(lang: cint): bool {.importcpp: "wxLocale::IsAvailable(@)",
                                      header: "wx.h".}
proc isLoaded*(this: WxLocale; domain: WxString): bool {.noSideEffect,
    importcpp: "IsLoaded", header: "wx.h".}
proc getLanguageInfo*(lang: cint): ptr WxLanguageInfo {.
    importcpp: "wxLocale::GetLanguageInfo(@)", header: "wx.h".}
proc getLanguageName*(lang: cint): WxString {.
    importcpp: "wxLocale::GetLanguageName(@)", header: "wx.h".}
proc getLanguageCanonicalName*(lang: cint): WxString {.
    importcpp: "wxLocale::GetLanguageCanonicalName(@)", header: "wx.h".}
proc findLanguageInfo*(locale: WxString): ptr WxLanguageInfo {.
    importcpp: "wxLocale::FindLanguageInfo(@)", header: "wx.h".}
proc addLanguage*(info: WxLanguageInfo) {.importcpp: "wxLocale::AddLanguage(@)",
    header: "wx.h".}
proc getString*(this: WxLocale; origString: WxString;
                domain: WxString = wxEmptyString): WxString {.noSideEffect,
    importcpp: "GetString", header: "wx.h".}
proc getString*(this: WxLocale; origString: WxString; origString2: WxString;
                n: cuint; domain: WxString = wxEmptyString): WxString {.
    noSideEffect, importcpp: "GetString", header: "wx.h".}
proc getName*(this: WxLocale): WxString {.noSideEffect, importcpp: "GetName",
    header: "wx.h".}
proc getHeaderValue*(this: WxLocale; header: WxString;
                     domain: WxString = wxEmptyString): WxString {.noSideEffect,
    importcpp: "GetHeaderValue", header: "wx.h".}
proc createLanguagesDB*() {.importcpp: "wxLocale::CreateLanguagesDB(@)",
                            header: "wx.h".}
proc destroyLanguagesDB*() {.importcpp: "wxLocale::DestroyLanguagesDB(@)",
                             header: "wx.h".}
# ----------------------------------------------------------------------------
# global functions
# ----------------------------------------------------------------------------
# get the current locale object (note that it may be NULL!)

proc wxGetLocale*(): ptr WxLocale {.importcpp: "wxGetLocale(@)", header: "wx.h".}
