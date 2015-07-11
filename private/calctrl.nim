

type 
  WxDateEvent* {.importcpp: "wxDateEvent", header: wxh.} = object of WxEvent
  
  WxDateTime* {.importcpp: "wxDateTime", header: wxh.} = object of WxObject
  

var wxDefaultDateTime* {.importcpp: "wxDefaultDateTime", header: wxh.}: WxDateTime


const 
  wxCAL_SUNDAY_FIRST* = 0x00000000
  wxCAL_MONDAY_FIRST* = 0x00000001
  wxCAL_SHOW_HOLIDAYS* = 0x00000002
  wxCAL_NO_YEAR_CHANGE* = 0x00000004
  wxCAL_NO_MONTH_CHANGE* = 0x0000000C
  wxCAL_SEQUENTIAL_MONTH_SELECTION* = 0x00000010
  wxCAL_SHOW_SURROUNDING_WEEKS* = 0x00000020
  wxCAL_SHOW_WEEK_NUMBERS* = 0x00000040


type 
  WxCalendarHitTestResult* {.size: sizeof(cint), 
                             importcpp: "wxCalendarHitTestResult", header: wxh.} = enum 
    wxCAL_HITTEST_NOWHERE, wxCAL_HITTEST_HEADER, wxCAL_HITTEST_DAY, 
    wxCAL_HITTEST_INCMONTH, wxCAL_HITTEST_DECMONTH, 
    wxCAL_HITTEST_SURROUNDING_WEEK, wxCAL_HITTEST_WEEK



type 
  WxCalendarDateBorder* {.size: sizeof(cint), importcpp: "wxCalendarDateBorder", 
                          header: wxh.} = enum 
    wxCAL_BORDER_NONE, wxCAL_BORDER_SQUARE, wxCAL_BORDER_ROUND



type 
  WxCalendarDateAttr* {.importcpp: "wxCalendarDateAttr", header: wxh.} = object 
  

proc constructwxCalendarDateAttr*(colText: WxColour = wxNullColour; 
                                  colBack: WxColour = wxNullColour; 
                                  colBorder: WxColour = wxNullColour; 
                                  font: WxFont = wxNullFont; border: WxCalendarDateBorder = wxCAL_BORDER_NONE): WxCalendarDateAttr {.
    cdecl, constructor, importcpp: "wxCalendarDateAttr(@)", header: wxh.}
proc constructwxCalendarDateAttr*(border: WxCalendarDateBorder; 
                                  colBorder: WxColour = wxNullColour): WxCalendarDateAttr {.
    cdecl, constructor, importcpp: "wxCalendarDateAttr(@)", header: wxh.}
proc setTextColour*(this: var WxCalendarDateAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: wxh.}
proc setBackgroundColour*(this: var WxCalendarDateAttr; colBack: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: wxh.}
proc setBorderColour*(this: var WxCalendarDateAttr; col: WxColour) {.cdecl, 
    importcpp: "SetBorderColour", header: wxh.}
