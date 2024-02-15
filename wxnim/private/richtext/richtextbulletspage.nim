



discard "forward decl of wxSpinCtrl"
discard "forward decl of wxRichTextCtrl"
var wxRESIZE_BORDER* {.importcpp: "wxRESIZE_BORDER", header: wxh.}: clong


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


template symbol_Wxrichtextbulletspage_Style*(): untyped = 
  wxRESIZE_BORDER or wxTAB_TRAVERSAL

template symbol_Wxrichtextbulletspage_Title*(): untyped = 
  wxEmptyString

template symbol_Wxrichtextbulletspage_Idname*(): untyped = 
  id_Richtextbulletspage

template symbol_Wxrichtextbulletspage_Size*(): untyped = 
  constructWxSize(400, 300)

template symbol_Wxrichtextbulletspage_Position*(): untyped = 
  wxDefaultPosition


type 
  WxRichTextBulletsPage* {.importcpp: "wxRichTextBulletsPage", header: wxh.} = object of WxRichTextDialogPage
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
    constructor, importcpp: "wxRichTextBulletsPage(@)", header: wxh.}
proc constructwxRichTextBulletsPage*(parent: ptr WxWindow; 
                                     id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
    size: WxSize = symbol_Wxrichtextbulletspage_Size; style: clong = symbol_Wxrichtextbulletspage_Style): WxRichTextBulletsPage {.
    cdecl, constructor, importcpp: "wxRichTextBulletsPage(@)", header: wxh.}
proc create*(this: var WxRichTextBulletsPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
             size: WxSize = symbol_Wxrichtextbulletspage_Size; 
             style: clong = symbol_Wxrichtextbulletspage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc init*(this: var WxRichTextBulletsPage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextBulletsPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc updatePreview*(this: var WxRichTextBulletsPage) {.cdecl, 
    importcpp: "UpdatePreview", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextBulletsPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextBulletsPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc getAttributes*(this: var WxRichTextBulletsPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc onSymbolUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnSymbolUpdate", header: wxh.}
proc onNumberUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnNumberUpdate", header: wxh.}
proc onStandardBulletUpdate*(this: var WxRichTextBulletsPage; 
                             event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnStandardBulletUpdate", header: wxh.}
proc onStylelistboxSelected*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnStylelistboxSelected", header: wxh.}
proc onPeriodctrlClick*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPeriodctrlClick", header: wxh.}
proc onPeriodctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnPeriodctrlUpdate", header: wxh.}
proc onParenthesesctrlClick*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlClick", header: wxh.}
proc onParenthesesctrlUpdate*(this: var WxRichTextBulletsPage; 
                              event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlUpdate", header: wxh.}
proc onRightParenthesisCtrlClick*(this: var WxRichTextBulletsPage; 
                                  event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlClick", header: wxh.}
proc onRightParenthesisCtrlUpdate*(this: var WxRichTextBulletsPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlUpdate", header: wxh.}
proc onBulletAlignmentCtrlSelected*(this: var WxRichTextBulletsPage; 
                                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnBulletAlignmentCtrlSelected", header: wxh.}
proc onSymbolstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolstaticUpdate", header: wxh.}
proc onSymbolctrlSelected*(this: var WxRichTextBulletsPage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlSelected", header: wxh.}
proc onSymbolctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUpdated", header: wxh.}
proc onSymbolctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUpdate", header: wxh.}
proc onChooseSymbolClick*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnChooseSymbolClick", header: wxh.}
proc onChooseSymbolUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnChooseSymbolUpdate", header: wxh.}
proc onSymbolfontctrlSelected*(this: var WxRichTextBulletsPage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlSelected", header: wxh.}
proc onSymbolfontctrlUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUpdated", header: wxh.}
proc onSymbolfontctrlUIUpdate*(this: var WxRichTextBulletsPage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUIUpdate", header: wxh.}
proc onNamestaticUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamestaticUpdate", header: wxh.}
proc onNamectrlSelected*(this: var WxRichTextBulletsPage; 
                         event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlSelected", header: wxh.}
proc onNamectrlUpdated*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlUpdated", header: wxh.}
proc onNamectrlUIUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamectrlUIUpdate", header: wxh.}
proc onNumberstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNumberstaticUpdate", header: wxh.}
proc onNumberctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxSpinEvent) {.cdecl, 
    importcpp: "OnNumberctrlUpdated", header: wxh.}
proc onNumberctrlUp*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnNumberctrlUp", header: wxh.}
proc onNumberctrlDown*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnNumberctrlDown", header: wxh.}
proc onNumberctrlTextUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNumberctrlTextUpdated", header: wxh.}
proc onNumberctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNumberctrlUpdate", header: wxh.}
proc getBitmapResource*(this: var WxRichTextBulletsPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextBulletsPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
