#///////////////////////////////////////////////////////////////////////////
# Name:        wx/richtext/richtextbulletspage.h
# Purpose:
# Author:      Julian Smart
# Modified by:
# Created:     10/4/2006 10:32:31 AM
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

#!
#  Includes
# 

#!
#  Forward declarations
# 
#//@begin forward declarations

discard "forward decl of wxSpinCtrl"
discard "forward decl of wxRichTextCtrl"
const 
  SYMBOL_WXRICHTEXTBULLETSPAGE_STYLE* = wxRESIZE_BORDER or wxTAB_TRAVERSAL
  SYMBOL_WXRICHTEXTBULLETSPAGE_TITLE* = wxEmptyString
  SYMBOL_WXRICHTEXTBULLETSPAGE_IDNAME* = id_Richtextbulletspage
  SYMBOL_WXRICHTEXTBULLETSPAGE_SIZE* = wxSize(400, 300)
  SYMBOL_WXRICHTEXTBULLETSPAGE_POSITION* = wxDefaultPosition

#//@end control identifiers
#!
#  wxRichTextBulletsPage class declaration
# 

type 
  WxRichTextBulletsPage* {.importcpp: "wxRichTextBulletsPage", header: "wx.h".} = object of WxRichTextDialogPage #/ Constructors
    wxRichTextBulletsPage* {.importc: "wxRichTextBulletsPage".}: Declare_Dynamic_Class
    mStyleListBox* {.importc: "m_styleListBox".}: ptr WxListBox
    mPeriodCtrl* {.importc: "m_periodCtrl".}: ptr WxCheckBox
    mParenthesesCtrl* {.importc: "m_parenthesesCtrl".}: ptr WxCheckBox
    mRightParenthesisCtrl* {.importc: "m_rightParenthesisCtrl".}: ptr WxCheckBox
    mBulletAlignmentCtrl* {.importc: "m_bulletAlignmentCtrl".}: ptr WxComboBox
    mSymbolCtrl* {.importc: "m_symbolCtrl".}: ptr WxComboBox
    mSymbolFontCtrl* {.importc: "m_symbolFontCtrl".}: ptr WxComboBox
    mBulletNameCtrl* {.importc: "m_bulletNameCtrl".}: ptr WxComboBox
    mNumberCtrl* {.importc: "m_numberCtrl".}: ptr WxSpinCtrl
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextCtrl #/ Control identifiers
    mHasBulletStyle* {.importc: "m_hasBulletStyle".}: bool
    mHasBulletNumber* {.importc: "m_hasBulletNumber".}: bool
    mHasBulletSymbol* {.importc: "m_hasBulletSymbol".}: bool
    mDontUpdate* {.importc: "m_dontUpdate".}: bool


proc constructwxRichTextBulletsPage*(): WxRichTextBulletsPage {.constructor, 
    importcpp: "wxRichTextBulletsPage(@)", header: "wx.h".}
proc constructwxRichTextBulletsPage*(parent: ptr WxWindow; 
                                     id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
    size: WxSize = symbol_Wxrichtextbulletspage_Size; style: clong = symbol_Wxrichtextbulletspage_Style): WxRichTextBulletsPage {.
    constructor, importcpp: "wxRichTextBulletsPage(@)", header: "wx.h".}
proc create*(this: var WxRichTextBulletsPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextbulletspage_Position; 
             size: WxSize = symbol_Wxrichtextbulletspage_Size; 
             style: clong = symbol_Wxrichtextbulletspage_Style): bool {.
    importcpp: "Create", header: "wx.h".}
proc init*(this: var WxRichTextBulletsPage) {.importcpp: "Init", header: "wx.h".}
proc createControls*(this: var WxRichTextBulletsPage) {.
    importcpp: "CreateControls", header: "wx.h".}
proc updatePreview*(this: var WxRichTextBulletsPage) {.
    importcpp: "UpdatePreview", header: "wx.h".}
proc transferDataFromWindow*(this: var WxRichTextBulletsPage): bool {.
    importcpp: "TransferDataFromWindow", header: "wx.h".}
proc transferDataToWindow*(this: var WxRichTextBulletsPage): bool {.
    importcpp: "TransferDataToWindow", header: "wx.h".}
proc getAttributes*(this: var WxRichTextBulletsPage): ptr WxRichTextAttr {.
    importcpp: "GetAttributes", header: "wx.h".}
proc onSymbolUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    importcpp: "OnSymbolUpdate", header: "wx.h".}
proc onNumberUpdate*(this: var WxRichTextBulletsPage; event: var WxUpdateUIEvent) {.
    importcpp: "OnNumberUpdate", header: "wx.h".}
proc onStandardBulletUpdate*(this: var WxRichTextBulletsPage; 
                             event: var WxUpdateUIEvent) {.
    importcpp: "OnStandardBulletUpdate", header: "wx.h".}
proc onStylelistboxSelected*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.
    importcpp: "OnStylelistboxSelected", header: "wx.h".}
