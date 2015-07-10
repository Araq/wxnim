



discard "forward decl of wxSpinCtrl"
discard "forward decl of wxRichTextCtrl"
const 
  SYMBOL_WXRICHTEXTBULLETSPAGE_STYLE* = wxRESIZE_BORDER or wxTAB_TRAVERSAL
  SYMBOL_WXRICHTEXTBULLETSPAGE_TITLE* = wxEmptyString
  SYMBOL_WXRICHTEXTBULLETSPAGE_IDNAME* = id_Richtextbulletspage
  SYMBOL_WXRICHTEXTBULLETSPAGE_SIZE* = wxSize(400, 300)
  SYMBOL_WXRICHTEXTBULLETSPAGE_POSITION* = wxDefaultPosition


type 
  WxRichTextBulletsPage* {.importcpp: "wxRichTextBulletsPage", 
                           header: "<wx/wx.h>".} = object of WxRichTextDialogPage
    mStyleListBox* {.importc: "m_styleListBox".}: ptr WxListBox
    mPeriodCtrl* {.importc: "m_periodCtrl".}: ptr WxCheckBox
    mParenthesesCtrl* {.importc: "m_parenthesesCtrl".}: ptr WxCheckBox
    mRightParenthesisCtrl* {.importc: "m_rightParenthesisCtrl".}: ptr WxCheckBox
    mBulletAlignmentCtrl* {.importc: "m_bulletAlignmentCtrl".}: ptr WxComboBox
    mSymbolCtrl* {.importc: "m_symbolCtrl".}: ptr WxComboBox
    mSymbolFontCtrl* {.importc: "m_symbolFontCtrl".}: ptr WxComboBox
    mBulletNameCtrl* {.importc: "m_bulletNameCtrl".}: ptr WxComboBox
    mNumberCtrl* {.importc: "m_numberCtrl".}: ptr WxSpinCtrl
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextCtrl
    mHasBulletStyle* {.importc: "m_hasBulletStyle".}: bool
    mHasBulletNumber* {.importc: "m_hasBulletNumber".}: bool
    mHasBulletSymbol* {.importc: "m_hasBulletSymbol".}: bool
    mDontUpdate* {.importc: "m_dontUpdate".}: bool


proc constructwxRichTextBulletsPage*(): WxRichTextBulletsPage {.cdecl, 
    constructor, importcpp: "wxRichTextBulletsPage(@)", header: "<wx/wx.h>".}
proc constructwxRichTextBulletsPage*(parent: ptr WxWindow; 
                                     id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
    size: WxSize = symbol_Wxrichtextbulletspage_Size; style: clong = symbol_Wxrichtextbulletspage_Style): WxRichTextBulletsPage {.
    cdecl, constructor, importcpp: "wxRichTextBulletsPage(@)", 
    header: "<wx/wx.h>".}
proc create*(this: var WxRichTextBulletsPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
             size: WxSize = symbol_Wxrichtextbulletspage_Size; 
             style: clong = symbol_Wxrichtextbulletspage_Style): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextBulletsPage) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc createControls*(this: var WxRichTextBulletsPage) {.cdecl, 
    importcpp: "CreateControls", header: "<wx/wx.h>".}
proc updatePreview*(this: var WxRichTextBulletsPage) {.cdecl, 
    importcpp: "UpdatePreview", header: "<wx/wx.h>".}
