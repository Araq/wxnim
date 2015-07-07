


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
  WxEventLoopBase* {.importcpp: "wxEventLoopBase", header: "wx.h", inheritable.} = object 
  
  WxEvtHandlerArray* {.importcpp: "wxEvtHandlerArray", header: "wx.h".} = object 
  
  WxVideoMode* {.importcpp: "wxVideoMode", header: "wx.h".} = object 
  
  WxAppConsoleBase* {.importcpp: "wxAppConsoleBase", header: "wx.h".} = object of WxEvtHandler
    argc* {.importc: "argc".}: cint
    argv* {.importc: "argv".}: cstringArray
    mVendorName* {.importc: "m_vendorName".}: WxString
    mVendorDisplayName* {.importc: "m_vendorDisplayName".}: WxString
    mAppName* {.importc: "m_appName".}: WxString
    mAppDisplayName* {.importc: "m_appDisplayName".}: WxString
    mClassName* {.importc: "m_className".}: WxString
    mMainLoop* {.importc: "m_mainLoop".}: ptr WxEventLoopBase
    mHandlersWithPendingEvents* {.importc: "m_handlersWithPendingEvents".}: WxEvtHandlerArray
    mHandlersWithPendingDelayedEvents* {.
        importc: "m_handlersWithPendingDelayedEvents".}: WxEvtHandlerArray
    mBDoPendingEventProcessing* {.importc: "m_bDoPendingEventProcessing".}: bool


proc constructwxAppConsoleBase*(): WxAppConsoleBase {.cdecl, constructor, 
    importcpp: "wxAppConsoleBase(@)", header: "wx.h".}
proc destroywxAppConsoleBase*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "#.~wxAppConsoleBase()", header: "wx.h".}
proc initialize*(this: var WxAppConsoleBase; argc: var cint; 
                 argv: ptr ptr WxChar): bool {.cdecl, importcpp: "Initialize", 
    header: "wx.h".}
proc callOnInit*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "CallOnInit", header: "wx.h".}
proc onInit*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "OnInit", 
    header: "wx.h".}
proc onRun*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnRun", 
    header: "wx.h".}
proc onLaunched*(this: var WxAppConsoleBase) {.cdecl, importcpp: "OnLaunched", 
    header: "wx.h".}
proc onEventLoopEnter*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopEnter", header: "wx.h".}
proc onExit*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "OnExit", 
    header: "wx.h".}
proc onEventLoopExit*(this: var WxAppConsoleBase; loop: ptr WxEventLoopBase) {.
    cdecl, importcpp: "OnEventLoopExit", header: "wx.h".}
proc cleanUp*(this: var WxAppConsoleBase) {.cdecl, importcpp: "CleanUp", 
    header: "wx.h".}
proc onFatalException*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "OnFatalException", header: "wx.h".}
proc exit*(this: var WxAppConsoleBase) {.cdecl, importcpp: "Exit", 
    header: "wx.h".}
proc getAppName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppName", header: "wx.h".}
proc setAppName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppName", header: "wx.h".}
proc getAppDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetAppDisplayName", header: "wx.h".}
proc setAppDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetAppDisplayName", header: "wx.h".}
proc getClassName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetClassName", header: "wx.h".}
proc setClassName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetClassName", header: "wx.h".}
proc getVendorName*(this: WxAppConsoleBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetVendorName", header: "wx.h".}
proc setVendorName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorName", header: "wx.h".}
proc getVendorDisplayName*(this: WxAppConsoleBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetVendorDisplayName", header: "wx.h".}
proc setVendorDisplayName*(this: var WxAppConsoleBase; name: WxString) {.cdecl, 
    importcpp: "SetVendorDisplayName", header: "wx.h".}
proc getMainLoop*(this: WxAppConsoleBase): ptr WxEventLoopBase {.noSideEffect, 
    cdecl, importcpp: "GetMainLoop", header: "wx.h".}
proc setCLocale*(this: var WxAppConsoleBase) {.cdecl, importcpp: "SetCLocale", 
    header: "wx.h".}
proc filterEvent*(this: var WxAppConsoleBase; event: var WxEvent): cint {.cdecl, 
    importcpp: "FilterEvent", header: "wx.h".}
proc isMainLoopRunning*(): bool {.cdecl, importcpp: "wxAppConsoleBase::IsMainLoopRunning(@)", 
                                  header: "wx.h".}
proc processPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ProcessPendingEvents", header: "wx.h".}
proc hasPendingEvents*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasPendingEvents", header: "wx.h".}
proc suspendProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "SuspendProcessingOfPendingEvents", header: "wx.h".}
proc resumeProcessingOfPendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ResumeProcessingOfPendingEvents", header: "wx.h".}
proc removePendingEventHandler*(this: var WxAppConsoleBase; 
                                toRemove: ptr WxEvtHandler) {.cdecl, 
    importcpp: "RemovePendingEventHandler", header: "wx.h".}
proc appendPendingEventHandler*(this: var WxAppConsoleBase; 
                                toAppend: ptr WxEvtHandler) {.cdecl, 
    importcpp: "AppendPendingEventHandler", header: "wx.h".}
proc delayPendingEventHandler*(this: var WxAppConsoleBase; 
                               toDelay: ptr WxEvtHandler) {.cdecl, 
    importcpp: "DelayPendingEventHandler", header: "wx.h".}
proc deletePendingEvents*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "DeletePendingEvents", header: "wx.h".}
proc scheduleForDestruction*(this: var WxAppConsoleBase; `object`: ptr WxObject) {.
    cdecl, importcpp: "ScheduleForDestruction", header: "wx.h".}
