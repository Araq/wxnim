


type 
  WxFontEnumerator* {.importcpp: "wxFontEnumerator", header: "<wx/wx.h>".} = object 
  

proc constructwxFontEnumerator*(): WxFontEnumerator {.cdecl, constructor, 
    importcpp: "wxFontEnumerator(@)", header: "<wx/wx.h>".}
proc destroywxFontEnumerator*(this: var WxFontEnumerator) {.cdecl, 
    importcpp: "#.~wxFontEnumerator()", header: "<wx/wx.h>".}
proc enumerateFacenames*(this: var WxFontEnumerator; 
                         encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                         fixedWidthOnly: bool = false): bool {.cdecl, 
    importcpp: "EnumerateFacenames", header: "<wx/wx.h>".}
proc enumerateEncodings*(this: var WxFontEnumerator; 
                         facename: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "EnumerateEncodings", header: "<wx/wx.h>".}
proc onFacename*(this: var WxFontEnumerator; facename: WxString): bool {.cdecl, 
    importcpp: "OnFacename", header: "<wx/wx.h>".}
proc onFontEncoding*(this: var WxFontEnumerator; facename: WxString; 
                     encoding: WxString): bool {.cdecl, 
    importcpp: "OnFontEncoding", header: "<wx/wx.h>".}
proc getFacenames*(encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                   fixedWidthOnly: bool = false): WxArrayString {.cdecl, 
    importcpp: "wxFontEnumerator::GetFacenames(@)", header: "<wx/wx.h>".}
proc getEncodings*(facename: WxString = wxEmptyString): WxArrayString {.cdecl, 
    importcpp: "wxFontEnumerator::GetEncodings(@)", header: "<wx/wx.h>".}
proc isValidFacename*(str: WxString): bool {.cdecl, 
    importcpp: "wxFontEnumerator::IsValidFacename(@)", header: "<wx/wx.h>".}