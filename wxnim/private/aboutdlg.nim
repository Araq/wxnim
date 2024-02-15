


type 
  WxAboutDialogInfo* {.importcpp: "wxAboutDialogInfo", header: wxh.} = object 
  

proc constructwxAboutDialogInfo*(): WxAboutDialogInfo {.cdecl, constructor, 
    importcpp: "wxAboutDialogInfo(@)", header: wxh.}
proc setName*(this: var WxAboutDialogInfo; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setVersion*(this: var WxAboutDialogInfo; version: WxString; 
                 longVersion: WxString = constructWxString()) {.cdecl, 
    importcpp: "SetVersion", header: wxh.}
proc hasVersion*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasVersion", header: wxh.}
proc getVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetVersion", header: wxh.}
proc getLongVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLongVersion", header: wxh.}
proc setDescription*(this: var WxAboutDialogInfo; desc: WxString) {.cdecl, 
    importcpp: "SetDescription", header: wxh.}
proc hasDescription*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDescription", header: wxh.}
proc getDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetDescription", header: wxh.}
proc setCopyright*(this: var WxAboutDialogInfo; copyright: WxString) {.cdecl, 
    importcpp: "SetCopyright", header: wxh.}
proc hasCopyright*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasCopyright", header: wxh.}
proc getCopyright*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCopyright", header: wxh.}
proc setLicence*(this: var WxAboutDialogInfo; licence: WxString) {.cdecl, 
    importcpp: "SetLicence", header: wxh.}
proc setLicense*(this: var WxAboutDialogInfo; licence: WxString) {.cdecl, 
    importcpp: "SetLicense", header: wxh.}
proc hasLicence*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasLicence", header: wxh.}
proc getLicence*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLicence", header: wxh.}
proc setIcon*(this: var WxAboutDialogInfo; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: wxh.}
proc hasIcon*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasIcon", header: wxh.}
proc getIcon*(this: WxAboutDialogInfo): WxIcon {.noSideEffect, cdecl, 
    importcpp: "GetIcon", header: wxh.}
proc setWebSite*(this: var WxAboutDialogInfo; url: WxString; 
                 desc: WxString = wxEmptyString) {.cdecl, 
    importcpp: "SetWebSite", header: wxh.}
proc hasWebSite*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasWebSite", header: wxh.}
proc getWebSiteURL*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetWebSiteURL", header: wxh.}
proc getWebSiteDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect, 
    cdecl, importcpp: "GetWebSiteDescription", header: wxh.}
proc setDevelopers*(this: var WxAboutDialogInfo; developers: WxArrayString) {.
    cdecl, importcpp: "SetDevelopers", header: wxh.}
proc addDeveloper*(this: var WxAboutDialogInfo; developer: WxString) {.cdecl, 
    importcpp: "AddDeveloper", header: wxh.}
proc hasDevelopers*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDevelopers", header: wxh.}
proc getDevelopers*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetDevelopers", header: wxh.}
proc setDocWriters*(this: var WxAboutDialogInfo; docwriters: WxArrayString) {.
    cdecl, importcpp: "SetDocWriters", header: wxh.}
proc addDocWriter*(this: var WxAboutDialogInfo; docwriter: WxString) {.cdecl, 
    importcpp: "AddDocWriter", header: wxh.}
proc hasDocWriters*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDocWriters", header: wxh.}
proc getDocWriters*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetDocWriters", header: wxh.}
proc setArtists*(this: var WxAboutDialogInfo; artists: WxArrayString) {.cdecl, 
    importcpp: "SetArtists", header: wxh.}
proc addArtist*(this: var WxAboutDialogInfo; artist: WxString) {.cdecl, 
    importcpp: "AddArtist", header: wxh.}
proc hasArtists*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasArtists", header: wxh.}
proc getArtists*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, cdecl, 
    importcpp: "GetArtists", header: wxh.}
proc setTranslators*(this: var WxAboutDialogInfo; translators: WxArrayString) {.
    cdecl, importcpp: "SetTranslators", header: wxh.}
proc addTranslator*(this: var WxAboutDialogInfo; translator: WxString) {.cdecl, 
    importcpp: "AddTranslator", header: wxh.}
proc hasTranslators*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasTranslators", header: wxh.}
proc getTranslators*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetTranslators", header: wxh.}
proc isSimple*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsSimple", header: wxh.}
proc getDescriptionAndCredits*(this: WxAboutDialogInfo): WxString {.
    noSideEffect, cdecl, importcpp: "GetDescriptionAndCredits", header: wxh.}
proc getCopyrightToDisplay*(this: WxAboutDialogInfo): WxString {.noSideEffect, 
    cdecl, importcpp: "GetCopyrightToDisplay", header: wxh.}

proc wxAboutBox*(info: WxAboutDialogInfo; parent: ptr WxWindow = nil) {.cdecl, 
    importcpp: "wxAboutBox(@)", header: wxh.}