


type 
  WxFSFile* {.importcpp: "wxFSFile", header: wxh.} = object 
  

discard "forward decl of wxWebView"
type 
  WxWebViewZoom* {.size: sizeof(cint), importcpp: "wxWebView::wxWebViewZoom", 
                   header: wxh.} = enum 
    wxWEBVIEW_ZOOM_TINY, wxWEBVIEW_ZOOM_SMALL, wxWEBVIEW_ZOOM_MEDIUM, 
    wxWEBVIEW_ZOOM_LARGE, wxWEBVIEW_ZOOM_LARGEST


type 
  WxWebViewZoomType* {.size: sizeof(cint), 
                       importcpp: "wxWebView::wxWebViewZoomType", header: wxh.} = enum 
    wxWEBVIEW_ZOOM_TYPE_LAYOUT, wxWEBVIEW_ZOOM_TYPE_TEXT


type 
  WxWebViewNavigationError* {.size: sizeof(cint), 
                              importcpp: "wxWebView::wxWebViewNavigationError", 
                              header: wxh.} = enum 
    wxWEBVIEW_NAV_ERR_CONNECTION, wxWEBVIEW_NAV_ERR_CERTIFICATE, 
    wxWEBVIEW_NAV_ERR_AUTH, wxWEBVIEW_NAV_ERR_SECURITY, 
    wxWEBVIEW_NAV_ERR_NOT_FOUND, wxWEBVIEW_NAV_ERR_REQUEST, 
    wxWEBVIEW_NAV_ERR_USER_CANCELLED, wxWEBVIEW_NAV_ERR_OTHER


type 
  WxWebViewReloadFlags* {.size: sizeof(cint), 
                          importcpp: "wxWebView::wxWebViewReloadFlags", 
                          header: wxh.} = enum 
    wxWEBVIEW_RELOAD_DEFAULT, wxWEBVIEW_RELOAD_NO_CACHE


type 
  WxWebViewFindFlags* {.size: sizeof(cint), 
                        importcpp: "wxWebView::wxWebViewFindFlags", header: wxh.} = enum 
    wxWEBVIEW_FIND_DEFAULT = 0, wxWEBVIEW_FIND_WRAP = 0x00000001, 
    wxWEBVIEW_FIND_ENTIRE_WORD = 0x00000002, 
    wxWEBVIEW_FIND_MATCH_CASE = 0x00000004, 
    wxWEBVIEW_FIND_HIGHLIGHT_RESULT = 0x00000008, 
    wxWEBVIEW_FIND_BACKWARDS = 0x00000010



type 
  WxWebViewHandler* {.importcpp: "wxWebViewHandler", header: wxh.} = object 
  

proc constructwxWebViewHandler*(scheme: WxString): WxWebViewHandler {.cdecl, 
    constructor, importcpp: "wxWebViewHandler(@)", header: wxh.}
proc destroywxWebViewHandler*(this: var WxWebViewHandler) {.cdecl, 
    importcpp: "#.~wxWebViewHandler()", header: wxh.}
