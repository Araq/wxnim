#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/aboutdlg.h
# Purpose:     declaration of wxAboutDialog class
# Author:      Vadim Zeitlin
# Created:     2006-10-07
# Copyright:   (c) 2006 Vadim Zeitlin <vadim@wxwindows.org>
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxAboutDialogInfo: information shown by the standard "About" dialog
# ----------------------------------------------------------------------------

type
  WxAboutDialogInfo* {.importcpp: "wxAboutDialogInfo", header: "wx.h".} = object
    mName* {.importc: "m_name".}: WxString
    mVersion* {.importc: "m_version".}: WxString
    mLongVersion* {.importc: "m_longVersion".}: WxString
    mDescription* {.importc: "m_description".}: WxString
    mCopyright* {.importc: "m_copyright".}: WxString
    mLicence* {.importc: "m_licence".}: WxString
    mIcon* {.importc: "m_icon".}: WxIcon
    mUrl* {.importc: "m_url".}: WxString
    mUrlDesc* {.importc: "m_urlDesc".}: WxString
    mDevelopers* {.importc: "m_developers".}: WxArrayString
    mDocwriters* {.importc: "m_docwriters".}: WxArrayString
    mArtists* {.importc: "m_artists".}: WxArrayString
    mTranslators* {.importc: "m_translators".}: WxArrayString


proc constructwxAboutDialogInfo*(): WxAboutDialogInfo {.constructor,
    importcpp: "wxAboutDialogInfo(@)", header: "wx.h".}
proc setName*(this: var WxAboutDialogInfo; name: WxString) {.
    importcpp: "SetName", header: "wx.h".}
proc getName*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetName", header: "wx.h".}
proc setVersion*(this: var WxAboutDialogInfo; version: WxString;
                 longVersion: WxString = constructWxString()) {.
                 importcpp: "SetVersion",
    header: "wx.h".}
proc hasVersion*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasVersion", header: "wx.h".}
proc getVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetVersion", header: "wx.h".}
proc getLongVersion*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetLongVersion", header: "wx.h".}
proc setDescription*(this: var WxAboutDialogInfo; desc: WxString) {.
    importcpp: "SetDescription", header: "wx.h".}
proc hasDescription*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasDescription", header: "wx.h".}
proc getDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetDescription", header: "wx.h".}
proc setCopyright*(this: var WxAboutDialogInfo; copyright: WxString) {.
    importcpp: "SetCopyright", header: "wx.h".}
proc hasCopyright*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasCopyright", header: "wx.h".}
proc getCopyright*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetCopyright", header: "wx.h".}
proc setLicence*(this: var WxAboutDialogInfo; licence: WxString) {.
    importcpp: "SetLicence", header: "wx.h".}
proc setLicense*(this: var WxAboutDialogInfo; licence: WxString) {.
    importcpp: "SetLicense", header: "wx.h".}
proc hasLicence*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasLicence", header: "wx.h".}
proc getLicence*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetLicence", header: "wx.h".}
proc setIcon*(this: var WxAboutDialogInfo; icon: WxIcon) {.importcpp: "SetIcon",
    header: "wx.h".}
proc hasIcon*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasIcon", header: "wx.h".}
proc getIcon*(this: WxAboutDialogInfo): WxIcon {.noSideEffect,
    importcpp: "GetIcon", header: "wx.h".}
proc setWebSite*(this: var WxAboutDialogInfo; url: WxString;
                 desc: WxString = wxEmptyString) {.importcpp: "SetWebSite",
    header: "wx.h".}
proc hasWebSite*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasWebSite", header: "wx.h".}
proc getWebSiteURL*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetWebSiteURL", header: "wx.h".}
proc getWebSiteDescription*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetWebSiteDescription", header: "wx.h".}
proc setDevelopers*(this: var WxAboutDialogInfo; developers: WxArrayString) {.
    importcpp: "SetDevelopers", header: "wx.h".}
proc addDeveloper*(this: var WxAboutDialogInfo; developer: WxString) {.
    importcpp: "AddDeveloper", header: "wx.h".}
proc hasDevelopers*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasDevelopers", header: "wx.h".}
proc getDevelopers*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect,
    importcpp: "GetDevelopers", header: "wx.h".}
proc setDocWriters*(this: var WxAboutDialogInfo; docwriters: WxArrayString) {.
    importcpp: "SetDocWriters", header: "wx.h".}
proc addDocWriter*(this: var WxAboutDialogInfo; docwriter: WxString) {.
    importcpp: "AddDocWriter", header: "wx.h".}
proc hasDocWriters*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasDocWriters", header: "wx.h".}
proc getDocWriters*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect,
    importcpp: "GetDocWriters", header: "wx.h".}
proc setArtists*(this: var WxAboutDialogInfo; artists: WxArrayString) {.
    importcpp: "SetArtists", header: "wx.h".}
proc addArtist*(this: var WxAboutDialogInfo; artist: WxString) {.
    importcpp: "AddArtist", header: "wx.h".}
proc hasArtists*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasArtists", header: "wx.h".}
proc getArtists*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect,
    importcpp: "GetArtists", header: "wx.h".}
proc setTranslators*(this: var WxAboutDialogInfo; translators: WxArrayString) {.
    importcpp: "SetTranslators", header: "wx.h".}
proc addTranslator*(this: var WxAboutDialogInfo; translator: WxString) {.
    importcpp: "AddTranslator", header: "wx.h".}
proc hasTranslators*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "HasTranslators", header: "wx.h".}
proc getTranslators*(this: WxAboutDialogInfo): WxArrayString {.noSideEffect,
    importcpp: "GetTranslators", header: "wx.h".}
proc isSimple*(this: WxAboutDialogInfo): bool {.noSideEffect,
    importcpp: "IsSimple", header: "wx.h".}
proc getDescriptionAndCredits*(this: WxAboutDialogInfo): WxString {.
    noSideEffect, importcpp: "GetDescriptionAndCredits", header: "wx.h".}
proc getCopyrightToDisplay*(this: WxAboutDialogInfo): WxString {.noSideEffect,
    importcpp: "GetCopyrightToDisplay", header: "wx.h".}
# functions to show the about dialog box

proc wxAboutBox*(info: WxAboutDialogInfo; parent: ptr WxWindow = nil) {.
    importcpp: "wxAboutBox(@)", header: "wx.h".}
