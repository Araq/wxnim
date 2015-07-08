# wx wrapper for Nim
# See LICENSE.txt for details of the license.

# Andreas Rumpf 2015

{.noforward: on.}

include "private/object"
include private/string
include private/arrstr
include private/colour
include private/fontenc
include private/defs

const
  fileWildcard* = when defined(windows): "*.*" else: "*"

type
  WxSize* {.importcpp: "wxSize", header: "wx.h".} = object
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint # constructors

  WxPoint* {.importcpp: "wxPoint", header: "wx.h".} = object
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint

  WxRealPoint* {.importcpp: "wxRealPoint", header: "wx.h".} = object
    x* {.importc: "x".}: cdouble
    y* {.importc: "y".}: cdouble

include private/font
include private/fontdata
include private/fontenum

include private/gdicmn
include private/bitmap

include private/icon
include private/intl

type
  WxClientDataType* {.importcpp: "wxClientDataType", header: "wx.h".} = object of WxObject

var wxDefaultSize* {.importcpp: "wxDefaultSize", header: "wx.h".}: WxSize
const isForward = 1

include private/list
include private/event
include private/window
include private/layout

include private/aboutdlg

include private/any
include private/control
include private/anybutton
include private/app
include private/bannerwindow
include private/button
include private/bmpbuttn

include private/calctrl
include private/checkbox
include private/listbox

include private/checklst
include private/choice
include private/colordlg
include private/combo
include private/combobox
include private/commandlinkbutton
include private/dataobj
include private/dataview
include private/datetimectrl
include private/datectrl
include private/dialog
include private/dirdlg
include private/filedlg
include private/fontdlg
include private/fontpicker
include private/frame
include private/gauge
include private/hyperlink
include private/kbdstate
include private/listbook
include private/listctrl
include private/menu
include private/menuitem
#include private/notebook
include private/ownerdrw
include private/panel
include private/position
include private/radiobox
include private/radiobut
#include private/richtextbackgroundpage
#include private/richtextbuffer
#include private/richtextbulletspage
#include private/richtextctrl
#include private/richtooltip
#include private/scrolbar
include private/sizer
#include private/slider
include private/spinbutt
include private/spinctrl
include private/statusbar
include private/textctrl
include private/toolbar
include private/treectrl
include private/types
include private/variant
include private/webview

proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

converter toWxString*(s: string): WxString =
  result = constructWxString(cstring(s), s.len)

converter toEventType*[T](x: WxEventTypeTag[T]): WxEventType {.
  importcpp: "#", header: "wx.h".}

when false:
  proc registerEventCallback(attachedTo: int;
                             callback: proc (x: WxEvent) {.closure.}) =
    {.emit: """
    wxTheApp->Bind();
    """.}

