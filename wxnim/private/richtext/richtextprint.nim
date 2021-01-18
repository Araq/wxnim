

const 
  wxRICHTEXT_PRINT_MAX_PAGES* = 99999


type 
  WxRichTextOddEvenPage* {.size: sizeof(cint), 
                           importcpp: "wxRichTextOddEvenPage", header: wxh.} = enum 
    wxRICHTEXT_PAGE_ODD, wxRICHTEXT_PAGE_EVEN, wxRICHTEXT_PAGE_ALL



type 
  WxRichTextPageLocation* {.size: sizeof(cint), 
                            importcpp: "wxRichTextPageLocation", header: wxh.} = enum 
    wxRICHTEXT_PAGE_LEFT, wxRICHTEXT_PAGE_CENTRE, wxRICHTEXT_PAGE_RIGHT



type 
  WxRichTextHeaderFooterData* {.importcpp: "wxRichTextHeaderFooterData", 
                                header: wxh.} = object of WxObject
  

proc constructwxRichTextHeaderFooterData*(): WxRichTextHeaderFooterData {.cdecl, 
    constructor, importcpp: "wxRichTextHeaderFooterData(@)", header: wxh.}
proc constructwxRichTextHeaderFooterData*(data: WxRichTextHeaderFooterData): WxRichTextHeaderFooterData {.
    cdecl, constructor, importcpp: "wxRichTextHeaderFooterData(@)", header: wxh.}
proc init*(this: var WxRichTextHeaderFooterData) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextHeaderFooterData; 
           data: WxRichTextHeaderFooterData) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc setHeaderText*(this: var WxRichTextHeaderFooterData; text: WxString; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_ALL; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE) {.
    cdecl, importcpp: "SetHeaderText", header: wxh.}
proc getHeaderText*(this: WxRichTextHeaderFooterData; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_EVEN; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE): WxString {.
    noSideEffect, cdecl, importcpp: "GetHeaderText", header: wxh.}
proc setFooterText*(this: var WxRichTextHeaderFooterData; text: WxString; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_ALL; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE) {.
    cdecl, importcpp: "SetFooterText", header: wxh.}
proc getFooterText*(this: WxRichTextHeaderFooterData; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_EVEN; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE): WxString {.
    noSideEffect, cdecl, importcpp: "GetFooterText", header: wxh.}
proc setText*(this: var WxRichTextHeaderFooterData; text: WxString; 
              headerFooter: cint; page: WxRichTextOddEvenPage; 
              location: WxRichTextPageLocation) {.cdecl, importcpp: "SetText", 
    header: wxh.}
proc getText*(this: WxRichTextHeaderFooterData; headerFooter: cint; 
              page: WxRichTextOddEvenPage; location: WxRichTextPageLocation): WxString {.
    noSideEffect, cdecl, importcpp: "GetText", header: wxh.}
proc setMargins*(this: var WxRichTextHeaderFooterData; headerMargin: cint; 
                 footerMargin: cint) {.cdecl, importcpp: "SetMargins", 
                                       header: wxh.}
proc getHeaderMargin*(this: WxRichTextHeaderFooterData): cint {.noSideEffect, 
    cdecl, importcpp: "GetHeaderMargin", header: wxh.}
proc getFooterMargin*(this: WxRichTextHeaderFooterData): cint {.noSideEffect, 
    cdecl, importcpp: "GetFooterMargin", header: wxh.}
proc setShowOnFirstPage*(this: var WxRichTextHeaderFooterData; 
                         showOnFirstPage: bool) {.cdecl, 
    importcpp: "SetShowOnFirstPage", header: wxh.}
proc getShowOnFirstPage*(this: WxRichTextHeaderFooterData): bool {.noSideEffect, 
    cdecl, importcpp: "GetShowOnFirstPage", header: wxh.}