proc isScheduledForDestruction*(this: WxAppConsoleBase; `object`: ptr WxObject): bool {.
    noSideEffect, cdecl, importcpp: "IsScheduledForDestruction", header: "wx.h".}
proc pending*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Pending", 
    header: "wx.h".}
proc dispatch*(this: var WxAppConsoleBase): bool {.cdecl, importcpp: "Dispatch", 
    header: "wx.h".}
proc mainLoop*(this: var WxAppConsoleBase): cint {.cdecl, importcpp: "MainLoop", 
    header: "wx.h".}
proc exitMainLoop*(this: var WxAppConsoleBase) {.cdecl, 
    importcpp: "ExitMainLoop", header: "wx.h".}
proc `yield`*(this: var WxAppConsoleBase; onlyIfNeeded: bool = false): bool {.
    cdecl, importcpp: "Yield", header: "wx.h".}
proc wakeUpIdle*(this: var WxAppConsoleBase) {.cdecl, importcpp: "WakeUpIdle", 
    header: "wx.h".}
proc processIdle*(this: var WxAppConsoleBase): bool {.cdecl, 
    importcpp: "ProcessIdle", header: "wx.h".}
proc usesEventLoop*(this: WxAppConsoleBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: "wx.h".}
proc onAssertFailure*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
                      `func`: ptr WxChar; cond: ptr WxChar; msg: ptr WxChar) {.
    cdecl, importcpp: "OnAssertFailure", header: "wx.h".}
proc onAssert*(this: var WxAppConsoleBase; file: ptr WxChar; line: cint; 
               cond: ptr WxChar; msg: ptr WxChar) {.cdecl, 
    importcpp: "OnAssert", header: "wx.h".}
proc checkBuildOptions*(optionsSignature: cstring; componentName: cstring): bool {.
    cdecl, importcpp: "wxAppConsoleBase::CheckBuildOptions(@)", header: "wx.h".}
proc setInitializerFunction*(fn: WxAppInitializerFunction) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInitializerFunction(@)", header: "wx.h".}
proc getInitializerFunction*(): WxAppInitializerFunction {.cdecl, 
    importcpp: "wxAppConsoleBase::GetInitializerFunction(@)", header: "wx.h".}
proc getInstance*(): ptr WxAppConsole {.cdecl, importcpp: "wxAppConsoleBase::GetInstance(@)", 
                                        header: "wx.h".}
proc setInstance*(app: ptr WxAppConsole) {.cdecl, 
    importcpp: "wxAppConsoleBase::SetInstance(@)", header: "wx.h".}

type 
  WxAppConsole* {.importcpp: "wxAppConsole", header: "wx.h".} = object of WxAppConsoleBase
  


type 
  WxAppBase* {.importcpp: "wxAppBase", header: "wx.h".} = object of WxAppConsole
    mTopWindow* {.importc: "m_topWindow".}: ptr WxWindow
    mUseBestVisual* {.importc: "m_useBestVisual".}: bool
    mForceTrueColour* {.importc: "m_forceTrueColour".}: bool
    mIsActive* {.importc: "m_isActive".}: bool


