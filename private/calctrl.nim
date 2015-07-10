

type 
  WxDateEvent* {.importcpp: "wxDateEvent", header: "<wx/wx.h>".} = object of WxEvent
  
  WxDateTime* {.importcpp: "wxDateTime", header: "<wx/wx.h>".} = object of WxObject
  

var wxDefaultDateTime* {.importcpp: "wxDefaultDateTime", header: "<wx/wx.h>".}: WxDateTime


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
                             importcpp: "wxCalendarHitTestResult", 
                             header: "<wx/wx.h>".} = enum 
    wxCAL_HITTEST_NOWHERE, wxCAL_HITTEST_HEADER, wxCAL_HITTEST_DAY, 
    wxCAL_HITTEST_INCMONTH, wxCAL_HITTEST_DECMONTH, 
    wxCAL_HITTEST_SURROUNDING_WEEK, wxCAL_HITTEST_WEEK



type 
  WxCalendarDateBorder* {.size: sizeof(cint), importcpp: "wxCalendarDateBorder", 
                          header: "<wx/wx.h>".} = enum 
    wxCAL_BORDER_NONE, wxCAL_BORDER_SQUARE, wxCAL_BORDER_ROUND



type 
  WxCalendarDateAttr* {.importcpp: "wxCalendarDateAttr", header: "<wx/wx.h>".} = object 
  

proc constructwxCalendarDateAttr*(colText: WxColour = wxNullColour; 
                                  colBack: WxColour = wxNullColour; 
                                  colBorder: WxColour = wxNullColour; 
                                  font: WxFont = wxNullFont; border: WxCalendarDateBorder = wxCAL_BORDER_NONE): WxCalendarDateAttr {.
    cdecl, constructor, importcpp: "wxCalendarDateAttr(@)", header: "<wx/wx.h>".}
proc constructwxCalendarDateAttr*(border: WxCalendarDateBorder; 
                                  colBorder: WxColour = wxNullColour): WxCalendarDateAttr {.
    cdecl, constructor, importcpp: "wxCalendarDateAttr(@)", header: "<wx/wx.h>".}
proc setTextColour*(this: var WxCalendarDateAttr; colText: WxColour) {.cdecl, 
    importcpp: "SetTextColour", header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxCalendarDateAttr; colBack: WxColour) {.
    cdecl, importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc setBorderColour*(this: var WxCalendarDateAttr; col: WxColour) {.cdecl, 
    importcpp: "SetBorderColour", header: "<wx/wx.h>".}
proc setFont*(this: var WxCalendarDateAttr; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc setBorder*(this: var WxCalendarDateAttr; border: WxCalendarDateBorder) {.
    cdecl, importcpp: "SetBorder", header: "<wx/wx.h>".}
proc setHoliday*(this: var WxCalendarDateAttr; holiday: bool) {.cdecl, 
    importcpp: "SetHoliday", header: "<wx/wx.h>".}
proc hasTextColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasTextColour", header: "<wx/wx.h>".}
proc hasBackgroundColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBackgroundColour", header: "<wx/wx.h>".}
proc hasBorderColour*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBorderColour", header: "<wx/wx.h>".}
proc hasFont*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasFont", header: "<wx/wx.h>".}
proc hasBorder*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "HasBorder", header: "<wx/wx.h>".}
proc isHoliday*(this: WxCalendarDateAttr): bool {.noSideEffect, cdecl, 
    importcpp: "IsHoliday", header: "<wx/wx.h>".}
proc getTextColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetTextColour", header: "<wx/wx.h>".}
proc getBackgroundColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: "<wx/wx.h>".}
proc getBorderColour*(this: WxCalendarDateAttr): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBorderColour", header: "<wx/wx.h>".}
proc getFont*(this: WxCalendarDateAttr): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc getBorder*(this: WxCalendarDateAttr): WxCalendarDateBorder {.noSideEffect, 
    cdecl, importcpp: "GetBorder", header: "<wx/wx.h>".}
proc getMark*(): WxCalendarDateAttr {.cdecl, importcpp: "wxCalendarDateAttr::GetMark(@)", 
                                      header: "<wx/wx.h>".}
proc setMark*(m: WxCalendarDateAttr) {.cdecl, importcpp: "wxCalendarDateAttr::SetMark(@)", 
                                       header: "<wx/wx.h>".}

discard "forward decl of wxCalendarCtrl"
type 
  WxCalendarEvent* {.importcpp: "wxCalendarEvent", header: "<wx/wx.h>".} = object of WxDateEvent
  


type 
  WxCalendarCtrlBase* {.importcpp: "wxCalendarCtrlBase", header: "<wx/wx.h>".} = object of WxControl
  

