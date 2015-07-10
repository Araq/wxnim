/////////////////////////////////////////////////////////////////////////////
// Name:        wx/event.h
// Purpose:     Event classes
// Author:      Julian Smart
// Modified by:
// Created:     01/02/97
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_EVENT_H_
#define _WX_EVENT_H_

#include "wx/defs.h"
#include "wx/cpp.h"
#include "wx/object.h"
#include "wx/clntdata.h"

#if wxUSE_GUI
    #include "wx/gdicmn.h"
    #include "wx/cursor.h"
    #include "wx/mousestate.h"
#endif

#include "wx/dynarray.h"
#include "wx/thread.h"
#include "wx/tracker.h"
#include "wx/typeinfo.h"
#include "wx/any.h"

// Currently VC6 and VC7 are known to not be able to compile CallAfter() code,
// so disable it for them.
#if !defined(__VISUALC__) || wxCHECK_VISUALC_VERSION(8)
    #include "wx/meta/removeref.h"

    #define wxHAS_CALL_AFTER
#endif

// ----------------------------------------------------------------------------
// forward declarations
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_FWD_BASE wxList;
class WXDLLIMPEXP_FWD_BASE wxEvent;
class WXDLLIMPEXP_FWD_BASE wxEventFilter {};
#if wxUSE_GUI
    class WXDLLIMPEXP_FWD_CORE wxDC;
    class WXDLLIMPEXP_FWD_CORE wxMenu;
    class WXDLLIMPEXP_FWD_CORE wxWindow;
    class WXDLLIMPEXP_FWD_CORE wxWindowBase;
#endif // wxUSE_GUI

// We operate with pointer to members of wxEvtHandler (such functions are used
// as event handlers in the event tables or as arguments to Connect()) but by
// default MSVC uses a restricted (but more efficient) representation of
// pointers to members which can't deal with multiple base classes. To avoid
// mysterious (as the compiler is not good enough to detect this and give a
// sensible error message) errors in the user code as soon as it defines
// classes inheriting from both wxEvtHandler (possibly indirectly, e.g. via
// wxWindow) and something else (including our own wxTrackable but not limited
// to it), we use the special MSVC keyword telling the compiler to use a more
// general pointer to member representation for the classes inheriting from
// wxEvtHandler.
#def wxMSVC_FWD_MULTIPLE_BASES

class WXDLLIMPEXP_FWD_BASE wxMSVC_FWD_MULTIPLE_BASES wxEvtHandler;
class wxEventConnectionRef;

// ----------------------------------------------------------------------------
// Event types
// ----------------------------------------------------------------------------

typedef int wxEventType;

#define wxEVT_ANY          #@ WxEventType(-1)
@#

// this is used to make the event table entry type safe, so that for an event
// handler only a function with proper parameter list can be given. See also
// the wxEVENT_HANDLER_CAST-macro.
#def wxStaticCastEvent(type, val) static_cast<type>(val)

#def wxDECLARE_EVENT_TABLE_ENTRY(type, winid, idLast, fn, obj) \
    wxEventTableEntry(type, winid, idLast, wxNewEventTableFunctor(type, fn), obj)

#def wxDECLARE_EVENT_TABLE_TERMINATOR() \
    wxEventTableEntry(wxEVT_NULL, 0, 0, 0, 0)

// generate a new unique event type
extern WXDLLIMPEXP_BASE wxEventType wxNewEventType();

// the general version allowing exporting the event type from DLL, used by
// wxWidgets itself
#def wxDECLARE_EXPORTED_EVENT( expdecl, name, type ) \
    extern const expdecl wxEventTypeTag< type > name

// events are represented by an instance of wxEventTypeTag and the
// corresponding type must be specified for type-safety checks

// define a new custom event type, can be used alone or after event
// declaration in the header using one of the macros below
#def wxDEFINE_EVENT( name, type ) \
    const wxEventTypeTag< type > name( wxNewEventType() )

// this is the version which will normally be used in the user code
#def wxDECLARE_EVENT( name, type ) \
    wxDECLARE_EXPORTED_EVENT( wxEMPTY_PARAMETER_VALUE, name, type )


// these macros are only used internally for backwards compatibility and
// allow to define an alias for an existing event type (this is used by
// wxEVT_SPIN_XXX)
#def wxDEFINE_EVENT_ALIAS( name, type, value ) \
    const wxEventTypeTag< type > name( value )

#def wxDECLARE_EXPORTED_EVENT_ALIAS( expdecl, name, type ) \
    extern const expdecl wxEventTypeTag< type > name

// Try to cast the given event handler to the correct handler type:

#def wxEVENT_HANDLER_CAST( functype, func ) \
    ( wxObjectEventFunction )( wxEventFunction )wxStaticCastEvent( functype, &func )


// The tag is a type associated to the event type (which is an integer itself,
// in spite of its name) value. It exists in order to be used as a template
// parameter and provide a mapping between the event type values and their
// corresponding wxEvent-derived classes.
template <typename T>
class wxEventTypeTag
{
public:
    wxEventTypeTag(wxEventType type) { m_type = type; }

private:
    wxEventType m_type;
};

// We had some trouble (specifically with eVC for ARM WinCE build) with using
// wxEventFunction in the past so we had introduced wxObjectEventFunction which
// used to be a typedef for a member of wxObject and not wxEvtHandler to work
// around this but as eVC is not really supported any longer we now only keep
// this for backwards compatibility and, despite its name, this is a typedef
// for wxEvtHandler member now -- but if we have the same problem with another
// compiler we can restore its old definition for it.

typedef void* wxEventFunction;
typedef wxEventFunction wxObjectEventFunction;

/*
 * wxWidgets events, covering all interesting things that might happen
 * (button clicking, resizing, setting text in widgets, etc.).
 *
 * For each completely new event type, derive a new event class.
 * An event CLASS represents a C++ class defining a range of similar event TYPES;
 * examples are canvas events, panel item command events.
 * An event TYPE is a unique identifier for a particular system event,
 * such as a button press or a listbox deselection.
 *
 */

extern WXDLLIMPEXP_BASE const wxEventType wxEVT_NULL;
extern WXDLLIMPEXP_BASE const wxEventType wxEVT_FIRST;
extern WXDLLIMPEXP_BASE const wxEventType wxEVT_USER_FIRST;

// The different categories for a wxEvent; see wxEvent::GetEventCategory.
// NOTE: they are used as OR-combinable flags by wxEventLoopBase::YieldFor
enum wxEventCategory
{
    // this is the category for those events which are generated to update
    // the appearance of the GUI but which (usually) do not comport data
    // processing, i.e. which do not provide input or output data
    // (e.g. size events, scroll events, etc).
    // They are events NOT directly generated by the user's input devices.
    wxEVT_CATEGORY_UI = 1,

    // this category groups those events which are generated directly from the
    // user through input devices like mouse and keyboard and usually result in
    // data to be processed from the application.
    // (e.g. mouse clicks, key presses, etc)
    wxEVT_CATEGORY_USER_INPUT = 2,

    // this category groups those events which are emitted in response to
    // events of the native toolkit and which typically are not-"delayable".
    wxEVT_CATEGORY_NATIVE_EVENTS = 1|2,

    // this category is for wxSocketEvent
    wxEVT_CATEGORY_SOCKET = 4,

    // this category is for wxTimerEvent
    wxEVT_CATEGORY_TIMER = 8,

    // this category is for any event used to send notifications from the
    // secondary threads to the main one or in general for notifications among
    // different threads (which may or may not be user-generated)
    wxEVT_CATEGORY_THREAD = 16,


    // implementation only

    // used in the implementations of wxEventLoopBase::YieldFor
    wxEVT_CATEGORY_UNKNOWN = 32,

    // a special category used as an argument to wxEventLoopBase::YieldFor to indicate that
    // Yield() should leave all wxEvents on the queue while emptying the native event queue
    // (native events will be processed but the wxEvents they generate will be queued)
    wxEVT_CATEGORY_CLIPBOARD = 64,

    // used in wxEventLoopBase::YieldFor to specify all event categories
    // should be processed:
    wxEVT_CATEGORY_ALL = 1|2|4|8|16|32|64
};

class WXDLLIMPEXP_BASE wxEvent : public wxObject
{
public:
    wxEvent(int winid = 0, wxEventType commandType = wxEVT_NULL );

    void SetEventType(wxEventType typ) { m_eventType = typ; }
    wxEventType GetEventType() const { return m_eventType; }

    wxObject *GetEventObject() const { return m_eventObject; }
    void SetEventObject(wxObject *obj) { m_eventObject = obj; }

    long GetTimestamp() const { return m_timeStamp; }
    void SetTimestamp(long ts = 0) { m_timeStamp = ts; }

    int GetId() const { return m_id; }
    void SetId(int Id) { m_id = Id; }

    // Returns the user data optionally associated with the event handler when
    // using Connect() or Bind().
    wxObject *GetEventUserData() const { return m_callbackUserData; }

    // Can instruct event processor that we wish to ignore this event
    // (treat as if the event table entry had not been found): this must be done
    // to allow the event processing by the base classes (calling event.Skip()
    // is the analog of calling the base class version of a virtual function)
    void Skip(bool skip = true) { m_skipped = skip; }
    bool GetSkipped() const { return m_skipped; }

    // This function is used to create a copy of the event polymorphically and
    // all derived classes must implement it because otherwise wxPostEvent()
    // for them wouldn't work (it needs to do a copy of the event)
    virtual wxEvent *Clone() const = 0;

    // this function is used to selectively process events in wxEventLoopBase::YieldFor
    // NOTE: by default it returns wxEVT_CATEGORY_UI just because the major
    //       part of wxWidgets events belong to that category.
    virtual wxEventCategory GetEventCategory() const
        { return wxEVT_CATEGORY_UI; }

    // Implementation only: this test is explicitly anti OO and this function
    // exists only for optimization purposes.
    bool IsCommandEvent() const { return m_isCommandEvent; }

    // Determine if this event should be propagating to the parent window.
    bool ShouldPropagate() const
        { return m_propagationLevel != wxEVENT_PROPAGATE_NONE; }

    // Stop an event from propagating to its parent window, returns the old
    // propagation level value
    int StopPropagation()
    {
        int propagationLevel = m_propagationLevel;
        m_propagationLevel = wxEVENT_PROPAGATE_NONE;
        return propagationLevel;
    }

    // Resume the event propagation by restoring the propagation level
    // (returned by StopPropagation())
    void ResumePropagation(int propagationLevel)
    {
        m_propagationLevel = propagationLevel;
    }

    // This method is for internal use only and allows to get the object that
    // is propagating this event upwards the window hierarchy, if any.
    wxEvtHandler* GetPropagatedFrom() const { return m_propagatedFrom; }

    // This is for internal use only and is only called by
    // wxEvtHandler::ProcessEvent() to check whether it's the first time this
    // event is being processed
    bool WasProcessed()
    {
        if ( m_wasProcessed )
            return true;

        m_wasProcessed = true;

        return false;
    }

    // This is for internal use only and is used for setting, testing and
    // resetting of m_willBeProcessedAgain flag.
    void SetWillBeProcessedAgain()
    {
        m_willBeProcessedAgain = true;
    }

    bool WillBeProcessedAgain()
    {
        if ( m_willBeProcessedAgain )
        {
            m_willBeProcessedAgain = false;
            return true;
        }

        return false;
    }

    // This is also used only internally by ProcessEvent() to check if it
    // should process the event normally or only restrict the search for the
    // event handler to this object itself.
    bool ShouldProcessOnlyIn(wxEvtHandler *h) const
    {
        return h == m_handlerToProcessOnlyIn;
    }

    // Called to indicate that the result of ShouldProcessOnlyIn() wasn't taken
    // into account. The existence of this function may seem counterintuitive
    // but unfortunately it's needed by wxScrollHelperEvtHandler, see comments
    // there. Don't even think of using this in your own code, this is a gross
    // hack and is only needed because of wx complicated history and should
    // never be used anywhere else.
    void DidntHonourProcessOnlyIn()
    {
        m_handlerToProcessOnlyIn = NULL;
    }

protected:
    wxObject*         m_eventObject;
    wxEventType       m_eventType;
    long              m_timeStamp;
    int               m_id;

public:
    // m_callbackUserData is for internal usage only
    wxObject*         m_callbackUserData;

private:
    // If this handler
    wxEvtHandler *m_handlerToProcessOnlyIn;

protected:
    // the propagation level: while it is positive, we propagate the event to
    // the parent window (if any)
    int               m_propagationLevel;

    // The object that the event is being propagated from, initially NULL and
    // only set by wxPropagateOnce.
    wxEvtHandler*     m_propagatedFrom;

    bool              m_skipped;
    bool              m_isCommandEvent;

    // initially false but becomes true as soon as WasProcessed() is called for
    // the first time, as this is done only by ProcessEvent() it explains the
    // variable name: it becomes true after ProcessEvent() was called at least
    // once for this event
    bool m_wasProcessed;

    // This one is initially false too, but can be set to true to indicate that
    // the event will be passed to another handler if it's not processed in
    // this one.
    bool m_willBeProcessedAgain;

protected:
    wxEvent(const wxEvent&);            // for implementing Clone()
    wxEvent& operator=(const wxEvent&); // for derived classes operator=()
};

