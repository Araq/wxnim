


const
  wxHAS_CALL_AFTER* = true


discard "forward decl of wxList"
discard "forward decl of wxEvent"
type
  WxEventFilter* {.importcpp: "wxEventFilter", header: "wx.h".} = object


discard "forward decl of wxDC"
discard "forward decl of wxMenu"
discard "forward decl of wxWindow"
discard "forward decl of wxWindowBase"

discard "forward decl of wxEvtHandler"
discard "forward decl of wxEventConnectionRef"
type
  WxEventType* = cint

const
  wxEVT_ANY* = WxEventType(-1)



proc wxNewEventType*(): WxEventType {.cdecl, importcpp: "wxNewEventType(@)",
                                      header: "wx.h".}






type
  WxEventTypeTag* {.importcpp: "wxEventTypeTag", header: "wx.h".}[T] = object
    mType* {.importc: "m_type".}: WxEventType

proc constructwxEventTypeTag*[T](`type`: WxEventType): WxEventTypeTag[T] {.
    cdecl, constructor, importcpp: "wxEventTypeTag(@)", header: "wx.h".}

type
  WxEventFunction* = pointer
  WxObjectEventFunction* = WxEventFunction


var wxEVT_NULL* {.importcpp: "wxEVT_NULL", header: "wx.h".}: WxEventType

var wxEVT_FIRST* {.importcpp: "wxEVT_FIRST", header: "wx.h".}: WxEventType

var wxEVT_USER_FIRST* {.importcpp: "wxEVT_USER_FIRST", header: "wx.h".}: WxEventType


type
  WxEventCategory* {.size: sizeof(cint),
                     importcpp: "wxEventConnectionRef::wxEventCategory",
                     header: "wx.h".} = enum
    wxEVT_CATEGORY_UI = 1, wxEVT_CATEGORY_USER_INPUT = 2,
    wxEVT_CATEGORY_NATIVE_EVENTS = 1 or 2, wxEVT_CATEGORY_SOCKET = 4,
    wxEVT_CATEGORY_TIMER = 8, wxEVT_CATEGORY_THREAD = 16,
    wxEVT_CATEGORY_UNKNOWN = 32, wxEVT_CATEGORY_CLIPBOARD = 64,
    wxEVT_CATEGORY_ALL = 1 or 2 or 4 or 8 or 16 or 32 or 64


type
  WxEvent* {.importcpp: "wxEvent", header: "wx.h".} = object of WxObject
    mEventObject* {.importc: "m_eventObject".}: ptr WxObject
    mEventType* {.importc: "m_eventType".}: WxEventType
    mTimeStamp* {.importc: "m_timeStamp".}: clong
    mId* {.importc: "m_id".}: cint
    mCallbackUserData* {.importc: "m_callbackUserData".}: ptr WxObject
    mHandlerToProcessOnlyIn* {.importc: "m_handlerToProcessOnlyIn".}: ptr WxEvtHandler
    mPropagationLevel* {.importc: "m_propagationLevel".}: cint
    mPropagatedFrom* {.importc: "m_propagatedFrom".}: ptr WxEvtHandler
    mSkipped* {.importc: "m_skipped".}: bool
    mIsCommandEvent* {.importc: "m_isCommandEvent".}: bool
    mWasProcessed* {.importc: "m_wasProcessed".}: bool
    mWillBeProcessedAgain* {.importc: "m_willBeProcessedAgain".}: bool


proc constructwxEvent*(winid: cint = 0; commandType: WxEventType = wxEVT_NULL): WxEvent {.
    cdecl, constructor, importcpp: "wxEvent(@)", header: "wx.h".}
proc setEventType*(this: var WxEvent; typ: WxEventType) {.cdecl,
    importcpp: "SetEventType", header: "wx.h".}
proc getEventType*(this: WxEvent): WxEventType {.noSideEffect, cdecl,
    importcpp: "GetEventType", header: "wx.h".}
proc getEventObject*(this: WxEvent): ptr WxObject {.noSideEffect, cdecl,
    importcpp: "GetEventObject", header: "wx.h".}
proc setEventObject*(this: var WxEvent; obj: ptr WxObject) {.cdecl,
    importcpp: "SetEventObject", header: "wx.h".}
proc getTimestamp*(this: WxEvent): clong {.noSideEffect, cdecl,
    importcpp: "GetTimestamp", header: "wx.h".}
proc setTimestamp*(this: var WxEvent; ts: clong = 0) {.cdecl,
    importcpp: "SetTimestamp", header: "wx.h".}
proc getId*(this: WxEvent): cint {.noSideEffect, cdecl, importcpp: "GetId",
                                   header: "wx.h".}
proc setId*(this: var WxEvent; id: cint) {.cdecl, importcpp: "SetId",
    header: "wx.h".}
proc getEventUserData*(this: WxEvent): ptr WxObject {.noSideEffect, cdecl,
    importcpp: "GetEventUserData", header: "wx.h".}
proc skip*(this: var WxEvent; skip: bool = true) {.cdecl, importcpp: "Skip",
    header: "wx.h".}
proc getSkipped*(this: WxEvent): bool {.noSideEffect, cdecl,
                                        importcpp: "GetSkipped", header: "wx.h".}
proc clone*(this: WxEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getEventCategory*(this: WxEvent): WxEventCategory {.noSideEffect, cdecl,
    importcpp: "GetEventCategory", header: "wx.h".}
proc isCommandEvent*(this: WxEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsCommandEvent", header: "wx.h".}
proc shouldPropagate*(this: WxEvent): bool {.noSideEffect, cdecl,
    importcpp: "ShouldPropagate", header: "wx.h".}
proc stopPropagation*(this: var WxEvent): cint {.cdecl,
    importcpp: "StopPropagation", header: "wx.h".}
proc resumePropagation*(this: var WxEvent; propagationLevel: cint) {.cdecl,
    importcpp: "ResumePropagation", header: "wx.h".}
proc getPropagatedFrom*(this: WxEvent): ptr WxEvtHandler {.noSideEffect, cdecl,
    importcpp: "GetPropagatedFrom", header: "wx.h".}
proc wasProcessed*(this: var WxEvent): bool {.cdecl, importcpp: "WasProcessed",
    header: "wx.h".}
proc setWillBeProcessedAgain*(this: var WxEvent) {.cdecl,
    importcpp: "SetWillBeProcessedAgain", header: "wx.h".}
proc willBeProcessedAgain*(this: var WxEvent): bool {.cdecl,
    importcpp: "WillBeProcessedAgain", header: "wx.h".}
proc shouldProcessOnlyIn*(this: WxEvent; h: ptr WxEvtHandler): bool {.
    noSideEffect, cdecl, importcpp: "ShouldProcessOnlyIn", header: "wx.h".}
proc didntHonourProcessOnlyIn*(this: var WxEvent) {.cdecl,
    importcpp: "DidntHonourProcessOnlyIn", header: "wx.h".}

type
  WxEventFunctor* {.importcpp: "wxEventFunctor", header: "wx.h", inheritable.} = object


proc destroywxEventFunctor*(this: var WxEventFunctor) {.cdecl,
    importcpp: "#.~wxEventFunctor()", header: "wx.h".}
proc `()`*(this: var WxEventFunctor; a3: ptr WxEvtHandler; a4: var WxEvent) {.
    cdecl, importcpp: "#(@)", header: "wx.h".}
proc isMatching*(this: WxEventFunctor; functor: WxEventFunctor): bool {.
    noSideEffect, cdecl, importcpp: "IsMatching", header: "wx.h".}
proc getEvtHandler*(this: WxEventFunctor): ptr WxEvtHandler {.noSideEffect,
    cdecl, importcpp: "GetEvtHandler", header: "wx.h".}
proc getEvtMethod*(this: WxEventFunctor): WxEventFunction {.noSideEffect, cdecl,
    importcpp: "GetEvtMethod", header: "wx.h".}

type
  WxObjectEventFunctor* {.importcpp: "wxObjectEventFunctor", header: "wx.h".} = object of WxEventFunctor
    mHandler* {.importc: "m_handler".}: ptr WxEvtHandler
    mMethod* {.importc: "m_method".}: WxEventFunction


proc constructwxObjectEventFunctor*(`method`: WxObjectEventFunction;
                                    handler: ptr WxEvtHandler): WxObjectEventFunctor {.
    cdecl, constructor, importcpp: "wxObjectEventFunctor(@)", header: "wx.h".}
proc `()`*(this: var WxObjectEventFunctor; handler: ptr WxEvtHandler;
           event: var WxEvent) {.cdecl, importcpp: "#(@)", header: "wx.h".}
proc isMatching*(this: WxObjectEventFunctor; functor: WxEventFunctor): bool {.
    noSideEffect, cdecl, importcpp: "IsMatching", header: "wx.h".}
proc getEvtHandler*(this: WxObjectEventFunctor): ptr WxEvtHandler {.
    noSideEffect, cdecl, importcpp: "GetEvtHandler", header: "wx.h".}
proc getEvtMethod*(this: WxObjectEventFunctor): WxEventFunction {.noSideEffect,
    cdecl, importcpp: "GetEvtMethod", header: "wx.h".}

proc wxNewEventFunctor*(evtType: WxEventType; `method`: WxObjectEventFunction;
                        handler: ptr WxEvtHandler): ptr WxObjectEventFunctor {.
    cdecl, importcpp: "wxNewEventFunctor(@)", header: "wx.h".}

proc wxNewEventTableFunctor*(evtType: WxEventType;
                             `method`: WxObjectEventFunction): ptr WxObjectEventFunctor {.
    cdecl, importcpp: "wxNewEventTableFunctor(@)", header: "wx.h".}
proc wxMakeEventFunctor*(evtType: WxEventType; `method`: WxObjectEventFunction;
                         handler: ptr WxEvtHandler): WxObjectEventFunctor {.
    cdecl, importcpp: "wxMakeEventFunctor(@)", header: "wx.h".}

type
  WxEventFunctorMethod* {.importcpp: "wxEventFunctorMethod", header: "wx.h".}[
      EventTag, Class, EventArg, EventHandler] = object of WxEventFunctor


proc constructwxEventFunctorMethod*[EventTag, Class, EventArg, EventHandler](
    eventArg: pointer; handler: ptr EventHandler): WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl, constructor,
    importcpp: "wxEventFunctorMethod(@)", header: "wx.h".}
proc `()`*[EventTag, Class, EventArg, EventHandler](
    this: var WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler];
    handler: ptr WxEvtHandler; event: var WxEvent) {.cdecl, importcpp: "#(@)",
    header: "wx.h".}
proc isMatching*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler];
    functor: WxEventFunctor): bool {.noSideEffect, cdecl,
                                     importcpp: "IsMatching", header: "wx.h".}
proc getEvtHandler*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]): ptr WxEvtHandler {.
    noSideEffect, cdecl, importcpp: "GetEvtHandler", header: "wx.h".}
proc getEvtMethod*[EventTag, Class, EventArg, EventHandler](
    this: WxEventFunctorMethod[EventTag, Class, EventArg, EventHandler]): WxEventFunction {.
    noSideEffect, cdecl, importcpp: "GetEvtMethod", header: "wx.h".}

type
  WxEventFunctorFunction* {.importcpp: "wxEventFunctorFunction", header: "wx.h".}[
      EventTag, EventArg] = object of WxEventFunctor


proc constructwxEventFunctorFunction*[EventTag, EventArg](
    handler: proc (a2: var EventArg) {.cdecl.}): WxEventFunctorFunction[
    EventTag, EventArg] {.cdecl, constructor,
                          importcpp: "wxEventFunctorFunction(@)", header: "wx.h".}
proc `()`*[EventTag, EventArg](this: var WxEventFunctorFunction[EventTag,
    EventArg]; handler: ptr WxEvtHandler; event: var WxEvent) {.cdecl,
    importcpp: "#(@)", header: "wx.h".}
proc isMatching*[EventTag, EventArg](this: WxEventFunctorFunction[EventTag,
    EventArg]; functor: WxEventFunctor): bool {.noSideEffect, cdecl,
    importcpp: "IsMatching", header: "wx.h".}
type
  WxEventFunctorFunctor* {.importcpp: "wxEventFunctorFunctor", header: "wx.h".}[
      EventTag, Functor] = object of WxEventFunctor


proc constructwxEventFunctorFunctor*[EventTag, Functor](handler: Functor): WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, constructor,
                         importcpp: "wxEventFunctorFunctor(@)", header: "wx.h".}
