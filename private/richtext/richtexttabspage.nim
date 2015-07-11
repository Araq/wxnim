



const 
  ID_RICHTEXTTABSPAGE* = 10200
  ID_RICHTEXTTABSPAGE_TABEDIT* = 10213
  ID_RICHTEXTTABSPAGE_TABLIST* = 10214
  ID_RICHTEXTTABSPAGE_NEW_TAB* = 10201
  ID_RICHTEXTTABSPAGE_DELETE_TAB* = 10202
  ID_RICHTEXTTABSPAGE_DELETE_ALL_TABS* = 10203


template symbol_Wxrichtexttabspage_Style*(): expr = 
  wxRESIZE_BORDER or wxTAB_TRAVERSAL

template symbol_Wxrichtexttabspage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtexttabspage_Idname*(): expr = 
  id_Richtexttabspage

template symbol_Wxrichtexttabspage_Size*(): expr = 
  constructwxSize(400, 300)

template symbol_Wxrichtexttabspage_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextTabsPage* {.importcpp: "wxRichTextTabsPage", header: wxh.} = object of WxRichTextDialogPage
    mTabEditCtrl* {.importc: "m_tabEditCtrl".}: ptr WxTextCtrl
    mTabListCtrl* {.importc: "m_tabListCtrl".}: ptr WxListBox
    mTabsPresent* {.importc: "m_tabsPresent".}: bool


proc constructwxRichTextTabsPage*(): WxRichTextTabsPage {.cdecl, constructor, 
    importcpp: "wxRichTextTabsPage(@)", header: wxh.}
proc constructwxRichTextTabsPage*(parent: ptr WxWindow; 
                                  id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtexttabspage_Position; 
    size: WxSize = symbol_Wxrichtexttabspage_Size; style: clong = symbol_Wxrichtexttabspage_Style): WxRichTextTabsPage {.
    cdecl, constructor, importcpp: "wxRichTextTabsPage(@)", header: wxh.}
proc create*(this: var WxRichTextTabsPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtexttabspage_Position; 
             size: WxSize = symbol_Wxrichtexttabspage_Size; 
             style: clong = symbol_Wxrichtexttabspage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createControls*(this: var WxRichTextTabsPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc init*(this: var WxRichTextTabsPage) {.cdecl, importcpp: "Init", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextTabsPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextTabsPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc sortTabs*(this: var WxRichTextTabsPage) {.cdecl, importcpp: "SortTabs", 
    header: wxh.}
proc getAttributes*(this: var WxRichTextTabsPage): ptr WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc onTablistSelected*(this: var WxRichTextTabsPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnTablistSelected", header: wxh.}
proc onNewTabClick*(this: var WxRichTextTabsPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnNewTabClick", header: wxh.}
proc onNewTabUpdate*(this: var WxRichTextTabsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnNewTabUpdate", header: wxh.}
proc onDeleteTabClick*(this: var WxRichTextTabsPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnDeleteTabClick", header: wxh.}
proc onDeleteTabUpdate*(this: var WxRichTextTabsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnDeleteTabUpdate", header: wxh.}
proc onDeleteAllTabsClick*(this: var WxRichTextTabsPage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnDeleteAllTabsClick", header: wxh.}
proc onDeleteAllTabsUpdate*(this: var WxRichTextTabsPage; 
                            event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnDeleteAllTabsUpdate", header: wxh.}
proc getBitmapResource*(this: var WxRichTextTabsPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextTabsPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