#inheritable wxEventFunctor
// The event functor which is stored in the static and dynamic event tables:
class WXDLLIMPEXP_BASE wxEventFunctor
{
public:
    virtual ~wxEventFunctor();

    // Invoke the actual event handler:
    virtual void operator()(wxEvtHandler *, wxEvent&) = 0;

    // this function tests whether this functor is matched, for the purpose of
    // finding it in an event table in Unbind(), by the given functor:
    virtual bool IsMatching(const wxEventFunctor& functor) const = 0;

    // If the functor holds an wxEvtHandler, then get access to it and track
    // its lifetime with wxEventConnectionRef:
    virtual wxEvtHandler *GetEvtHandler() const
        { return NULL; }

    // This is only used to maintain backward compatibility in
    // wxAppConsoleBase::CallEventHandler and ensures that an overwritten
    // wxAppConsoleBase::HandleEvent is still called for functors which hold an
    // wxEventFunction:
    virtual wxEventFunction GetEvtMethod() const
        { return NULL; }

private:
    WX_DECLARE_ABSTRACT_TYPEINFO(wxEventFunctor)
};

// A plain method functor for the untyped legacy event types:
class WXDLLIMPEXP_BASE wxObjectEventFunctor : public wxEventFunctor
{
public:
    wxObjectEventFunctor(wxObjectEventFunction method, wxEvtHandler *handler)
        : m_handler( handler ), m_method( method )
        { }

    virtual void operator()(wxEvtHandler *handler, wxEvent& event);

    virtual bool IsMatching(const wxEventFunctor& functor) const
    {
        if ( wxTypeId(functor) == wxTypeId(*this) )
        {
            const wxObjectEventFunctor &other =
                static_cast< const wxObjectEventFunctor & >( functor );

            // FIXME-VC6: amazing but true: replacing "m_method == 0" here
            // with "!m_method" makes VC6 crash with an ICE in DLL build (only!)
            // Also notice that using "NULL" instead of "0" results in warnings
            // about "using NULL in arithmetics" from arm-linux-androideabi-g++
            // 4.4.3 used for wxAndroid build.

            return ( m_method == other.m_method || other.m_method == 0 ) &&
                   ( m_handler == other.m_handler || other.m_handler == NULL );
        }
        else
            return false;
    }

    virtual wxEvtHandler *GetEvtHandler() const
        { return m_handler; }

    virtual wxEventFunction GetEvtMethod() const
        { return m_method; }

private:
    wxEvtHandler *m_handler;
    wxEventFunction m_method;

    // Provide a dummy default ctor for type info purposes
    wxObjectEventFunctor() { }

    WX_DECLARE_TYPEINFO_INLINE(wxObjectEventFunctor)
};

// Create a functor for the legacy events: used by Connect()
wxObjectEventFunctor *
wxNewEventFunctor(const wxEventType& WXUNUSED(evtType),
                  wxObjectEventFunction method,
                  wxEvtHandler *handler);

// This version is used by wxDECLARE_EVENT_TABLE_ENTRY()
wxObjectEventFunctor *
wxNewEventTableFunctor(const wxEventType& WXUNUSED(evtType),
                       wxObjectEventFunction method);

wxObjectEventFunctor
wxMakeEventFunctor(const wxEventType& WXUNUSED(evtType),
                        wxObjectEventFunction method,
                        wxEvtHandler *handler);


// functor forwarding the event to a method of the given object
//
// notice that the object class may be different from the class in which the
// method is defined but it must be convertible to this class
//
// also, the type of the handler parameter doesn't need to be exactly the same
// as EventTag::EventClass but it must be its base class -- this is explicitly
// allowed to handle different events in the same handler taking wxEvent&, for
// example
template
  <typename EventTag, typename Class, typename EventArg, typename EventHandler>
class wxEventFunctorMethod
    : public wxEventFunctor
{
private:
    static void CheckHandlerArgument(EventArg *) { }

public:

    wxEventFunctorMethod(void* EventArg, EventHandler *handler)
        : m_handler( handler ), m_method( method )
    {
        wxASSERT_MSG( handler || this->IsEvtHandler(),
                      "handlers defined in non-wxEvtHandler-derived classes "
                      "must be connected with a valid sink object" );

        // if you get an error here it means that the signature of the handler
        // you're trying to use is not compatible with (i.e. is not the same as
        // or a base class of) the real event class used for this event type
        CheckHandlerArgument(static_cast<EventClass *>(NULL));
    }

    virtual void operator()(wxEvtHandler *handler, wxEvent& event)
    {
        Class * realHandler = m_handler;
        if ( !realHandler )
        {
            realHandler = this->ConvertFromEvtHandler(handler);

            // this is not supposed to happen but check for it nevertheless
            wxCHECK_RET( realHandler, "invalid event handler" );
        }

        // the real (run-time) type of event is EventClass and we checked in
        // the ctor that EventClass can be converted to EventArg, so this cast
        // is always valid
        (realHandler->*m_method)(static_cast<EventArg&>(event));
    }

    virtual bool IsMatching(const wxEventFunctor& functor) const
    {
    }

    virtual wxEvtHandler *GetEvtHandler() const
        { return this->ConvertToEvtHandler(m_handler); }

    virtual wxEventFunction GetEvtMethod() const
        { return this->ConvertToEvtMethod(m_method); }

};


// functor forwarding the event to function (function, static method)
template <typename EventTag, typename EventArg>
class wxEventFunctorFunction : public wxEventFunctor
{
private:
    static void CheckHandlerArgument(EventArg *) { }

public:
    // the event class associated with the given event tag

    wxEventFunctorFunction( void ( *handler )( EventArg & ))
        : m_handler( handler )
    {
        // if you get an error here it means that the signature of the handler
        // you're trying to use is not compatible with (i.e. is not the same as
        // or a base class of) the real event class used for this event type
        CheckHandlerArgument(static_cast<EventClass *>(NULL));
    }

    virtual void operator()(wxEvtHandler *WXUNUSED(handler), wxEvent& event)
    {
        // If you get an error here like "must use .* or ->* to call
        // pointer-to-member function" then you probably tried to call
        // Bind/Unbind with a method pointer but without a handler pointer or
        // NULL as a handler e.g.:
        // Unbind( wxEVT_XXX, &EventHandler::method );
        // or
        // Unbind( wxEVT_XXX, &EventHandler::method, NULL )
        m_handler(static_cast<EventArg&>(event));
    }

    virtual bool IsMatching(const wxEventFunctor &functor) const
    {
    }
};


template <typename EventTag, typename Functor>
class wxEventFunctorFunctor : public wxEventFunctor
{
public:
    wxEventFunctorFunctor(const Functor& handler)
        : m_handler(handler), m_handlerAddr(&handler)
        { }

    virtual void operator()(wxEvtHandler *WXUNUSED(handler), wxEvent& event)
    {
        // If you get an error here like "must use '.*' or '->*' to call
        // pointer-to-member function" then you probably tried to call
        // Bind/Unbind with a method pointer but without a handler pointer or
        // NULL as a handler e.g.:
        // Unbind( wxEVT_XXX, &EventHandler::method );
        // or
        // Unbind( wxEVT_XXX, &EventHandler::method, NULL )
        m_handler(static_cast<EventArg&>(event));
    }

    virtual bool IsMatching(const wxEventFunctor &functor) const
    {

    }
};

// Create functors for the templatized events, either allocated on the heap for
// wxNewXXX() variants (this is needed in wxEvtHandler::Bind<>() to store them
// in dynamic event table) or just by returning them as temporary objects (this
// is enough for Unbind<>() and we avoid unnecessary heap allocation like this).


// Create functors wrapping functions:
template <typename EventTag, typename EventArg>
wxEventFunctorFunction<EventTag, EventArg> *
wxNewEventFunctor(const EventTag&, void (*func)(EventArg &));

template <typename EventTag, typename EventArg>
wxEventFunctorFunction<EventTag, EventArg>
wxMakeEventFunctor(const EventTag&, void (*func)(EventArg &));

// Create functors wrapping other functors:
template <typename EventTag, typename Functor>
wxEventFunctorFunctor<EventTag, Functor> *
wxNewEventFunctor(const EventTag&, const Functor &func);

template <typename EventTag, typename Functor>
wxEventFunctorFunctor<EventTag, Functor>
wxMakeEventFunctor(const EventTag&, const Functor &func);

// Create functors wrapping methods:
template
  <typename EventTag, typename Class, typename EventArg, typename EventHandler>
 wxEventFunctorMethod<EventTag, Class, EventArg, EventHandler> *
wxNewEventFunctor(const EventTag&,
                  void* EventArg,
                  EventHandler *handler);

template
    <typename EventTag, typename Class, typename EventArg, typename EventHandler>
 wxEventFunctorMethod<EventTag, Class, EventArg, EventHandler>
wxMakeEventFunctor(const EventTag&,
                   void *method,
                   EventHandler *handler);

// Create an event functor for the event table via wxDECLARE_EVENT_TABLE_ENTRY:
// in this case we don't have the handler (as it's always the same as the
// object which generated the event) so we must use Class as its type
template <typename EventTag, typename Class, typename EventArg>
 wxEventFunctorMethod<EventTag, Class, EventArg, Class> *
wxNewEventTableFunctor(const EventTag&, void *method);

#endif // wxHAS_EVENT_BIND

    // Need events declared to do this
class WXDLLIMPEXP_FWD_BASE wxIdleEvent;
class WXDLLIMPEXP_FWD_BASE wxThreadEvent;
class WXDLLIMPEXP_FWD_BASE wxAsyncMethodCallEvent;
class WXDLLIMPEXP_FWD_CORE wxCommandEvent;
class WXDLLIMPEXP_FWD_CORE wxMouseEvent;
class WXDLLIMPEXP_FWD_CORE wxFocusEvent;
class WXDLLIMPEXP_FWD_CORE wxChildFocusEvent;
class WXDLLIMPEXP_FWD_CORE wxKeyEvent;
class WXDLLIMPEXP_FWD_CORE wxNavigationKeyEvent;
class WXDLLIMPEXP_FWD_CORE wxSetCursorEvent;
class WXDLLIMPEXP_FWD_CORE wxScrollEvent;
class WXDLLIMPEXP_FWD_CORE wxSpinEvent;
class WXDLLIMPEXP_FWD_CORE wxScrollWinEvent;
class WXDLLIMPEXP_FWD_CORE wxSizeEvent;
class WXDLLIMPEXP_FWD_CORE wxMoveEvent;
class WXDLLIMPEXP_FWD_CORE wxCloseEvent;
class WXDLLIMPEXP_FWD_CORE wxActivateEvent;
class WXDLLIMPEXP_FWD_CORE wxWindowCreateEvent;
class WXDLLIMPEXP_FWD_CORE wxWindowDestroyEvent;
class WXDLLIMPEXP_FWD_CORE wxShowEvent;
class WXDLLIMPEXP_FWD_CORE wxIconizeEvent;
class WXDLLIMPEXP_FWD_CORE wxMaximizeEvent;
class WXDLLIMPEXP_FWD_CORE wxMouseCaptureChangedEvent;
class WXDLLIMPEXP_FWD_CORE wxMouseCaptureLostEvent;
class WXDLLIMPEXP_FWD_CORE wxPaintEvent;
class WXDLLIMPEXP_FWD_CORE wxEraseEvent;
class WXDLLIMPEXP_FWD_CORE wxNcPaintEvent;
class WXDLLIMPEXP_FWD_CORE wxMenuEvent;
class WXDLLIMPEXP_FWD_CORE wxContextMenuEvent;
class WXDLLIMPEXP_FWD_CORE wxSysColourChangedEvent;
class WXDLLIMPEXP_FWD_CORE wxDisplayChangedEvent;
class WXDLLIMPEXP_FWD_CORE wxQueryNewPaletteEvent;
class WXDLLIMPEXP_FWD_CORE wxPaletteChangedEvent;
class WXDLLIMPEXP_FWD_CORE wxJoystickEvent;
class WXDLLIMPEXP_FWD_CORE wxDropFilesEvent;
class WXDLLIMPEXP_FWD_CORE wxInitDialogEvent;
class WXDLLIMPEXP_FWD_CORE wxUpdateUIEvent;
class WXDLLIMPEXP_FWD_CORE wxClipboardTextEvent;
class WXDLLIMPEXP_FWD_CORE wxHelpEvent;



// ----------------------------------------------------------------------------
// wxEvent(-derived) classes
// ----------------------------------------------------------------------------

// the predefined constants for the number of times we propagate event
// upwards window child-parent chain
enum wxEventPropagation
{
    // don't propagate it at all
    wxEVENT_PROPAGATE_NONE = 0,

    // propagate it until it is processed
    wxEVENT_PROPAGATE_MAX = #@ high(cint)
                             @#
};


/*
 * Helper class to temporarily change an event not to propagate.
 */
class WXDLLIMPEXP_BASE wxPropagationDisabler
{
public:
    wxPropagationDisabler(wxEvent& event) : m_event(event)
    {
        m_propagationLevelOld = m_event.StopPropagation();
    }

    ~wxPropagationDisabler()
    {
        m_event.ResumePropagation(m_propagationLevelOld);
    }
};

/*
 * Helper used to indicate that an event is propagated upwards the window
 * hierarchy by the given window.
 */