proc `()`*[EventTag, Functor](this: var WxEventFunctorFunctor[EventTag, Functor];
                              handler: ptr WxEvtHandler; event: var WxEvent) {.
    cdecl, importcpp: "#(@)", header: "wx.h".}
proc isMatching*[EventTag, Functor](this: WxEventFunctorFunctor[EventTag,
    Functor]; functor: WxEventFunctor): bool {.noSideEffect, cdecl,
    importcpp: "IsMatching", header: "wx.h".}

proc wxNewEventFunctor*[EventTag, EventArg](a2: EventTag;
    `func`: proc (a2: var EventArg) {.cdecl.}): ptr WxEventFunctorFunction[
    EventTag, EventArg] {.cdecl, importcpp: "wxNewEventFunctor(@)",
                          header: "wx.h".}
proc wxMakeEventFunctor*[EventTag, EventArg](a2: EventTag;
    `func`: proc (a2: var EventArg) {.cdecl.}): WxEventFunctorFunction[EventTag,
    EventArg] {.cdecl, importcpp: "wxMakeEventFunctor(@)", header: "wx.h".}

proc wxNewEventFunctor*[EventTag, Functor](a2: EventTag; `func`: Functor): ptr WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, importcpp: "wxNewEventFunctor(@)",
                         header: "wx.h".}
proc wxMakeEventFunctor*[EventTag, Functor](a2: EventTag; `func`: Functor): WxEventFunctorFunctor[
    EventTag, Functor] {.cdecl, importcpp: "wxMakeEventFunctor(@)",
                         header: "wx.h".}

proc wxNewEventFunctor*[EventTag, Class, EventArg, EventHandler](a2: EventTag;
    eventArg: pointer; handler: ptr EventHandler): ptr WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl,
    importcpp: "wxNewEventFunctor(@)", header: "wx.h".}
proc wxMakeEventFunctor*[EventTag, Class, EventArg, EventHandler](a2: EventTag;
    `method`: pointer; handler: ptr EventHandler): WxEventFunctorMethod[
    EventTag, Class, EventArg, EventHandler] {.cdecl,
    importcpp: "wxMakeEventFunctor(@)", header: "wx.h".}

proc wxNewEventTableFunctor*[EventTag, Class, EventArg](a2: EventTag;
    `method`: pointer): ptr WxEventFunctorMethod[EventTag, Class, EventArg,
    Class] {.cdecl, importcpp: "wxNewEventTableFunctor(@)", header: "wx.h".}

discard "forward decl of wxIdleEvent"
discard "forward decl of wxThreadEvent"
discard "forward decl of wxAsyncMethodCallEvent"
discard "forward decl of wxCommandEvent"
discard "forward decl of wxMouseEvent"
discard "forward decl of wxFocusEvent"
discard "forward decl of wxChildFocusEvent"
discard "forward decl of wxKeyEvent"
discard "forward decl of wxNavigationKeyEvent"
discard "forward decl of wxSetCursorEvent"
discard "forward decl of wxScrollEvent"
discard "forward decl of wxSpinEvent"
discard "forward decl of wxScrollWinEvent"
discard "forward decl of wxSizeEvent"
discard "forward decl of wxMoveEvent"
discard "forward decl of wxCloseEvent"
discard "forward decl of wxActivateEvent"
discard "forward decl of wxWindowCreateEvent"
discard "forward decl of wxWindowDestroyEvent"
discard "forward decl of wxShowEvent"
discard "forward decl of wxIconizeEvent"
discard "forward decl of wxMaximizeEvent"
discard "forward decl of wxMouseCaptureChangedEvent"
discard "forward decl of wxMouseCaptureLostEvent"
discard "forward decl of wxPaintEvent"
discard "forward decl of wxEraseEvent"
discard "forward decl of wxNcPaintEvent"
discard "forward decl of wxMenuEvent"
discard "forward decl of wxContextMenuEvent"
discard "forward decl of wxSysColourChangedEvent"
discard "forward decl of wxDisplayChangedEvent"
discard "forward decl of wxQueryNewPaletteEvent"
discard "forward decl of wxPaletteChangedEvent"
discard "forward decl of wxJoystickEvent"
discard "forward decl of wxDropFilesEvent"
discard "forward decl of wxInitDialogEvent"
discard "forward decl of wxUpdateUIEvent"
discard "forward decl of wxClipboardTextEvent"
discard "forward decl of wxHelpEvent"
type
  WxEventPropagation* {.size: sizeof(cint),
                        importcpp: "wxHelpEvent::wxEventPropagation",
                        header: "wx.h".} = enum
    wxEVENT_PROPAGATE_NONE = 0, wxEVENT_PROPAGATE_MAX = high(cint)



type
  WxPropagationDisabler* {.importcpp: "wxPropagationDisabler", header: "wx.h".} = object


proc constructwxPropagationDisabler*(event: var WxEvent): WxPropagationDisabler {.
    cdecl, constructor, importcpp: "wxPropagationDisabler(@)", header: "wx.h".}
proc destroywxPropagationDisabler*(this: var WxPropagationDisabler) {.cdecl,
    importcpp: "#.~wxPropagationDisabler()", header: "wx.h".}

type
  WxPropagateOnce* {.importcpp: "wxPropagateOnce", header: "wx.h".} = object


proc constructwxPropagateOnce*(event: var WxEvent;
                               handler: ptr WxEvtHandler = nil): WxPropagateOnce {.
    cdecl, constructor, importcpp: "wxPropagateOnce(@)", header: "wx.h".}
proc destroywxPropagateOnce*(this: var WxPropagateOnce) {.cdecl,
    importcpp: "#.~wxPropagateOnce()", header: "wx.h".}

type
  WxEventProcessInHandlerOnly* {.importcpp: "wxEventProcessInHandlerOnly",
                                 header: "wx.h".} = object


proc constructwxEventProcessInHandlerOnly*(event: var WxEvent;
    handler: ptr WxEvtHandler): WxEventProcessInHandlerOnly {.cdecl,
    constructor, importcpp: "wxEventProcessInHandlerOnly(@)", header: "wx.h".}
proc destroywxEventProcessInHandlerOnly*(this: var WxEventProcessInHandlerOnly) {.
    cdecl, importcpp: "#.~wxEventProcessInHandlerOnly()", header: "wx.h".}
type
  WxEventBasicPayloadMixin* {.importcpp: "wxEventBasicPayloadMixin",
                              header: "wx.h", inheritable.} = object
    mCmdString* {.importc: "m_cmdString".}: WxString
    mCommandInt* {.importc: "m_commandInt".}: cint
    mExtraLong* {.importc: "m_extraLong".}: clong


proc constructwxEventBasicPayloadMixin*(): WxEventBasicPayloadMixin {.cdecl,
    constructor, importcpp: "wxEventBasicPayloadMixin(@)", header: "wx.h".}
proc setString*(this: var WxEventBasicPayloadMixin; s: WxString) {.cdecl,
    importcpp: "SetString", header: "wx.h".}
proc getString*(this: WxEventBasicPayloadMixin): WxString {.noSideEffect, cdecl,
    importcpp: "GetString", header: "wx.h".}
proc setInt*(this: var WxEventBasicPayloadMixin; i: cint) {.cdecl,
    importcpp: "SetInt", header: "wx.h".}
proc getInt*(this: WxEventBasicPayloadMixin): cint {.noSideEffect, cdecl,
    importcpp: "GetInt", header: "wx.h".}
proc setExtraLong*(this: var WxEventBasicPayloadMixin; extraLong: clong) {.
    cdecl, importcpp: "SetExtraLong", header: "wx.h".}
proc getExtraLong*(this: WxEventBasicPayloadMixin): clong {.noSideEffect, cdecl,
    importcpp: "GetExtraLong", header: "wx.h".}
type
  WxEventAnyPayloadMixin* {.importcpp: "wxEventAnyPayloadMixin", header: "wx.h".} = object of WxEventBasicPayloadMixin


proc constructwxEventAnyPayloadMixin*(): WxEventAnyPayloadMixin {.cdecl,
    constructor, importcpp: "wxEventAnyPayloadMixin(@)", header: "wx.h".}

type
  WxIdleMode* {.size: sizeof(cint), importcpp: "wxHelpEvent::wxIdleMode",
                header: "wx.h".} = enum
    wxIDLE_PROCESS_ALL, wxIDLE_PROCESS_SPECIFIED


type
  WxIdleEvent* {.importcpp: "wxIdleEvent", header: "wx.h".} = object of WxEvent
    mRequestMore* {.importc: "m_requestMore".}: bool


proc constructwxIdleEvent*(): WxIdleEvent {.cdecl, constructor,
    importcpp: "wxIdleEvent(@)", header: "wx.h".}
proc constructwxIdleEvent*(event: WxIdleEvent): WxIdleEvent {.cdecl,
    constructor, importcpp: "wxIdleEvent(@)", header: "wx.h".}
proc requestMore*(this: var WxIdleEvent; needMore: bool = true) {.cdecl,
    importcpp: "RequestMore", header: "wx.h".}
proc moreRequested*(this: WxIdleEvent): bool {.noSideEffect, cdecl,
    importcpp: "MoreRequested", header: "wx.h".}
