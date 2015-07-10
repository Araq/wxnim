


discard "forward decl of wxAppConsole"
discard "forward decl of wxAppTraits"
discard "forward decl of wxCmdLineParser"
discard "forward decl of wxEventLoopBase"
discard "forward decl of wxMessageOutput"
discard "forward decl of wxVideoMode"
discard "forward decl of wxWindow"

type 
  WxAppInitializerFunction* = proc (): ptr WxAppConsole {.cdecl.}


const 
  wxPRINT_WINDOWS* = 1
  wxPRINT_POSTSCRIPT* = 2


type 
  WxEventLoopBase* {.importcpp: "wxEventLoopBase", header: "<wx/wx.h>", 
                     inheritable.} = object 
  
  WxEvtHandlerArray* {.importcpp: "wxEvtHandlerArray", header: "<wx/wx.h>".} = object 
  
  WxVideoMode* {.importcpp: "wxVideoMode", header: "<wx/wx.h>".} = object 
  
  WxAppConsoleBase* {.importcpp: "wxAppConsoleBase", header: "<wx/wx.h>".} = object of WxEvtHandler
    argc* {.importc: "argc".}: cint
    argv* {.importc: "argv".}: cstringArray
  

proc constructwxAppConsoleBase*(): WxAppConsoleBase {.cdecl, constructor, 
    importcpp: "wxAppConsoleBase(@)", header: "<wx/wx.h>".}
proc destroywxAppConsoleBase*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "#.~wxAppConsoleBase()", header: "<wx/wx.h>".}
proc initialize*(this: var WxAppConsoleBase; argc: var cint; 
                 argv: ptr ptr WxChar): bool {.cdecl, importcpp: "Initialize", 
    header: "<wx/wx.h>".}
proc callOnInit*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "CallOnInit", header: "<wx/wx.h>".}
proc onInit*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "OnInit", 
    header: "<wx/wx.h>".}
proc onRun*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnRun", 
    header: "<wx/wx.h>".}
proc onLaunched*(this: var WxAppConsoleBase) {.cdecl, importcpp: "OnLaunched", 
    header: "<wx/wx.h>".}
proc onEventLoopEnter*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopEnter", header: "<wx/wx.h>".}
proc onExit*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnExit", 
    header: "<wx/wx.h>".}
proc onEventLoopExit*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopExit", header: "<wx/wx.h>".}
proc cleanUp*(this: var WxAppConsoleBase) {.cdecl, importcpp: "CleanUp", 
    header: "<wx/wx.h>".}
proc onFatalException*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "OnFatalException", header: "<wx/wx.h>".}
proc exit*(this: var WxAppConsoleBase) {.cdecl, importcpp: "Exit", 
    header: "<wx/wx.h>".}
proc getAppName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppName", header: "<wx/wx.h>".}
proc setAppName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppName", header: "<wx/wx.h>".}
proc getAppDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppDisplayName", header: "<wx/wx.h>".}
proc setAppDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppDisplayName", header: "<wx/wx.h>".}
proc getClassName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetClassName", header: "<wx/wx.h>".}
proc setClassName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetClassName", header: "<wx/wx.h>".}
proc getVendorName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetVendorName", header: "<wx/wx.h>".}
proc setVendorName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorName", header: "<wx/wx.h>".}
proc getVendorDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetVendorDisplayName", header: "<wx/wx.h>".}
proc setVendorDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorDisplayName", header: "<wx/wx.h>".}
proc getMainLoop*(this: WxAppConsoleBase): ptr WxEventLoopBase {.noSideEffect, 
    cdecl, importcpp: "GetMainLoop", header: "<wx/wx.h>".}
proc setCLocale*(this: var WxAppConsoleBase) {.cdecl, importcpp: "SetCLocale", 
    header: "<wx/wx.h>".}
proc filterEvent*(this: var WxAppConsoleBase; event: var WxEvent): cint {.cdecl, 
    importcpp: "FilterEvent", header: "<wx/wx.h>".}
proc isMainLoopRunning*(): bool {.cdecl, importcpp: "wxAppConsoleBase::IsMainLoopRunning(@)", 
                                  header: "<wx/wx.h>".}