class WXDLLIMPEXP_BASE wxPropagateOnce
{
public:
    // The handler argument should normally be non-NULL to allow the parent
    // event handler to know that it's being used to process an event coming
    // from the child, it's only NULL by default for backwards compatibility.
    wxPropagateOnce(wxEvent& event, wxEvtHandler* handler = NULL)
        : m_event(event),
          m_propagatedFromOld(event.m_propagatedFrom)
    {
        wxASSERT_MSG( m_event.m_propagationLevel > 0,
                        wxT("shouldn't be used unless ShouldPropagate()!") );

        m_event.m_propagationLevel--;
        m_event.m_propagatedFrom = handler;
    }

    ~wxPropagateOnce()
    {
        m_event.m_propagatedFrom = m_propagatedFromOld;
        m_event.m_propagationLevel++;
    }
};

// A helper object used to temporarily make wxEvent::ShouldProcessOnlyIn()
// return true for the handler passed to its ctor.
class wxEventProcessInHandlerOnly
{
public:
    wxEventProcessInHandlerOnly(wxEvent& event, wxEvtHandler *handler)
        : m_event(event),
          m_handlerToProcessOnlyInOld(event.m_handlerToProcessOnlyIn)
    {
        m_event.m_handlerToProcessOnlyIn = handler;
    }

    ~wxEventProcessInHandlerOnly()
    {
        m_event.m_handlerToProcessOnlyIn = m_handlerToProcessOnlyInOld;
    }

};

#inheritable wxEventBasicPayloadMixin
class WXDLLIMPEXP_BASE wxEventBasicPayloadMixin
{
public:
    wxEventBasicPayloadMixin()
        : m_commandInt(0),
          m_extraLong(0)
    {
    }

    void SetString(const wxString& s) { m_cmdString = s; }
    const wxString& GetString() const { return m_cmdString; }

    void SetInt(int i) { m_commandInt = i; }
    int GetInt() const { return m_commandInt; }

    void SetExtraLong(long extraLong) { m_extraLong = extraLong; }
    long GetExtraLong() const { return m_extraLong; }

protected:
    // Note: these variables have "cmd" or "command" in their name for backward compatibility:
    //       they used to be part of wxCommandEvent, not this mixin.
    wxString          m_cmdString;     // String event argument
    int               m_commandInt;
    long              m_extraLong;     // Additional information (e.g. select/deselect)

    wxDECLARE_NO_ASSIGN_CLASS(wxEventBasicPayloadMixin);
};

class WXDLLIMPEXP_BASE wxEventAnyPayloadMixin : public wxEventBasicPayloadMixin
{
public:
    wxEventAnyPayloadMixin() : wxEventBasicPayloadMixin() {}
};


// Idle event
/*
 wxEVT_IDLE
 */

// Whether to always send idle events to windows, or
// to only send update events to those with the
// wxWS_EX_PROCESS_IDLE style.

enum wxIdleMode
{
        // Send idle events to all windows
    wxIDLE_PROCESS_ALL,

        // Send idle events to windows that have
        // the wxWS_EX_PROCESS_IDLE flag specified
    wxIDLE_PROCESS_SPECIFIED
};

class WXDLLIMPEXP_BASE wxIdleEvent : public wxEvent
{
public:
    wxIdleEvent()
        : wxEvent(0, wxEVT_IDLE),
          m_requestMore(false)
        { }
    wxIdleEvent(const wxIdleEvent& event)
        : wxEvent(event),
          m_requestMore(event.m_requestMore)
    { }

    void RequestMore(bool needMore = true) { m_requestMore = needMore; }
    bool MoreRequested() const { return m_requestMore; }

    virtual wxEvent *Clone() const { return new wxIdleEvent(*this); }

    // Specify how wxWidgets will send idle events: to
    // all windows, or only to those which specify that they
    // will process the events.
    static void SetMode(wxIdleMode mode) { sm_idleMode = mode; }

    // Returns the idle event mode
    static wxIdleMode GetMode() { return sm_idleMode; }

protected:
    bool m_requestMore;
    static wxIdleMode sm_idleMode;

};


// Thread event

#mangle auto auto
class WXDLLIMPEXP_BASE wxThreadEvent : public wxEvent,
                                       public wxEventAnyPayloadMixin
{
public:
    wxThreadEvent(wxEventType eventType, auto id = wxID_ANY)
        : wxEvent(id, eventType)
        { }

    wxThreadEvent(const wxThreadEvent& event)
        : wxEvent(event),
          wxEventAnyPayloadMixin(event)
    {
        // make sure our string member (which uses COW, aka refcounting) is not
        // shared by other wxString instances:
        SetString(GetString().Clone());
    }

    virtual wxEvent *Clone() const
    {
        return new wxThreadEvent(*this);
    }

    // this is important to avoid that calling wxEventLoopBase::YieldFor thread events
    // gets processed when this is unwanted:
    virtual wxEventCategory GetEventCategory() const
        { return wxEVT_CATEGORY_THREAD; }

};


// Asynchronous method call events: these event are processed by wxEvtHandler
// itself and result in a call to its Execute() method which simply calls the
// specified method. The difference with a simple method call is that this is
// done asynchronously, i.e. at some later time, instead of immediately when
// the event object is constructed.

// This is a base class used to process all method calls.
class wxAsyncMethodCallEvent : public wxEvent
{
public:
    wxAsyncMethodCallEvent(wxObject* object)
        : wxEvent(wxID_ANY, wxEVT_ASYNC_METHOD_CALL)
    {
        SetEventObject(object);
    }

    wxAsyncMethodCallEvent(const wxAsyncMethodCallEvent& other)
        : wxEvent(other)
    {
    }

    virtual void Execute() = 0;
};

// This is a version for calling methods without parameters.
#def ObjectType T
#def MethodType void*
#def ParamType1 void*
#def ParamType2 void*
#def FunctorType T

template <typename T>
class wxAsyncMethodCallEvent0 : public wxAsyncMethodCallEvent
{
public:
    wxAsyncMethodCallEvent0(ObjectType* object,
                            MethodType method)
        : wxAsyncMethodCallEvent(object),
          m_object(object),
          m_method(method)
    {
    }

    wxAsyncMethodCallEvent0(const wxAsyncMethodCallEvent0& other)
        : wxAsyncMethodCallEvent(other),
          m_object(other.m_object),
          m_method(other.m_method)
    {
    }

    virtual wxEvent *Clone() const
    {
        return new wxAsyncMethodCallEvent0(*this);
    }

    virtual void Execute()
    {
        (m_object->*m_method)();
    }

};

// This is a version for calling methods with a single parameter.
template <typename T, typename T1>
class wxAsyncMethodCallEvent1 : public wxAsyncMethodCallEvent
{
public:
    wxAsyncMethodCallEvent1(ObjectType* object,
                            MethodType method,
                            const ParamType1& x1)
        : wxAsyncMethodCallEvent(object),
          m_object(object),
          m_method(method),
          m_param1(x1)
    {
    }

    wxAsyncMethodCallEvent1(const wxAsyncMethodCallEvent1& other)
        : wxAsyncMethodCallEvent(other),
          m_object(other.m_object),
          m_method(other.m_method),
          m_param1(other.m_param1)
    {
    }

    virtual wxEvent *Clone() const
    {
        return new wxAsyncMethodCallEvent1(*this);
    }

    virtual void Execute()
    {
        (m_object->*m_method)(m_param1);
    }

};

// This is a version for calling methods with two parameters.
template <typename T, typename T1, typename T2>
class wxAsyncMethodCallEvent2 : public wxAsyncMethodCallEvent
{
public:
    wxAsyncMethodCallEvent2(ObjectType* object,
                            MethodType method,
                            const ParamType1& x1,
                            const ParamType2& x2)
        : wxAsyncMethodCallEvent(object),
          m_object(object),
          m_method(method),
          m_param1(x1),
          m_param2(x2)
    {
    }

    wxAsyncMethodCallEvent2(const wxAsyncMethodCallEvent2& other)
        : wxAsyncMethodCallEvent(other),
          m_object(other.m_object),
          m_method(other.m_method),
          m_param1(other.m_param1),
          m_param2(other.m_param2)
    {
    }

    virtual wxEvent *Clone() const
    {
        return new wxAsyncMethodCallEvent2(*this);
    }

    virtual void Execute()
    {
        (m_object->*m_method)(m_param1, m_param2);
    }

};

// This is a version for calling any functors
template <typename T>
class wxAsyncMethodCallEventFunctor : public wxAsyncMethodCallEvent
{
public:
    wxAsyncMethodCallEventFunctor(wxObject *object, const FunctorType& fn)
        : wxAsyncMethodCallEvent(object),
          m_fn(fn)
    {
    }

    wxAsyncMethodCallEventFunctor(const wxAsyncMethodCallEventFunctor& other)
        : wxAsyncMethodCallEvent(other),
          m_fn(other.m_fn)
    {
    }

    virtual wxEvent *Clone() const
    {
        return new wxAsyncMethodCallEventFunctor(*this);
    }

    virtual void Execute()
    {
        m_fn();
    }

};


#if wxUSE_GUI


// Item or menu event class
/*
 wxEVT_BUTTON
 wxEVT_CHECKBOX
 wxEVT_CHOICE
 wxEVT_LISTBOX
 wxEVT_LISTBOX_DCLICK
 wxEVT_TEXT
 wxEVT_TEXT_ENTER
 wxEVT_MENU
 wxEVT_SLIDER
 wxEVT_RADIOBOX
 wxEVT_RADIOBUTTON
 wxEVT_SCROLLBAR
 wxEVT_VLBOX
 wxEVT_COMBOBOX
 wxEVT_TOGGLEBUTTON
*/

#inheritable wxClientData
class wxClientData {};

class WXDLLIMPEXP_CORE wxCommandEvent : public wxEvent,
                                        public wxEventBasicPayloadMixin
{
public:
    wxCommandEvent(wxEventType commandType = wxEVT_NULL, int winid = 0);

    wxCommandEvent(const wxCommandEvent& event)
        : wxEvent(event),
          wxEventBasicPayloadMixin(event),
          m_clientData(event.m_clientData),
          m_clientObject(event.m_clientObject)
    {
        // Because GetString() can retrieve the string text only on demand, we
        // need to copy it explicitly.
        if ( m_cmdString.empty() )
            m_cmdString = event.GetString();
    }

    // Set/Get client data from controls
    void SetClientData(void* clientData) { m_clientData = clientData; }
    void *GetClientData() const { return m_clientData; }

    // Set/Get client object from controls
    void SetClientObject(wxClientData* clientObject) { m_clientObject = clientObject; }
    wxClientData *GetClientObject() const { return m_clientObject; }

    // Note: this shadows wxEventBasicPayloadMixin::GetString(), because it does some
    // GUI-specific hacks
    wxString GetString() const;

    // Get listbox selection if single-choice
    int GetSelection() const { return m_commandInt; }

    // Get checkbox value
    bool IsChecked() const { return m_commandInt != 0; }

    // true if the listbox event was a selection.
    bool IsSelection() const { return (m_extraLong != 0); }

    virtual wxEvent *Clone() const { return new wxCommandEvent(*this); }
    virtual wxEventCategory GetEventCategory() const { return wxEVT_CATEGORY_USER_INPUT; }

protected:
    void*             m_clientData;    // Arbitrary client data
    wxClientData*     m_clientObject;  // Arbitrary client object

};

// this class adds a possibility to react (from the user) code to a control
// notification: allow or veto the operation being reported.
class WXDLLIMPEXP_CORE wxNotifyEvent  : public wxCommandEvent
{
public:
    wxNotifyEvent(wxEventType commandType = wxEVT_NULL, int winid = 0)
        : wxCommandEvent(commandType, winid)
        { m_bAllow = true; }

    wxNotifyEvent(const wxNotifyEvent& event)
        : wxCommandEvent(event)
        { m_bAllow = event.m_bAllow; }

    // veto the operation (usually it's allowed by default)
    void Veto() { m_bAllow = false; }

    // allow the operation if it was disabled by default
    void Allow() { m_bAllow = true; }

    // for implementation code only: is the operation allowed?
    bool IsAllowed() const { return m_bAllow; }

    virtual wxEvent *Clone() const { return new wxNotifyEvent(*this); }
};


// Scroll event class, derived form wxCommandEvent. wxScrollEvents are
// sent by wxSlider and wxScrollBar.
/*
 wxEVT_SCROLL_TOP
 wxEVT_SCROLL_BOTTOM
 wxEVT_SCROLL_LINEUP
 wxEVT_SCROLL_LINEDOWN
 wxEVT_SCROLL_PAGEUP
 wxEVT_SCROLL_PAGEDOWN
 wxEVT_SCROLL_THUMBTRACK
 wxEVT_SCROLL_THUMBRELEASE
 wxEVT_SCROLL_CHANGED
*/

class WXDLLIMPEXP_CORE wxScrollEvent : public wxCommandEvent
{
public:
    wxScrollEvent(wxEventType commandType = wxEVT_NULL,
                  int winid = 0, int pos = 0, int orient = 0);

    int GetOrientation() const { return (int) m_extraLong; }
    int GetPosition() const { return m_commandInt; }
    void SetOrientation(int orient) { m_extraLong = (long) orient; }
    void SetPosition(int pos) { m_commandInt = pos; }

    virtual wxEvent *Clone() const { return new wxScrollEvent(*this); }

};

