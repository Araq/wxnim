#///////////////////////////////////////////////////////////////////////////
# Name:        wx/fontenum.h
# Purpose:     wxFontEnumerator class for getting available fonts
# Author:      Julian Smart, Vadim Zeitlin
# Modified by: extended to enumerate more than just font facenames and works
#              not only on Windows now (VZ)
# Created:     04/01/98
# Copyright:   (c) Julian Smart, Vadim Zeitlin
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxFontEnumerator enumerates all available fonts on the system or only the
# fonts with given attributes
# ----------------------------------------------------------------------------

type 
  WxFontEnumerator* {.importcpp: "wxFontEnumerator", header: "wx.h".} = object 
  

proc constructwxFontEnumerator*(): WxFontEnumerator {.constructor, 
    importcpp: "wxFontEnumerator(@)", header: "wx.h".}
proc destroywxFontEnumerator*(this: var WxFontEnumerator) {.
    importcpp: "#.~wxFontEnumerator()", header: "wx.h".}
proc enumerateFacenames*(this: var WxFontEnumerator; 
                         encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                         fixedWidthOnly: bool = false): bool {.
    importcpp: "EnumerateFacenames", header: "wx.h".}
  # all
proc enumerateEncodings*(this: var WxFontEnumerator; 
                         facename: WxString = wxEmptyString): bool {.
    importcpp: "EnumerateEncodings", header: "wx.h".}
proc onFacename*(this: var WxFontEnumerator; facename: WxString): bool {.
    importcpp: "OnFacename", header: "wx.h".}
proc onFontEncoding*(this: var WxFontEnumerator; facename: WxString; 
                     encoding: WxString): bool {.importcpp: "OnFontEncoding", 
    header: "wx.h".}
proc getFacenames*(encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                   fixedWidthOnly: bool = false): WxArrayString {.
    importcpp: "wxFontEnumerator::GetFacenames(@)", header: "wx.h".}
  # all
proc getEncodings*(facename: WxString = wxEmptyString): WxArrayString {.
    importcpp: "wxFontEnumerator::GetEncodings(@)", header: "wx.h".}
proc isValidFacename*(str: WxString): bool {.
    importcpp: "wxFontEnumerator::IsValidFacename(@)", header: "wx.h".}