proc getName*(this: WxWebViewHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc getFile*(this: var WxWebViewHandler; uri: WxString): ptr WxFSFile {.cdecl, 
    importcpp: "GetFile", header: wxh.}
type 
  WxWebViewFactory* {.importcpp: "wxWebViewFactory", header: wxh.} = object of WxObject
  

proc create*(this: var WxWebViewFactory): ptr WxWebView {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxWebViewFactory; parent: ptr WxWindow; id: WxWindowID; 
             url: WxString = constructWxString("about:blank"); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("wxWebView")): ptr WxWebView {.
    cdecl, importcpp: "Create", header: wxh.}

type 
  WxWebView* {.importcpp: "wxWebView", header: wxh.} = object of WxControl
  

proc constructwxWebView*(): WxWebView {.cdecl, constructor, 
                                        importcpp: "wxWebView(@)", header: wxh.}
proc destroywxWebView*(this: var WxWebView) {.cdecl, 
    importcpp: "#.~wxWebView()", header: wxh.}
proc create*(this: var WxWebView; parent: ptr WxWindow; id: WxWindowID; 
             url: WxString = constructWxString("about:blank"); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("wxWebView")): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc wxNew*(backend: WxString): ptr WxWebView {.cdecl, 
    importcpp: "wxWebView::New(@)", header: wxh.}
proc wxNew*(): ptr WxWebView {.cdecl, importcpp: "wxWebView::New(@)", 
                               header: wxh.}
proc wxNew*(parent: ptr WxWindow; id: WxWindowID; 
            url: WxString = constructWxString("about:blank"); 
            pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
            backend: WxString = constructWxString("wxWebViewWebKit"); 
            style: clong = 0; name: WxString = constructWxString("wxWebView")): ptr WxWebView {.
    cdecl, importcpp: "wxWebView::New(@)", header: wxh.}
proc enableContextMenu*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "EnableContextMenu", header: wxh.}
proc getCurrentTitle*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCurrentTitle", header: wxh.}
proc getCurrentURL*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCurrentURL", header: wxh.}
proc getPageSource*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageSource", header: wxh.}
proc getPageText*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageText", header: wxh.}
proc isBusy*(this: WxWebView): bool {.noSideEffect, cdecl, importcpp: "IsBusy", 
                                      header: wxh.}
proc isContextMenuEnabled*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "IsContextMenuEnabled", header: wxh.}
proc isEditable*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: wxh.}
proc loadURL*(this: var WxWebView; url: WxString) {.cdecl, importcpp: "LoadURL", 
    header: wxh.}
proc print*(this: var WxWebView) {.cdecl, importcpp: "Print", header: wxh.}
proc reload*(this: var WxWebView; 
             flags: WxWebViewReloadFlags = wxWEBVIEW_RELOAD_DEFAULT) {.cdecl, 
    importcpp: "Reload", header: wxh.}
proc runScript*(this: var WxWebView; javascript: WxString) {.cdecl, 
    importcpp: "RunScript", header: wxh.}
proc setEditable*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "SetEditable", header: wxh.}
proc setPage*(this: var WxWebView; html: WxString; baseUrl: WxString) {.cdecl, 
    importcpp: "SetPage", header: wxh.}
proc stop*(this: var WxWebView) {.cdecl, importcpp: "Stop", header: wxh.}
proc canGoBack*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "CanGoBack", header: wxh.}
proc canGoForward*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "CanGoForward", header: wxh.}
proc goBack*(this: var WxWebView) {.cdecl, importcpp: "GoBack", header: wxh.}
proc goForward*(this: var WxWebView) {.cdecl, importcpp: "GoForward", 
                                       header: wxh.}
proc clearHistory*(this: var WxWebView) {.cdecl, importcpp: "ClearHistory", 
    header: wxh.}
proc enableHistory*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "EnableHistory", header: wxh.}
proc canSetZoomType*(this: WxWebView; `type`: WxWebViewZoomType): bool {.
    noSideEffect, cdecl, importcpp: "CanSetZoomType", header: wxh.}
proc getZoom*(this: WxWebView): WxWebViewZoom {.noSideEffect, cdecl, 
    importcpp: "GetZoom", header: wxh.}
proc getZoomType*(this: WxWebView): WxWebViewZoomType {.noSideEffect, cdecl, 
    importcpp: "GetZoomType", header: wxh.}
proc setZoom*(this: var WxWebView; zoom: WxWebViewZoom) {.cdecl, 
    importcpp: "SetZoom", header: wxh.}
proc setZoomType*(this: var WxWebView; zoomType: WxWebViewZoomType) {.cdecl, 
    importcpp: "SetZoomType", header: wxh.}
proc selectAll*(this: var WxWebView) {.cdecl, importcpp: "SelectAll", 
                                       header: wxh.}