proc processPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ProcessPendingEvents", header: "<wx/wx.h>".}
proc hasPendingEvents*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasPendingEvents", header: "<wx/wx.h>".}
proc suspendProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "SuspendProcessingOfPendingEvents", header: "<wx/wx.h>".}
proc resumeProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ResumeProcessingOfPendingEvents", header: "<wx/wx.h>".}
proc removePendingEventHandler*(this: var WxAppConsoleBase; 
                                toRemove: ptr WxEvtHandler) {.cdecl, 
    importcpp: "RemovePendingEventHandler", header: "<wx/wx.h>".}
proc appendPendingEventHandler*(this: var WxAppConsoleBase; 
                                toAppend: ptr WxEvtHandler) {.cdecl, 
    importcpp: "AppendPendingEventHandler", header: "<wx/wx.h>".}
proc delayPendingEventHandler*(this: var WxAppConsoleBase; 
                               toDelay: ptr WxEvtHandler) {.cdecl, 
    importcpp: "DelayPendingEventHandler", header: "<wx/wx.h>".}
proc deletePendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "DeletePendingEvents", header: "<wx/wx.h>".}
proc scheduleForDestruction*(this: var WxAppConsoleBase; `object`: ptr WxObject) {.
    cdecl, importcpp: "ScheduleForDestruction", header: "<wx/wx.h>".}
proc isScheduledForDestruction*(this: WxAppConsoleBase; `object`: ptr WxObject): bool {.
    noSideEffect, cdecl, importcpp: "IsScheduledForDestruction", 
    header: "<wx/wx.h>".}
proc pending*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Pending", 
    header: "<wx/wx.h>".}
proc dispatch*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Dispatch", 
    header: "<wx/wx.h>".}
proc mainLoop*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "MainLoop", 
    header: "<wx/wx.h>".}
proc exitMainLoop*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ExitMainLoop", header: "<wx/wx.h>".}
proc `yield`*(this: var WxAppConsoleBase; onlyIfNeeded: bool = false): bool {.
    cdecl, importcpp: "Yield", header: "<wx/wx.h>".}
proc wakeUpIdle*(this: var WxAppConsoleBase) {.cdecl, importcpp: "WakeUpIdle", 
    header: "<wx/wx.h>".}
proc processIdle*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "ProcessIdle", header: "<wx/wx.h>".}
proc usesEventLoop*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: "<wx/wx.h>".}
proc onAssertFailure*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
                      `func`: ptr WxChar; cond: ptr WxChar; msg: ptr WxChar) {.
    cdecl, importcpp: "OnAssertFailure", header: "<wx/wx.h>".}
proc onAssert*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
               cond: ptr WxChar; msg: ptr WxChar) {.cdecl, 
    importcpp: "OnAssert", header: "<wx/wx.h>".}
proc checkBuildOptions*(optionsSignature: cstring; componentName: cstring): bool {.
    cdecl, importcpp: "wxAppConsoleBase::CheckBuildOptions(@)", 
    header: "<wx/wx.h>".}
proc setInitializerFunction*(fn: WxAppInitializerFunction) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInitializerFunction(@)", 
    header: "<wx/wx.h>".}
proc getInitializerFunction*(): WxAppInitializerFunction {.cdecl, 
    importcpp: "wxAppConsoleBase::GetInitializerFunction(@)", 
    header: "<wx/wx.h>".}
proc getInstance*(): ptr WxAppConsole {.cdecl, importcpp: "wxAppConsoleBase::GetInstance(@)", 
                                        header: "<wx/wx.h>".}
proc setInstance*(app: ptr WxAppConsole) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInstance(@)", header: "<wx/wx.h>".}

type 
  WxAppConsole* {.importcpp: "wxAppConsole", header: "<wx/wx.h>".} = object of WxAppConsoleBase
  


type 
  WxAppBase* {.importcpp: "wxAppBase", header: "<wx/wx.h>".} = object of WxAppConsole
  

proc constructwxAppBase*(): WxAppBase {.cdecl, constructor, 
                                        importcpp: "wxAppBase(@)", 
                                        header: "<wx/wx.h>".}
proc destroywxAppBase*(this: var WxAppBase) {.cdecl, 
    importcpp: "#.~wxAppBase()", header: "<wx/wx.h>".}
proc initialize*(this: var WxAppBase; argc: var cint; argv: ptr ptr WxChar): bool {.
    cdecl, importcpp: "Initialize", header: "<wx/wx.h>".}
