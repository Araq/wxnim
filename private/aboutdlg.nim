


type 
  WxAboutDialogInfo* {.importcpp: "wxAboutDialogInfo", header: "<wx/wx.h>".} = object 
  

proc constructwxAboutDialogInfo*(): WxAboutDialogInfo {.cdecl, constructor, 
    importcpp: "wxAboutDialogInfo(@)", header: "<wx/wx.h>".}
proc setName*(this: var WxAboutDialogInfo; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc setVersion*(this: var WxAboutDialogInfo; version: WxString; 
                 longVersion: WxString = constructWxString()) {.cdecl, 
    importcpp: "SetVersion", header: "<wx/wx.h>".}
proc hasVersion*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasVersion", header: "<wx/wx.h>".}
proc getVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetVersion", header: "<wx/wx.h>".}
proc getLongVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLongVersion", header: "<wx/wx.h>".}
proc setDescription*(this: var WxAboutDialogInfo; desc: WxString) {.cdecl, 
    importcpp: "SetDescription", header: "<wx/wx.h>".}
proc hasDescription*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDescription", header: "<wx/wx.h>".}
proc getDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetDescription", header: "<wx/wx.h>".}
proc setCopyright*(this: var WxAboutDialogInfo; copyright: WxString) {.cdecl, 
    importcpp: "SetCopyright", header: "<wx/wx.h>".}
proc hasCopyright*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasCopyright", header: "<wx/wx.h>".}
proc getCopyright*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCopyright", header: "<wx/wx.h>".}
proc setLicence*(this: var WxAboutDialogInfo; licence: WxString) {.cdecl, 
    importcpp: "SetLicence", header: "<wx/wx.h>".}
proc setLicense*(this: var WxAboutDialogInfo; licence: WxString) {.cdecl, 
    importcpp: "SetLicense", header: "<wx/wx.h>".}
proc hasLicence*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasLicence", header: "<wx/wx.h>".}
proc getLicence*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLicence", header: "<wx/wx.h>".}
proc setIcon*(this: var WxAboutDialogInfo; icon: WxIcon) {.cdecl, 
    importcpp: "SetIcon", header: "<wx/wx.h>".}
proc hasIcon*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasIcon", header: "<wx/wx.h>".}
proc getIcon*(this: WxAboutDialogInfo): WxIcon {.noSideEffect, cdecl, 
    importcpp: "GetIcon", header: "<wx/wx.h>".}
proc setWebSite*(this: var WxAboutDialogInfo; url: WxString; 
                 desc: WxString = wxEmptyString) {.cdecl, 
    importcpp: "SetWebSite", header: "<wx/wx.h>".}
proc hasWebSite*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasWebSite", header: "<wx/wx.h>".}
proc getWebSiteURL*(this: WxAboutDialogInfo): WxString {.noSideEffect, cdecl, 
    importcpp: "GetWebSiteURL", header: "<wx/wx.h>".}
proc getWebSiteDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect, 
    cdecl, importcpp: "GetWebSiteDescription", header: "<wx/wx.h>".}
proc setDevelopers*(this: var WxAboutDialogInfo; developers: WxArrayString) {.
    cdecl, importcpp: "SetDevelopers", header: "<wx/wx.h>".}
proc addDeveloper*(this: var WxAboutDialogInfo; developer: WxString) {.cdecl, 
    importcpp: "AddDeveloper", header: "<wx/wx.h>".}
proc hasDevelopers*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDevelopers", header: "<wx/wx.h>".}
proc getDevelopers*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetDevelopers", header: "<wx/wx.h>".}
proc setDocWriters*(this: var WxAboutDialogInfo; docwriters: WxArrayString) {.
    cdecl, importcpp: "SetDocWriters", header: "<wx/wx.h>".}
proc addDocWriter*(this: var WxAboutDialogInfo; docwriter: WxString) {.cdecl, 
    importcpp: "AddDocWriter", header: "<wx/wx.h>".}
proc hasDocWriters*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasDocWriters", header: "<wx/wx.h>".}
proc getDocWriters*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetDocWriters", header: "<wx/wx.h>".}
proc setArtists*(this: var WxAboutDialogInfo; artists: WxArrayString) {.cdecl, 
    importcpp: "SetArtists", header: "<wx/wx.h>".}
proc addArtist*(this: var WxAboutDialogInfo; artist: WxString) {.cdecl, 
    importcpp: "AddArtist", header: "<wx/wx.h>".}
proc hasArtists*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasArtists", header: "<wx/wx.h>".}
proc getArtists*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, cdecl, 
    importcpp: "GetArtists", header: "<wx/wx.h>".}
proc setTranslators*(this: var WxAboutDialogInfo; translators: WxArrayString) {.
    cdecl, importcpp: "SetTranslators", header: "<wx/wx.h>".}
proc addTranslator*(this: var WxAboutDialogInfo; translator: WxString) {.cdecl, 
    importcpp: "AddTranslator", header: "<wx/wx.h>".}
proc hasTranslators*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "HasTranslators", header: "<wx/wx.h>".}
proc getTranslators*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetTranslators", header: "<wx/wx.h>".}
proc isSimple*(this: WxAboutDialogInfo): bool {.noSideEffect, cdecl, 
    importcpp: "IsSimple", header: "<wx/wx.h>".}
proc getDescriptionAndCredits*(this: WxAboutDialogInfo): WxString {.
    noSideEffect, cdecl, importcpp: "GetDescriptionAndCredits", 
    header: "<wx/wx.h>".}
proc getCopyrightToDisplay*(this: WxAboutDialogInfo): WxString {.noSideEffect, 
    cdecl, importcpp: "GetCopyrightToDisplay", header: "<wx/wx.h>".}

proc wxAboutBox*(info: WxAboutDialogInfo; parent: ptr WxWindow = nil) {.cdecl, 
    importcpp: "wxAboutBox(@)", header: "<wx/wx.h>".}