proc setFont*(this: var WxCalendarDateAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setBorder*(this: var WxCalendarDateAttr; border: WxCalendarDateBorder) {.
    cdecl, importcpp: "SetBorder", header: wxh.}
proc setHoliday*(this: var WxCalendarDateAttr; holiday: bool) {.cdecl, 
    importcpp: "SetHoliday", header: wxh.}
proc hasTextColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: wxh.}
proc hasBackgroundColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: wxh.}
proc hasBorderColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBorderColour", header: wxh.}
proc hasFont*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: wxh.}
proc hasBorder*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBorder", header: wxh.}
proc isHoliday*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsHoliday", header: wxh.}
proc getTextColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: wxh.}
proc getBackgroundColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: wxh.}
proc getBorderColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBorderColour", header: wxh.}
proc getFont*(this: WxCalendarDateAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc getBorder*(this: WxCalendarDateAttr): WxCalendarDateBorder {.noSideEffect, 
    cdecl, importcpp: "GetBorder", header: wxh.}
proc getMark*(): WxCalendarDateAttr {.cdecl, importcpp: "wxCalendarDateAttr::GetMark(@)", 
                                      header: wxh.}
proc setMark*(m: WxCalendarDateAttr) {.cdecl, importcpp: "wxCalendarDateAttr::SetMark(@)", 
                                       header: wxh.}

discard "forward decl of wxCalendarCtrl"
type 
  WxCalendarEvent* {.importcpp: "wxCalendarEvent", header: wxh.} = object of WxDateEvent
  


type 
  WxCalendarCtrlBase* {.importcpp: "wxCalendarCtrlBase", header: wxh.} = object of WxControl
  

proc allowMonthChange*(this: WxCalendarCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "AllowMonthChange", header: wxh.}
proc getDate*(this: WxCalendarCtrlBase): WxDateTime {.noSideEffect, cdecl, 
    importcpp: "GetDate", header: wxh.}
proc setDate*(this: var WxCalendarCtrlBase; date: WxDateTime): bool {.
    discardable, cdecl, importcpp: "SetDate", header: wxh.}
proc setDateRange*(this: var WxCalendarCtrlBase; 
                   lowerdate: WxDateTime = wxDefaultDateTime; 
                   upperdate: WxDateTime = wxDefaultDateTime): bool {.
    discardable, cdecl, importcpp: "SetDateRange", header: wxh.}
proc getDateRange*(this: WxCalendarCtrlBase; lowerdate: ptr WxDateTime; 
                   upperdate: ptr WxDateTime): bool {.noSideEffect, cdecl, 
    importcpp: "GetDateRange", header: wxh.}
proc enableMonthChange*(this: var WxCalendarCtrlBase; enable: bool = true): bool {.
    cdecl, importcpp: "EnableMonthChange", header: wxh.}
proc mark*(this: var WxCalendarCtrlBase; day: csize; mark: bool) {.cdecl, 
    importcpp: "Mark", header: wxh.}
proc getAttr*(this: WxCalendarCtrlBase; day: csize): ptr WxCalendarDateAttr {.
    noSideEffect, cdecl, importcpp: "GetAttr", header: wxh.}
proc setAttr*(this: var WxCalendarCtrlBase; day: csize; 
              attr: ptr WxCalendarDateAttr) {.cdecl, importcpp: "SetAttr", 
    header: wxh.}
proc resetAttr*(this: var WxCalendarCtrlBase; day: csize) {.cdecl, 
    importcpp: "ResetAttr", header: wxh.}
proc enableHolidayDisplay*(this: var WxCalendarCtrlBase; display: bool = true) {.
    cdecl, importcpp: "EnableHolidayDisplay", header: wxh.}
proc setHolidayColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                        colBg: WxColour) {.cdecl, 
    importcpp: "SetHolidayColours", header: wxh.}
proc getHolidayColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHolidayColourFg", header: wxh.}
proc getHolidayColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHolidayColourBg", header: wxh.}
proc setHoliday*(this: var WxCalendarCtrlBase; day: csize) {.cdecl, 
    importcpp: "SetHoliday", header: wxh.}
proc setHeaderColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                       colBg: WxColour) {.cdecl, importcpp: "SetHeaderColours", 
    header: wxh.}
proc getHeaderColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHeaderColourFg", header: wxh.}
proc getHeaderColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHeaderColourBg", header: wxh.}
proc setHighlightColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                          colBg: WxColour) {.cdecl, 
    importcpp: "SetHighlightColours", header: wxh.}
proc getHighlightColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHighlightColourFg", header: wxh.}
proc getHighlightColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHighlightColourBg", header: wxh.}
proc generateEvent*(this: var WxCalendarCtrlBase; `type`: WxEventType): bool {.
    cdecl, importcpp: "GenerateEvent", header: wxh.}

const 
  wxCalendarNameStr* = "CalendarCtrl"


var wxEVT_CALENDAR_SEL_CHANGED* {.importcpp: "wxEVT_CALENDAR_SEL_CHANGED", 
                                  header: wxh.}: WxEventTypeTag[WxCalendarEvent]

var wxEVT_CALENDAR_PAGE_CHANGED* {.importcpp: "wxEVT_CALENDAR_PAGE_CHANGED", 
                                   header: wxh.}: WxEventTypeTag[WxCalendarEvent]

var wxEVT_CALENDAR_DOUBLECLICKED* {.importcpp: "wxEVT_CALENDAR_DOUBLECLICKED", 
                                    header: wxh.}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_WEEKDAY_CLICKED* {.importcpp: "wxEVT_CALENDAR_WEEKDAY_CLICKED", 
                                      header: wxh.}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_WEEK_CLICKED* {.importcpp: "wxEVT_CALENDAR_WEEK_CLICKED", 
                                   header: wxh.}: WxEventTypeTag[WxCalendarEvent]