proc onInitGui*(this: var WxAppBase): bool {.cdecl, importcpp: "OnInitGui", 
    header: "<wx/wx.h>".}
proc onRun*(this: var WxAppBase): cint {.cdecl, importcpp: "OnRun", 
    header: "<wx/wx.h>".}
proc onExit*(this: var WxAppBase): cint {.cdecl, importcpp: "OnExit", 
    header: "<wx/wx.h>".}
proc cleanUp*(this: var WxAppBase) {.cdecl, importcpp: "CleanUp", 
                                     header: "<wx/wx.h>".}
proc safeYield*(this: var WxAppBase; win: ptr WxWindow; onlyIfNeeded: bool): bool {.
    cdecl, importcpp: "SafeYield", header: "<wx/wx.h>".}
proc safeYieldFor*(this: var WxAppBase; win: ptr WxWindow; 
                   eventsToProcess: clong): bool {.cdecl, 
    importcpp: "SafeYieldFor", header: "<wx/wx.h>".}
proc processIdle*(this: var WxAppBase): bool {.cdecl, importcpp: "ProcessIdle", 
    header: "<wx/wx.h>".}
proc usesEventLoop*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: "<wx/wx.h>".}
proc isActive*(this: WxAppBase): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsActive", 
                                        header: "<wx/wx.h>".}
proc setTopWindow*(this: var WxAppBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetTopWindow", header: "<wx/wx.h>".}
proc getTopWindow*(this: WxAppBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetTopWindow", header: "<wx/wx.h>".}
proc setExitOnFrameDelete*(this: var WxAppBase; flag: bool) {.cdecl, 
    importcpp: "SetExitOnFrameDelete", header: "<wx/wx.h>".}
proc getExitOnFrameDelete*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetExitOnFrameDelete", header: "<wx/wx.h>".}
proc getDisplayMode*(this: WxAppBase): WxVideoMode {.noSideEffect, cdecl, 
    importcpp: "GetDisplayMode", header: "<wx/wx.h>".}
proc setDisplayMode*(this: var WxAppBase; info: WxVideoMode): bool {.cdecl, 
    importcpp: "SetDisplayMode", header: "<wx/wx.h>".}
proc setUseBestVisual*(this: var WxAppBase; flag: bool; 
                       forceTrueColour: bool = false) {.cdecl, 
    importcpp: "SetUseBestVisual", header: "<wx/wx.h>".}
proc getUseBestVisual*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetUseBestVisual", header: "<wx/wx.h>".}
proc setPrintMode*(this: var WxAppBase; mode: cint) {.cdecl, 
    importcpp: "SetPrintMode", header: "<wx/wx.h>".}
proc getPrintMode*(this: WxAppBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPrintMode", header: "<wx/wx.h>".}
proc getLayoutDirection*(this: WxAppBase): WxLayoutDirection {.noSideEffect, 
    cdecl, importcpp: "GetLayoutDirection", header: "<wx/wx.h>".}
proc setNativeTheme*(this: var WxAppBase; theme: WxString): bool {.cdecl, 
    importcpp: "SetNativeTheme", header: "<wx/wx.h>".}
proc setActive*(this: var WxAppBase; isActive: bool; lastFocus: ptr WxWindow) {.
    cdecl, importcpp: "SetActive", header: "<wx/wx.h>".}

proc wxExit*() {.cdecl, importcpp: "wxExit(@)", header: "<wx/wx.h>".}

proc wxYield*(): bool {.cdecl, importcpp: "wxYield(@)", header: "<wx/wx.h>".}

proc wxWakeUpIdle*() {.cdecl, importcpp: "wxWakeUpIdle(@)", header: "<wx/wx.h>".}

type 
  WxAppInitializer* {.importcpp: "wxAppInitializer", header: "<wx/wx.h>".} = object 
  

proc constructwxAppInitializer*(fn: WxAppInitializerFunction): WxAppInitializer {.
    cdecl, constructor, importcpp: "wxAppInitializer(@)", header: "<wx/wx.h>".}

proc wxCreateApp*(): ptr WxAppConsole {.cdecl, importcpp: "wxCreateApp(@)", 
                                        header: "<wx/wx.h>".}
var wxTheAppInitializer* {.importcpp: "wxTheAppInitializer", header: "<wx/wx.h>".}: WxAppInitializer
