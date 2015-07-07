


type 
  WxFSFile* {.importcpp: "wxFSFile", header: "wx.h".} = object 
  

discard "forward decl of wxWebView"
type 
  WxWebViewZoom* {.size: sizeof(cint), importcpp: "wxWebView::wxWebViewZoom", 
                   header: "wx.h".} = enum 
    wxWEBVIEW_ZOOM_TINY, wxWEBVIEW_ZOOM_SMALL, wxWEBVIEW_ZOOM_MEDIUM, 
    wxWEBVIEW_ZOOM_LARGE, wxWEBVIEW_ZOOM_LARGEST


type 
  WxWebViewZoomType* {.size: sizeof(cint), 
                       importcpp: "wxWebView::wxWebViewZoomType", header: "wx.h".} = enum 
    wxWEBVIEW_ZOOM_TYPE_LAYOUT, wxWEBVIEW_ZOOM_TYPE_TEXT


type 
  WxWebViewNavigationError* {.size: sizeof(cint), 
                              importcpp: "wxWebView::wxWebViewNavigationError", 
                              header: "wx.h".} = enum 
    wxWEBVIEW_NAV_ERR_CONNECTION, wxWEBVIEW_NAV_ERR_CERTIFICATE, 
    wxWEBVIEW_NAV_ERR_AUTH, wxWEBVIEW_NAV_ERR_SECURITY, 
    wxWEBVIEW_NAV_ERR_NOT_FOUND, wxWEBVIEW_NAV_ERR_REQUEST, 
    wxWEBVIEW_NAV_ERR_USER_CANCELLED, wxWEBVIEW_NAV_ERR_OTHER


type 
  WxWebViewReloadFlags* {.size: sizeof(cint), 
                          importcpp: "wxWebView::wxWebViewReloadFlags", 
                          header: "wx.h".} = enum 
    wxWEBVIEW_RELOAD_DEFAULT, wxWEBVIEW_RELOAD_NO_CACHE


type 
  WxWebViewFindFlags* {.size: sizeof(cint), 
                        importcpp: "wxWebView::wxWebViewFindFlags", 
                        header: "wx.h".} = enum 
    wxWEBVIEW_FIND_DEFAULT = 0, wxWEBVIEW_FIND_WRAP = 0x00000001, 
    wxWEBVIEW_FIND_ENTIRE_WORD = 0x00000002, 
    wxWEBVIEW_FIND_MATCH_CASE = 0x00000004, 
    wxWEBVIEW_FIND_HIGHLIGHT_RESULT = 0x00000008, 
    wxWEBVIEW_FIND_BACKWARDS = 0x00000010



type 
  WxWebViewHandler* {.importcpp: "wxWebViewHandler", header: "wx.h".} = object 
  

proc constructwxWebViewHandler*(scheme: WxString): WxWebViewHandler {.cdecl, 
    constructor, importcpp: "wxWebViewHandler(@)", header: "wx.h".}
proc destroywxWebViewHandler*(this: var WxWebViewHandler) {.cdecl, 
    importcpp: "#.~wxWebViewHandler()", header: "wx.h".}
proc getName*(this: WxWebViewHandler): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "wx.h".}
proc getFile*(this: var WxWebViewHandler; uri: WxString): ptr WxFSFile {.cdecl, 
    importcpp: "GetFile", header: "wx.h".}
type 
  WxWebViewFactory* {.importcpp: "wxWebViewFactory", header: "wx.h".} = object of WxObject
  