proc clear*(this: var WxRichTextHeaderFooterData) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc setFont*(this: var WxRichTextHeaderFooterData; font: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc getFont*(this: WxRichTextHeaderFooterData): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc setTextColour*(this: var WxRichTextHeaderFooterData; col: WxColour) {.
    cdecl, importcpp: "SetTextColour", header: wxh.}
proc getTextColour*(this: WxRichTextHeaderFooterData): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetTextColour", header: wxh.}

type 
  WxRichTextPrintout* {.importcpp: "wxRichTextPrintout", header: wxh.} = object of WxObject
  

proc constructwxRichTextPrintout*(title: WxString = "Printout"): WxRichTextPrintout {.
    cdecl, constructor, importcpp: "wxRichTextPrintout(@)", header: wxh.}
proc destroywxRichTextPrintout*(this: var WxRichTextPrintout) {.cdecl, 
    importcpp: "#.~wxRichTextPrintout()", header: wxh.}
proc setRichTextBuffer*(this: var WxRichTextPrintout; 
                        buffer: ptr WxRichTextBuffer) {.cdecl, 
    importcpp: "SetRichTextBuffer", header: wxh.}
proc getRichTextBuffer*(this: WxRichTextPrintout): ptr WxRichTextBuffer {.
    noSideEffect, cdecl, importcpp: "GetRichTextBuffer", header: wxh.}
proc setHeaderFooterData*(this: var WxRichTextPrintout; 
                          data: WxRichTextHeaderFooterData) {.cdecl, 
    importcpp: "SetHeaderFooterData", header: wxh.}
proc getHeaderFooterData*(this: WxRichTextPrintout): WxRichTextHeaderFooterData {.
    noSideEffect, cdecl, importcpp: "GetHeaderFooterData", header: wxh.}
proc setMargins*(this: var WxRichTextPrintout; top: cint = 254; 
                 bottom: cint = 254; left: cint = 254; right: cint = 254) {.
    cdecl, importcpp: "SetMargins", header: wxh.}
proc calculateScaling*(this: var WxRichTextPrintout; dc: ptr WxDC; 
                       textRect: var WxRect; headerRect: var WxRect; 
                       footerRect: var WxRect) {.cdecl, 
    importcpp: "CalculateScaling", header: wxh.}
proc onPrintPage*(this: var WxRichTextPrintout; page: cint): bool {.cdecl, 
    importcpp: "OnPrintPage", header: wxh.}
proc hasPage*(this: var WxRichTextPrintout; page: cint): bool {.cdecl, 
    importcpp: "HasPage", header: wxh.}
proc getPageInfo*(this: var WxRichTextPrintout; minPage: ptr cint; 
                  maxPage: ptr cint; selPageFrom: ptr cint; selPageTo: ptr cint) {.
    cdecl, importcpp: "GetPageInfo", header: wxh.}
proc onBeginDocument*(this: var WxRichTextPrintout; startPage: cint; 
                      endPage: cint): bool {.cdecl, 
    importcpp: "OnBeginDocument", header: wxh.}
proc onPreparePrinting*(this: var WxRichTextPrintout) {.cdecl, 
    importcpp: "OnPreparePrinting", header: wxh.}

type 
  WxRichTextPrinting* {.importcpp: "wxRichTextPrinting", header: wxh.} = object of WxObject
  

proc constructwxRichTextPrinting*(name: WxString = "Printing"; 
                                  parentWindow: ptr WxWindow = nil): WxRichTextPrinting {.
    cdecl, constructor, importcpp: "wxRichTextPrinting(@)", header: wxh.}
proc destroywxRichTextPrinting*(this: var WxRichTextPrinting) {.cdecl, 
    importcpp: "#.~wxRichTextPrinting()", header: wxh.}
proc previewFile*(this: var WxRichTextPrinting; richTextFile: WxString): bool {.
    cdecl, importcpp: "PreviewFile", header: wxh.}
proc previewBuffer*(this: var WxRichTextPrinting; buffer: WxRichTextBuffer): bool {.
    cdecl, importcpp: "PreviewBuffer", header: wxh.}
proc printFile*(this: var WxRichTextPrinting; richTextFile: WxString; 
                showPrintDialog: bool = true): bool {.cdecl, 
    importcpp: "PrintFile", header: wxh.}
proc printBuffer*(this: var WxRichTextPrinting; buffer: WxRichTextBuffer; 
                  showPrintDialog: bool = true): bool {.cdecl, 
    importcpp: "PrintBuffer", header: wxh.}
proc pageSetup*(this: var WxRichTextPrinting) {.cdecl, importcpp: "PageSetup", 
    header: wxh.}
proc setHeaderFooterData*(this: var WxRichTextPrinting; 
                          data: WxRichTextHeaderFooterData) {.cdecl, 
    importcpp: "SetHeaderFooterData", header: wxh.}
proc getHeaderFooterData*(this: WxRichTextPrinting): WxRichTextHeaderFooterData {.
    noSideEffect, cdecl, importcpp: "GetHeaderFooterData", header: wxh.}
proc setHeaderText*(this: var WxRichTextPrinting; text: WxString; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_ALL; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE) {.
    cdecl, importcpp: "SetHeaderText", header: wxh.}
proc getHeaderText*(this: WxRichTextPrinting; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_EVEN; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE): WxString {.
    noSideEffect, cdecl, importcpp: "GetHeaderText", header: wxh.}
proc setFooterText*(this: var WxRichTextPrinting; text: WxString; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_ALL; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE) {.
    cdecl, importcpp: "SetFooterText", header: wxh.}
proc getFooterText*(this: WxRichTextPrinting; 
                    page: WxRichTextOddEvenPage = wxRICHTEXT_PAGE_EVEN; 
                    location: WxRichTextPageLocation = wxRICHTEXT_PAGE_CENTRE): WxString {.
    noSideEffect, cdecl, importcpp: "GetFooterText", header: wxh.}
proc setShowOnFirstPage*(this: var WxRichTextPrinting; show: bool) {.cdecl, 
    importcpp: "SetShowOnFirstPage", header: wxh.}
proc setHeaderFooterFont*(this: var WxRichTextPrinting; font: WxFont) {.cdecl, 
    importcpp: "SetHeaderFooterFont", header: wxh.}
proc setHeaderFooterTextColour*(this: var WxRichTextPrinting; font: WxColour) {.
    cdecl, importcpp: "SetHeaderFooterTextColour", header: wxh.}
proc setRichTextBufferPreview*(this: var WxRichTextPrinting; 
                               buf: ptr WxRichTextBuffer) {.cdecl, 
    importcpp: "SetRichTextBufferPreview", header: wxh.}
proc getRichTextBufferPreview*(this: WxRichTextPrinting): ptr WxRichTextBuffer {.
    noSideEffect, cdecl, importcpp: "GetRichTextBufferPreview", header: wxh.}
proc setRichTextBufferPrinting*(this: var WxRichTextPrinting; 
                                buf: ptr WxRichTextBuffer) {.cdecl, 
    importcpp: "SetRichTextBufferPrinting", header: wxh.}
proc getRichTextBufferPrinting*(this: WxRichTextPrinting): ptr WxRichTextBuffer {.
    noSideEffect, cdecl, importcpp: "GetRichTextBufferPrinting", header: wxh.}
proc setParentWindow*(this: var WxRichTextPrinting; parent: ptr WxWindow) {.
    cdecl, importcpp: "SetParentWindow", header: wxh.}
proc getParentWindow*(this: WxRichTextPrinting): ptr WxWindow {.noSideEffect, 
    cdecl, importcpp: "GetParentWindow", header: wxh.}
proc setTitle*(this: var WxRichTextPrinting; title: WxString) {.cdecl, 
    importcpp: "SetTitle", header: wxh.}
proc getTitle*(this: WxRichTextPrinting): WxString {.noSideEffect, cdecl, 
    importcpp: "GetTitle", header: wxh.}
proc setPreviewRect*(this: var WxRichTextPrinting; rect: WxRect) {.cdecl, 
    importcpp: "SetPreviewRect", header: wxh.}
proc getPreviewRect*(this: WxRichTextPrinting): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetPreviewRect", header: wxh.}