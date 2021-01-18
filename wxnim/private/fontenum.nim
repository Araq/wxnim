


type 
  WxFontEnumerator* {.importcpp: "wxFontEnumerator", header: wxh.} = object 
  

proc constructwxFontEnumerator*(): WxFontEnumerator {.cdecl, constructor, 
    importcpp: "wxFontEnumerator(@)", header: wxh.}
proc destroywxFontEnumerator*(this: var WxFontEnumerator) {.cdecl, 
    importcpp: "#.~wxFontEnumerator()", header: wxh.}
proc enumerateFacenames*(this: var WxFontEnumerator; 
                         encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                         fixedWidthOnly: bool = false): bool {.cdecl, 
    importcpp: "EnumerateFacenames", header: wxh.}
proc enumerateEncodings*(this: var WxFontEnumerator; 
                         facename: WxString = wxEmptyString): bool {.cdecl, 
    importcpp: "EnumerateEncodings", header: wxh.}
proc onFacename*(this: var WxFontEnumerator; facename: WxString): bool {.cdecl, 
    importcpp: "OnFacename", header: wxh.}
proc onFontEncoding*(this: var WxFontEnumerator; facename: WxString; 
                     encoding: WxString): bool {.cdecl, 
    importcpp: "OnFontEncoding", header: wxh.}
proc getFacenames*(encoding: WxFontEncoding = wxFONTENCODING_SYSTEM; 
                   fixedWidthOnly: bool = false): WxArrayString {.cdecl, 
    importcpp: "wxFontEnumerator::GetFacenames(@)", header: wxh.}
proc getEncodings*(facename: WxString = wxEmptyString): WxArrayString {.cdecl, 
    importcpp: "wxFontEnumerator::GetEncodings(@)", header: wxh.}
proc isValidFacename*(str: WxString): bool {.cdecl, 
    importcpp: "wxFontEnumerator::IsValidFacename(@)", header: wxh.}