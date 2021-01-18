


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
  WxEventLoopBase* {.importcpp: "wxEventLoopBase", header: wxh, inheritable.} = object 
  
  WxEvtHandlerArray* {.importcpp: "wxEvtHandlerArray", header: wxh.} = object 
  
  WxVideoMode* {.importcpp: "wxVideoMode", header: wxh.} = object 
  
  WxAppConsoleBase* {.importcpp: "wxAppConsoleBase", header: wxh.} = object of WxEvtHandler
    argc* {.importc: "argc".}: cint
    argv* {.importc: "argv".}: cstringArray
  

proc constructwxAppConsoleBase*(): WxAppConsoleBase {.cdecl, constructor, 
    importcpp: "wxAppConsoleBase(@)", header: wxh.}
proc destroywxAppConsoleBase*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "#.~wxAppConsoleBase()", header: wxh.}
proc initialize*(this: var WxAppConsoleBase; argc: var cint; 
                 argv: ptr ptr WxChar): bool {.cdecl, importcpp: "Initialize", 
    header: wxh.}
proc callOnInit*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "CallOnInit", header: wxh.}
proc onInit*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "OnInit", 
    header: wxh.}
proc onRun*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnRun", 
    header: wxh.}
proc onLaunched*(this: var WxAppConsoleBase) {.cdecl, importcpp: "OnLaunched", 
    header: wxh.}
proc onEventLoopEnter*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopEnter", header: wxh.}
proc onExit*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnExit", 
    header: wxh.}
proc onEventLoopExit*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopExit", header: wxh.}
proc cleanUp*(this: var WxAppConsoleBase) {.cdecl, importcpp: "CleanUp", 
    header: wxh.}
proc onFatalException*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "OnFatalException", header: wxh.}
proc exit*(this: var WxAppConsoleBase) {.cdecl, importcpp: "Exit", header: wxh.}
proc getAppName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppName", header: wxh.}
proc setAppName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppName", header: wxh.}
proc getAppDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppDisplayName", header: wxh.}
proc setAppDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppDisplayName", header: wxh.}
proc getClassName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetClassName", header: wxh.}
proc setClassName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetClassName", header: wxh.}
proc getVendorName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetVendorName", header: wxh.}
proc setVendorName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorName", header: wxh.}
proc getVendorDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetVendorDisplayName", header: wxh.}
proc setVendorDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorDisplayName", header: wxh.}
proc getMainLoop*(this: WxAppConsoleBase): ptr WxEventLoopBase {.noSideEffect, 
    cdecl, importcpp: "GetMainLoop", header: wxh.}
proc setCLocale*(this: var WxAppConsoleBase) {.cdecl, importcpp: "SetCLocale", 
    header: wxh.}
proc filterEvent*(this: var WxAppConsoleBase; event: var WxEvent): cint {.cdecl, 
    importcpp: "FilterEvent", header: wxh.}
proc isMainLoopRunning*(): bool {.cdecl, importcpp: "wxAppConsoleBase::IsMainLoopRunning(@)", 
                                  header: wxh.}
proc processPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ProcessPendingEvents", header: wxh.}
proc hasPendingEvents*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasPendingEvents", header: wxh.}
proc suspendProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "SuspendProcessingOfPendingEvents", header: wxh.}
proc resumeProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ResumeProcessingOfPendingEvents", header: wxh.}
proc removePendingEventHandler*(this: var WxAppConsoleBase; 
                                toRemove: ptr WxEvtHandler) {.cdecl, 
    importcpp: "RemovePendingEventHandler", header: wxh.}
proc appendPendingEventHandler*(this: var WxAppConsoleBase; 
                                toAppend: ptr WxEvtHandler) {.cdecl, 
    importcpp: "AppendPendingEventHandler", header: wxh.}
proc delayPendingEventHandler*(this: var WxAppConsoleBase; 
                               toDelay: ptr WxEvtHandler) {.cdecl, 
    importcpp: "DelayPendingEventHandler", header: wxh.}
proc deletePendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "DeletePendingEvents", header: wxh.}
proc scheduleForDestruction*(this: var WxAppConsoleBase; `object`: ptr WxObject) {.
    cdecl, importcpp: "ScheduleForDestruction", header: wxh.}
proc isScheduledForDestruction*(this: WxAppConsoleBase; `object`: ptr WxObject): bool {.
    noSideEffect, cdecl, importcpp: "IsScheduledForDestruction", header: wxh.}
proc pending*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Pending", 
    header: wxh.}
proc dispatch*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Dispatch", 
    header: wxh.}
proc mainLoop*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "MainLoop", 
    header: wxh.}
proc exitMainLoop*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ExitMainLoop", header: wxh.}
proc `yield`*(this: var WxAppConsoleBase; onlyIfNeeded: bool = false): bool {.
    cdecl, importcpp: "Yield", header: wxh.}
proc wakeUpIdle*(this: var WxAppConsoleBase) {.cdecl, importcpp: "WakeUpIdle", 
    header: wxh.}
proc processIdle*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "ProcessIdle", header: wxh.}
proc usesEventLoop*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: wxh.}
proc onAssertFailure*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
                      `func`: ptr WxChar; cond: ptr WxChar; msg: ptr WxChar) {.
    cdecl, importcpp: "OnAssertFailure", header: wxh.}