proc create*(this: var WxWebViewFactory): ptr WxWebView {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc create*(this: var WxWebViewFactory; parent: ptr WxWindow; id: WxWindowID; 
             url: WxString = constructWxString("about:blank"); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("wxWebView")): ptr WxWebView {.
    cdecl, importcpp: "Create", header: "wx.h".}

type 
  WxWebView* {.importcpp: "wxWebView", header: "wx.h".} = object of WxControl
  

proc constructwxWebView*(): WxWebView {.cdecl, constructor, 
                                        importcpp: "wxWebView(@)", 
                                        header: "wx.h".}
proc destroywxWebView*(this: var WxWebView) {.cdecl, 
    importcpp: "#.~wxWebView()", header: "wx.h".}
proc create*(this: var WxWebView; parent: ptr WxWindow; id: WxWindowID; 
             url: WxString = constructWxString("about:blank"); 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("wxWebView")): bool {.
    cdecl, importcpp: "Create", header: "wx.h".}
proc wxNew*(backend: WxString): ptr WxWebView {.cdecl, 
    importcpp: "wxWebView::New(@)", header: "wx.h".}
proc wxNew*(): ptr WxWebView {.cdecl, importcpp: "wxWebView::New(@)", 
                               header: "wx.h".}
proc wxNew*(parent: ptr WxWindow; id: WxWindowID; 
            url: WxString = constructWxString("about:blank"); 
            pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
            backend: WxString = constructWxString("wxWebViewWebKit"); 
            style: clong = 0; name: WxString = constructWxString("wxWebView")): ptr WxWebView {.
    cdecl, importcpp: "wxWebView::New(@)", header: "wx.h".}
proc enableContextMenu*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "EnableContextMenu", header: "wx.h".}
proc getCurrentTitle*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCurrentTitle", header: "wx.h".}
proc getCurrentURL*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetCurrentURL", header: "wx.h".}
proc getPageSource*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageSource", header: "wx.h".}
proc getPageText*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPageText", header: "wx.h".}
proc isBusy*(this: WxWebView): bool {.noSideEffect, cdecl, importcpp: "IsBusy", 
                                      header: "wx.h".}
proc isContextMenuEnabled*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "IsContextMenuEnabled", header: "wx.h".}
proc isEditable*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: "wx.h".}
proc loadURL*(this: var WxWebView; url: WxString) {.cdecl, importcpp: "LoadURL", 
    header: "wx.h".}
proc print*(this: var WxWebView) {.cdecl, importcpp: "Print", header: "wx.h".}
proc reload*(this: var WxWebView; 
             flags: WxWebViewReloadFlags = wxWEBVIEW_RELOAD_DEFAULT) {.cdecl, 
    importcpp: "Reload", header: "wx.h".}
proc runScript*(this: var WxWebView; javascript: WxString) {.cdecl, 
    importcpp: "RunScript", header: "wx.h".}
proc setEditable*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "SetEditable", header: "wx.h".}
proc setPage*(this: var WxWebView; html: WxString; baseUrl: WxString) {.cdecl, 
    importcpp: "SetPage", header: "wx.h".}
proc stop*(this: var WxWebView) {.cdecl, importcpp: "Stop", header: "wx.h".}
proc canGoBack*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "CanGoBack", header: "wx.h".}
proc canGoForward*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "CanGoForward", header: "wx.h".}
proc goBack*(this: var WxWebView) {.cdecl, importcpp: "GoBack", header: "wx.h".}
proc goForward*(this: var WxWebView) {.cdecl, importcpp: "GoForward", 
                                       header: "wx.h".}
proc clearHistory*(this: var WxWebView) {.cdecl, importcpp: "ClearHistory", 
    header: "wx.h".}
proc enableHistory*(this: var WxWebView; enable: bool = true) {.cdecl, 
    importcpp: "EnableHistory", header: "wx.h".}
proc canSetZoomType*(this: WxWebView; `type`: WxWebViewZoomType): bool {.
    noSideEffect, cdecl, importcpp: "CanSetZoomType", header: "wx.h".}
proc getZoom*(this: WxWebView): WxWebViewZoom {.noSideEffect, cdecl, 
    importcpp: "GetZoom", header: "wx.h".}
proc getZoomType*(this: WxWebView): WxWebViewZoomType {.noSideEffect, cdecl, 
    importcpp: "GetZoomType", header: "wx.h".}
proc setZoom*(this: var WxWebView; zoom: WxWebViewZoom) {.cdecl, 
    importcpp: "SetZoom", header: "wx.h".}
proc setZoomType*(this: var WxWebView; zoomType: WxWebViewZoomType) {.cdecl, 
    importcpp: "SetZoomType", header: "wx.h".}
proc selectAll*(this: var WxWebView) {.cdecl, importcpp: "SelectAll", 
                                       header: "wx.h".}
proc hasSelection*(this: WxWebView): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: "wx.h".}
proc deleteSelection*(this: var WxWebView) {.cdecl, 
    importcpp: "DeleteSelection", header: "wx.h".}