proc onPeriodctrlClick*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.
    importcpp: "OnPeriodctrlClick", header: "wx.h".}
proc onPeriodctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.
    importcpp: "OnPeriodctrlUpdate", header: "wx.h".}
proc onParenthesesctrlClick*(this: var WxRichTextBulletsPage; 
                             event: var WxCommandEvent) {.
    importcpp: "OnParenthesesctrlClick", header: "wx.h".}
proc onParenthesesctrlUpdate*(this: var WxRichTextBulletsPage; 
                              event: var WxUpdateUIEvent) {.
    importcpp: "OnParenthesesctrlUpdate", header: "wx.h".}
proc onRightParenthesisCtrlClick*(this: var WxRichTextBulletsPage; 
                                  event: var WxCommandEvent) {.
    importcpp: "OnRightParenthesisCtrlClick", header: "wx.h".}
proc onRightParenthesisCtrlUpdate*(this: var WxRichTextBulletsPage; 
                                   event: var WxUpdateUIEvent) {.
    importcpp: "OnRightParenthesisCtrlUpdate", header: "wx.h".}
proc onBulletAlignmentCtrlSelected*(this: var WxRichTextBulletsPage; 
                                    event: var WxCommandEvent) {.
    importcpp: "OnBulletAlignmentCtrlSelected", header: "wx.h".}
proc onSymbolstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.
    importcpp: "OnSymbolstaticUpdate", header: "wx.h".}
proc onSymbolctrlSelected*(this: var WxRichTextBulletsPage; 
                           event: var WxCommandEvent) {.
    importcpp: "OnSymbolctrlSelected", header: "wx.h".}
proc onSymbolctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.
    importcpp: "OnSymbolctrlUpdated", header: "wx.h".}
proc onSymbolctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.
    importcpp: "OnSymbolctrlUpdate", header: "wx.h".}
proc onChooseSymbolClick*(this: var WxRichTextBulletsPage; 
                          event: var WxCommandEvent) {.
    importcpp: "OnChooseSymbolClick", header: "wx.h".}
proc onChooseSymbolUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.
    importcpp: "OnChooseSymbolUpdate", header: "wx.h".}
proc onSymbolfontctrlSelected*(this: var WxRichTextBulletsPage; 
                               event: var WxCommandEvent) {.
    importcpp: "OnSymbolfontctrlSelected", header: "wx.h".}
proc onSymbolfontctrlUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.
    importcpp: "OnSymbolfontctrlUpdated", header: "wx.h".}
proc onSymbolfontctrlUIUpdate*(this: var WxRichTextBulletsPage; 
                               event: var WxUpdateUIEvent) {.
    importcpp: "OnSymbolfontctrlUIUpdate", header: "wx.h".}
proc onNamestaticUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.
    importcpp: "OnNamestaticUpdate", header: "wx.h".}
proc onNamectrlSelected*(this: var WxRichTextBulletsPage; 
                         event: var WxCommandEvent) {.
    importcpp: "OnNamectrlSelected", header: "wx.h".}
proc onNamectrlUpdated*(this: var WxRichTextBulletsPage; 
                        event: var WxCommandEvent) {.
    importcpp: "OnNamectrlUpdated", header: "wx.h".}
proc onNamectrlUIUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.
    importcpp: "OnNamectrlUIUpdate", header: "wx.h".}
proc onNumberstaticUpdate*(this: var WxRichTextBulletsPage; 
                           event: var WxUpdateUIEvent) {.
    importcpp: "OnNumberstaticUpdate", header: "wx.h".}
proc onNumberctrlUpdated*(this: var WxRichTextBulletsPage; 
                          event: var WxSpinEvent) {.
    importcpp: "OnNumberctrlUpdated", header: "wx.h".}
proc onNumberctrlUp*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    importcpp: "OnNumberctrlUp", header: "wx.h".}
proc onNumberctrlDown*(this: var WxRichTextBulletsPage; event: var WxSpinEvent) {.
    importcpp: "OnNumberctrlDown", header: "wx.h".}
proc onNumberctrlTextUpdated*(this: var WxRichTextBulletsPage; 
                              event: var WxCommandEvent) {.
    importcpp: "OnNumberctrlTextUpdated", header: "wx.h".}
proc onNumberctrlUpdate*(this: var WxRichTextBulletsPage; 
                         event: var WxUpdateUIEvent) {.
    importcpp: "OnNumberctrlUpdate", header: "wx.h".}
proc getBitmapResource*(this: var WxRichTextBulletsPage; name: WxString): WxBitmap {.
    importcpp: "GetBitmapResource", header: "wx.h".}
proc getIconResource*(this: var WxRichTextBulletsPage; name: WxString): WxIcon {.
    importcpp: "GetIconResource", header: "wx.h".}
proc showToolTips*(): bool {.importcpp: "wxRichTextBulletsPage::ShowToolTips(@)", 
                             header: "wx.h".}
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

# _RICHTEXTBULLETSPAGE_H_
