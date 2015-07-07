#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/string.h
# Purpose:     wxString class
# Author:      Vadim Zeitlin
# Modified by:
# Created:     29/01/98
# Copyright:   (c) 1998 Vadim Zeitlin <zeitlin@dptmaths.ens-cachan.fr>
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////
#
#    Efficient string class [more or less] compatible with MFC CString,
#    wxWidgets version 1 wxString and std::string and some handy functions
#    missing from string.h.
#

type
  WxString* {.importcpp: "wxString", header: "wx.h".} = object
  WxUniChar* {.importcpp: "wxString", header: "wx.h".} = object
  WxCStrData* {.importcpp: "wxString", header: "wx.h".} = object

proc constructwxString*(): WxString {.constructor, importcpp: "wxString(@)",
                                      header: "wx.h".}
proc constructwxString*(stringSrc: WxString): WxString {.constructor,
    importcpp: "wxString(@)", header: "wx.h".}
proc constructwxString*(psz: cstring): WxString {.constructor,
    importcpp: "wxString(@)", header: "wx.h".}
proc constructwxString*(psz: cstring; nLength: csize): WxString {.constructor,
    importcpp: "wxString(@)", header: "wx.h".}
proc clone*(this: WxString): WxString {.noSideEffect, importcpp: "Clone",
                                        header: "wx.h".}
proc length*(this: WxString): csize {.noSideEffect, importcpp: "length",
                                      header: "wx.h".}
proc empty*(this: WxString): bool {.noSideEffect, importcpp: "empty",
                                    header: "wx.h".}
proc substr*(this: WxString; nStart: csize = 0; nLen: csize = -1): WxString {.
    noSideEffect, importcpp: "substr", header: "wx.h".}
proc len*(this: WxString): csize {.noSideEffect, importcpp: "Len",
                                   header: "wx.h".}
proc isEmpty*(this: WxString): bool {.noSideEffect, importcpp: "IsEmpty",
                                      header: "wx.h".}
proc truncate*(this: var WxString; uiLen: csize): var WxString {.
    importcpp: "Truncate", header: "wx.h".}
proc clear*(this: var WxString) {.importcpp: "Clear", header: "wx.h".}
proc isAscii*(this: WxString): bool {.noSideEffect, importcpp: "IsAscii",
                                      header: "wx.h".}
proc isNumber*(this: WxString): bool {.noSideEffect, importcpp: "IsNumber",
                                       header: "wx.h".}
proc isWord*(this: WxString): bool {.noSideEffect, importcpp: "IsWord",
                                     header: "wx.h".}
proc at*(this: WxString; n: csize): WxUniChar {.noSideEffect, importcpp: "at",
    header: "wx.h".}
proc getChar*(this: WxString; n: csize): WxUniChar {.noSideEffect,
    importcpp: "GetChar", header: "wx.h".}

proc setChar*(this: var WxString; n: csize; ch: WxUniChar) {.
    importcpp: "SetChar", header: "wx.h".}
proc last*(this: WxString): WxUniChar {.noSideEffect, importcpp: "Last",
                                        header: "wx.h".}

proc `[]`*(this: WxString; n: int): WxUniChar {.noSideEffect,
    importcpp: "#[@]", header: "wx.h".}

proc cStr*(this: WxString): WxCStrData {.noSideEffect, importcpp: "c_str",
    header: "wx.h".}
proc data*(this: WxString): WxCStrData {.noSideEffect, importcpp: "data",
    header: "wx.h".}

proc getData*(this: WxString): WxCStrData {.noSideEffect, importcpp: "GetData",
    header: "wx.h".}
proc fromAscii*(ascii: ptr cuchar): WxString {.
    importcpp: "wxString::FromAscii(@)", header: "wx.h".}
proc fromAscii*(ascii: ptr cuchar; len: csize): WxString {.
    importcpp: "wxString::FromAscii(@)", header: "wx.h".}
proc fromUTF8Unchecked*(utf8: cstring): WxString {.
    importcpp: "wxString::FromUTF8Unchecked(@)", header: "wx.h".}
proc fromUTF8Unchecked*(utf8: cstring; len: csize): WxString {.
    importcpp: "wxString::FromUTF8Unchecked(@)", header: "wx.h".}
proc fromUTF8*(utf8: cstring): WxString {.importcpp: "wxString::FromUTF8(@)",
    header: "wx.h".}
proc fromUTF8*(utf8: cstring; len: csize): WxString {.
    importcpp: "wxString::FromUTF8(@)", header: "wx.h".}
proc utf8Length*(this: WxString): csize {.noSideEffect,
    importcpp: "utf8_length", header: "wx.h".}

proc from8BitData*(data: cstring; len: csize): WxString {.
    importcpp: "wxString::From8BitData(@)", header: "wx.h".}
proc from8BitData*(data: cstring): WxString {.
    importcpp: "wxString::From8BitData(@)", header: "wx.h".}
# AsChar() and AsWChar() implementations simply forward to wxString methods

#proc wxCStrData_AsChar*(): cstring {.inline, noSideEffect.}

proc asCString*(this: WxCStrData): cstring {.noSideEffect, importcpp: "AsChar",
  header: "wx.h".}