proc getSelectedText*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSelectedText", header: "wx.h".}
proc getSelectedSource*(this: WxWebView): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSelectedSource", header: "wx.h".}
proc clearSelection*(this: var WxWebView) {.cdecl, importcpp: "ClearSelection", 
    header: "wx.h".}
proc canCut*(this: WxWebView): bool {.noSideEffect, cdecl, importcpp: "CanCut", 
                                      header: "wx.h".}
proc canCopy*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanCopy", header: "wx.h".}
proc canPaste*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                        importcpp: "CanPaste", header: "wx.h".}
proc cut*(this: var WxWebView) {.cdecl, importcpp: "Cut", header: "wx.h".}
proc copy*(this: var WxWebView) {.cdecl, importcpp: "Copy", header: "wx.h".}
proc paste*(this: var WxWebView) {.cdecl, importcpp: "Paste", header: "wx.h".}
proc canUndo*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanUndo", header: "wx.h".}
proc canRedo*(this: WxWebView): bool {.noSideEffect, cdecl, 
                                       importcpp: "CanRedo", header: "wx.h".}
proc undo*(this: var WxWebView) {.cdecl, importcpp: "Undo", header: "wx.h".}
proc redo*(this: var WxWebView) {.cdecl, importcpp: "Redo", header: "wx.h".}
proc getNativeBackend*(this: WxWebView): pointer {.noSideEffect, cdecl, 
    importcpp: "GetNativeBackend", header: "wx.h".}
proc find*(this: var WxWebView; text: WxString; 
           flags: auto = wxWEBVIEW_FIND_DEFAULT): clong {.cdecl, 
    importcpp: "Find", header: "wx.h".}
type 
  WxWebViewEvent* {.importcpp: "wxWebViewEvent", header: "wx.h".} = object of WxNotifyEvent
  

proc constructwxWebViewEvent*(): WxWebViewEvent {.cdecl, constructor, 
    importcpp: "wxWebViewEvent(@)", header: "wx.h".}
proc constructwxWebViewEvent*(`type`: WxEventType; id: cint; url: WxString; 
                              target: WxString): WxWebViewEvent {.cdecl, 
    constructor, importcpp: "wxWebViewEvent(@)", header: "wx.h".}
proc getURL*(this: WxWebViewEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: "wx.h".}
proc getTarget*(this: WxWebViewEvent): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTarget", header: "wx.h".}
proc clone*(this: WxWebViewEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}
var wxEVT_WEBVIEW_NAVIGATING* {.importcpp: "wxEVT_WEBVIEW_NAVIGATING", 
                                header: "wx.h".}: WxEventTypeTag[WxWebViewEvent]

var wxEVT_WEBVIEW_NAVIGATED* {.importcpp: "wxEVT_WEBVIEW_NAVIGATED", 
                               header: "wx.h".}: WxEventTypeTag[WxWebViewEvent]

var wxEVT_WEBVIEW_LOADED* {.importcpp: "wxEVT_WEBVIEW_LOADED", header: "wx.h".}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_ERROR* {.importcpp: "wxEVT_WEBVIEW_ERROR", header: "wx.h".}: WxEventTypeTag[
    WxWebViewEvent]

var wxEVT_WEBVIEW_NEWWINDOW* {.importcpp: "wxEVT_WEBVIEW_NEWWINDOW", 
                               header: "wx.h".}: WxEventTypeTag[WxWebViewEvent]

var wxEVT_WEBVIEW_TITLE_CHANGED* {.importcpp: "wxEVT_WEBVIEW_TITLE_CHANGED", 
                                   header: "wx.h".}: WxEventTypeTag[
    WxWebViewEvent]

template wxWebViewEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxWebViewEventFunction, `func`)

template evt_Webview_Navigating*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NAVIGATING, id, wxWebViewEventHandler(fn))

template evt_Webview_Navigated*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NAVIGATED, id, wxWebViewEventHandler(fn))

template evt_Webview_Loaded*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_LOADED, id, wxWebViewEventHandler(fn))

template evt_Webview_Error*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_ERROR, id, wxWebViewEventHandler(fn))

template evt_Webview_Newwindow*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_NEWWINDOW, id, wxWebViewEventHandler(fn))

template evt_Webview_Title_Changed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_WEBVIEW_TITLE_CHANGED, id, wxWebViewEventHandler(fn))
