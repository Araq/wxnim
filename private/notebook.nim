



const 
  wxNB_HITTEST_NOWHERE* = wxBK_HITTEST_NOWHERE
  wxNB_HITTEST_ONICON* = wxBK_HITTEST_ONICON
  wxNB_HITTEST_ONLABEL* = wxBK_HITTEST_ONLABEL
  wxNB_HITTEST_ONITEM* = wxBK_HITTEST_ONITEM
  wxNB_HITTEST_ONPAGE* = wxBK_HITTEST_ONPAGE


const 
  wxNB_DEFAULT* = wxBK_DEFAULT
  wxNB_TOP* = wxBK_TOP
  wxNB_BOTTOM* = wxBK_BOTTOM
  wxNB_LEFT* = wxBK_LEFT
  wxNB_RIGHT* = wxBK_RIGHT
  wxNB_FIXEDWIDTH* = 0x00000100
  wxNB_MULTILINE* = 0x00000200
  wxNB_NOPAGETHEME* = 0x00000400
  wxNB_FLAT* = 0x00000800

type 
  WxNotebookPage* = WxWindow


type 
  WxNotebookBase* {.importcpp: "wxNotebookBase", header: wxh.} = object of WxBookCtrlBase
  

proc constructwxNotebookBase*(): WxNotebookBase {.cdecl, constructor, 
    importcpp: "wxNotebookBase(@)", header: wxh.}
proc getRowCount*(this: WxNotebookBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetRowCount", header: wxh.}
proc setPadding*(this: var WxNotebookBase; padding: WxSize) {.cdecl, 
    importcpp: "SetPadding", header: wxh.}
proc setTabSize*(this: var WxNotebookBase; sz: WxSize) {.cdecl, 
    importcpp: "SetTabSize", header: wxh.}
proc calcSizeFromPage*(this: WxNotebookBase; sizePage: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "CalcSizeFromPage", header: wxh.}
proc getThemeBackgroundColour*(this: WxNotebookBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetThemeBackgroundColour", header: wxh.}
proc sendPageChangingEvent*(this: var WxNotebookBase; nPage: cint): bool {.
    cdecl, importcpp: "SendPageChangingEvent", header: wxh.}
proc sendPageChangedEvent*(this: var WxNotebookBase; nPageOld: cint; 
                           nPageNew: cint = wxNOT_FOUND) {.cdecl, 
    importcpp: "SendPageChangedEvent", header: wxh.}
proc acceptsFocus*(this: WxNotebookBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}

const 
  wxNotebookEvent* = wxBookCtrlEvent

type 
  WxNotebookEventFunction* = WxBookCtrlEventFunction

template wxNotebookEventHandler*(`func`: expr): expr = 
  wxBookCtrlEventHandler(`func`)

var wxEVT_NOTEBOOK_PAGE_CHANGED* {.importcpp: "wxEVT_NOTEBOOK_PAGE_CHANGED", 
                                   header: wxh.}: WxEventTypeTag[WxBookCtrlEvent]

var wxEVT_NOTEBOOK_PAGE_CHANGING* {.importcpp: "wxEVT_NOTEBOOK_PAGE_CHANGING", 
                                    header: wxh.}: WxEventTypeTag[
    WxBookCtrlEvent]

template evt_Notebook_Page_Changed*(winid, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_NOTEBOOK_PAGE_CHANGED, winid, wxBookCtrlEventHandler(fn))

template evt_Notebook_Page_Changing*(winid, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_NOTEBOOK_PAGE_CHANGING, winid, wxBookCtrlEventHandler(fn))


const 
  wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGED* = wxEVT_NOTEBOOK_PAGE_CHANGED
  wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGING* = wxEVT_NOTEBOOK_PAGE_CHANGING