proc transferDataFromWindow*(this: var WxRichTextBulletsPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: "<wx/wx.h>".}
proc transferDataToWindow*(this: var WxRichTextBulletsPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: "<wx/wx.h>".}
proc getAttributes*(this: var WxRichTextBulletsPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: "<wx/wx.h>".}
proc onSymbolUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnSymbolUpdate", header: "<wx/wx.h>".}
proc onNumberUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnNumberUpdate", header: "<wx/wx.h>".}
proc onStandardBulletUpdate*(this: var WxRichTextBulletsPage; 
                             event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnStandardBulletUpdate", header: "<wx/wx.h>".}
proc onStylelistboxSelected*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnStylelistboxSelected", header: "<wx/wx.h>".}
proc onPeriodctrlClick*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPeriodctrlClick", header: "<wx/wx.h>".}
proc onPeriodctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnPeriodctrlUpdate", header: "<wx/wx.h>".}
proc onParenthesesctrlClick*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlClick", header: "<wx/wx.h>".}
proc onParenthesesctrlUpdate*(this: var WxRichTextBulletsPage; 
                              event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlUpdate", header: "<wx/wx.h>".}
proc onRightParenthesisCtrlClick*(this: var WxRichTextBulletsPage; 
                                  event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlClick", header: "<wx/wx.h>".}
proc onRightParenthesisCtrlUpdate*(this: var WxRichTextBulletsPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlUpdate", header: "<wx/wx.h>".}
proc onBulletAlignmentCtrlSelected*(this: var WxRichTextBulletsPage; 
                                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnBulletAlignmentCtrlSelected", header: "<wx/wx.h>".}
proc onSymbolstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolstaticUpdate", header: "<wx/wx.h>".}
proc onSymbolctrlSelected*(this: var WxRichTextBulletsPage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlSelected", header: "<wx/wx.h>".}
proc onSymbolctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUpdated", header: "<wx/wx.h>".}
proc onSymbolctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUpdate", header: "<wx/wx.h>".}
proc onChooseSymbolClick*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnChooseSymbolClick", header: "<wx/wx.h>".}
proc onChooseSymbolUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnChooseSymbolUpdate", header: "<wx/wx.h>".}
proc onSymbolfontctrlSelected*(this: var WxRichTextBulletsPage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlSelected", header: "<wx/wx.h>".}
proc onSymbolfontctrlUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUpdated", header: "<wx/wx.h>".}
proc onSymbolfontctrlUIUpdate*(this: var WxRichTextBulletsPage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUIUpdate", header: "<wx/wx.h>".}
proc onNamestaticUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamestaticUpdate", header: "<wx/wx.h>".}
proc onNamectrlSelected*(this: var WxRichTextBulletsPage; 
                         event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlSelected", header: "<wx/wx.h>".}
proc onNamectrlUpdated*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlUpdated", header: "<wx/wx.h>".}
proc onNamectrlUIUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamectrlUIUpdate", header: "<wx/wx.h>".}
proc onNumberstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNumberstaticUpdate", header: "<wx/wx.h>".}
proc onNumberctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxSpinEvent) {.cdecl, 
    importcpp: "OnNumberctrlUpdated", header: "<wx/wx.h>".}
proc onNumberctrlUp*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnNumberctrlUp", header: "<wx/wx.h>".}
proc onNumberctrlDown*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnNumberctrlDown", header: "<wx/wx.h>".}
proc onNumberctrlTextUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNumberctrlTextUpdated", header: "<wx/wx.h>".}
proc onNumberctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNumberctrlUpdate", header: "<wx/wx.h>".}
proc getBitmapResource*(this: var WxRichTextBulletsPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: "<wx/wx.h>".}
proc getIconResource*(this: var WxRichTextBulletsPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: "<wx/wx.h>".}
proc showToolTips*(): bool {.cdecl, importcpp: "wxRichTextBulletsPage::ShowToolTips(@)", 
                             header: "<wx/wx.h>".}
const 
  ID_RICHTEXTBULLETSPAGE* = 10300
  ID_RICHTEXTBULLETSPAGE_STYLELISTBOX* = 10305
  ID_RICHTEXTBULLETSPAGE_PERIODCTRL* = 10313
  ID_RICHTEXTBULLETSPAGE_PARENTHESESCTRL* = 10311
  ID_RICHTEXTBULLETSPAGE_RIGHTPARENTHESISCTRL* = 10306
  ID_RICHTEXTBULLETSPAGE_BULLETALIGNMENTCTRL* = 10315
  ID_RICHTEXTBULLETSPAGE_SYMBOLSTATIC* = 10301
  ID_RICHTEXTBULLETSPAGE_SYMBOLCTRL* = 10307
  ID_RICHTEXTBULLETSPAGE_CHOOSE_SYMBOL* = 10308
  ID_RICHTEXTBULLETSPAGE_SYMBOLFONTCTRL* = 10309
  ID_RICHTEXTBULLETSPAGE_NAMESTATIC* = 10303
  ID_RICHTEXTBULLETSPAGE_NAMECTRL* = 10304
  ID_RICHTEXTBULLETSPAGE_NUMBERSTATIC* = 10302
  ID_RICHTEXTBULLETSPAGE_NUMBERCTRL* = 10310
  ID_RICHTEXTBULLETSPAGE_PREVIEW_CTRL* = 10314