// ScrollWin event class, derived fom wxEvent. wxScrollWinEvents
// are sent by wxWindow.
/*
 wxEVT_SCROLLWIN_TOP
 wxEVT_SCROLLWIN_BOTTOM
 wxEVT_SCROLLWIN_LINEUP
 wxEVT_SCROLLWIN_LINEDOWN
 wxEVT_SCROLLWIN_PAGEUP
 wxEVT_SCROLLWIN_PAGEDOWN
 wxEVT_SCROLLWIN_THUMBTRACK
 wxEVT_SCROLLWIN_THUMBRELEASE
*/

class WXDLLIMPEXP_CORE wxScrollWinEvent : public wxEvent
{
public:
    wxScrollWinEvent(wxEventType commandType = wxEVT_NULL,
                     int pos = 0, int orient = 0);
    wxScrollWinEvent(const wxScrollWinEvent& event) : wxEvent(event)
        {    m_commandInt = event.m_commandInt;
            m_extraLong = event.m_extraLong;    }

    int GetOrientation() const { return (int) m_extraLong; }
    int GetPosition() const { return m_commandInt; }
    void SetOrientation(int orient) { m_extraLong = (long) orient; }
    void SetPosition(int pos) { m_commandInt = pos; }

    virtual wxEvent *Clone() const { return new wxScrollWinEvent(*this); }
};



// Mouse event class

/*
 wxEVT_LEFT_DOWN
 wxEVT_LEFT_UP
 wxEVT_MIDDLE_DOWN
 wxEVT_MIDDLE_UP
 wxEVT_RIGHT_DOWN
 wxEVT_RIGHT_UP
 wxEVT_MOTION
 wxEVT_ENTER_WINDOW
 wxEVT_LEAVE_WINDOW
 wxEVT_LEFT_DCLICK
 wxEVT_MIDDLE_DCLICK
 wxEVT_RIGHT_DCLICK
*/

enum wxMouseWheelAxis
{
    wxMOUSE_WHEEL_VERTICAL,
    wxMOUSE_WHEEL_HORIZONTAL
};

class WXDLLIMPEXP_CORE wxMouseEvent : public wxEvent,
                                      public wxMouseState
{
public:
    wxMouseEvent(wxEventType mouseType = wxEVT_NULL);
    wxMouseEvent(const wxMouseEvent& event)
        : wxEvent(event),
          wxMouseState(event)
    {
        Assign(event);
    }

    // Was it a button event? (*doesn't* mean: is any button *down*?)
    bool IsButton() const { return Button(wxMOUSE_BTN_ANY); }

    // Was it a down event from this (or any) button?
    bool ButtonDown(int but) const;

    // Was it a dclick event from this (or any) button?
    bool ButtonDClick(int but) const;

    // Was it a up event from this (or any) button?
    bool ButtonUp(int but) const;

    // Was this event generated by the given button?
    bool Button(int but) const;

    // Get the button which is changing state (wxMOUSE_BTN_NONE if none)
    int GetButton() const;

    // Find which event was just generated
    bool LeftDown() const { return (m_eventType == wxEVT_LEFT_DOWN); }
    bool MiddleDown() const { return (m_eventType == wxEVT_MIDDLE_DOWN); }
    bool RightDown() const { return (m_eventType == wxEVT_RIGHT_DOWN); }
    bool Aux1Down() const { return (m_eventType == wxEVT_AUX1_DOWN); }
    bool Aux2Down() const { return (m_eventType == wxEVT_AUX2_DOWN); }

    bool LeftUp() const { return (m_eventType == wxEVT_LEFT_UP); }
    bool MiddleUp() const { return (m_eventType == wxEVT_MIDDLE_UP); }
    bool RightUp() const { return (m_eventType == wxEVT_RIGHT_UP); }
    bool Aux1Up() const { return (m_eventType == wxEVT_AUX1_UP); }
    bool Aux2Up() const { return (m_eventType == wxEVT_AUX2_UP); }

    bool LeftDClick() const { return (m_eventType == wxEVT_LEFT_DCLICK); }
    bool MiddleDClick() const { return (m_eventType == wxEVT_MIDDLE_DCLICK); }
    bool RightDClick() const { return (m_eventType == wxEVT_RIGHT_DCLICK); }
    bool Aux1DClick() const { return (m_eventType == wxEVT_AUX1_DCLICK); }
    bool Aux2DClick() const { return (m_eventType == wxEVT_AUX2_DCLICK); }

    // True if a button is down and the mouse is moving
    bool Dragging() const
    {
        return (m_eventType == wxEVT_MOTION) && ButtonIsDown(wxMOUSE_BTN_ANY);
    }

    // True if the mouse is moving, and no button is down
    bool Moving() const
    {
        return (m_eventType == wxEVT_MOTION) && !ButtonIsDown(wxMOUSE_BTN_ANY);
    }

    // True if the mouse is just entering the window
    bool Entering() const { return (m_eventType == wxEVT_ENTER_WINDOW); }

    // True if the mouse is just leaving the window
    bool Leaving() const { return (m_eventType == wxEVT_LEAVE_WINDOW); }

    // Returns the number of mouse clicks associated with this event.
    int GetClickCount() const { return m_clickCount; }

    // Find the logical position of the event given the DC
//    wxPoint GetLogicalPosition(const wxDC& dc) const;

    // Get wheel rotation, positive or negative indicates direction of
    // rotation.  Current devices all send an event when rotation is equal to
    // +/-WheelDelta, but this allows for finer resolution devices to be
    // created in the future.  Because of this you shouldn't assume that one
    // event is equal to 1 line or whatever, but you should be able to either
    // do partial line scrolling or wait until +/-WheelDelta rotation values
    // have been accumulated before scrolling.
    int GetWheelRotation() const { return m_wheelRotation; }

    // Get wheel delta, normally 120.  This is the threshold for action to be
    // taken, and one such action (for example, scrolling one increment)
    // should occur for each delta.
    int GetWheelDelta() const { return m_wheelDelta; }

    // Gets the axis the wheel operation concerns; wxMOUSE_WHEEL_VERTICAL
    // (most common case) or wxMOUSE_WHEEL_HORIZONTAL (for horizontal scrolling
    // using e.g. a trackpad).
    wxMouseWheelAxis GetWheelAxis() const { return m_wheelAxis; }

    // Returns the configured number of lines (or whatever) to be scrolled per
    // wheel action. Defaults to three.
    int GetLinesPerAction() const { return m_linesPerAction; }

    // Returns the configured number of columns (or whatever) to be scrolled per
    // wheel action. Defaults to three.
    int GetColumnsPerAction() const { return m_columnsPerAction; }

    // Is the system set to do page scrolling?
    bool IsPageScroll() const { return ((unsigned int)m_linesPerAction == UINT_MAX); }

    virtual wxEvent *Clone() const { return new wxMouseEvent(*this); }
    virtual wxEventCategory GetEventCategory() const { return wxEVT_CATEGORY_USER_INPUT; }

    wxMouseEvent& operator=(const wxMouseEvent& event)
    {
        if (&event != this)
            Assign(event);
        return *this;
    }

public:
    int           m_clickCount;

    wxMouseWheelAxis m_wheelAxis;
    int           m_wheelRotation;
    int           m_wheelDelta;
    int           m_linesPerAction;
    int           m_columnsPerAction;
};

// Cursor set event

/*
   wxEVT_SET_CURSOR
 */

class WXDLLIMPEXP_CORE wxSetCursorEvent : public wxEvent
{
public:
    wxSetCursorEvent(wxCoord x = 0, wxCoord y = 0)
        : wxEvent(0, wxEVT_SET_CURSOR),
          m_x(x), m_y(y), m_cursor()
        { }

    wxSetCursorEvent(const wxSetCursorEvent& event)
        : wxEvent(event),
          m_x(event.m_x),
          m_y(event.m_y),
          m_cursor(event.m_cursor)
        { }

    wxCoord GetX() const { return m_x; }
    wxCoord GetY() const { return m_y; }

    bool HasCursor() const { return m_cursor.IsOk(); }

    virtual wxEvent *Clone() const { return new wxSetCursorEvent(*this); }
};

// Keyboard input event class

/*
 wxEVT_CHAR
 wxEVT_CHAR_HOOK
 wxEVT_KEY_DOWN
 wxEVT_KEY_UP
 wxEVT_HOTKEY
 */

// key categories: the bit flags for IsKeyInCategory() function
//
// the enum values used may change in future version of wx
// use the named constants only, or bitwise combinations thereof
enum wxKeyCategoryFlags
{
    // arrow keys, on and off numeric keypads
    WXK_CATEGORY_ARROW  = 1,

    // page up and page down keys, on and off numeric keypads
    WXK_CATEGORY_PAGING = 2,

    // home and end keys, on and off numeric keypads
    WXK_CATEGORY_JUMP   = 4,

    // all keys usually used for navigation
    WXK_CATEGORY_NAVIGATION = 1 |
                              2 |
                              4,

    // tab key, on and off numeric keypads
    WXK_CATEGORY_TAB    = 8,

    // backspace and delete keys, on and off numeric keypads
    WXK_CATEGORY_CUT    = 16
};

typedef uint32 wxChar;
class WXDLLIMPEXP_CORE wxKeyEvent : public wxEvent,
                                    public wxKeyboardState
{
public:
    wxKeyEvent(wxEventType keyType = wxEVT_NULL);

    // Normal copy ctor and a ctor creating a new event for the same key as the
    // given one but a different event type (this is used in implementation
    // code only, do not use outside of the library).
    wxKeyEvent(const wxKeyEvent& evt);
    wxKeyEvent(wxEventType eventType, const wxKeyEvent& evt);

    // get the key code: an ASCII7 char or an element of wxKeyCode enum
    int GetKeyCode() const { return (int)m_keyCode; }

    // returns true iff this event's key code is of a certain type
    bool IsKeyInCategory(int category) const;

    // get the Unicode character corresponding to this key
    wxChar GetUnicodeKey() const { return m_uniChar; }

    // get the raw key code (platform-dependent)
    wxUint32 GetRawKeyCode() const { return m_rawCode; }

    // get the raw key flags (platform-dependent)
    wxUint32 GetRawKeyFlags() const { return m_rawFlags; }

    // Find the position of the event
    void GetPosition(wxCoord *xpos, wxCoord *ypos) const
    {
        if (xpos)
            *xpos = GetX();
        if (ypos)
            *ypos = GetY();
    }
    wxPoint GetPosition() const
        { return wxPoint(GetX(), GetY()); }

    // Get X position
    wxCoord GetX() const;

    // Get Y position
    wxCoord GetY() const;

    // Can be called from wxEVT_CHAR_HOOK handler to allow generation of normal
    // key events even though the event had been handled (by default they would
    // not be generated in this case).
    void DoAllowNextEvent() { m_allowNext = true; }

    // Return the value of the "allow next" flag, for internal use only.
    bool IsNextEventAllowed() const { return m_allowNext; }


    virtual wxEvent *Clone() const { return new wxKeyEvent(*this); }
    virtual wxEventCategory GetEventCategory() const { return wxEVT_CATEGORY_USER_INPUT; }

    // we do need to copy wxKeyEvent sometimes (in wxTreeCtrl code, for
    // example)
    wxKeyEvent& operator=(const wxKeyEvent& evt)
    {
        if ( &evt != this )
        {
            wxEvent::operator=(evt);

            // Borland C++ 5.82 doesn't compile an explicit call to an
            // implicitly defined operator=() so need to do it this way:
            *static_cast<wxKeyboardState *>(this) = evt;

            DoAssignMembers(evt);
        }
        return *this;
    }

public:
    // Do not use these fields directly, they are initialized on demand, so
    // call GetX() and GetY() or GetPosition() instead.
    wxCoord       m_x, m_y;

    long          m_keyCode;


    // This contains the full Unicode character
    // in a character events in Unicode mode
    wxChar        m_uniChar;


    // these fields contain the platform-specific information about
    // key that was pressed
    wxUint32      m_rawCode;
    wxUint32      m_rawFlags;

};

// Size event class
/*
 wxEVT_SIZE
 */

class WXDLLIMPEXP_CORE wxSizeEvent : public wxEvent
{
public:
    wxSizeEvent() : wxEvent(0, wxEVT_SIZE)
        { }
    wxSizeEvent(const wxSize& sz, int winid = 0)
        : wxEvent(winid, wxEVT_SIZE),
          m_size(sz)
        { }
    wxSizeEvent(const wxSizeEvent& event)
        : wxEvent(event),
          m_size(event.m_size), m_rect(event.m_rect)
        { }
    wxSizeEvent(const wxRect& rect, int id = 0)
        : m_size(rect.GetSize()), m_rect(rect)
        { m_eventType = wxEVT_SIZING; m_id = id; }

    wxSize GetSize() const { return m_size; }
    void SetSize(wxSize size) { m_size = size; }
    wxRect GetRect() const { return m_rect; }
    void SetRect(const wxRect& rect) { m_rect = rect; }

    virtual wxEvent *Clone() const { return new wxSizeEvent(*this); }

public:
    // For internal usage only. Will be converted to protected members.
    wxSize m_size;
    wxRect m_rect; // Used for wxEVT_SIZING
};

// Move event class

/*
 wxEVT_MOVE
 */