proc allowMonthChange*(this: WxCalendarCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "AllowMonthChange", header: "<wx/wx.h>".}
proc getDate*(this: WxCalendarCtrlBase): WxDateTime {.noSideEffect, cdecl, 
    importcpp: "GetDate", header: "<wx/wx.h>".}
proc setDate*(this: var WxCalendarCtrlBase; date: WxDateTime): bool {.cdecl, 
    importcpp: "SetDate", header: "<wx/wx.h>".}
proc setDateRange*(this: var WxCalendarCtrlBase; 
                   lowerdate: WxDateTime = wxDefaultDateTime; 
                   upperdate: WxDateTime = wxDefaultDateTime): bool {.cdecl, 
    importcpp: "SetDateRange", header: "<wx/wx.h>".}
proc getDateRange*(this: WxCalendarCtrlBase; lowerdate: ptr WxDateTime; 
                   upperdate: ptr WxDateTime): bool {.noSideEffect, cdecl, 
    importcpp: "GetDateRange", header: "<wx/wx.h>".}
proc enableMonthChange*(this: var WxCalendarCtrlBase; enable: bool = true): bool {.
    cdecl, importcpp: "EnableMonthChange", header: "<wx/wx.h>".}
proc mark*(this: var WxCalendarCtrlBase; day: csize; mark: bool) {.cdecl, 
    importcpp: "Mark", header: "<wx/wx.h>".}
proc getAttr*(this: WxCalendarCtrlBase; day: csize): ptr WxCalendarDateAttr {.
    noSideEffect, cdecl, importcpp: "GetAttr", header: "<wx/wx.h>".}
proc setAttr*(this: var WxCalendarCtrlBase; day: csize; 
              attr: ptr WxCalendarDateAttr) {.cdecl, importcpp: "SetAttr", 
    header: "<wx/wx.h>".}
proc resetAttr*(this: var WxCalendarCtrlBase; day: csize) {.cdecl, 
    importcpp: "ResetAttr", header: "<wx/wx.h>".}
proc enableHolidayDisplay*(this: var WxCalendarCtrlBase; display: bool = true) {.
    cdecl, importcpp: "EnableHolidayDisplay", header: "<wx/wx.h>".}
proc setHolidayColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                        colBg: WxColour) {.cdecl, 
    importcpp: "SetHolidayColours", header: "<wx/wx.h>".}
proc getHolidayColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHolidayColourFg", header: "<wx/wx.h>".}
proc getHolidayColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHolidayColourBg", header: "<wx/wx.h>".}
proc setHoliday*(this: var WxCalendarCtrlBase; day: csize) {.cdecl, 
    importcpp: "SetHoliday", header: "<wx/wx.h>".}
proc setHeaderColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                       colBg: WxColour) {.cdecl, importcpp: "SetHeaderColours", 
    header: "<wx/wx.h>".}
proc getHeaderColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHeaderColourFg", header: "<wx/wx.h>".}
proc getHeaderColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHeaderColourBg", header: "<wx/wx.h>".}
proc setHighlightColours*(this: var WxCalendarCtrlBase; colFg: WxColour; 
                          colBg: WxColour) {.cdecl, 
    importcpp: "SetHighlightColours", header: "<wx/wx.h>".}
proc getHighlightColourFg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHighlightColourFg", header: "<wx/wx.h>".}
proc getHighlightColourBg*(this: WxCalendarCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetHighlightColourBg", header: "<wx/wx.h>".}
proc generateEvent*(this: var WxCalendarCtrlBase; `type`: WxEventType): bool {.
    cdecl, importcpp: "GenerateEvent", header: "<wx/wx.h>".}

const 
  wxCalendarNameStr* = "CalendarCtrl"


var wxEVT_CALENDAR_SEL_CHANGED* {.importcpp: "wxEVT_CALENDAR_SEL_CHANGED", 
                                  header: "<wx/wx.h>".}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_PAGE_CHANGED* {.importcpp: "wxEVT_CALENDAR_PAGE_CHANGED", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_DOUBLECLICKED* {.importcpp: "wxEVT_CALENDAR_DOUBLECLICKED", 
                                    header: "<wx/wx.h>".}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_WEEKDAY_CLICKED* {.importcpp: "wxEVT_CALENDAR_WEEKDAY_CLICKED", 
                                      header: "<wx/wx.h>".}: WxEventTypeTag[
    WxCalendarEvent]

var wxEVT_CALENDAR_WEEK_CLICKED* {.importcpp: "wxEVT_CALENDAR_WEEK_CLICKED", 
                                   header: "<wx/wx.h>".}: WxEventTypeTag[
    WxCalendarEvent]