proc onAssert*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
               cond: ptr WxChar; msg: ptr WxChar) {.cdecl, 
    importcpp: "OnAssert", header: wxh.}
proc checkBuildOptions*(optionsSignature: cstring; componentName: cstring): bool {.
    cdecl, importcpp: "wxAppConsoleBase::CheckBuildOptions(@)", header: wxh.}
proc setInitializerFunction*(fn: WxAppInitializerFunction) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInitializerFunction(@)", header: wxh.}
proc getInitializerFunction*(): WxAppInitializerFunction {.cdecl, 
    importcpp: "wxAppConsoleBase::GetInitializerFunction(@)", header: wxh.}
proc getInstance*(): ptr WxAppConsole {.cdecl, importcpp: "wxAppConsoleBase::GetInstance(@)", 
                                        header: wxh.}
proc setInstance*(app: ptr WxAppConsole) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInstance(@)", header: wxh.}

type 
  WxAppConsole* {.importcpp: "wxAppConsole", header: wxh.} = object of WxAppConsoleBase
  


type 
  WxAppBase* {.importcpp: "wxAppBase", header: wxh.} = object of WxAppConsole
  

proc constructwxAppBase*(): WxAppBase {.cdecl, constructor, 
                                        importcpp: "wxAppBase(@)", header: wxh.}
proc destroywxAppBase*(this: var WxAppBase) {.cdecl, 
    importcpp: "#.~wxAppBase()", header: wxh.}
proc initialize*(this: var WxAppBase; argc: var cint; argv: ptr ptr WxChar): bool {.
    cdecl, importcpp: "Initialize", header: wxh.}
proc onInitGui*(this: var WxAppBase): bool {.cdecl, importcpp: "OnInitGui", 
    header: wxh.}
proc onRun*(this: var WxAppBase): cint {.cdecl, importcpp: "OnRun", header: wxh.}
proc onExit*(this: var WxAppBase): cint {.cdecl, importcpp: "OnExit", 
    header: wxh.}
proc cleanUp*(this: var WxAppBase) {.cdecl, importcpp: "CleanUp", header: wxh.}
proc safeYield*(this: var WxAppBase; win: ptr WxWindow; onlyIfNeeded: bool): bool {.
    cdecl, importcpp: "SafeYield", header: wxh.}
proc safeYieldFor*(this: var WxAppBase; win: ptr WxWindow; 
                   eventsToProcess: clong): bool {.cdecl, 
    importcpp: "SafeYieldFor", header: wxh.}
proc processIdle*(this: var WxAppBase): bool {.cdecl, importcpp: "ProcessIdle", 
    header: wxh.}
proc usesEventLoop*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: wxh.}
proc isActive*(this: WxAppBase): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsActive", header: wxh.}
proc setTopWindow*(this: var WxAppBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetTopWindow", header: wxh.}
proc getTopWindow*(this: WxAppBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetTopWindow", header: wxh.}
proc setExitOnFrameDelete*(this: var WxAppBase; flag: bool) {.cdecl, 
    importcpp: "SetExitOnFrameDelete", header: wxh.}
proc getExitOnFrameDelete*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetExitOnFrameDelete", header: wxh.}
proc getDisplayMode*(this: WxAppBase): WxVideoMode {.noSideEffect, cdecl, 
    importcpp: "GetDisplayMode", header: wxh.}
proc setDisplayMode*(this: var WxAppBase; info: WxVideoMode): bool {.
    discardable, cdecl, importcpp: "SetDisplayMode", header: wxh.}
proc setUseBestVisual*(this: var WxAppBase; flag: bool; 
                       forceTrueColour: bool = false) {.cdecl, 
    importcpp: "SetUseBestVisual", header: wxh.}
proc getUseBestVisual*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetUseBestVisual", header: wxh.}
proc setPrintMode*(this: var WxAppBase; mode: cint) {.cdecl, 
    importcpp: "SetPrintMode", header: wxh.}
proc getPrintMode*(this: WxAppBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPrintMode", header: wxh.}
proc getLayoutDirection*(this: WxAppBase): WxLayoutDirection {.noSideEffect, 
    cdecl, importcpp: "GetLayoutDirection", header: wxh.}
proc setNativeTheme*(this: var WxAppBase; theme: WxString): bool {.discardable, 
    cdecl, importcpp: "SetNativeTheme", header: wxh.}
proc setActive*(this: var WxAppBase; isActive: bool; lastFocus: ptr WxWindow) {.
    cdecl, importcpp: "SetActive", header: wxh.}

proc wxExit*() {.cdecl, importcpp: "wxExit(@)", header: wxh.}

proc wxYield*(): bool {.cdecl, importcpp: "wxYield(@)", header: wxh.}

proc wxWakeUpIdle*() {.cdecl, importcpp: "wxWakeUpIdle(@)", header: wxh.}

type 
  WxAppInitializer* {.importcpp: "wxAppInitializer", header: wxh.} = object 
  

proc constructwxAppInitializer*(fn: WxAppInitializerFunction): WxAppInitializer {.
    cdecl, constructor, importcpp: "wxAppInitializer(@)", header: wxh.}

proc wxCreateApp*(): ptr WxAppConsole {.cdecl, importcpp: "wxCreateApp(@)", 
                                        header: wxh.}
var wxTheAppInitializer* {.importcpp: "wxTheAppInitializer", header: wxh.}: WxAppInitializer