class WXDLLIMPEXP_CORE wxMoveEvent : public wxEvent
{
public:
    wxMoveEvent()
        : wxEvent(0, wxEVT_MOVE)
        { }
    wxMoveEvent(const wxPoint& pos, int winid = 0)
        : wxEvent(winid, wxEVT_MOVE),
          m_pos(pos)
        { }
    wxMoveEvent(const wxMoveEvent& event)
        : wxEvent(event),
          m_pos(event.m_pos)
    { }
    wxMoveEvent(const wxRect& rect, int id = 0)
        : m_pos(rect.GetPosition()), m_rect(rect)
        { m_eventType = wxEVT_MOVING; m_id = id; }

    wxPoint GetPosition() const { return m_pos; }
    void SetPosition(const wxPoint& pos) { m_pos = pos; }
    wxRect GetRect() const { return m_rect; }
    void SetRect(const wxRect& rect) { m_rect = rect; }

    virtual wxEvent *Clone() const { return new wxMoveEvent(*this); }
};


class WXDLLIMPEXP_CORE wxPaintEvent : public wxEvent
{
public:
    wxPaintEvent(int Id = 0)
        : wxEvent(Id, wxEVT_PAINT)
    {
    }

    virtual wxEvent *Clone() const { return new wxPaintEvent(*this); }
};

class WXDLLIMPEXP_CORE wxNcPaintEvent : public wxEvent
{
public:
    wxNcPaintEvent(int winid = 0)
        : wxEvent(winid, wxEVT_NC_PAINT)
        { }

    virtual wxEvent *Clone() const { return new wxNcPaintEvent(*this); }
};

// Erase background event class
/*
 wxEVT_ERASE_BACKGROUND
 */

class WXDLLIMPEXP_CORE wxEraseEvent : public wxEvent
{
public:
    wxEraseEvent(int Id = 0, void *dc = NULL)
        : wxEvent(Id, wxEVT_ERASE_BACKGROUND),
          m_dc(dc)
        { }

    wxEraseEvent(const wxEraseEvent& event)
        : wxEvent(event),
          m_dc(event.m_dc)
        { }

    void *GetDC() const { return m_dc; }

    virtual wxEvent *Clone() const { return new wxEraseEvent(*this); }
};

// Focus event class
/*
 wxEVT_SET_FOCUS
 wxEVT_KILL_FOCUS
 */

class WXDLLIMPEXP_CORE wxFocusEvent : public wxEvent
{
public:
    wxFocusEvent(wxEventType type = wxEVT_NULL, int winid = 0)
        : wxEvent(winid, type)
        { m_win = NULL; }

    wxFocusEvent(const wxFocusEvent& event)
        : wxEvent(event)
        { m_win = event.m_win; }

    // The window associated with this event is the window which had focus
    // before for SET event and the window which will have focus for the KILL
    // one. NB: it may be NULL in both cases!
    wxWindow *GetWindow() const { return m_win; }
    void SetWindow(wxWindow *win) { m_win = win; }

    virtual wxEvent *Clone() const { return new wxFocusEvent(*this); }
};

// wxChildFocusEvent notifies the parent that a child has got the focus: unlike
// wxFocusEvent it is propagated upwards the window chain
class WXDLLIMPEXP_CORE wxChildFocusEvent : public wxCommandEvent
{
public:
    wxChildFocusEvent(wxWindow *win = NULL);

    wxWindow *GetWindow() const { return (wxWindow *)GetEventObject(); }

    virtual wxEvent *Clone() const { return new wxChildFocusEvent(*this); }
};

// Activate event class
/*
 wxEVT_ACTIVATE
 wxEVT_ACTIVATE_APP
 wxEVT_HIBERNATE
 */

class WXDLLIMPEXP_CORE wxActivateEvent : public wxEvent
{
public:
    // Type of activation. For now we can only detect if it was by mouse or by
    // some other method and even this is only available under wxMSW.
    enum Reason
    {
        Reason_Mouse,
        Reason_Unknown
    };

    wxActivateEvent(wxEventType type = wxEVT_NULL, bool active = true,
                    int Id = 0, Reason activationReason = #@ Reason_Unknown
                    @#)
        : wxEvent(Id, type),
        m_activationReason(activationReason)
    {
        m_active = active;
    }
    wxActivateEvent(const wxActivateEvent& event)
        : wxEvent(event)
    {
        m_active = event.m_active;
        m_activationReason = event.m_activationReason;
    }

    bool GetActive() const { return m_active; }
    Reason GetActivationReason() const { return m_activationReason;}

    virtual wxEvent *Clone() const { return new wxActivateEvent(*this); }
};

// InitDialog event class
/*
 wxEVT_INIT_DIALOG
 */

class WXDLLIMPEXP_CORE wxInitDialogEvent : public wxEvent
{
public:
    wxInitDialogEvent(int Id = 0)
        : wxEvent(Id, wxEVT_INIT_DIALOG)
        { }

    virtual wxEvent *Clone() const { return new wxInitDialogEvent(*this); }
};

// Miscellaneous menu event class
/*
 wxEVT_MENU_OPEN,
 wxEVT_MENU_CLOSE,
 wxEVT_MENU_HIGHLIGHT,
*/

class WXDLLIMPEXP_CORE wxMenuEvent : public wxEvent
{
public:
    wxMenuEvent(wxEventType type = wxEVT_NULL, int winid = 0, wxMenu* menu = NULL)
        : wxEvent(winid, type)
        { m_menuId = winid; m_menu = menu; }
    wxMenuEvent(const wxMenuEvent& event)
        : wxEvent(event)
    { m_menuId = event.m_menuId; m_menu = event.m_menu; }

    // only for wxEVT_MENU_HIGHLIGHT
    int GetMenuId() const { return m_menuId; }

    // only for wxEVT_MENU_OPEN/CLOSE
    bool IsPopup() const { return m_menuId == wxID_ANY; }

    // only for wxEVT_MENU_OPEN/CLOSE
    wxMenu* GetMenu() const { return m_menu; }

    virtual wxEvent *Clone() const { return new wxMenuEvent(*this); }
};

// Window close or session close event class
/*
 wxEVT_CLOSE_WINDOW,
 wxEVT_END_SESSION,
 wxEVT_QUERY_END_SESSION
 */

class WXDLLIMPEXP_CORE wxCloseEvent : public wxEvent
{
public:
    wxCloseEvent(wxEventType type = wxEVT_NULL, int winid = 0)
        : wxEvent(winid, type),
          m_loggingOff(true),
          m_veto(false),      // should be false by default
          m_canVeto(true) {}

    wxCloseEvent(const wxCloseEvent& event)
        : wxEvent(event),
        m_loggingOff(event.m_loggingOff),
        m_veto(event.m_veto),
        m_canVeto(event.m_canVeto) {}

    void SetLoggingOff(bool logOff) { m_loggingOff = logOff; }
    bool GetLoggingOff() const
    {
        // m_loggingOff flag is only used by wxEVT_[QUERY_]END_SESSION, it
        // doesn't make sense for wxEVT_CLOSE_WINDOW
        wxASSERT_MSG( m_eventType != wxEVT_CLOSE_WINDOW,
                      wxT("this flag is for end session events only") );

        return m_loggingOff;
    }

    void Veto(bool veto = true)
    {
        // GetVeto() will return false anyhow...
        wxCHECK_RET( m_canVeto,
                     wxT("call to Veto() ignored (can't veto this event)") );

        m_veto = veto;
    }
    void SetCanVeto(bool canVeto) { m_canVeto = canVeto; }
    bool CanVeto() const { return m_canVeto; }
    bool GetVeto() const { return m_canVeto && m_veto; }

    virtual wxEvent *Clone() const { return new wxCloseEvent(*this); }
};

/*
 wxEVT_SHOW
 */

class WXDLLIMPEXP_CORE wxShowEvent : public wxEvent
{
public:
    wxShowEvent(int winid = 0, bool show = false)
        : wxEvent(winid, wxEVT_SHOW)
        { m_show = show; }
    wxShowEvent(const wxShowEvent& event)
        : wxEvent(event)
    { m_show = event.m_show; }

    void SetShow(bool show) { m_show = show; }

    // return true if the window was shown, false if hidden
    bool IsShown() const { return m_show; }

    virtual wxEvent *Clone() const { return new wxShowEvent(*this); }
};

/*
 wxEVT_ICONIZE
 */

class WXDLLIMPEXP_CORE wxIconizeEvent : public wxEvent
{
public:
    wxIconizeEvent(int winid = 0, bool iconized = true)
        : wxEvent(winid, wxEVT_ICONIZE)
        { m_iconized = iconized; }
    wxIconizeEvent(const wxIconizeEvent& event)
        : wxEvent(event)
    { m_iconized = event.m_iconized; }

    // return true if the frame was iconized, false if restored
    bool IsIconized() const { return m_iconized; }

    virtual wxEvent *Clone() const { return new wxIconizeEvent(*this); }
};
/*
 wxEVT_MAXIMIZE
 */

class WXDLLIMPEXP_CORE wxMaximizeEvent : public wxEvent
{
public:
    wxMaximizeEvent(int winid = 0)
        : wxEvent(winid, wxEVT_MAXIMIZE)
        { }

    virtual wxEvent *Clone() const { return new wxMaximizeEvent(*this); }
};

// Joystick event class
/*
 wxEVT_JOY_BUTTON_DOWN,
 wxEVT_JOY_BUTTON_UP,
 wxEVT_JOY_MOVE,
 wxEVT_JOY_ZMOVE
*/

// Which joystick? Same as Windows ids so no conversion necessary.
enum
{
    wxJOYSTICK1,
    wxJOYSTICK2
};

// Which button is down?
enum
{
    wxJOY_BUTTON_ANY = -1,
    wxJOY_BUTTON1    = 1,
    wxJOY_BUTTON2    = 2,
    wxJOY_BUTTON3    = 4,
    wxJOY_BUTTON4    = 8
};

class WXDLLIMPEXP_CORE wxJoystickEvent : public wxEvent
{
protected:
    wxPoint   m_pos;
    int       m_zPosition;
    int       m_buttonChange;   // Which button changed?
    int       m_buttonState;    // Which buttons are down?
    int       m_joyStick;       // Which joystick?

public:
    wxJoystickEvent(wxEventType type = wxEVT_NULL,
                    int state = 0,
                    int joystick = wxJOYSTICK1,
                    int change = 0)
        : wxEvent(0, type),
          m_pos(),
          m_zPosition(0),
          m_buttonChange(change),
          m_buttonState(state),
          m_joyStick(joystick)
    {
    }
    wxJoystickEvent(const wxJoystickEvent& event)
        : wxEvent(event),
          m_pos(event.m_pos),
          m_zPosition(event.m_zPosition),
          m_buttonChange(event.m_buttonChange),
          m_buttonState(event.m_buttonState),
          m_joyStick(event.m_joyStick)
    { }

    wxPoint GetPosition() const { return m_pos; }
    int GetZPosition() const { return m_zPosition; }
    int GetButtonState() const { return m_buttonState; }
    int GetButtonChange() const { return m_buttonChange; }
    int GetJoystick() const { return m_joyStick; }

    void SetJoystick(int stick) { m_joyStick = stick; }
    void SetButtonState(int state) { m_buttonState = state; }
    void SetButtonChange(int change) { m_buttonChange = change; }
    void SetPosition(const wxPoint& pos) { m_pos = pos; }
    void SetZPosition(int zPos) { m_zPosition = zPos; }

    // Was it a button event? (*doesn't* mean: is any button *down*?)
    bool IsButton() const { return ((GetEventType() == wxEVT_JOY_BUTTON_DOWN) ||
            (GetEventType() == wxEVT_JOY_BUTTON_UP)); }

    // Was it a move event?
    bool IsMove() const { return (GetEventType() == wxEVT_JOY_MOVE); }

    // Was it a zmove event?
    bool IsZMove() const { return (GetEventType() == wxEVT_JOY_ZMOVE); }

    // Was it a down event from button 1, 2, 3, 4 or any?
    bool ButtonDown(int but = wxJOY_BUTTON_ANY) const
    { return ((GetEventType() == wxEVT_JOY_BUTTON_DOWN) &&
            ((but == wxJOY_BUTTON_ANY) || (but == m_buttonChange))); }

    // Was it a up event from button 1, 2, 3 or any?
    bool ButtonUp(int but = wxJOY_BUTTON_ANY) const
    { return ((GetEventType() == wxEVT_JOY_BUTTON_UP) &&
            ((but == wxJOY_BUTTON_ANY) || (but == m_buttonChange))); }

    // Was the given button 1,2,3,4 or any in Down state?
    bool ButtonIsDown(int but =  wxJOY_BUTTON_ANY) const
    { return (((but == wxJOY_BUTTON_ANY) && (m_buttonState != 0)) ||
            ((m_buttonState & but) == but)); }

    virtual wxEvent *Clone() const { return new wxJoystickEvent(*this); }

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxJoystickEvent)
};

// Drop files event class
/*
 wxEVT_DROP_FILES
 */

class WXDLLIMPEXP_CORE wxDropFilesEvent : public wxEvent
{
public:
    int       m_noFiles;
    wxPoint   m_pos;
    wxString* m_files;

    wxDropFilesEvent(wxEventType type = wxEVT_NULL,
                     int noFiles = 0,
                     wxString *files = NULL)
        : wxEvent(0, type),
          m_noFiles(noFiles),
          m_pos(),
          m_files(files)
        { }