proc hasSelection*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: wxh.}
proc deleteSelection*(this: var WxWebView) {.cdecl, 
    importcpp: "DeleteSelection", header: wxh.}
proc getSelectedText*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSelectedText", header: wxh.}
proc getSelectedSource*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSelectedSource", header: wxh.}
proc clearSelection*(this: var WxWebView) {.cdecl, importcpp: "ClearSelection", 
    header: wxh.}
proc canCut*(this: WxWebView): bool {.noSideEffect, cdecl, importcpp: "CanCut", 
                                      header: wxh.}
proc canCopy*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanCopy", header: wxh.}
proc canPaste*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                        importcpp: "CanPaste", header: wxh.}
proc cut*(this: var WxWebView) {.cdecl, importcpp: "Cut", header: wxh.}
proc copy*(this: var WxWebView) {.cdecl, importcpp: "Copy", header: wxh.}
proc paste*(this: var WxWebView) {.cdecl, importcpp: "Paste", header: wxh.}
proc canUndo*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanUndo", header: wxh.}
proc canRedo*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanRedo", header: wxh.}
proc undo*(this: var WxWebView) {.cdecl, importcpp: "Undo", header: wxh.}
proc redo*(this: var WxWebView) {.cdecl, importcpp: "Redo", header: wxh.}
proc getNativeBackend*(this: WxWebView): pointer {.noSideEffect, cdecl, 
    importcpp: "GetNativeBackend", header: wxh.}
proc find*(this: var WxWebView; text: WxString; flags = wxWEBVIEW_FIND_DEFAULT): clong {.
    cdecl, importcpp: "Find", header: wxh.}
type 
  WxWebViewEvent* {.importcpp: "wxWebViewEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxWebViewEvent*(): WxWebViewEvent {.cdecl, constructor, 
    importcpp: "wxWebViewEvent(@)", header: wxh.}
proc constructwxWebViewEvent*(`type`: WxEventType; id: cint; url: WxString; 
                              target: WxString): WxWebViewEvent {.cdecl, 
    constructor, importcpp: "wxWebViewEvent(@)", header: wxh.}
proc getURL*(this: WxWebViewEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: wxh.}
proc getTarget*(this: WxWebViewEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTarget", header: wxh.}
proc clone*(this: WxWebViewEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
var wxEVT_WEBVIEW_NAVIGATING* {.importcpp: "wxEVT_WEBVIEW_NAVIGATING", 
                                header: wxh.}: WxEventTypeTag[WxWebViewEvent]

var wxEVT_WEBVIEW_NAVIGATED* {.importcpp: "wxEVT_WEBVIEW_NAVIGATED", header: wxh.}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_LOADED* {.importcpp: "wxEVT_WEBVIEW_LOADED", header: wxh.}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_ERROR* {.importcpp: "wxEVT_WEBVIEW_ERROR", header: wxh.}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_NEWWINDOW* {.importcpp: "wxEVT_WEBVIEW_NEWWINDOW", header: wxh.}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_TITLE_CHANGED* {.importcpp: "wxEVT_WEBVIEW_TITLE_CHANGED", 
                                   header: wxh.}: WxEventTypeTag[WxWebViewEvent]

template wxWebViewEventHandler*(`func`: untyped): untyped = 
  wxEVENT_HANDLER_CAST(wxWebViewEventFunction, `func`)

template evt_Webview_Navigating*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NAVIGATING, id, wxWebViewEventHandler(fn))

template evt_Webview_Navigated*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NAVIGATED, id, wxWebViewEventHandler(fn))

template evt_Webview_Loaded*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_LOADED, id, wxWebViewEventHandler(fn))

template evt_Webview_Error*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_ERROR, id, wxWebViewEventHandler(fn))

template evt_Webview_Newwindow*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NEWWINDOW, id, wxWebViewEventHandler(fn))

template evt_Webview_Title_Changed*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_TITLE_CHANGED, id, wxWebViewEventHandler(fn))