proc clone*(this: WxIdleEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc setMode*(mode: WxIdleMode) {.cdecl, importcpp: "wxIdleEvent::SetMode(@)",
                                  header: "wx.h".}
proc getMode*(): WxIdleMode {.cdecl, importcpp: "wxIdleEvent::GetMode(@)",
                              header: "wx.h".}

type
  WxThreadEvent* {.importcpp: "wxThreadEvent", header: "wx.h".} = object of WxEvent


proc constructwxThreadEvent*(eventType: WxEventType; id = wxID_ANY): WxThreadEvent {.
    cdecl, constructor, importcpp: "wxThreadEvent(@)", header: "wx.h".}
proc constructwxThreadEvent*(event: WxThreadEvent): WxThreadEvent {.cdecl,
    constructor, importcpp: "wxThreadEvent(@)", header: "wx.h".}
proc clone*(this: WxThreadEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getEventCategory*(this: WxThreadEvent): WxEventCategory {.noSideEffect,
    cdecl, importcpp: "GetEventCategory", header: "wx.h".}

type
  WxAsyncMethodCallEvent* {.importcpp: "wxAsyncMethodCallEvent", header: "wx.h".} = object of WxEvent


proc constructwxAsyncMethodCallEvent*(`object`: ptr WxObject): WxAsyncMethodCallEvent {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEvent(@)", header: "wx.h".}
proc constructwxAsyncMethodCallEvent*(other: WxAsyncMethodCallEvent): WxAsyncMethodCallEvent {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEvent(@)", header: "wx.h".}
proc execute*(this: var WxAsyncMethodCallEvent) {.cdecl, importcpp: "Execute",
    header: "wx.h".}

type
  WxAsyncMethodCallEvent0* {.importcpp: "wxAsyncMethodCallEvent0",
                             header: "wx.h".}[T] = object of WxAsyncMethodCallEvent


proc constructwxAsyncMethodCallEvent0*[T](`object`: ptr T; `method`: pointer): WxAsyncMethodCallEvent0[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent0(@)",
         header: "wx.h".}
proc constructwxAsyncMethodCallEvent0*[T](other: WxAsyncMethodCallEvent0): WxAsyncMethodCallEvent0[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent0(@)",
         header: "wx.h".}
proc clone*[T](this: WxAsyncMethodCallEvent0[T]): ptr WxEvent {.noSideEffect,
    cdecl, importcpp: "Clone", header: "wx.h".}
proc execute*[T](this: var WxAsyncMethodCallEvent0[T]) {.cdecl,
    importcpp: "Execute", header: "wx.h".}

type
  WxAsyncMethodCallEvent1* {.importcpp: "wxAsyncMethodCallEvent1",
                             header: "wx.h".}[T, T1] = object of WxAsyncMethodCallEvent


proc constructwxAsyncMethodCallEvent1*[T, T1](`object`: ptr T;
    `method`: pointer; x1: pointer): WxAsyncMethodCallEvent1[T, T1] {.cdecl,
    constructor, importcpp: "wxAsyncMethodCallEvent1(@)", header: "wx.h".}
proc constructwxAsyncMethodCallEvent1*[T, T1](other: WxAsyncMethodCallEvent1): WxAsyncMethodCallEvent1[
    T, T1] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent1(@)",
             header: "wx.h".}
proc clone*[T, T1](this: WxAsyncMethodCallEvent1[T, T1]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: "wx.h".}
proc execute*[T, T1](this: var WxAsyncMethodCallEvent1[T, T1]) {.cdecl,
    importcpp: "Execute", header: "wx.h".}

type
  WxAsyncMethodCallEvent2* {.importcpp: "wxAsyncMethodCallEvent2",
                             header: "wx.h".}[T, T1, T2] = object of WxAsyncMethodCallEvent


proc constructwxAsyncMethodCallEvent2*[T, T1, T2](`object`: ptr T;
    `method`: pointer; x1: pointer; x2: pointer): WxAsyncMethodCallEvent2[T, T1,
    T2] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent2(@)",
          header: "wx.h".}
proc constructwxAsyncMethodCallEvent2*[T, T1, T2](other: WxAsyncMethodCallEvent2): WxAsyncMethodCallEvent2[
    T, T1, T2] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEvent2(@)",
                 header: "wx.h".}
proc clone*[T, T1, T2](this: WxAsyncMethodCallEvent2[T, T1, T2]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: "wx.h".}
proc execute*[T, T1, T2](this: var WxAsyncMethodCallEvent2[T, T1, T2]) {.cdecl,
    importcpp: "Execute", header: "wx.h".}

type
  WxAsyncMethodCallEventFunctor* {.importcpp: "wxAsyncMethodCallEventFunctor",
                                   header: "wx.h".}[T] = object of WxAsyncMethodCallEvent


proc constructwxAsyncMethodCallEventFunctor*[T](`object`: ptr WxObject; fn: T): WxAsyncMethodCallEventFunctor[
    T] {.cdecl, constructor, importcpp: "wxAsyncMethodCallEventFunctor(@)",
         header: "wx.h".}
proc constructwxAsyncMethodCallEventFunctor*[T](
    other: WxAsyncMethodCallEventFunctor): WxAsyncMethodCallEventFunctor[T] {.
    cdecl, constructor, importcpp: "wxAsyncMethodCallEventFunctor(@)",
    header: "wx.h".}
proc clone*[T](this: WxAsyncMethodCallEventFunctor[T]): ptr WxEvent {.
    noSideEffect, cdecl, importcpp: "Clone", header: "wx.h".}
proc execute*[T](this: var WxAsyncMethodCallEventFunctor[T]) {.cdecl,
    importcpp: "Execute", header: "wx.h".}

type
  WxClientData* {.importcpp: "wxClientData", header: "wx.h", inheritable.} = object

  WxCommandEvent* {.importcpp: "wxCommandEvent", header: "wx.h".} = object of WxEvent
    mClientData* {.importc: "m_clientData".}: pointer
    mClientObject* {.importc: "m_clientObject".}: ptr WxClientData


proc constructwxCommandEvent*(commandType: WxEventType = wxEVT_NULL;
                              winid: cint = 0): WxCommandEvent {.cdecl,
    constructor, importcpp: "wxCommandEvent(@)", header: "wx.h".}
proc constructwxCommandEvent*(event: WxCommandEvent): WxCommandEvent {.cdecl,
    constructor, importcpp: "wxCommandEvent(@)", header: "wx.h".}
proc setClientData*(this: var WxCommandEvent; clientData: pointer) {.cdecl,
    importcpp: "SetClientData", header: "wx.h".}
proc getClientData*(this: WxCommandEvent): pointer {.noSideEffect, cdecl,
    importcpp: "GetClientData", header: "wx.h".}
proc setClientObject*(this: var WxCommandEvent; clientObject: ptr WxClientData) {.
    cdecl, importcpp: "SetClientObject", header: "wx.h".}
proc getClientObject*(this: WxCommandEvent): ptr WxClientData {.noSideEffect,
    cdecl, importcpp: "GetClientObject", header: "wx.h".}
proc getString*(this: WxCommandEvent): WxString {.noSideEffect, cdecl,
    importcpp: "GetString", header: "wx.h".}
proc getSelection*(this: WxCommandEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetSelection", header: "wx.h".}
proc isChecked*(this: WxCommandEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsChecked", header: "wx.h".}
proc isSelection*(this: WxCommandEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsSelection", header: "wx.h".}
proc clone*(this: WxCommandEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getEventCategory*(this: WxCommandEvent): WxEventCategory {.noSideEffect,
    cdecl, importcpp: "GetEventCategory", header: "wx.h".}

type
  WxNotifyEvent* {.importcpp: "wxNotifyEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxNotifyEvent*(commandType: WxEventType = wxEVT_NULL;
                             winid: cint = 0): WxNotifyEvent {.cdecl,
    constructor, importcpp: "wxNotifyEvent(@)", header: "wx.h".}
proc constructwxNotifyEvent*(event: WxNotifyEvent): WxNotifyEvent {.cdecl,
    constructor, importcpp: "wxNotifyEvent(@)", header: "wx.h".}
proc veto*(this: var WxNotifyEvent) {.cdecl, importcpp: "Veto", header: "wx.h".}
proc allow*(this: var WxNotifyEvent) {.cdecl, importcpp: "Allow", header: "wx.h".}
proc isAllowed*(this: WxNotifyEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsAllowed", header: "wx.h".}
proc clone*(this: WxNotifyEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxScrollEvent* {.importcpp: "wxScrollEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxScrollEvent*(commandType: WxEventType = wxEVT_NULL;
                             winid: cint = 0; pos: cint = 0; orient: cint = 0): WxScrollEvent {.
    cdecl, constructor, importcpp: "wxScrollEvent(@)", header: "wx.h".}
proc getOrientation*(this: WxScrollEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetOrientation", header: "wx.h".}
proc getPosition*(this: WxScrollEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc setOrientation*(this: var WxScrollEvent; orient: cint) {.cdecl,
    importcpp: "SetOrientation", header: "wx.h".}
proc setPosition*(this: var WxScrollEvent; pos: cint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc clone*(this: WxScrollEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxScrollWinEvent* {.importcpp: "wxScrollWinEvent", header: "wx.h".} = object of WxEvent


proc constructwxScrollWinEvent*(commandType: WxEventType = wxEVT_NULL;
                                pos: cint = 0; orient: cint = 0): WxScrollWinEvent {.
    cdecl, constructor, importcpp: "wxScrollWinEvent(@)", header: "wx.h".}
proc constructwxScrollWinEvent*(event: WxScrollWinEvent): WxScrollWinEvent {.
    cdecl, constructor, importcpp: "wxScrollWinEvent(@)", header: "wx.h".}
proc getOrientation*(this: WxScrollWinEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetOrientation", header: "wx.h".}
proc getPosition*(this: WxScrollWinEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc setOrientation*(this: var WxScrollWinEvent; orient: cint) {.cdecl,
    importcpp: "SetOrientation", header: "wx.h".}
proc setPosition*(this: var WxScrollWinEvent; pos: cint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc clone*(this: WxScrollWinEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxMouseWheelAxis* {.size: sizeof(cint),
                      importcpp: "wxHelpEvent::wxMouseWheelAxis", header: "wx.h".} = enum
    wxMOUSE_WHEEL_VERTICAL, wxMOUSE_WHEEL_HORIZONTAL


type
  WxMouseEvent* {.importcpp: "wxMouseEvent", header: "wx.h".} = object of WxEvent
    mClickCount* {.importc: "m_clickCount".}: cint
    mWheelAxis* {.importc: "m_wheelAxis".}: WxMouseWheelAxis
    mWheelRotation* {.importc: "m_wheelRotation".}: cint
    mWheelDelta* {.importc: "m_wheelDelta".}: cint
    mLinesPerAction* {.importc: "m_linesPerAction".}: cint
    mColumnsPerAction* {.importc: "m_columnsPerAction".}: cint


proc constructwxMouseEvent*(mouseType: WxEventType = wxEVT_NULL): WxMouseEvent {.
    cdecl, constructor, importcpp: "wxMouseEvent(@)", header: "wx.h".}
proc constructwxMouseEvent*(event: WxMouseEvent): WxMouseEvent {.cdecl,
    constructor, importcpp: "wxMouseEvent(@)", header: "wx.h".}
proc isButton*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsButton", header: "wx.h".}
proc buttonDown*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl,
    importcpp: "ButtonDown", header: "wx.h".}
proc buttonDClick*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl,
    importcpp: "ButtonDClick", header: "wx.h".}
proc buttonUp*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl,
    importcpp: "ButtonUp", header: "wx.h".}
proc button*(this: WxMouseEvent; but: cint): bool {.noSideEffect, cdecl,
    importcpp: "Button", header: "wx.h".}
proc getButton*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetButton", header: "wx.h".}
proc leftDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "LeftDown", header: "wx.h".}
proc middleDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "MiddleDown", header: "wx.h".}
proc rightDown*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "RightDown", header: "wx.h".}
proc aux1Down*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux1Down", header: "wx.h".}
proc aux2Down*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux2Down", header: "wx.h".}
proc leftUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "LeftUp", header: "wx.h".}
proc middleUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "MiddleUp", header: "wx.h".}
proc rightUp*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "RightUp", header: "wx.h".}
proc aux1Up*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux1Up", header: "wx.h".}
proc aux2Up*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux2Up", header: "wx.h".}
proc leftDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "LeftDClick", header: "wx.h".}
proc middleDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "MiddleDClick", header: "wx.h".}
proc rightDClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "RightDClick", header: "wx.h".}
proc aux1DClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux1DClick", header: "wx.h".}
proc aux2DClick*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Aux2DClick", header: "wx.h".}
proc dragging*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Dragging", header: "wx.h".}
proc moving*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Moving", header: "wx.h".}
proc entering*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Entering", header: "wx.h".}
proc leaving*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "Leaving", header: "wx.h".}
proc getClickCount*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetClickCount", header: "wx.h".}
proc getWheelRotation*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetWheelRotation", header: "wx.h".}
proc getWheelDelta*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetWheelDelta", header: "wx.h".}
proc getWheelAxis*(this: WxMouseEvent): WxMouseWheelAxis {.noSideEffect, cdecl,
    importcpp: "GetWheelAxis", header: "wx.h".}
proc getLinesPerAction*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetLinesPerAction", header: "wx.h".}
proc getColumnsPerAction*(this: WxMouseEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetColumnsPerAction", header: "wx.h".}
proc isPageScroll*(this: WxMouseEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsPageScroll", header: "wx.h".}
proc clone*(this: WxMouseEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getEventCategory*(this: WxMouseEvent): WxEventCategory {.noSideEffect,
    cdecl, importcpp: "GetEventCategory", header: "wx.h".}

type
  WxSetCursorEvent* {.importcpp: "wxSetCursorEvent", header: "wx.h".} = object of WxEvent


proc constructwxSetCursorEvent*(x: WxCoord = 0; y: WxCoord = 0): WxSetCursorEvent {.
    cdecl, constructor, importcpp: "wxSetCursorEvent(@)", header: "wx.h".}
proc constructwxSetCursorEvent*(event: WxSetCursorEvent): WxSetCursorEvent {.
    cdecl, constructor, importcpp: "wxSetCursorEvent(@)", header: "wx.h".}
proc getX*(this: WxSetCursorEvent): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetX", header: "wx.h".}
proc getY*(this: WxSetCursorEvent): WxCoord {.noSideEffect, cdecl,
    importcpp: "GetY", header: "wx.h".}
proc hasCursor*(this: WxSetCursorEvent): bool {.noSideEffect, cdecl,
    importcpp: "HasCursor", header: "wx.h".}
proc clone*(this: WxSetCursorEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxKeyCategoryFlags* {.size: sizeof(cint),
                        importcpp: "wxHelpEvent::wxKeyCategoryFlags",
                        header: "wx.h".} = enum
    WXK_CATEGORY_ARROW = 1, WXK_CATEGORY_PAGING = 2, WXK_CATEGORY_JUMP = 4,
    WXK_CATEGORY_NAVIGATION = 1 or 2 or 4, WXK_CATEGORY_TAB = 8,
    WXK_CATEGORY_CUT = 16


type
  WxChar* = uint32
  WxKeyEvent* {.importcpp: "wxKeyEvent", header: "wx.h".} = object of WxEvent
    mX* {.importc: "m_x".}: WxCoord
    mY* {.importc: "m_y".}: WxCoord
    mKeyCode* {.importc: "m_keyCode".}: clong
    mUniChar* {.importc: "m_uniChar".}: WxChar
    mRawCode* {.importc: "m_rawCode".}: WxUint32
    mRawFlags* {.importc: "m_rawFlags".}: WxUint32


proc constructwxKeyEvent*(keyType: WxEventType = wxEVT_NULL): WxKeyEvent {.
    cdecl, constructor, importcpp: "wxKeyEvent(@)", header: "wx.h".}
proc constructwxKeyEvent*(evt: WxKeyEvent): WxKeyEvent {.cdecl, constructor,
    importcpp: "wxKeyEvent(@)", header: "wx.h".}
proc constructwxKeyEvent*(eventType: WxEventType; evt: WxKeyEvent): WxKeyEvent {.
    cdecl, constructor, importcpp: "wxKeyEvent(@)", header: "wx.h".}
proc getKeyCode*(this: WxKeyEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetKeyCode", header: "wx.h".}
proc isKeyInCategory*(this: WxKeyEvent; category: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsKeyInCategory", header: "wx.h".}
proc getUnicodeKey*(this: WxKeyEvent): WxChar {.noSideEffect, cdecl,
    importcpp: "GetUnicodeKey", header: "wx.h".}
proc getRawKeyCode*(this: WxKeyEvent): WxUint32 {.noSideEffect, cdecl,
    importcpp: "GetRawKeyCode", header: "wx.h".}
proc getRawKeyFlags*(this: WxKeyEvent): WxUint32 {.noSideEffect, cdecl,
    importcpp: "GetRawKeyFlags", header: "wx.h".}
proc getPosition*(this: WxKeyEvent; xpos: ptr WxCoord; ypos: ptr WxCoord) {.
    noSideEffect, cdecl, importcpp: "GetPosition", header: "wx.h".}
proc getPosition*(this: WxKeyEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc getX*(this: WxKeyEvent): WxCoord {.noSideEffect, cdecl, importcpp: "GetX",
                                        header: "wx.h".}
proc getY*(this: WxKeyEvent): WxCoord {.noSideEffect, cdecl, importcpp: "GetY",
                                        header: "wx.h".}
proc doAllowNextEvent*(this: var WxKeyEvent) {.cdecl,
    importcpp: "DoAllowNextEvent", header: "wx.h".}
proc isNextEventAllowed*(this: WxKeyEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsNextEventAllowed", header: "wx.h".}
proc clone*(this: WxKeyEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getEventCategory*(this: WxKeyEvent): WxEventCategory {.noSideEffect, cdecl,
    importcpp: "GetEventCategory", header: "wx.h".}

type
  WxSizeEvent* {.importcpp: "wxSizeEvent", header: "wx.h".} = object of WxEvent
    mSize* {.importc: "m_size".}: WxSize
    mRect* {.importc: "m_rect".}: WxRect


proc constructwxSizeEvent*(): WxSizeEvent {.cdecl, constructor,
    importcpp: "wxSizeEvent(@)", header: "wx.h".}
proc constructwxSizeEvent*(sz: WxSize; winid: cint = 0): WxSizeEvent {.cdecl,
    constructor, importcpp: "wxSizeEvent(@)", header: "wx.h".}
proc constructwxSizeEvent*(event: WxSizeEvent): WxSizeEvent {.cdecl,
    constructor, importcpp: "wxSizeEvent(@)", header: "wx.h".}
proc constructwxSizeEvent*(rect: WxRect; id: cint = 0): WxSizeEvent {.cdecl,
    constructor, importcpp: "wxSizeEvent(@)", header: "wx.h".}
proc getSize*(this: WxSizeEvent): WxSize {.noSideEffect, cdecl,
    importcpp: "GetSize", header: "wx.h".}
proc setSize*(this: var WxSizeEvent; size: WxSize) {.cdecl,
    importcpp: "SetSize", header: "wx.h".}
proc getRect*(this: WxSizeEvent): WxRect {.noSideEffect, cdecl,
    importcpp: "GetRect", header: "wx.h".}
proc setRect*(this: var WxSizeEvent; rect: WxRect) {.cdecl,
    importcpp: "SetRect", header: "wx.h".}
proc clone*(this: WxSizeEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxMoveEvent* {.importcpp: "wxMoveEvent", header: "wx.h".} = object of WxEvent


proc constructwxMoveEvent*(): WxMoveEvent {.cdecl, constructor,
    importcpp: "wxMoveEvent(@)", header: "wx.h".}
proc constructwxMoveEvent*(pos: WxPoint; winid: cint = 0): WxMoveEvent {.cdecl,
    constructor, importcpp: "wxMoveEvent(@)", header: "wx.h".}
proc constructwxMoveEvent*(event: WxMoveEvent): WxMoveEvent {.cdecl,
    constructor, importcpp: "wxMoveEvent(@)", header: "wx.h".}
proc constructwxMoveEvent*(rect: WxRect; id: cint = 0): WxMoveEvent {.cdecl,
    constructor, importcpp: "wxMoveEvent(@)", header: "wx.h".}
proc getPosition*(this: WxMoveEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxMoveEvent; pos: WxPoint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc getRect*(this: WxMoveEvent): WxRect {.noSideEffect, cdecl,
    importcpp: "GetRect", header: "wx.h".}
proc setRect*(this: var WxMoveEvent; rect: WxRect) {.cdecl,
    importcpp: "SetRect", header: "wx.h".}
proc clone*(this: WxMoveEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
type
  WxPaintEvent* {.importcpp: "wxPaintEvent", header: "wx.h".} = object of WxEvent


proc constructwxPaintEvent*(id: cint = 0): WxPaintEvent {.cdecl, constructor,
    importcpp: "wxPaintEvent(@)", header: "wx.h".}
proc clone*(this: WxPaintEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
type
  WxNcPaintEvent* {.importcpp: "wxNcPaintEvent", header: "wx.h".} = object of WxEvent


proc constructwxNcPaintEvent*(winid: cint = 0): WxNcPaintEvent {.cdecl,
    constructor, importcpp: "wxNcPaintEvent(@)", header: "wx.h".}
proc clone*(this: WxNcPaintEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxEraseEvent* {.importcpp: "wxEraseEvent", header: "wx.h".} = object of WxEvent


proc constructwxEraseEvent*(id: cint = 0; dc: pointer = nil): WxEraseEvent {.
    cdecl, constructor, importcpp: "wxEraseEvent(@)", header: "wx.h".}
proc constructwxEraseEvent*(event: WxEraseEvent): WxEraseEvent {.cdecl,
    constructor, importcpp: "wxEraseEvent(@)", header: "wx.h".}
proc getDC*(this: WxEraseEvent): pointer {.noSideEffect, cdecl,
    importcpp: "GetDC", header: "wx.h".}
proc clone*(this: WxEraseEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxFocusEvent* {.importcpp: "wxFocusEvent", header: "wx.h".} = object of WxEvent


proc constructwxFocusEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0): WxFocusEvent {.
    cdecl, constructor, importcpp: "wxFocusEvent(@)", header: "wx.h".}
proc constructwxFocusEvent*(event: WxFocusEvent): WxFocusEvent {.cdecl,
    constructor, importcpp: "wxFocusEvent(@)", header: "wx.h".}
proc getWindow*(this: WxFocusEvent): ptr WxWindow {.noSideEffect, cdecl,
    importcpp: "GetWindow", header: "wx.h".}
proc setWindow*(this: var WxFocusEvent; win: ptr WxWindow) {.cdecl,
    importcpp: "SetWindow", header: "wx.h".}
proc clone*(this: WxFocusEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxChildFocusEvent* {.importcpp: "wxChildFocusEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxChildFocusEvent*(win: ptr WxWindow = nil): WxChildFocusEvent {.
    cdecl, constructor, importcpp: "wxChildFocusEvent(@)", header: "wx.h".}
proc getWindow*(this: WxChildFocusEvent): ptr WxWindow {.noSideEffect, cdecl,
    importcpp: "GetWindow", header: "wx.h".}
proc clone*(this: WxChildFocusEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxActivateEvent* {.importcpp: "wxActivateEvent", header: "wx.h".} = object of WxEvent

  Reason* {.size: sizeof(cint), importcpp: "wxActivateEvent::Reason",
            header: "wx.h".} = enum
    ReasonMouse, ReasonUnknown


proc constructwxActivateEvent*(`type`: WxEventType = wxEVT_NULL;
                               active: bool = true; id: cint = 0;
                               activationReason: Reason = Reason_Unknown): WxActivateEvent {.
    cdecl, constructor, importcpp: "wxActivateEvent(@)", header: "wx.h".}
proc constructwxActivateEvent*(event: WxActivateEvent): WxActivateEvent {.cdecl,
    constructor, importcpp: "wxActivateEvent(@)", header: "wx.h".}
proc getActive*(this: WxActivateEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetActive", header: "wx.h".}
proc getActivationReason*(this: WxActivateEvent): Reason {.noSideEffect, cdecl,
    importcpp: "GetActivationReason", header: "wx.h".}
proc clone*(this: WxActivateEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxInitDialogEvent* {.importcpp: "wxInitDialogEvent", header: "wx.h".} = object of WxEvent


proc constructwxInitDialogEvent*(id: cint = 0): WxInitDialogEvent {.cdecl,
    constructor, importcpp: "wxInitDialogEvent(@)", header: "wx.h".}
proc clone*(this: WxInitDialogEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxMenuEvent* {.importcpp: "wxMenuEvent", header: "wx.h".} = object of WxEvent


proc constructwxMenuEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0;
                           menu: ptr WxMenu = nil): WxMenuEvent {.cdecl,
    constructor, importcpp: "wxMenuEvent(@)", header: "wx.h".}
proc constructwxMenuEvent*(event: WxMenuEvent): WxMenuEvent {.cdecl,
    constructor, importcpp: "wxMenuEvent(@)", header: "wx.h".}
proc getMenuId*(this: WxMenuEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetMenuId", header: "wx.h".}
proc isPopup*(this: WxMenuEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsPopup", header: "wx.h".}
proc getMenu*(this: WxMenuEvent): ptr WxMenu {.noSideEffect, cdecl,
    importcpp: "GetMenu", header: "wx.h".}
proc clone*(this: WxMenuEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxCloseEvent* {.importcpp: "wxCloseEvent", header: "wx.h".} = object of WxEvent


proc constructwxCloseEvent*(`type`: WxEventType = wxEVT_NULL; winid: cint = 0): WxCloseEvent {.
    cdecl, constructor, importcpp: "wxCloseEvent(@)", header: "wx.h".}
proc constructwxCloseEvent*(event: WxCloseEvent): WxCloseEvent {.cdecl,
    constructor, importcpp: "wxCloseEvent(@)", header: "wx.h".}
proc setLoggingOff*(this: var WxCloseEvent; logOff: bool) {.cdecl,
    importcpp: "SetLoggingOff", header: "wx.h".}
proc getLoggingOff*(this: WxCloseEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetLoggingOff", header: "wx.h".}
proc veto*(this: var WxCloseEvent; veto: bool = true) {.cdecl,
    importcpp: "Veto", header: "wx.h".}
proc setCanVeto*(this: var WxCloseEvent; canVeto: bool) {.cdecl,
    importcpp: "SetCanVeto", header: "wx.h".}
proc canVeto*(this: WxCloseEvent): bool {.noSideEffect, cdecl,
    importcpp: "CanVeto", header: "wx.h".}
proc getVeto*(this: WxCloseEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetVeto", header: "wx.h".}
proc clone*(this: WxCloseEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxShowEvent* {.importcpp: "wxShowEvent", header: "wx.h".} = object of WxEvent


proc constructwxShowEvent*(winid: cint = 0; show: bool = false): WxShowEvent {.
    cdecl, constructor, importcpp: "wxShowEvent(@)", header: "wx.h".}
proc constructwxShowEvent*(event: WxShowEvent): WxShowEvent {.cdecl,
    constructor, importcpp: "wxShowEvent(@)", header: "wx.h".}
proc setShow*(this: var WxShowEvent; show: bool) {.cdecl, importcpp: "SetShow",
    header: "wx.h".}
proc isShown*(this: WxShowEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsShown", header: "wx.h".}
proc clone*(this: WxShowEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxIconizeEvent* {.importcpp: "wxIconizeEvent", header: "wx.h".} = object of WxEvent


proc constructwxIconizeEvent*(winid: cint = 0; iconized: bool = true): WxIconizeEvent {.
    cdecl, constructor, importcpp: "wxIconizeEvent(@)", header: "wx.h".}
proc constructwxIconizeEvent*(event: WxIconizeEvent): WxIconizeEvent {.cdecl,
    constructor, importcpp: "wxIconizeEvent(@)", header: "wx.h".}
proc isIconized*(this: WxIconizeEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsIconized", header: "wx.h".}
proc clone*(this: WxIconizeEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxMaximizeEvent* {.importcpp: "wxMaximizeEvent", header: "wx.h".} = object of WxEvent


proc constructwxMaximizeEvent*(winid: cint = 0): WxMaximizeEvent {.cdecl,
    constructor, importcpp: "wxMaximizeEvent(@)", header: "wx.h".}
proc clone*(this: WxMaximizeEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

const
  wxJOYSTICK1* = 0
  wxJOYSTICK2* = 1


const
  wxJOY_BUTTON_ANY* = - 1
  wxJOY_BUTTON1* = 1
  wxJOY_BUTTON2* = 2
  wxJOY_BUTTON3* = 4
  wxJOY_BUTTON4* = 8

type
  WxJoystickEvent* {.importcpp: "wxJoystickEvent", header: "wx.h".} = object of WxEvent
    mPos* {.importc: "m_pos".}: WxPoint
    mZPosition* {.importc: "m_zPosition".}: cint
    mButtonChange* {.importc: "m_buttonChange".}: cint
    mButtonState* {.importc: "m_buttonState".}: cint
    mJoyStick* {.importc: "m_joyStick".}: cint


proc constructwxJoystickEvent*(`type`: WxEventType = wxEVT_NULL;
                               state: cint = 0; joystick: cint = wxJOYSTICK1;
                               change: cint = 0): WxJoystickEvent {.cdecl,
    constructor, importcpp: "wxJoystickEvent(@)", header: "wx.h".}
proc constructwxJoystickEvent*(event: WxJoystickEvent): WxJoystickEvent {.cdecl,
    constructor, importcpp: "wxJoystickEvent(@)", header: "wx.h".}
proc getPosition*(this: WxJoystickEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc getZPosition*(this: WxJoystickEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetZPosition", header: "wx.h".}
proc getButtonState*(this: WxJoystickEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetButtonState", header: "wx.h".}
proc getButtonChange*(this: WxJoystickEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetButtonChange", header: "wx.h".}
proc getJoystick*(this: WxJoystickEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetJoystick", header: "wx.h".}
proc setJoystick*(this: var WxJoystickEvent; stick: cint) {.cdecl,
    importcpp: "SetJoystick", header: "wx.h".}
proc setButtonState*(this: var WxJoystickEvent; state: cint) {.cdecl,
    importcpp: "SetButtonState", header: "wx.h".}
proc setButtonChange*(this: var WxJoystickEvent; change: cint) {.cdecl,
    importcpp: "SetButtonChange", header: "wx.h".}
proc setPosition*(this: var WxJoystickEvent; pos: WxPoint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc setZPosition*(this: var WxJoystickEvent; zPos: cint) {.cdecl,
    importcpp: "SetZPosition", header: "wx.h".}
proc isButton*(this: WxJoystickEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsButton", header: "wx.h".}
proc isMove*(this: WxJoystickEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsMove", header: "wx.h".}
proc isZMove*(this: WxJoystickEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsZMove", header: "wx.h".}
proc buttonDown*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonDown", header: "wx.h".}
proc buttonUp*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonUp", header: "wx.h".}
proc buttonIsDown*(this: WxJoystickEvent; but: cint = wxJOY_BUTTON_ANY): bool {.
    noSideEffect, cdecl, importcpp: "ButtonIsDown", header: "wx.h".}
proc clone*(this: WxJoystickEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxDropFilesEvent* {.importcpp: "wxDropFilesEvent", header: "wx.h".} = object of WxEvent
    mNoFiles* {.importc: "m_noFiles".}: cint
    mPos* {.importc: "m_pos".}: WxPoint
    mFiles* {.importc: "m_files".}: ptr WxString


proc constructwxDropFilesEvent*(`type`: WxEventType = wxEVT_NULL;
                                noFiles: cint = 0; files: ptr WxString = nil): WxDropFilesEvent {.
    cdecl, constructor, importcpp: "wxDropFilesEvent(@)", header: "wx.h".}
proc constructwxDropFilesEvent*(other: WxDropFilesEvent): WxDropFilesEvent {.
    cdecl, constructor, importcpp: "wxDropFilesEvent(@)", header: "wx.h".}
proc destroywxDropFilesEvent*(this: var WxDropFilesEvent) {.cdecl,
    importcpp: "#.~wxDropFilesEvent()", header: "wx.h".}
proc getPosition*(this: WxDropFilesEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc getNumberOfFiles*(this: WxDropFilesEvent): cint {.noSideEffect, cdecl,
    importcpp: "GetNumberOfFiles", header: "wx.h".}
proc getFiles*(this: WxDropFilesEvent): ptr WxString {.noSideEffect, cdecl,
    importcpp: "GetFiles", header: "wx.h".}
proc clone*(this: WxDropFilesEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxUpdateUIMode* {.size: sizeof(cint),
                    importcpp: "wxHelpEvent::wxUpdateUIMode", header: "wx.h".} = enum
    wxUPDATE_UI_PROCESS_ALL, wxUPDATE_UI_PROCESS_SPECIFIED


type
  WxUpdateUIEvent* {.importcpp: "wxUpdateUIEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxUpdateUIEvent*(commandId: WxWindowID = 0): WxUpdateUIEvent {.
    cdecl, constructor, importcpp: "wxUpdateUIEvent(@)", header: "wx.h".}
proc constructwxUpdateUIEvent*(event: WxUpdateUIEvent): WxUpdateUIEvent {.cdecl,
    constructor, importcpp: "wxUpdateUIEvent(@)", header: "wx.h".}
proc getChecked*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetChecked", header: "wx.h".}
proc getEnabled*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetEnabled", header: "wx.h".}
proc getShown*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetShown", header: "wx.h".}
proc getText*(this: WxUpdateUIEvent): WxString {.noSideEffect, cdecl,
    importcpp: "GetText", header: "wx.h".}
proc getSetText*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetSetText", header: "wx.h".}
proc getSetChecked*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetSetChecked", header: "wx.h".}
proc getSetEnabled*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetSetEnabled", header: "wx.h".}
proc getSetShown*(this: WxUpdateUIEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetSetShown", header: "wx.h".}
proc check*(this: var WxUpdateUIEvent; check: bool) {.cdecl, importcpp: "Check",
    header: "wx.h".}
proc enable*(this: var WxUpdateUIEvent; enable: bool) {.cdecl,
    importcpp: "Enable", header: "wx.h".}
proc show*(this: var WxUpdateUIEvent; show: bool) {.cdecl, importcpp: "Show",
    header: "wx.h".}
proc setText*(this: var WxUpdateUIEvent; text: WxString) {.cdecl,
    importcpp: "SetText", header: "wx.h".}
proc setUpdateInterval*(updateInterval: clong) {.cdecl,
    importcpp: "wxUpdateUIEvent::SetUpdateInterval(@)", header: "wx.h".}
proc getUpdateInterval*(): clong {.cdecl, importcpp: "wxUpdateUIEvent::GetUpdateInterval(@)",
                                   header: "wx.h".}
proc canUpdate*(win: ptr WxWindowBase): bool {.cdecl,
    importcpp: "wxUpdateUIEvent::CanUpdate(@)", header: "wx.h".}
proc resetUpdateTime*() {.cdecl,
                          importcpp: "wxUpdateUIEvent::ResetUpdateTime(@)",
                          header: "wx.h".}
proc setMode*(mode: WxUpdateUIMode) {.cdecl,
                                      importcpp: "wxUpdateUIEvent::SetMode(@)",
                                      header: "wx.h".}
proc getMode*(): WxUpdateUIMode {.cdecl,
                                  importcpp: "wxUpdateUIEvent::GetMode(@)",
                                  header: "wx.h".}
proc clone*(this: WxUpdateUIEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxSysColourChangedEvent* {.importcpp: "wxSysColourChangedEvent",
                             header: "wx.h".} = object of WxEvent


proc constructwxSysColourChangedEvent*(): WxSysColourChangedEvent {.cdecl,
    constructor, importcpp: "wxSysColourChangedEvent(@)", header: "wx.h".}
proc clone*(this: WxSysColourChangedEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxMouseCaptureChangedEvent* {.importcpp: "wxMouseCaptureChangedEvent",
                                header: "wx.h".} = object of WxEvent


proc constructwxMouseCaptureChangedEvent*(winid: WxWindowID = 0;
    gainedCapture: ptr WxWindow = nil): WxMouseCaptureChangedEvent {.cdecl,
    constructor, importcpp: "wxMouseCaptureChangedEvent(@)", header: "wx.h".}
proc constructwxMouseCaptureChangedEvent*(event: WxMouseCaptureChangedEvent): WxMouseCaptureChangedEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureChangedEvent(@)",
    header: "wx.h".}
proc clone*(this: WxMouseCaptureChangedEvent): ptr WxEvent {.noSideEffect,
    cdecl, importcpp: "Clone", header: "wx.h".}
proc getCapturedWindow*(this: WxMouseCaptureChangedEvent): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "GetCapturedWindow", header: "wx.h".}

type
  WxMouseCaptureLostEvent* {.importcpp: "wxMouseCaptureLostEvent",
                             header: "wx.h".} = object of WxEvent


proc constructwxMouseCaptureLostEvent*(winid: WxWindowID = 0): WxMouseCaptureLostEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureLostEvent(@)", header: "wx.h".}
proc constructwxMouseCaptureLostEvent*(event: WxMouseCaptureLostEvent): WxMouseCaptureLostEvent {.
    cdecl, constructor, importcpp: "wxMouseCaptureLostEvent(@)", header: "wx.h".}
proc clone*(this: WxMouseCaptureLostEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxDisplayChangedEvent* {.importcpp: "wxDisplayChangedEvent", header: "wx.h".} = object of WxEvent


proc constructwxDisplayChangedEvent*(): WxDisplayChangedEvent {.cdecl,
    constructor, importcpp: "wxDisplayChangedEvent(@)", header: "wx.h".}
proc clone*(this: WxDisplayChangedEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxPaletteChangedEvent* {.importcpp: "wxPaletteChangedEvent", header: "wx.h".} = object of WxEvent
    mChangedWindow* {.importc: "m_changedWindow".}: ptr WxWindow


proc constructwxPaletteChangedEvent*(winid: WxWindowID = 0): WxPaletteChangedEvent {.
    cdecl, constructor, importcpp: "wxPaletteChangedEvent(@)", header: "wx.h".}
proc constructwxPaletteChangedEvent*(event: WxPaletteChangedEvent): WxPaletteChangedEvent {.
    cdecl, constructor, importcpp: "wxPaletteChangedEvent(@)", header: "wx.h".}
proc setChangedWindow*(this: var WxPaletteChangedEvent; win: ptr WxWindow) {.
    cdecl, importcpp: "SetChangedWindow", header: "wx.h".}
proc getChangedWindow*(this: WxPaletteChangedEvent): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "GetChangedWindow", header: "wx.h".}
proc clone*(this: WxPaletteChangedEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxQueryNewPaletteEvent* {.importcpp: "wxQueryNewPaletteEvent", header: "wx.h".} = object of WxEvent
    mPaletteRealized* {.importc: "m_paletteRealized".}: bool


proc constructwxQueryNewPaletteEvent*(winid: WxWindowID = 0): WxQueryNewPaletteEvent {.
    cdecl, constructor, importcpp: "wxQueryNewPaletteEvent(@)", header: "wx.h".}
proc constructwxQueryNewPaletteEvent*(event: WxQueryNewPaletteEvent): WxQueryNewPaletteEvent {.
    cdecl, constructor, importcpp: "wxQueryNewPaletteEvent(@)", header: "wx.h".}
proc setPaletteRealized*(this: var WxQueryNewPaletteEvent; realized: bool) {.
    cdecl, importcpp: "SetPaletteRealized", header: "wx.h".}
proc getPaletteRealized*(this: WxQueryNewPaletteEvent): bool {.noSideEffect,
    cdecl, importcpp: "GetPaletteRealized", header: "wx.h".}
proc clone*(this: WxQueryNewPaletteEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxNavigationKeyEvent* {.importcpp: "wxNavigationKeyEvent", header: "wx.h".} = object of WxEvent
    mFlags* {.importc: "m_flags".}: clong
    mFocus* {.importc: "m_focus".}: ptr WxWindow


proc constructwxNavigationKeyEvent*(): WxNavigationKeyEvent {.cdecl,
    constructor, importcpp: "wxNavigationKeyEvent(@)", header: "wx.h".}
proc constructwxNavigationKeyEvent*(event: WxNavigationKeyEvent): WxNavigationKeyEvent {.
    cdecl, constructor, importcpp: "wxNavigationKeyEvent(@)", header: "wx.h".}
proc getDirection*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl,
    importcpp: "GetDirection", header: "wx.h".}
proc setDirection*(this: var WxNavigationKeyEvent; bForward: bool) {.cdecl,
    importcpp: "SetDirection", header: "wx.h".}
proc isWindowChange*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsWindowChange", header: "wx.h".}
proc setWindowChange*(this: var WxNavigationKeyEvent; bIs: bool) {.cdecl,
    importcpp: "SetWindowChange", header: "wx.h".}
proc isFromTab*(this: WxNavigationKeyEvent): bool {.noSideEffect, cdecl,
    importcpp: "IsFromTab", header: "wx.h".}
proc setFromTab*(this: var WxNavigationKeyEvent; bIs: bool) {.cdecl,
    importcpp: "SetFromTab", header: "wx.h".}
proc getCurrentFocus*(this: WxNavigationKeyEvent): ptr WxWindow {.noSideEffect,
    cdecl, importcpp: "GetCurrentFocus", header: "wx.h".}
proc setCurrentFocus*(this: var WxNavigationKeyEvent; win: ptr WxWindow) {.
    cdecl, importcpp: "SetCurrentFocus", header: "wx.h".}
proc setFlags*(this: var WxNavigationKeyEvent; flags: clong) {.cdecl,
    importcpp: "SetFlags", header: "wx.h".}
proc clone*(this: WxNavigationKeyEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
type
  WxNavigationKeyEventFlags* {.size: sizeof(cint), importcpp: "wxNavigationKeyEvent::wxNavigationKeyEventFlags",
                               header: "wx.h".} = enum
    IsBackward = 0x00000000, IsForward = 0x00000001, WinChange = 0x00000002,
    FromTab = 0x00000004



type
  WxWindowCreateEvent* {.importcpp: "wxWindowCreateEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxWindowCreateEvent*(win: ptr WxWindow = nil): WxWindowCreateEvent {.
    cdecl, constructor, importcpp: "wxWindowCreateEvent(@)", header: "wx.h".}
proc getWindow*(this: WxWindowCreateEvent): ptr WxWindow {.noSideEffect, cdecl,
    importcpp: "GetWindow", header: "wx.h".}
proc clone*(this: WxWindowCreateEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
type
  WxWindowDestroyEvent* {.importcpp: "wxWindowDestroyEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxWindowDestroyEvent*(win: ptr WxWindow = nil): WxWindowDestroyEvent {.
    cdecl, constructor, importcpp: "wxWindowDestroyEvent(@)", header: "wx.h".}
proc getWindow*(this: WxWindowDestroyEvent): ptr WxWindow {.noSideEffect, cdecl,
    importcpp: "GetWindow", header: "wx.h".}
proc clone*(this: WxWindowDestroyEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

var wxDefaultPosition* {.importcpp: "wxDefaultPosition", header: "wx.h".}: WxPoint

type
  WxHelpEvent* {.importcpp: "wxHelpEvent", header: "wx.h".} = object of WxCommandEvent

  Origin* {.size: sizeof(cint), importcpp: "wxHelpEvent::Origin", header: "wx.h".} = enum
    OriginUnknown, OriginKeyboard, OriginHelpButton


proc constructwxHelpEvent*(`type`: WxEventType = wxEVT_NULL;
                           winid: WxWindowID = 0;
                           pt: WxPoint = wxDefaultPosition;
                           origin: Origin = Origin_Unknown): WxHelpEvent {.
    cdecl, constructor, importcpp: "wxHelpEvent(@)", header: "wx.h".}
proc constructwxHelpEvent*(event: WxHelpEvent): WxHelpEvent {.cdecl,
    constructor, importcpp: "wxHelpEvent(@)", header: "wx.h".}
proc getPosition*(this: WxHelpEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxHelpEvent; pos: WxPoint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc getLink*(this: WxHelpEvent): WxString {.noSideEffect, cdecl,
    importcpp: "GetLink", header: "wx.h".}
proc setLink*(this: var WxHelpEvent; link: WxString) {.cdecl,
    importcpp: "SetLink", header: "wx.h".}
proc getTarget*(this: WxHelpEvent): WxString {.noSideEffect, cdecl,
    importcpp: "GetTarget", header: "wx.h".}
proc setTarget*(this: var WxHelpEvent; target: WxString) {.cdecl,
    importcpp: "SetTarget", header: "wx.h".}
proc clone*(this: WxHelpEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}
proc getOrigin*(this: WxHelpEvent): Origin {.noSideEffect, cdecl,
    importcpp: "GetOrigin", header: "wx.h".}
proc setOrigin*(this: var WxHelpEvent; origin: Origin) {.cdecl,
    importcpp: "SetOrigin", header: "wx.h".}

type
  WxClipboardTextEvent* {.importcpp: "wxClipboardTextEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxClipboardTextEvent*(`type`: WxEventType = wxEVT_NULL;
                                    winid: WxWindowID = 0): WxClipboardTextEvent {.
    cdecl, constructor, importcpp: "wxClipboardTextEvent(@)", header: "wx.h".}
proc constructwxClipboardTextEvent*(event: WxClipboardTextEvent): WxClipboardTextEvent {.
    cdecl, constructor, importcpp: "wxClipboardTextEvent(@)", header: "wx.h".}
proc clone*(this: WxClipboardTextEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}

type
  WxContextMenuEvent* {.importcpp: "wxContextMenuEvent", header: "wx.h".} = object of WxCommandEvent


proc constructwxContextMenuEvent*(`type`: WxEventType = wxEVT_NULL;
                                  winid: WxWindowID = 0;
                                  pt: WxPoint = wxDefaultPosition): WxContextMenuEvent {.
    cdecl, constructor, importcpp: "wxContextMenuEvent(@)", header: "wx.h".}
proc constructwxContextMenuEvent*(event: WxContextMenuEvent): WxContextMenuEvent {.
    cdecl, constructor, importcpp: "wxContextMenuEvent(@)", header: "wx.h".}
proc getPosition*(this: WxContextMenuEvent): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetPosition", header: "wx.h".}
proc setPosition*(this: var WxContextMenuEvent; pos: WxPoint) {.cdecl,
    importcpp: "SetPosition", header: "wx.h".}
proc clone*(this: WxContextMenuEvent): ptr WxEvent {.noSideEffect, cdecl,
    importcpp: "Clone", header: "wx.h".}


type
  WxEventTableEntryBase* {.importcpp: "wxEventTableEntryBase", header: "wx.h",
                           inheritable.} = object
    mId* {.importc: "m_id".}: cint
    mLastId* {.importc: "m_lastId".}: cint
    mFn* {.importc: "m_fn".}: ptr WxEventFunctor
    mCallbackUserData* {.importc: "m_callbackUserData".}: ptr WxObject


proc constructwxEventTableEntryBase*(winid: cint; idLast: cint;
                                     fn: ptr WxEventFunctor; data: ptr WxObject): WxEventTableEntryBase {.
    cdecl, constructor, importcpp: "wxEventTableEntryBase(@)", header: "wx.h".}
proc constructwxEventTableEntryBase*(entry: WxEventTableEntryBase): WxEventTableEntryBase {.
    cdecl, constructor, importcpp: "wxEventTableEntryBase(@)", header: "wx.h".}
proc destroywxEventTableEntryBase*(this: var WxEventTableEntryBase) {.cdecl,
    importcpp: "#.~wxEventTableEntryBase()", header: "wx.h".}

type
  WxEventTableEntry* {.importcpp: "wxEventTableEntry", header: "wx.h".} = object of WxEventTableEntryBase
    mEventType* {.importc: "m_eventType".}: cint


proc constructwxEventTableEntry*(evType: cint; winid: cint; idLast: cint;
                                 fn: ptr WxEventFunctor; data: ptr WxObject): WxEventTableEntry {.
    cdecl, constructor, importcpp: "wxEventTableEntry(@)", header: "wx.h".}

type
  WxDynamicEventTableEntry* {.importcpp: "wxDynamicEventTableEntry",
                              header: "wx.h".} = object of WxEventTableEntryBase
    mEventType* {.importc: "m_eventType".}: cint


proc constructwxDynamicEventTableEntry*(evType: cint; winid: cint; idLast: cint;
                                        fn: ptr WxEventFunctor;
                                        data: ptr WxObject): WxDynamicEventTableEntry {.
    cdecl, constructor, importcpp: "wxDynamicEventTableEntry(@)", header: "wx.h".}

type
  WxEventTable* {.importcpp: "wxEventTable", header: "wx.h".} = object
    baseTable* {.importc: "baseTable".}: ptr WxEventTable
    entries* {.importc: "entries".}: ptr WxEventTableEntry



type
  WxEventHashTable* {.importcpp: "wxEventHashTable", header: "wx.h".} = object


proc constructwxEventHashTable*(table: WxEventTable): WxEventHashTable {.cdecl,
    constructor, importcpp: "wxEventHashTable(@)", header: "wx.h".}
proc destroywxEventHashTable*(this: var WxEventHashTable) {.cdecl,
    importcpp: "#.~wxEventHashTable()", header: "wx.h".}
proc handleEvent*(this: var WxEventHashTable; event: var WxEvent;
                  self: ptr WxEvtHandler): bool {.cdecl,
    importcpp: "HandleEvent", header: "wx.h".}
proc clear*(this: var WxEventHashTable) {.cdecl, importcpp: "Clear",
    header: "wx.h".}

type
  WxEvtHandler* {.importcpp: "wxEvtHandler", header: "wx.h".} = object of WxObject


proc constructwxEvtHandler*(): WxEvtHandler {.cdecl, constructor,
    importcpp: "wxEvtHandler(@)", header: "wx.h".}
proc destroywxEvtHandler*(this: var WxEvtHandler) {.cdecl,
    importcpp: "#.~wxEvtHandler()", header: "wx.h".}
proc getNextHandler*(this: WxEvtHandler): ptr WxEvtHandler {.noSideEffect,
    cdecl, importcpp: "GetNextHandler", header: "wx.h".}
proc getPreviousHandler*(this: WxEvtHandler): ptr WxEvtHandler {.noSideEffect,
    cdecl, importcpp: "GetPreviousHandler", header: "wx.h".}
proc setNextHandler*(this: var WxEvtHandler; handler: ptr WxEvtHandler) {.cdecl,
    importcpp: "SetNextHandler", header: "wx.h".}
proc setPreviousHandler*(this: var WxEvtHandler; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetPreviousHandler", header: "wx.h".}
proc setEvtHandlerEnabled*(this: var WxEvtHandler; enabled: bool) {.cdecl,
    importcpp: "SetEvtHandlerEnabled", header: "wx.h".}
proc getEvtHandlerEnabled*(this: WxEvtHandler): bool {.noSideEffect, cdecl,
    importcpp: "GetEvtHandlerEnabled", header: "wx.h".}
proc unlink*(this: var WxEvtHandler) {.cdecl, importcpp: "Unlink",
                                       header: "wx.h".}
proc isUnlinked*(this: WxEvtHandler): bool {.noSideEffect, cdecl,
    importcpp: "IsUnlinked", header: "wx.h".}
proc addFilter*(filter: ptr WxEventFilter) {.cdecl,
    importcpp: "wxEvtHandler::AddFilter(@)", header: "wx.h".}
proc removeFilter*(filter: ptr WxEventFilter) {.cdecl,
    importcpp: "wxEvtHandler::RemoveFilter(@)", header: "wx.h".}
proc processEvent*(this: var WxEvtHandler; event: var WxEvent): bool {.cdecl,
    importcpp: "ProcessEvent", header: "wx.h".}
proc safelyProcessEvent*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "SafelyProcessEvent", header: "wx.h".}
proc processEventLocally*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessEventLocally", header: "wx.h".}
proc queueEvent*(this: var WxEvtHandler; event: ptr WxEvent) {.cdecl,
    importcpp: "QueueEvent", header: "wx.h".}
proc addPendingEvent*(this: var WxEvtHandler; event: WxEvent) {.cdecl,
    importcpp: "AddPendingEvent", header: "wx.h".}
proc processPendingEvents*(this: var WxEvtHandler) {.cdecl,
    importcpp: "ProcessPendingEvents", header: "wx.h".}
proc deletePendingEvents*(this: var WxEvtHandler) {.cdecl,
    importcpp: "DeletePendingEvents", header: "wx.h".}
proc processThreadEvent*(this: var WxEvtHandler; event: WxEvent): bool {.cdecl,
    importcpp: "ProcessThreadEvent", header: "wx.h".}
proc callAfter*[T](this: var WxEvtHandler; `method`: pointer) {.cdecl,
    importcpp: "CallAfter", header: "wx.h".}
proc callAfter*[T, T1, P1](this: var WxEvtHandler; `method`: pointer; x1: P1) {.
    cdecl, importcpp: "CallAfter", header: "wx.h".}
proc callAfter*[T, T1, T2, P1, P2](this: var WxEvtHandler; `method`: pointer;
                                   x1: P1; x2: P2) {.cdecl,
    importcpp: "CallAfter", header: "wx.h".}
proc callAfter*[T](this: var WxEvtHandler; fn: T) {.cdecl,
    importcpp: "CallAfter", header: "wx.h".}
proc connect*(this: var WxEvtHandler; winid: cint; lastId: cint;
              eventType: WxEventType; `func`: WxObjectEventFunction;
              userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil) {.
    cdecl, importcpp: "Connect", header: "wx.h".}
proc connect*(this: var WxEvtHandler; winid: cint; eventType: WxEventType;
              `func`: WxObjectEventFunction; userData: ptr WxObject = nil;
              eventSink: ptr WxEvtHandler = nil) {.cdecl, importcpp: "Connect",
    header: "wx.h".}
proc connect*(this: var WxEvtHandler; eventType: WxEventType;
              `func`: WxObjectEventFunction; userData: ptr WxObject = nil;
              eventSink: ptr WxEvtHandler = nil) {.cdecl, importcpp: "Connect",
    header: "wx.h".}
proc disconnect*(this: var WxEvtHandler; winid: cint; lastId: cint;
                 eventType: WxEventType; `func`: WxObjectEventFunction = nil;
                 userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil): bool {.
    cdecl, importcpp: "Disconnect", header: "wx.h".}
proc disconnect*(this: var WxEvtHandler; winid = wxID_ANY;
                 eventType: WxEventType = wxEVT_NULL;
                 `func`: WxObjectEventFunction = nil;
                 userData: ptr WxObject = nil; eventSink: ptr WxEvtHandler = nil): bool {.
    cdecl, importcpp: "Disconnect", header: "wx.h".}
proc disconnect*(this: var WxEvtHandler; eventType: WxEventType;
                 `func`: WxObjectEventFunction; userData: ptr WxObject = nil;
                 eventSink: ptr WxEvtHandler = nil): bool {.cdecl,
    importcpp: "Disconnect", header: "wx.h".}
proc `bind`*[EventTag, EventArg](this: var WxEvtHandler; eventType: EventTag;
                                 function: proc (a2: var EventArg) {.cdecl.};
                                 winid = wxID_ANY;
                                 lastId = wxID_ANY;
                                 userData: ptr WxObject = nil) {.cdecl,
    importcpp: "Bind", header: "wx.h".}
proc unbind*[EventTag, EventArg](this: var WxEvtHandler; eventType: EventTag;
                                 function: proc (a2: var EventArg) {.cdecl.};
                                 winid = wxID_ANY;
                                 lastId = wxID_ANY;
                                 userData: ptr WxObject = nil): bool {.cdecl,
    importcpp: "Unbind", header: "wx.h".}
proc `bind`*[EventTag, Functor](this: var WxEvtHandler; eventType: EventTag;
                                functor: Functor; winid = wxID_ANY;
                                lastId = wxID_ANY;
                                userData: ptr WxObject = nil) {.cdecl,
    importcpp: "Bind", header: "wx.h".}
proc unbind*[EventTag, Functor](this: var WxEvtHandler; eventType: EventTag;
                                functor: Functor; winid = wxID_ANY;
                                lastId = wxID_ANY;
                                userData: ptr WxObject = nil): bool {.cdecl,
    importcpp: "Unbind", header: "wx.h".}
proc `bind`*[EventTag, Class, EventArg, EventHandler](this: var WxEvtHandler;
    eventType: EventTag; `method`: pointer; handler: ptr EventHandler;
    winid = wxID_ANY; lastId = wxID_ANY;
    userData: ptr WxObject = nil) {.cdecl, importcpp: "Bind", header: "wx.h".}
proc unbind*[EventTag, Class, EventArg, EventHandler](this: var WxEvtHandler;
    eventType: EventTag; `method`: pointer; handler: ptr EventHandler;
    winid = wxID_ANY; lastId = wxID_ANY;
    userData: ptr WxObject = nil): bool {.cdecl, importcpp: "Unbind",
    header: "wx.h".}
proc getDynamicEventTable*(this: WxEvtHandler): ptr WxList {.noSideEffect,
    cdecl, importcpp: "GetDynamicEventTable", header: "wx.h".}
proc setClientObject*(this: var WxEvtHandler; data: ptr WxClientData) {.cdecl,
    importcpp: "SetClientObject", header: "wx.h".}
proc getClientObject*(this: WxEvtHandler): ptr WxClientData {.noSideEffect,
    cdecl, importcpp: "GetClientObject", header: "wx.h".}
proc setClientData*(this: var WxEvtHandler; data: pointer) {.cdecl,
    importcpp: "SetClientData", header: "wx.h".}
proc getClientData*(this: WxEvtHandler): pointer {.noSideEffect, cdecl,
    importcpp: "GetClientData", header: "wx.h".}
proc processEventIfMatchesId*(tableEntry: WxEventTableEntryBase;
                              handler: ptr WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "wxEvtHandler::ProcessEventIfMatchesId(@)", header: "wx.h".}
proc searchEventTable*(this: var WxEvtHandler; table: var WxEventTable;
                       event: var WxEvent): bool {.cdecl,
    importcpp: "SearchEventTable", header: "wx.h".}
proc searchDynamicEventTable*(this: var WxEvtHandler; event: var WxEvent): bool {.
    cdecl, importcpp: "SearchDynamicEventTable", header: "wx.h".}
proc clearEventHashTable*(this: var WxEvtHandler) {.cdecl,
    importcpp: "ClearEventHashTable", header: "wx.h".}
proc onSinkDestroyed*(this: var WxEvtHandler; sink: ptr WxEvtHandler) {.cdecl,
    importcpp: "OnSinkDestroyed", header: "wx.h".}

type
  WxTrackerNode* {.importcpp: "wxTrackerNode", header: "wx.h", inheritable.} = object

  WxEventConnectionRef* {.importcpp: "wxEventConnectionRef", header: "wx.h".} = object of WxTrackerNode


proc constructwxEventConnectionRef*(): WxEventConnectionRef {.cdecl,
    constructor, importcpp: "wxEventConnectionRef(@)", header: "wx.h".}
proc constructwxEventConnectionRef*(src: ptr WxEvtHandler;
                                    sink: ptr WxEvtHandler): WxEventConnectionRef {.
    cdecl, constructor, importcpp: "wxEventConnectionRef(@)", header: "wx.h".}
proc onObjectDestroy*(this: var WxEventConnectionRef) {.cdecl,
    importcpp: "OnObjectDestroy", header: "wx.h".}
proc toEventConnection*(this: var WxEventConnectionRef): ptr WxEventConnectionRef {.
    cdecl, importcpp: "ToEventConnection", header: "wx.h".}
proc incRef*(this: var WxEventConnectionRef) {.cdecl, importcpp: "IncRef",
    header: "wx.h".}
proc decRef*(this: var WxEventConnectionRef) {.cdecl, importcpp: "DecRef",
    header: "wx.h".}

proc wxPostEvent*(dest: ptr WxEvtHandler; event: WxEvent) {.cdecl,
    importcpp: "wxPostEvent(@)", header: "wx.h".}

proc wxQueueEvent*(dest: ptr WxEvtHandler; event: ptr WxEvent) {.cdecl,
    importcpp: "wxQueueEvent(@)", header: "wx.h".}

proc wxFindFocusDescendant*(ancestor: ptr WxWindow): ptr WxWindow {.cdecl,
    importcpp: "wxFindFocusDescendant(@)", header: "wx.h".}

var wxEVT_BUTTON* {.importcpp: "wxEVT_BUTTON", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHECKBOX* {.importcpp: "wxEVT_CHECKBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHOICE* {.importcpp: "wxEVT_CHOICE", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_LISTBOX* {.importcpp: "wxEVT_LISTBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_LISTBOX_DCLICK* {.importcpp: "wxEVT_LISTBOX_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_CHECKLISTBOX* {.importcpp: "wxEVT_CHECKLISTBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_MENU* {.importcpp: "wxEVT_MENU", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_SLIDER* {.importcpp: "wxEVT_SLIDER", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_RADIOBOX* {.importcpp: "wxEVT_RADIOBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_RADIOBUTTON* {.importcpp: "wxEVT_RADIOBUTTON", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]


var wxEVT_SCROLLBAR* {.importcpp: "wxEVT_SCROLLBAR", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_VLBOX* {.importcpp: "wxEVT_VLBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMBOBOX* {.importcpp: "wxEVT_COMBOBOX", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_RCLICKED* {.importcpp: "wxEVT_TOOL_RCLICKED", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_DROPDOWN* {.importcpp: "wxEVT_TOOL_DROPDOWN", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_TOOL_ENTER* {.importcpp: "wxEVT_TOOL_ENTER", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMBOBOX_DROPDOWN* {.importcpp: "wxEVT_COMBOBOX_DROPDOWN",
                               header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMBOBOX_CLOSEUP* {.importcpp: "wxEVT_COMBOBOX_CLOSEUP",
                              header: "wx.h".}: WxEventTypeTag[WxCommandEvent]


var wxEVT_THREAD* {.importcpp: "wxEVT_THREAD", header: "wx.h".}: WxEventTypeTag[
    WxThreadEvent]

var wxEVT_ASYNC_METHOD_CALL* {.importcpp: "wxEVT_ASYNC_METHOD_CALL",
                               header: "wx.h".}: WxEventTypeTag[
    WxAsyncMethodCallEvent]


var wxEVT_LEFT_DOWN* {.importcpp: "wxEVT_LEFT_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEFT_UP* {.importcpp: "wxEVT_LEFT_UP", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_DOWN* {.importcpp: "wxEVT_MIDDLE_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_UP* {.importcpp: "wxEVT_MIDDLE_UP", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_DOWN* {.importcpp: "wxEVT_RIGHT_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_UP* {.importcpp: "wxEVT_RIGHT_UP", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MOTION* {.importcpp: "wxEVT_MOTION", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_ENTER_WINDOW* {.importcpp: "wxEVT_ENTER_WINDOW", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEAVE_WINDOW* {.importcpp: "wxEVT_LEAVE_WINDOW", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_LEFT_DCLICK* {.importcpp: "wxEVT_LEFT_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_MIDDLE_DCLICK* {.importcpp: "wxEVT_MIDDLE_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_RIGHT_DCLICK* {.importcpp: "wxEVT_RIGHT_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_SET_FOCUS* {.importcpp: "wxEVT_SET_FOCUS", header: "wx.h".}: WxEventTypeTag[
    WxFocusEvent]

var wxEVT_KILL_FOCUS* {.importcpp: "wxEVT_KILL_FOCUS", header: "wx.h".}: WxEventTypeTag[
    WxFocusEvent]

var wxEVT_CHILD_FOCUS* {.importcpp: "wxEVT_CHILD_FOCUS", header: "wx.h".}: WxEventTypeTag[
    WxChildFocusEvent]

var wxEVT_MOUSEWHEEL* {.importcpp: "wxEVT_MOUSEWHEEL", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1DOWN* {.importcpp: "wxEVT_AUX1_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1UP* {.importcpp: "wxEVT_AUX1_UP", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX1DCLICK* {.importcpp: "wxEVT_AUX1_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2DOWN* {.importcpp: "wxEVT_AUX2_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2UP* {.importcpp: "wxEVT_AUX2_UP", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]

var wxEVT_AUX2DCLICK* {.importcpp: "wxEVT_AUX2_DCLICK", header: "wx.h".}: WxEventTypeTag[
    WxMouseEvent]


var wxEVT_CHAR* {.importcpp: "wxEVT_CHAR", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_CHAR_HOOK* {.importcpp: "wxEVT_CHAR_HOOK", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_NAVIGATION_KEY* {.importcpp: "wxEVT_NAVIGATION_KEY", header: "wx.h".}: WxEventTypeTag[
    WxNavigationKeyEvent]

var wxEVT_KEY_DOWN* {.importcpp: "wxEVT_KEY_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_KEY_UP* {.importcpp: "wxEVT_KEY_UP", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]

var wxEVT_HOTKEY* {.importcpp: "wxEVT_HOTKEY", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]


var wxEVT_AFTER_CHAR* {.importcpp: "wxEVT_AFTER_CHAR", header: "wx.h".}: WxEventTypeTag[
    WxKeyEvent]


var wxEVT_SET_CURSOR* {.importcpp: "wxEVT_SET_CURSOR", header: "wx.h".}: WxEventTypeTag[
    WxSetCursorEvent]


var wxEVT_SCROLL_TOP* {.importcpp: "wxEVT_SCROLL_TOP", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_BOTTOM* {.importcpp: "wxEVT_SCROLL_BOTTOM", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_LINEUP* {.importcpp: "wxEVT_SCROLL_LINEUP", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_LINEDOWN* {.importcpp: "wxEVT_SCROLL_LINEDOWN", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_PAGEUP* {.importcpp: "wxEVT_SCROLL_PAGEUP", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_PAGEDOWN* {.importcpp: "wxEVT_SCROLL_PAGEDOWN", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]

var wxEVT_SCROLL_THUMBTRACK* {.importcpp: "wxEVT_SCROLL_THUMBTRACK",
                               header: "wx.h".}: WxEventTypeTag[WxScrollEvent]

var wxEVT_SCROLL_THUMBRELEASE* {.importcpp: "wxEVT_SCROLL_THUMBRELEASE",
                                 header: "wx.h".}: WxEventTypeTag[WxScrollEvent]

var wxEVT_SCROLL_CHANGED* {.importcpp: "wxEVT_SCROLL_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxScrollEvent]


var wxEVT_SPIN_UP* {.importcpp: "wxEVT_SPIN_UP", header: "wx.h".}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPIN_DOWN* {.importcpp: "wxEVT_SPIN_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPIN* {.importcpp: "wxEVT_SPIN", header: "wx.h".}: WxEventTypeTag[
    WxSpinEvent]


var wxEVT_SCROLLWIN_TOP* {.importcpp: "wxEVT_SCROLLWIN_TOP", header: "wx.h".}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_BOTTOM* {.importcpp: "wxEVT_SCROLLWIN_BOTTOM",
                              header: "wx.h".}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_LINEUP* {.importcpp: "wxEVT_SCROLLWIN_LINEUP",
                              header: "wx.h".}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_LINEDOWN* {.importcpp: "wxEVT_SCROLLWIN_LINEDOWN",
                                header: "wx.h".}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_PAGEUP* {.importcpp: "wxEVT_SCROLLWIN_PAGEUP",
                              header: "wx.h".}: WxEventTypeTag[WxScrollWinEvent]

var wxEVT_SCROLLWIN_PAGEDOWN* {.importcpp: "wxEVT_SCROLLWIN_PAGEDOWN",
                                header: "wx.h".}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_THUMBTRACK* {.importcpp: "wxEVT_SCROLLWIN_THUMBTRACK",
                                  header: "wx.h".}: WxEventTypeTag[
    WxScrollWinEvent]

var wxEVT_SCROLLWIN_THUMBRELEASE* {.importcpp: "wxEVT_SCROLLWIN_THUMBRELEASE",
                                    header: "wx.h".}: WxEventTypeTag[
    WxScrollWinEvent]


var wxEVT_SIZE* {.importcpp: "wxEVT_SIZE", header: "wx.h".}: WxEventTypeTag[
    WxSizeEvent]

var wxEVT_MOVE* {.importcpp: "wxEVT_MOVE", header: "wx.h".}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_CLOSE_WINDOW* {.importcpp: "wxEVT_CLOSE_WINDOW", header: "wx.h".}: WxEventTypeTag[
    WxCloseEvent]

var wxEVT_END_SESSION* {.importcpp: "wxEVT_END_SESSION", header: "wx.h".}: WxEventTypeTag[
    WxCloseEvent]

var wxEVT_QUERY_END_SESSION* {.importcpp: "wxEVT_QUERY_END_SESSION",
                               header: "wx.h".}: WxEventTypeTag[WxCloseEvent]

var wxEVT_ACTIVATE_APP* {.importcpp: "wxEVT_ACTIVATE_APP", header: "wx.h".}: WxEventTypeTag[
    WxActivateEvent]

var wxEVT_ACTIVATE* {.importcpp: "wxEVT_ACTIVATE", header: "wx.h".}: WxEventTypeTag[
    WxActivateEvent]

var wxEVT_CREATE* {.importcpp: "wxEVT_CREATE", header: "wx.h".}: WxEventTypeTag[
    WxWindowCreateEvent]

var wxEVT_DESTROY* {.importcpp: "wxEVT_DESTROY", header: "wx.h".}: WxEventTypeTag[
    WxWindowDestroyEvent]

var wxEVT_SHOW* {.importcpp: "wxEVT_SHOW", header: "wx.h".}: WxEventTypeTag[
    WxShowEvent]

var wxEVT_ICONIZE* {.importcpp: "wxEVT_ICONIZE", header: "wx.h".}: WxEventTypeTag[
    WxIconizeEvent]

var wxEVT_MAXIMIZE* {.importcpp: "wxEVT_MAXIMIZE", header: "wx.h".}: WxEventTypeTag[
    WxMaximizeEvent]

var wxEVT_MOUSE_CAPTURE_CHANGED* {.importcpp: "wxEVT_MOUSE_CAPTURE_CHANGED",
                                   header: "wx.h".}: WxEventTypeTag[
    WxMouseCaptureChangedEvent]

var wxEVT_MOUSE_CAPTURE_LOST* {.importcpp: "wxEVT_MOUSE_CAPTURE_LOST",
                                header: "wx.h".}: WxEventTypeTag[
    WxMouseCaptureLostEvent]

var wxEVT_PAINT* {.importcpp: "wxEVT_PAINT", header: "wx.h".}: WxEventTypeTag[
    WxPaintEvent]

var wxEVT_ERASE_BACKGROUND* {.importcpp: "wxEVT_ERASE_BACKGROUND",
                              header: "wx.h".}: WxEventTypeTag[WxEraseEvent]

var wxEVT_NC_PAINT* {.importcpp: "wxEVT_NC_PAINT", header: "wx.h".}: WxEventTypeTag[
    WxNcPaintEvent]

var wxEVT_MENU_OPEN* {.importcpp: "wxEVT_MENU_OPEN", header: "wx.h".}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_MENU_CLOSE* {.importcpp: "wxEVT_MENU_CLOSE", header: "wx.h".}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_MENU_HIGHLIGHT* {.importcpp: "wxEVT_MENU_HIGHLIGHT", header: "wx.h".}: WxEventTypeTag[
    WxMenuEvent]

var wxEVT_CONTEXT_MENU* {.importcpp: "wxEVT_CONTEXT_MENU", header: "wx.h".}: WxEventTypeTag[
    WxContextMenuEvent]

var wxEVT_SYS_COLOUR_CHANGED* {.importcpp: "wxEVT_SYS_COLOUR_CHANGED",
                                header: "wx.h".}: WxEventTypeTag[
    WxSysColourChangedEvent]

var wxEVT_DISPLAY_CHANGED* {.importcpp: "wxEVT_DISPLAY_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxDisplayChangedEvent]

var wxEVT_QUERY_NEW_PALETTE* {.importcpp: "wxEVT_QUERY_NEW_PALETTE",
                               header: "wx.h".}: WxEventTypeTag[
    WxQueryNewPaletteEvent]

var wxEVT_PALETTE_CHANGED* {.importcpp: "wxEVT_PALETTE_CHANGED", header: "wx.h".}: WxEventTypeTag[
    WxPaletteChangedEvent]

var wxEVT_JOY_BUTTON_DOWN* {.importcpp: "wxEVT_JOY_BUTTON_DOWN", header: "wx.h".}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_BUTTON_UP* {.importcpp: "wxEVT_JOY_BUTTON_UP", header: "wx.h".}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_MOVE* {.importcpp: "wxEVT_JOY_MOVE", header: "wx.h".}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_JOY_ZMOVE* {.importcpp: "wxEVT_JOY_ZMOVE", header: "wx.h".}: WxEventTypeTag[
    WxJoystickEvent]

var wxEVT_DROP_FILES* {.importcpp: "wxEVT_DROP_FILES", header: "wx.h".}: WxEventTypeTag[
    WxDropFilesEvent]

var wxEVT_INIT_DIALOG* {.importcpp: "wxEVT_INIT_DIALOG", header: "wx.h".}: WxEventTypeTag[
    WxInitDialogEvent]

var wxEVT_IDLE* {.importcpp: "wxEVT_IDLE", header: "wx.h".}: WxEventTypeTag[
    WxIdleEvent]

var wxEVT_UPDATE_UI* {.importcpp: "wxEVT_UPDATE_UI", header: "wx.h".}: WxEventTypeTag[
    WxUpdateUIEvent]

var wxEVT_SIZING* {.importcpp: "wxEVT_SIZING", header: "wx.h".}: WxEventTypeTag[
    WxSizeEvent]

var wxEVT_MOVING* {.importcpp: "wxEVT_MOVING", header: "wx.h".}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_MOVE_START* {.importcpp: "wxEVT_MOVE_START", header: "wx.h".}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_MOVE_END* {.importcpp: "wxEVT_MOVE_END", header: "wx.h".}: WxEventTypeTag[
    WxMoveEvent]

var wxEVT_HIBERNATE* {.importcpp: "wxEVT_HIBERNATE", header: "wx.h".}: WxEventTypeTag[
    WxActivateEvent]


var wxEVT_TEXT_COPY* {.importcpp: "wxEVT_TEXT_COPY", header: "wx.h".}: WxEventTypeTag[
    WxClipboardTextEvent]

var wxEVT_TEXT_CUT* {.importcpp: "wxEVT_TEXT_CUT", header: "wx.h".}: WxEventTypeTag[
    WxClipboardTextEvent]

var wxEVT_TEXT_PASTE* {.importcpp: "wxEVT_TEXT_PASTE", header: "wx.h".}: WxEventTypeTag[
    WxClipboardTextEvent]


var wxEVT_COMMAND_LEFT_CLICK* {.importcpp: "wxEVT_COMMAND_LEFT_CLICK",
                                header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_LEFT_DCLICK* {.importcpp: "wxEVT_COMMAND_LEFT_DCLICK",
                                 header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_RIGHT_CLICK* {.importcpp: "wxEVT_COMMAND_RIGHT_CLICK",
                                 header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_RIGHT_DCLICK* {.importcpp: "wxEVT_COMMAND_RIGHT_DCLICK",
                                  header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]

var wxEVT_COMMAND_SET_FOCUS* {.importcpp: "wxEVT_COMMAND_SET_FOCUS",
                               header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_KILL_FOCUS* {.importcpp: "wxEVT_COMMAND_KILL_FOCUS",
                                header: "wx.h".}: WxEventTypeTag[WxCommandEvent]

var wxEVT_COMMAND_ENTER* {.importcpp: "wxEVT_COMMAND_ENTER", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]


var wxEVT_HELP* {.importcpp: "wxEVT_HELP", header: "wx.h".}: WxEventTypeTag[
    WxHelpEvent]

var wxEVT_DETAILED_HELP* {.importcpp: "wxEVT_DETAILED_HELP", header: "wx.h".}: WxEventTypeTag[
    WxHelpEvent]


template wxEVT_TOOL*: expr = wxEVT_MENU
var wxEVT_TEXT* {.importcpp: "wxEVT_TEXT", header: "wx.h".}: WxEventTypeTag[
    WxCommandEvent]