    // we need a copy ctor to avoid deleting m_files pointer twice
    wxDropFilesEvent(const wxDropFilesEvent& other)
        : wxEvent(other),
          m_noFiles(other.m_noFiles),
          m_pos(other.m_pos),
          m_files(NULL)
    {
        m_files = new wxString[m_noFiles];
        for ( int n = 0; n < m_noFiles; n++ )
        {
            m_files[n] = other.m_files[n];
        }
    }

    virtual ~wxDropFilesEvent()
    {
        delete [] m_files;
    }

    wxPoint GetPosition() const { return m_pos; }
    int GetNumberOfFiles() const { return m_noFiles; }
    wxString *GetFiles() const { return m_files; }

    virtual wxEvent *Clone() const { return new wxDropFilesEvent(*this); }

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxDropFilesEvent)
};

// Update UI event
/*
 wxEVT_UPDATE_UI
 */

// Whether to always send update events to windows, or
// to only send update events to those with the
// wxWS_EX_PROCESS_UI_UPDATES style.

enum wxUpdateUIMode
{
        // Send UI update events to all windows
    wxUPDATE_UI_PROCESS_ALL,

        // Send UI update events to windows that have
        // the wxWS_EX_PROCESS_UI_UPDATES flag specified
    wxUPDATE_UI_PROCESS_SPECIFIED
};

class WXDLLIMPEXP_CORE wxUpdateUIEvent : public wxCommandEvent
{
public:
    wxUpdateUIEvent(wxWindowID commandId = {.WxWindowID(0).})
        : wxCommandEvent(wxEVT_UPDATE_UI, commandId)
    {
        m_checked =
        m_enabled =
        m_shown =
        m_setEnabled =
        m_setShown =
        m_setText =
        m_setChecked = false;
    }
    wxUpdateUIEvent(const wxUpdateUIEvent& event)
        : wxCommandEvent(event),
          m_checked(event.m_checked),
          m_enabled(event.m_enabled),
          m_shown(event.m_shown),
          m_setEnabled(event.m_setEnabled),
          m_setShown(event.m_setShown),
          m_setText(event.m_setText),
          m_setChecked(event.m_setChecked),
          m_text(event.m_text)
    { }

    bool GetChecked() const { return m_checked; }
    bool GetEnabled() const { return m_enabled; }
    bool GetShown() const { return m_shown; }
    wxString GetText() const { return m_text; }
    bool GetSetText() const { return m_setText; }
    bool GetSetChecked() const { return m_setChecked; }
    bool GetSetEnabled() const { return m_setEnabled; }
    bool GetSetShown() const { return m_setShown; }

    void Check(bool check) { m_checked = check; m_setChecked = true; }
    void Enable(bool enable) { m_enabled = enable; m_setEnabled = true; }
    void Show(bool show) { m_shown = show; m_setShown = true; }
    void SetText(const wxString& text) { m_text = text; m_setText = true; }

    // Sets the interval between updates in milliseconds.
    // Set to -1 to disable updates, or to 0 to update as frequently as possible.
    static void SetUpdateInterval(long updateInterval) { sm_updateInterval = updateInterval; }

    // Returns the current interval between updates in milliseconds
    static long GetUpdateInterval() { return sm_updateInterval; }

    // Can we update this window?
    static bool CanUpdate(wxWindowBase *win);

    // Reset the update time to provide a delay until the next
    // time we should update
    static void ResetUpdateTime();

    // Specify how wxWidgets will send update events: to
    // all windows, or only to those which specify that they
    // will process the events.
    static void SetMode(wxUpdateUIMode mode) { sm_updateMode = mode; }

    // Returns the UI update mode
    static wxUpdateUIMode GetMode() { return sm_updateMode; }

    virtual wxEvent *Clone() const { return new wxUpdateUIEvent(*this); }
};

/*
 wxEVT_SYS_COLOUR_CHANGED
 */

// TODO: shouldn't all events record the window ID?
class WXDLLIMPEXP_CORE wxSysColourChangedEvent : public wxEvent
{
public:
    wxSysColourChangedEvent()
        : wxEvent(0, wxEVT_SYS_COLOUR_CHANGED)
        { }

    virtual wxEvent *Clone() const { return new wxSysColourChangedEvent(*this); }

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxSysColourChangedEvent)
};

/*
 wxEVT_MOUSE_CAPTURE_CHANGED
 The window losing the capture receives this message
 (even if it released the capture itself).
 */

class WXDLLIMPEXP_CORE wxMouseCaptureChangedEvent : public wxEvent
{
public:
    wxMouseCaptureChangedEvent(wxWindowID winid = {.WxWindowID(0).}, wxWindow* gainedCapture = NULL)
        : wxEvent(winid, wxEVT_MOUSE_CAPTURE_CHANGED),
          m_gainedCapture(gainedCapture)
        { }

    wxMouseCaptureChangedEvent(const wxMouseCaptureChangedEvent& event)
        : wxEvent(event),
          m_gainedCapture(event.m_gainedCapture)
        { }

    virtual wxEvent *Clone() const { return new wxMouseCaptureChangedEvent(*this); }

    wxWindow* GetCapturedWindow() const { return m_gainedCapture; }
};

/*
 wxEVT_MOUSE_CAPTURE_LOST
 The window losing the capture receives this message, unless it released it
 it itself or unless wxWindow::CaptureMouse was called on another window
 (and so capture will be restored when the new capturer releases it).
 */

class WXDLLIMPEXP_CORE wxMouseCaptureLostEvent : public wxEvent
{
public:
    wxMouseCaptureLostEvent(wxWindowID winid = {.WxWindowID(0).})
        : wxEvent(winid, wxEVT_MOUSE_CAPTURE_LOST)
    {}

    wxMouseCaptureLostEvent(const wxMouseCaptureLostEvent& event)
        : wxEvent(event)
    {}

    virtual wxEvent *Clone() const { return new wxMouseCaptureLostEvent(*this); }
};

/*
 wxEVT_DISPLAY_CHANGED
 */
class WXDLLIMPEXP_CORE wxDisplayChangedEvent : public wxEvent
{
public:
    wxDisplayChangedEvent()
        : wxEvent(0, wxEVT_DISPLAY_CHANGED)
        { }

    virtual wxEvent *Clone() const { return new wxDisplayChangedEvent(*this); }
};

/*
 wxEVT_PALETTE_CHANGED
 */

class WXDLLIMPEXP_CORE wxPaletteChangedEvent : public wxEvent
{
public:
    wxPaletteChangedEvent(wxWindowID winid = {.WxWindowID(0).})
        : wxEvent(winid, wxEVT_PALETTE_CHANGED),
          m_changedWindow(NULL)
        { }

    wxPaletteChangedEvent(const wxPaletteChangedEvent& event)
        : wxEvent(event),
          m_changedWindow(event.m_changedWindow)
        { }

    void SetChangedWindow(wxWindow* win) { m_changedWindow = win; }
    wxWindow* GetChangedWindow() const { return m_changedWindow; }

    virtual wxEvent *Clone() const { return new wxPaletteChangedEvent(*this); }

protected:
    wxWindow*     m_changedWindow;

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxPaletteChangedEvent)
};

/*
 wxEVT_QUERY_NEW_PALETTE
 Indicates the window is getting keyboard focus and should re-do its palette.
 */

class WXDLLIMPEXP_CORE wxQueryNewPaletteEvent : public wxEvent
{
public:
    wxQueryNewPaletteEvent(wxWindowID winid = {.WxWindowID(0).})
        : wxEvent(winid, wxEVT_QUERY_NEW_PALETTE),
          m_paletteRealized(false)
        { }
    wxQueryNewPaletteEvent(const wxQueryNewPaletteEvent& event)
        : wxEvent(event),
        m_paletteRealized(event.m_paletteRealized)
    { }

    // App sets this if it changes the palette.
    void SetPaletteRealized(bool realized) { m_paletteRealized = realized; }
    bool GetPaletteRealized() const { return m_paletteRealized; }

    virtual wxEvent *Clone() const { return new wxQueryNewPaletteEvent(*this); }

protected:
    bool m_paletteRealized;

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxQueryNewPaletteEvent)
};

/*
 Event generated by dialog navigation keys
 wxEVT_NAVIGATION_KEY
 */
// NB: don't derive from command event to avoid being propagated to the parent
class WXDLLIMPEXP_CORE wxNavigationKeyEvent : public wxEvent
{
public:
    wxNavigationKeyEvent()
        : wxEvent(0, wxEVT_NAVIGATION_KEY),
          m_flags(IsForward | FromTab),    // defaults are for TAB
          m_focus(NULL)
        {
            m_propagationLevel = wxEVENT_PROPAGATE_NONE;
        }

    wxNavigationKeyEvent(const wxNavigationKeyEvent& event)
        : wxEvent(event),
          m_flags(event.m_flags),
          m_focus(event.m_focus)
        { }

    // direction: forward (true) or backward (false)
    bool GetDirection() const
        { return (m_flags & IsForward) != 0; }
    void SetDirection(bool bForward)
        { if ( bForward ) m_flags |= IsForward; else m_flags &= ~IsForward; }

    // it may be a window change event (MDI, notebook pages...) or a control
    // change event
    bool IsWindowChange() const
        { return (m_flags & WinChange) != 0; }
    void SetWindowChange(bool bIs)
        { if ( bIs ) m_flags |= WinChange; else m_flags &= ~WinChange; }

    // Set to true under MSW if the event was generated using the tab key.
    // This is required for proper navogation over radio buttons
    bool IsFromTab() const
        { return (m_flags & FromTab) != 0; }
    void SetFromTab(bool bIs)
        { if ( bIs ) m_flags |= FromTab; else m_flags &= ~FromTab; }

    // the child which has the focus currently (may be NULL - use
    // wxWindow::FindFocus then)
    wxWindow* GetCurrentFocus() const { return m_focus; }
    void SetCurrentFocus(wxWindow *win) { m_focus = win; }

    // Set flags
    void SetFlags(long flags) { m_flags = flags; }

    virtual wxEvent *Clone() const { return new wxNavigationKeyEvent(*this); }

    enum wxNavigationKeyEventFlags
    {
        IsBackward = 0x0000,
        IsForward = 0x0001,
        WinChange = 0x0002,
        FromTab = 0x0004
    };

    long m_flags;
    wxWindow *m_focus;

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxNavigationKeyEvent)
};

// Window creation/destruction events: the first is sent as soon as window is
// created (i.e. the underlying GUI object exists), but when the C++ object is
// fully initialized (so virtual functions may be called). The second,
// wxEVT_DESTROY, is sent right before the window is destroyed - again, it's
// still safe to call virtual functions at this moment
/*
 wxEVT_CREATE
 wxEVT_DESTROY
 */

class WXDLLIMPEXP_CORE wxWindowCreateEvent : public wxCommandEvent
{
public:
    wxWindowCreateEvent(wxWindow *win = NULL);

    wxWindow *GetWindow() const { return (wxWindow *)GetEventObject(); }

    virtual wxEvent *Clone() const { return new wxWindowCreateEvent(*this); }

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxWindowCreateEvent)
};

class WXDLLIMPEXP_CORE wxWindowDestroyEvent : public wxCommandEvent
{
public:
    wxWindowDestroyEvent(wxWindow *win = NULL);

    wxWindow *GetWindow() const { return (wxWindow *)GetEventObject(); }

    virtual wxEvent *Clone() const { return new wxWindowDestroyEvent(*this); }

private:
    DECLARE_DYNAMIC_CLASS_NO_ASSIGN(wxWindowDestroyEvent)
};

// A help event is sent when the user clicks on a window in context-help mode.
/*
 wxEVT_HELP
 wxEVT_DETAILED_HELP
*/

class WXDLLIMPEXP_CORE wxHelpEvent : public wxCommandEvent
{
public:
    // how was this help event generated?
    enum Origin
    {
        Origin_Unknown,    // unrecognized event source
        Origin_Keyboard,   // event generated from F1 key press
        Origin_HelpButton  // event from [?] button on the title bar (Windows)
    };

    wxHelpEvent(wxEventType type = wxEVT_NULL,
                wxWindowID winid = {.WxWindowID(0).},
                const wxPoint& pt = wxDefaultPosition,
                Origin origin = #@ Origin_Unknown
                @#)
        : wxCommandEvent(type, winid),
          m_pos(pt),
          m_origin(GuessOrigin(origin))
    { }
    wxHelpEvent(const wxHelpEvent& event)
        : wxCommandEvent(event),
          m_pos(event.m_pos),
          m_target(event.m_target),
          m_link(event.m_link),
          m_origin(event.m_origin)
    { }

    // Position of event (in screen coordinates)
    const wxPoint& GetPosition() const { return m_pos; }
    void SetPosition(const wxPoint& pos) { m_pos = pos; }

    // Optional link to further help
    const wxString& GetLink() const { return m_link; }
    void SetLink(const wxString& link) { m_link = link; }

    // Optional target to display help in. E.g. a window specification
    const wxString& GetTarget() const { return m_target; }
    void SetTarget(const wxString& target) { m_target = target; }

    virtual wxEvent *Clone() const { return new wxHelpEvent(*this); }

    // optional indication of the event source
    Origin GetOrigin() const { return m_origin; }
    void SetOrigin(Origin origin) { m_origin = origin; }
};

// A Clipboard Text event is sent when a window intercepts text copy/cut/paste
// message, i.e. the user has cut/copied/pasted data from/into a text control
// via ctrl-C/X/V, ctrl/shift-del/insert, a popup menu command, etc.
// NOTE : under windows these events are *NOT* generated automatically
// for a Rich Edit text control.
/*
wxEVT_TEXT_COPY
wxEVT_TEXT_CUT
wxEVT_TEXT_PASTE
*/

class WXDLLIMPEXP_CORE wxClipboardTextEvent : public wxCommandEvent
{
public:
    wxClipboardTextEvent(wxEventType type = wxEVT_NULL,
                     wxWindowID winid = {.WxWindowID(0).})
        : wxCommandEvent(type, winid)
    { }
    wxClipboardTextEvent(const wxClipboardTextEvent& event)
        : wxCommandEvent(event)
    { }