proc constructwxAppBase*(): WxAppBase {.cdecl, constructor, 
                                        importcpp: "wxAppBase(@)", 
                                        header: "wx.h".}
proc destroywxAppBase*(this: var WxAppBase) {.cdecl, 
    importcpp: "#.~wxAppBase()", header: "wx.h".}
proc initialize*(this: var WxAppBase; argc: var cint; argv: ptr ptr WxChar): bool {.
    cdecl, importcpp: "Initialize", header: "wx.h".}
proc onInitGui*(this: var WxAppBase): bool {.cdecl, importcpp: "OnInitGui", 
    header: "wx.h".}
proc onRun*(this: var WxAppBase): cint {.cdecl, importcpp: "OnRun", 
    header: "wx.h".}
proc onExit*(this: var WxAppBase): cint {.cdecl, importcpp: "OnExit", 
    header: "wx.h".}
proc cleanUp*(this: var WxAppBase) {.cdecl, importcpp: "CleanUp", header: "wx.h".}
proc safeYield*(this: var WxAppBase; win: ptr WxWindow; onlyIfNeeded: bool): bool {.
    cdecl, importcpp: "SafeYield", header: "wx.h".}
proc safeYieldFor*(this: var WxAppBase; win: ptr WxWindow; 
                   eventsToProcess: clong): bool {.cdecl, 
    importcpp: "SafeYieldFor", header: "wx.h".}
proc processIdle*(this: var WxAppBase): bool {.cdecl, importcpp: "ProcessIdle", 
    header: "wx.h".}
proc usesEventLoop*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "UsesEventLoop", header: "wx.h".}
proc isActive*(this: WxAppBase): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsActive", header: "wx.h".}
proc setTopWindow*(this: var WxAppBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "SetTopWindow", header: "wx.h".}
proc getTopWindow*(this: WxAppBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetTopWindow", header: "wx.h".}
proc setExitOnFrameDelete*(this: var WxAppBase; flag: bool) {.cdecl, 
    importcpp: "SetExitOnFrameDelete", header: "wx.h".}
proc getExitOnFrameDelete*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetExitOnFrameDelete", header: "wx.h".}
proc getDisplayMode*(this: WxAppBase): WxVideoMode {.noSideEffect, cdecl, 
    importcpp: "GetDisplayMode", header: "wx.h".}
proc setDisplayMode*(this: var WxAppBase; info: WxVideoMode): bool {.cdecl, 
    importcpp: "SetDisplayMode", header: "wx.h".}
proc setUseBestVisual*(this: var WxAppBase; flag: bool; 
                       forceTrueColour: bool = false) {.cdecl, 
    importcpp: "SetUseBestVisual", header: "wx.h".}
proc getUseBestVisual*(this: WxAppBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetUseBestVisual", header: "wx.h".}
proc setPrintMode*(this: var WxAppBase; mode: cint) {.cdecl, 
    importcpp: "SetPrintMode", header: "wx.h".}
proc getPrintMode*(this: WxAppBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPrintMode", header: "wx.h".}
proc getLayoutDirection*(this: WxAppBase): WxLayoutDirection {.noSideEffect, 
    cdecl, importcpp: "GetLayoutDirection", header: "wx.h".}
proc setNativeTheme*(this: var WxAppBase; theme: WxString): bool {.cdecl, 
    importcpp: "SetNativeTheme", header: "wx.h".}
proc setActive*(this: var WxAppBase; isActive: bool; lastFocus: ptr WxWindow) {.
    cdecl, importcpp: "SetActive", header: "wx.h".}

proc wxExit*() {.cdecl, importcpp: "wxExit(@)", header: "wx.h".}

proc wxYield*(): bool {.cdecl, importcpp: "wxYield(@)", header: "wx.h".}

proc wxWakeUpIdle*() {.cdecl, importcpp: "wxWakeUpIdle(@)", header: "wx.h".}

type 
  WxAppInitializer* {.importcpp: "wxAppInitializer", header: "wx.h".} = object 
  

proc constructwxAppInitializer*(fn: WxAppInitializerFunction): WxAppInitializer {.
    cdecl, constructor, importcpp: "wxAppInitializer(@)", header: "wx.h".}

proc wxCreateApp*(): ptr WxAppConsole {.cdecl, importcpp: "wxCreateApp(@)", 
                                        header: "wx.h".}
var wxTheAppInitializer* {.importcpp: "wxTheAppInitializer", header: "wx.h".}: WxAppInitializer