    virtual wxEvent *Clone() const { return new wxClipboardTextEvent(*this); }
};

// A Context event is sent when the user right clicks on a window or
// presses Shift-F10
// NOTE : Under windows this is a repackaged WM_CONTETXMENU message
//        Under other systems it may have to be generated from a right click event
/*
 wxEVT_CONTEXT_MENU
*/

class WXDLLIMPEXP_CORE wxContextMenuEvent : public wxCommandEvent
{
public:
    wxContextMenuEvent(wxEventType type = wxEVT_NULL,
                       wxWindowID winid = {.WxWindowID(0).},
                       const wxPoint& pt = wxDefaultPosition)
        : wxCommandEvent(type, winid),
          m_pos(pt)
    { }
    wxContextMenuEvent(const wxContextMenuEvent& event)
        : wxCommandEvent(event),
        m_pos(event.m_pos)
    { }

    // Position of event (in screen coordinates)
    const wxPoint& GetPosition() const { return m_pos; }
    void SetPosition(const wxPoint& pos) { m_pos = pos; }

    virtual wxEvent *Clone() const { return new wxContextMenuEvent(*this); }
};


/* TODO
 wxEVT_MOUSE_CAPTURE_CHANGED,
 wxEVT_SETTING_CHANGED, // WM_WININICHANGE (NT) / WM_SETTINGCHANGE (Win95)
// wxEVT_FONT_CHANGED,  // WM_FONTCHANGE: roll into wxEVT_SETTING_CHANGED, but remember to propagate
                        // wxEVT_FONT_CHANGED to all other windows (maybe).
 wxEVT_DRAW_ITEM, // Leave these three as virtual functions in wxControl?? Platform-specific.
 wxEVT_MEASURE_ITEM,
 wxEVT_COMPARE_ITEM
*/

#endif // wxUSE_GUI


// ============================================================================
// event handler and related classes
// ============================================================================


// struct containing the members common to static and dynamic event tables
// entries
#inheritable wxEventTableEntryBase
struct WXDLLIMPEXP_BASE wxEventTableEntryBase
{
    wxEventTableEntryBase(int winid, int idLast,
                          wxEventFunctor* fn, wxObject *data)
        : m_id(winid),
          m_lastId(idLast),
          m_fn(fn),
          m_callbackUserData(data)
    {
        wxASSERT_MSG( idLast == wxID_ANY || winid <= idLast,
                      "invalid IDs range: lower bound > upper bound" );
    }

    wxEventTableEntryBase( const wxEventTableEntryBase &entry )
        : m_id( entry.m_id ),
          m_lastId( entry.m_lastId ),
          m_fn( entry.m_fn ),
          m_callbackUserData( entry.m_callbackUserData )
    {
        // This is a 'hack' to ensure that only one instance tries to delete
        // the functor pointer. It is safe as long as the only place where the
        // copy constructor is being called is when the static event tables are
        // being initialized (a temporary instance is created and then this
        // constructor is called).
    }

    ~wxEventTableEntryBase()
    {
        delete m_fn;
    }

    // the range of ids for this entry: if m_lastId == wxID_ANY, the range
    // consists only of m_id, otherwise it is m_id..m_lastId inclusive
    int m_id,
        m_lastId;

    // function/method/functor to call
    wxEventFunctor* m_fn;

    // arbitrary user data associated with the callback
    wxObject* m_callbackUserData;

};

// an entry from a static event table
struct WXDLLIMPEXP_BASE wxEventTableEntry : public wxEventTableEntryBase
{
    wxEventTableEntry(const int& evType, int winid, int idLast,
                      wxEventFunctor* fn, wxObject *data)
        : wxEventTableEntryBase(winid, idLast, fn, data),
        m_eventType(evType)
    { }

    // the reference to event type: this allows us to not care about the
    // (undefined) order in which the event table entries and the event types
    // are initialized: initially the value of this reference might be
    // invalid, but by the time it is used for the first time, all global
    // objects will have been initialized (including the event type constants)
    // and so it will have the correct value when it is needed
    const int& m_eventType;
};

// an entry used in dynamic event table managed by wxEvtHandler::Connect()
struct WXDLLIMPEXP_BASE wxDynamicEventTableEntry : public wxEventTableEntryBase
{
    wxDynamicEventTableEntry(int evType, int winid, int idLast,
                             wxEventFunctor* fn, wxObject *data)
        : wxEventTableEntryBase(winid, idLast, fn, data),
          m_eventType(evType)
    { }

    // not a reference here as we can't keep a reference to a temporary int
    // created to wrap the constant value typically passed to Connect() - nor
    // do we need it
    int m_eventType;

};

// ----------------------------------------------------------------------------
// wxEventTable: an array of event entries terminated with {0, 0, 0, 0, 0}
// ----------------------------------------------------------------------------

struct WXDLLIMPEXP_BASE wxEventTable
{
    const wxEventTable *baseTable;    // base event table (next in chain)
    const wxEventTableEntry *entries; // bottom of entry array
};

// ----------------------------------------------------------------------------
// wxEventHashTable: a helper of wxEvtHandler to speed up wxEventTable lookups.
// ----------------------------------------------------------------------------

//WX_DEFINE_ARRAY_PTR(const wxEventTableEntry*, wxEventTableEntryPointerArray);

class WXDLLIMPEXP_BASE wxEventHashTable
{
public:
    // Constructor, needs the event table it needs to hash later on.
    // Note: hashing of the event table is not done in the constructor as it
    //       can be that the event table is not yet full initialize, the hash
    //       will gets initialized when handling the first event look-up request.
    wxEventHashTable(const wxEventTable &table);
    // Destructor.
    ~wxEventHashTable();

    // Handle the given event, in other words search the event table hash
    // and call self->ProcessEvent() if a match was found.
    bool HandleEvent(wxEvent& event, wxEvtHandler *self);

    // Clear table
    void Clear();
};

// ----------------------------------------------------------------------------
// wxEvtHandler: the base class for all objects handling wxWidgets events
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_BASE wxEvtHandler : public wxObject
                                    , public wxTrackable
{
public:
    wxEvtHandler();
    virtual ~wxEvtHandler();


    // Event handler chain
    // -------------------

    wxEvtHandler *GetNextHandler() const { return m_nextHandler; }
    wxEvtHandler *GetPreviousHandler() const { return m_previousHandler; }
    virtual void SetNextHandler(wxEvtHandler *handler) { m_nextHandler = handler; }
    virtual void SetPreviousHandler(wxEvtHandler *handler) { m_previousHandler = handler; }

    void SetEvtHandlerEnabled(bool enabled) { m_enabled = enabled; }
    bool GetEvtHandlerEnabled() const { return m_enabled; }

    void Unlink();
    bool IsUnlinked() const;


    // Global event filters
    // --------------------

    // Add an event filter whose FilterEvent() method will be called for each
    // and every event processed by wxWidgets. The filters are called in LIFO
    // order and wxApp is registered as an event filter by default. The pointer
    // must remain valid until it's removed with RemoveFilter() and is not
    // deleted by wxEvtHandler.
    static void AddFilter(wxEventFilter* filter);

    // Remove a filter previously installed with AddFilter().
    static void RemoveFilter(wxEventFilter* filter);


    // Event queuing and processing
    // ----------------------------

    // Process an event right now: this can only be called from the main
    // thread, use QueueEvent() for scheduling the events for
    // processing from other threads.
    virtual bool ProcessEvent(wxEvent& event);

    // Process an event by calling ProcessEvent and handling any exceptions
    // thrown by event handlers. It's mostly useful when processing wx events
    // when called from C code (e.g. in GTK+ callback) when the exception
    // wouldn't correctly propagate to wxEventLoop.
    bool SafelyProcessEvent(wxEvent& event);
        // NOTE: uses ProcessEvent()

    // This method tries to process the event in this event handler, including
    // any preprocessing done by TryBefore() and all the handlers chained to
    // it, but excluding the post-processing done in TryAfter().
    //
    // It is meant to be called from ProcessEvent() only and is not virtual,
    // additional event handlers can be hooked into the normal event processing
    // logic using TryBefore() and TryAfter() hooks.
    //
    // You can also call it yourself to forward an event to another handler but
    // without propagating it upwards if it's unhandled (this is usually
    // unwanted when forwarding as the original handler would already do it if
    // needed normally).
    bool ProcessEventLocally(wxEvent& event);

    // Schedule the given event to be processed later. It takes ownership of
    // the event pointer, i.e. it will be deleted later. This is safe to call
    // from multiple threads although you still need to ensure that wxString
    // fields of the event object are deep copies and not use the same string
    // buffer as other wxString objects in this thread.
    virtual void QueueEvent(wxEvent *event);

    // Add an event to be processed later: notice that this function is not
    // safe to call from threads other than main, use QueueEvent()
    virtual void AddPendingEvent(const wxEvent& event)
    {
        // notice that the thread-safety problem comes from the fact that
        // Clone() doesn't make deep copies of wxString fields of wxEvent
        // object and so the same wxString could be used from both threads when
        // the event object is destroyed in this one -- QueueEvent() avoids
        // this problem as the event pointer is not used any more in this
        // thread at all after it is called.
        QueueEvent(event.Clone());
    }

    void ProcessPendingEvents();
        // NOTE: uses ProcessEvent()

    void DeletePendingEvents();


    bool ProcessThreadEvent(const wxEvent& event);
        // NOTE: uses AddPendingEvent(); call only from secondary threads



    // Asynchronous method calls: these methods schedule the given method
    // pointer for a later call (during the next idle event loop iteration).
    //
    // Notice that the method is called on this object itself, so the object
    // CallAfter() is called on must have the correct dynamic type.
    //
    // These method can be used from another thread.

    template <typename T>
    void CallAfter(void *method)
    {
        QueueEvent(
            new wxAsyncMethodCallEvent0<T>(static_cast<T*>(this), method)
        );
    }

    // Notice that we use P1 and not T1 for the parameter to allow passing
    // parameters that are convertible to the type taken by the method
    // instead of being exactly the same, to be closer to the usual method call
    // semantics.
    template <typename T, typename T1, typename P1>
    void CallAfter(void *method, P1 x1)
    {
        QueueEvent(
            new wxAsyncMethodCallEvent1<T, T1>(
                static_cast<T*>(this), method, x1)
        );
    }

    template <typename T, typename T1, typename T2, typename P1, typename P2>
    void CallAfter(void *method, P1 x1, P2 x2)
    {
        QueueEvent(
            new wxAsyncMethodCallEvent2<T, T1, T2>(
                static_cast<T*>(this), method, x1, x2)
        );
    }

    template <typename T>
    void CallAfter(const T& fn)
    {
        QueueEvent(new wxAsyncMethodCallEventFunctor<T>(this, fn));
    }



    // Connecting and disconnecting
    // ----------------------------

    // These functions are used for old, untyped, event handlers and don't
    // check that the type of the function passed to them actually matches the
    // type of the event. They also only allow connecting events to methods of
    // wxEvtHandler-derived classes.
    //
    // The template Connect() methods below are safer and allow connecting
    // events to arbitrary functions or functors -- but require compiler
    // support for templates.

    // Dynamic association of a member function handler with the event handler,
    // winid and event type
    void Connect(int winid,
                 int lastId,
                 wxEventType eventType,
                 wxObjectEventFunction func,
                 wxObject *userData = NULL,
                 wxEvtHandler *eventSink = NULL)
    {
        DoBind(winid, lastId, eventType,
                  wxNewEventFunctor(eventType, func, eventSink),
                  userData);
    }

    // Convenience function: take just one id
    void Connect(int winid,
                 wxEventType eventType,
                 wxObjectEventFunction func,
                 wxObject *userData = NULL,
                 wxEvtHandler *eventSink = NULL)
        { Connect(winid, wxID_ANY, eventType, func, userData, eventSink); }

    // Even more convenient: without id (same as using id of wxID_ANY)
    void Connect(wxEventType eventType,
                 wxObjectEventFunction func,
                 wxObject *userData = NULL,
                 wxEvtHandler *eventSink = NULL)
        { Connect(wxID_ANY, wxID_ANY, eventType, func, userData, eventSink); }

    bool Disconnect(int winid,
                    int lastId,
                    wxEventType eventType,
                    wxObjectEventFunction func = NULL,
                    wxObject *userData = NULL,
                    wxEvtHandler *eventSink = NULL)
    {
        return DoUnbind(winid, lastId, eventType,
                            wxMakeEventFunctor(eventType, func, eventSink),
                            userData );
    }

    bool Disconnect(auto winid = wxID_ANY,
                    wxEventType eventType = wxEVT_NULL,
                    wxObjectEventFunction func = NULL,
                    wxObject *userData = NULL,
                    wxEvtHandler *eventSink = NULL)
        { return Disconnect(winid, wxID_ANY, eventType, func, userData, eventSink); }

    bool Disconnect(wxEventType eventType,
                    wxObjectEventFunction func,
                    wxObject *userData = NULL,
                    wxEvtHandler *eventSink = NULL)
        { return Disconnect(wxID_ANY, eventType, func, userData, eventSink); }


    // Bind functions to an event:
    template <typename EventTag, typename EventArg>
    void Bind(const EventTag& eventType,
              void (*function)(EventArg &),
              auto winid = wxID_ANY,
              auto lastId = wxID_ANY,
              wxObject *userData = NULL)
    {
        DoBind(winid, lastId, eventType,
                  wxNewEventFunctor(eventType, function),
                  userData);
    }


    template <typename EventTag, typename EventArg>
    bool Unbind(const EventTag& eventType,
                void (*function)(EventArg &),
                auto winid = wxID_ANY,
                auto lastId = wxID_ANY,
                wxObject *userData = NULL)
    {
        return DoUnbind(winid, lastId, eventType,
                            wxMakeEventFunctor(eventType, function),
                            userData);
    }

    // Bind functors to an event:
    template <typename EventTag, typename Functor>
    void Bind(const EventTag& eventType,
              const Functor &functor,
              auto winid = wxID_ANY,
              auto lastId = wxID_ANY,
              wxObject *userData = NULL)
    {
        DoBind(winid, lastId, eventType,
                  wxNewEventFunctor(eventType, functor),
                  userData);
    }


    template <typename EventTag, typename Functor>
    bool Unbind(const EventTag& eventType,
                const Functor &functor,
                auto winid = wxID_ANY,
                auto lastId = wxID_ANY,
                wxObject *userData = NULL)
    {
        return DoUnbind(winid, lastId, eventType,
                            wxMakeEventFunctor(eventType, functor),
                            userData);
    }


    // Bind a method of a class (called on the specified handler which must
    // be convertible to this class) object to an event:

    template <typename EventTag, typename Class, typename EventArg, typename EventHandler>
    void Bind(const EventTag &eventType,
              void *method,
              EventHandler *handler,
              auto winid = wxID_ANY,
              auto lastId = wxID_ANY,
              wxObject *userData = NULL)
    {
        DoBind(winid, lastId, eventType,
                  wxNewEventFunctor(eventType, method, handler),
                  userData);
    }

    template <typename EventTag, typename Class, typename EventArg, typename EventHandler>
    bool Unbind(const EventTag &eventType,
                void *method,
                EventHandler *handler,
                auto winid = wxID_ANY,
                auto lastId = wxID_ANY,
                wxObject *userData = NULL )
    {
        return DoUnbind(winid, lastId, eventType,
                            wxMakeEventFunctor(eventType, method, handler),
                            userData);
    }


    wxList* GetDynamicEventTable() const { return m_dynamicEvents ; }

    // User data can be associated with each wxEvtHandler
    void SetClientObject( wxClientData *data ) { DoSetClientObject(data); }
    wxClientData *GetClientObject() const { return DoGetClientObject(); }

    void SetClientData( void *data ) { DoSetClientData(data); }
    void *GetClientData() const { return DoGetClientData(); }


    // implementation from now on
    // --------------------------

    // check if the given event table entry matches this event by id (the check
    // for the event type should be done by caller) and call the handler if it
    // does
    //
    // return true if the event was processed, false otherwise (no match or the
    // handler decided to skip the event)
    static bool ProcessEventIfMatchesId(const wxEventTableEntryBase& tableEntry,
                                        wxEvtHandler *handler,
                                        wxEvent& event);

    virtual bool SearchEventTable(wxEventTable& table, wxEvent& event);
    bool SearchDynamicEventTable( wxEvent& event );

    // Avoid problems at exit by cleaning up static hash table gracefully
    void ClearEventHashTable() { GetEventHashTable().Clear(); }
    void OnSinkDestroyed( wxEvtHandler *sink );
};

//WX_DEFINE_ARRAY_WITH_DECL_PTR(wxEvtHandler *, wxEvtHandlerArray, class WXDLLIMPEXP_BASE);

// ----------------------------------------------------------------------------
// wxEventConnectionRef represents all connections between two event handlers
// and enables automatic disconnect when an event handler sink goes out of
// scope. Each connection/disconnect increases/decreases ref count, and
// when it reaches zero the node goes out of scope.
// ----------------------------------------------------------------------------

#inheritable wxTrackerNode
class wxTrackerNode
{
};


class wxEventConnectionRef : public wxTrackerNode
{
public:
    wxEventConnectionRef() : m_src(NULL), m_sink(NULL), m_refCount(0) { }
    wxEventConnectionRef(wxEvtHandler *src, wxEvtHandler *sink)
        : m_src(src), m_sink(sink), m_refCount(1)
    {
        m_sink->AddNode(this);
    }

    // The sink is being destroyed
    virtual void OnObjectDestroy( )
    {
        if ( m_src )
            m_src->OnSinkDestroyed( m_sink );
        delete this;
    }

    virtual wxEventConnectionRef *ToEventConnection() { return this; }

    void IncRef() { m_refCount++; }
    void DecRef()
    {
        if ( !--m_refCount )
        {
            // The sink holds the only external pointer to this object
            if ( m_sink )
                m_sink->RemoveNode(this);
            delete this;
        }
    }
};

// Post a message to the given event handler which will be processed during the
// next event loop iteration.
//
// Notice that this one is not thread-safe, use wxQueueEvent()
inline void wxPostEvent(wxEvtHandler *dest, const wxEvent& event);

// Wrapper around wxEvtHandler::QueueEvent(): adds an event for later
// processing, unlike wxPostEvent it is safe to use from different thread even
// for events with wxString members
inline void wxQueueEvent(wxEvtHandler *dest, wxEvent *event);

// ----------------------------------------------------------------------------
// Helper functions
// ----------------------------------------------------------------------------

// This is an ugly hack to allow the use of Bind() instead of Connect() inside
// the library code if the library was built with support for it, here is how
// it is used:
//
// class SomeEventHandlingClass : wxBIND_OR_CONNECT_HACK_BASE_CLASS
//                                public SomeBaseClass
// {
// public:
//     SomeEventHandlingClass(wxWindow *win)
//     {
//         // connect to the event for the given window
//         wxBIND_OR_CONNECT_HACK(win, wxEVT_SOMETHING, wxSomeEventHandler,
//                                SomeEventHandlingClass::OnSomeEvent, this);
//     }
//
// private:
//     void OnSomeEvent(wxSomeEvent&) { ... }
// };
//

// Find a window with the focus, that is also a descendant of the given window.
// This is used to determine the window to initially send commands to.
WXDLLIMPEXP_CORE wxWindow* wxFindFocusDescendant(wxWindow* ancestor);

    // Command events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_BUTTON, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHECKBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHOICE, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LISTBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LISTBOX_DCLICK, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHECKLISTBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MENU, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SLIDER, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_RADIOBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_RADIOBUTTON, wxCommandEvent);

// wxEVT_SCROLLBAR is deprecated, use wxEVT_SCROLL... events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLBAR, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_VLBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMBOBOX, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TOOL_RCLICKED, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TOOL_DROPDOWN, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TOOL_ENTER, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMBOBOX_DROPDOWN, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMBOBOX_CLOSEUP, wxCommandEvent);

    // Thread and asynchronous method call events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_BASE, wxEVT_THREAD, wxThreadEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_BASE, wxEVT_ASYNC_METHOD_CALL, wxAsyncMethodCallEvent);

    // Mouse event types
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LEFT_DOWN, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LEFT_UP, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MIDDLE_DOWN, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MIDDLE_UP, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_RIGHT_DOWN, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_RIGHT_UP, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOTION, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_ENTER_WINDOW, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LEAVE_WINDOW, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_LEFT_DCLICK, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MIDDLE_DCLICK, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_RIGHT_DCLICK, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SET_FOCUS, wxFocusEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_KILL_FOCUS, wxFocusEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHILD_FOCUS, wxChildFocusEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOUSEWHEEL, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX1_DOWN, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX1_UP, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX1_DCLICK, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX2_DOWN, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX2_UP, wxMouseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AUX2_DCLICK, wxMouseEvent);

    // Character input event type
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHAR, wxKeyEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CHAR_HOOK, wxKeyEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_NAVIGATION_KEY, wxNavigationKeyEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_KEY_DOWN, wxKeyEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_KEY_UP, wxKeyEvent);
#if wxUSE_HOTKEY
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_HOTKEY, wxKeyEvent);
#endif
// This is a private event used by wxMSW code only and subject to change or
// disappear in the future. Don't use.
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_AFTER_CHAR, wxKeyEvent);

    // Set cursor event
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SET_CURSOR, wxSetCursorEvent);

    // wxScrollBar and wxSlider event identifiers
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_TOP, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_BOTTOM, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_LINEUP, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_LINEDOWN, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_PAGEUP, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_PAGEDOWN, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_THUMBTRACK, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_THUMBRELEASE, wxScrollEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLL_CHANGED, wxScrollEvent);

// Due to a bug in older wx versions, wxSpinEvents were being sent with type of
// wxEVT_SCROLL_LINEUP, wxEVT_SCROLL_LINEDOWN and wxEVT_SCROLL_THUMBTRACK. But
// with the type-safe events in place, these event types are associated with
// wxScrollEvent. To allow handling of spin events, new event types have been
// defined in spinbutt.h/spinnbuttcmn.cpp. To maintain backward compatibility
// the spin event types are being initialized with the scroll event types.

#if wxUSE_SPINBTN

wxDECLARE_EXPORTED_EVENT_ALIAS( WXDLLIMPEXP_CORE, wxEVT_SPIN_UP,   wxSpinEvent );
wxDECLARE_EXPORTED_EVENT_ALIAS( WXDLLIMPEXP_CORE, wxEVT_SPIN_DOWN, wxSpinEvent );
wxDECLARE_EXPORTED_EVENT_ALIAS( WXDLLIMPEXP_CORE, wxEVT_SPIN,      wxSpinEvent );

#endif

    // Scroll events from wxWindow
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_TOP, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_BOTTOM, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_LINEUP, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_LINEDOWN, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_PAGEUP, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_PAGEDOWN, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_THUMBTRACK, wxScrollWinEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SCROLLWIN_THUMBRELEASE, wxScrollWinEvent);

    // System events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SIZE, wxSizeEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOVE, wxMoveEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CLOSE_WINDOW, wxCloseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_END_SESSION, wxCloseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_QUERY_END_SESSION, wxCloseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_ACTIVATE_APP, wxActivateEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_ACTIVATE, wxActivateEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CREATE, wxWindowCreateEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_DESTROY, wxWindowDestroyEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SHOW, wxShowEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_ICONIZE, wxIconizeEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MAXIMIZE, wxMaximizeEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOUSE_CAPTURE_CHANGED, wxMouseCaptureChangedEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOUSE_CAPTURE_LOST, wxMouseCaptureLostEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_PAINT, wxPaintEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_ERASE_BACKGROUND, wxEraseEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_NC_PAINT, wxNcPaintEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MENU_OPEN, wxMenuEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MENU_CLOSE, wxMenuEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MENU_HIGHLIGHT, wxMenuEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_CONTEXT_MENU, wxContextMenuEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SYS_COLOUR_CHANGED, wxSysColourChangedEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_DISPLAY_CHANGED, wxDisplayChangedEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_QUERY_NEW_PALETTE, wxQueryNewPaletteEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_PALETTE_CHANGED, wxPaletteChangedEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_JOY_BUTTON_DOWN, wxJoystickEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_JOY_BUTTON_UP, wxJoystickEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_JOY_MOVE, wxJoystickEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_JOY_ZMOVE, wxJoystickEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_DROP_FILES, wxDropFilesEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_INIT_DIALOG, wxInitDialogEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_BASE, wxEVT_IDLE, wxIdleEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_UPDATE_UI, wxUpdateUIEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_SIZING, wxSizeEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOVING, wxMoveEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOVE_START, wxMoveEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_MOVE_END, wxMoveEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_HIBERNATE, wxActivateEvent);

    // Clipboard events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TEXT_COPY, wxClipboardTextEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TEXT_CUT, wxClipboardTextEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TEXT_PASTE, wxClipboardTextEvent);

    // Generic command events
    // Note: a click is a higher-level event than button down/up
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_LEFT_CLICK, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_LEFT_DCLICK, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_RIGHT_CLICK, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_RIGHT_DCLICK, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_SET_FOCUS, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_KILL_FOCUS, wxCommandEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_COMMAND_ENTER, wxCommandEvent);

    // Help events
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_HELP, wxHelpEvent);
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_DETAILED_HELP, wxHelpEvent);

// these 2 events are the same
#@
template wxEVT_TOOL*: expr = wxEVT_MENU
@#

// ----------------------------------------------------------------------------
// Compatibility
// ----------------------------------------------------------------------------

// this event is also used by wxComboBox and wxSpinCtrl which don't include
// wx/textctrl.h in all ports [yet], so declare it here as well
//
// still, any new code using it should include wx/textctrl.h explicitly
wxDECLARE_EXPORTED_EVENT(WXDLLIMPEXP_CORE, wxEVT_TEXT, wxCommandEvent);

#endif // _WX_EVENT_H_
