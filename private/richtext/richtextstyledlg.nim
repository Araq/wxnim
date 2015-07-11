




discard "forward decl of wxBoxSizer"
discard "forward decl of wxRichTextStyleListCtrl"
discard "forward decl of wxRichTextCtrl"
discard "forward decl of wxStdDialogButtonSizer"
discard "forward decl of wxButton"
discard "forward decl of wxCheckBox"
const 
  ID_RICHTEXTSTYLEORGANISERDIALOG* = 10500
  ID_RICHTEXTSTYLEORGANISERDIALOG_STYLES* = 10501
  ID_RICHTEXTSTYLEORGANISERDIALOG_CURRENT_STYLE* = 10510
  ID_RICHTEXTSTYLEORGANISERDIALOG_PREVIEW* = 10509
  ID_RICHTEXTSTYLEORGANISERDIALOG_NEW_CHAR* = 10504
  ID_RICHTEXTSTYLEORGANISERDIALOG_NEW_PARA* = 10505
  ID_RICHTEXTSTYLEORGANISERDIALOG_NEW_LIST* = 10508
  ID_RICHTEXTSTYLEORGANISERDIALOG_NEW_BOX* = 10512
  ID_RICHTEXTSTYLEORGANISERDIALOG_APPLY* = 10503
  ID_RICHTEXTSTYLEORGANISERDIALOG_RENAME* = 10502
  ID_RICHTEXTSTYLEORGANISERDIALOG_EDIT* = 10506
  ID_RICHTEXTSTYLEORGANISERDIALOG_DELETE* = 10507
  ID_RICHTEXTSTYLEORGANISERDIALOG_RESTART_NUMBERING* = 10511


var wxSYSTEM_MENU* {.importcpp: "wxSYSTEM_MENU", header: wxh.}: clong

var wxCLOSE_BOX* {.importcpp: "wxCLOSE_BOX", header: wxh.}: clong

template symbol_Wxrichtextstyleorganiserdialog_Style*(): expr = 
  wxDEFAULT_DIALOG_STYLE or wxRESIZE_BORDER or wxSYSTEM_MENU or wxCLOSE_BOX

template symbol_Wxrichtextstyleorganiserdialog_Title*(): expr = 
  "Style Organiser"

template symbol_Wxrichtextstyleorganiserdialog_Idname*(): expr = 
  WxWindowID(ID_RICHTEXTSTYLEORGANISERDIALOG)

template symbol_Wxrichtextstyleorganiserdialog_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextstyleorganiserdialog_Position*(): expr = 
  wxDefaultPosition


const 
  wxRICHTEXT_ORGANISER_DELETE_STYLES* = 0x00000001
  wxRICHTEXT_ORGANISER_CREATE_STYLES* = 0x00000002
  wxRICHTEXT_ORGANISER_APPLY_STYLES* = 0x00000004
  wxRICHTEXT_ORGANISER_EDIT_STYLES* = 0x00000008
  wxRICHTEXT_ORGANISER_RENAME_STYLES* = 0x00000010
  wxRICHTEXT_ORGANISER_OK_CANCEL* = 0x00000020
  wxRICHTEXT_ORGANISER_RENUMBER* = 0x00000040


const 
  wxRICHTEXT_ORGANISER_SHOW_CHARACTER* = 0x00000100
  wxRICHTEXT_ORGANISER_SHOW_PARAGRAPH* = 0x00000200
  wxRICHTEXT_ORGANISER_SHOW_LIST* = 0x00000400
  wxRICHTEXT_ORGANISER_SHOW_BOX* = 0x00000800
  wxRICHTEXT_ORGANISER_SHOW_ALL* = 0x00001000


const 
  wxRICHTEXT_ORGANISER_ORGANISE* = (wxRICHTEXT_ORGANISER_SHOW_ALL or
      wxRICHTEXT_ORGANISER_DELETE_STYLES or wxRICHTEXT_ORGANISER_CREATE_STYLES or
      wxRICHTEXT_ORGANISER_APPLY_STYLES or wxRICHTEXT_ORGANISER_EDIT_STYLES or
      wxRICHTEXT_ORGANISER_RENAME_STYLES)
  wxRICHTEXT_ORGANISER_BROWSE* = (
    wxRICHTEXT_ORGANISER_SHOW_ALL or wxRICHTEXT_ORGANISER_OK_CANCEL)
  wxRICHTEXT_ORGANISER_BROWSE_NUMBERING* = (wxRICHTEXT_ORGANISER_SHOW_LIST or
      wxRICHTEXT_ORGANISER_OK_CANCEL or wxRICHTEXT_ORGANISER_RENUMBER)


type 
  WxRichTextStyleOrganiserDialog* {.importcpp: "wxRichTextStyleOrganiserDialog", 
                                    header: wxh.} = object of WxDialog
    mInnerSizer* {.importc: "m_innerSizer".}: ptr WxBoxSizer
    mButtonSizerParent* {.importc: "m_buttonSizerParent".}: ptr WxBoxSizer
    mStylesListBox* {.importc: "m_stylesListBox".}: ptr WxRichTextStyleListCtrl
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextCtrl
    mButtonSizer* {.importc: "m_buttonSizer".}: ptr WxBoxSizer
    mNewCharacter* {.importc: "m_newCharacter".}: ptr WxButton
    mNewParagraph* {.importc: "m_newParagraph".}: ptr WxButton
    mNewList* {.importc: "m_newList".}: ptr WxButton
    mNewBox* {.importc: "m_newBox".}: ptr WxButton
    mApplyStyle* {.importc: "m_applyStyle".}: ptr WxButton
    mRenameStyle* {.importc: "m_renameStyle".}: ptr WxButton
    mEditStyle* {.importc: "m_editStyle".}: ptr WxButton
    mDeleteStyle* {.importc: "m_deleteStyle".}: ptr WxButton
    mCloseButton* {.importc: "m_closeButton".}: ptr WxButton
    mBottomButtonSizer* {.importc: "m_bottomButtonSizer".}: ptr WxBoxSizer
    mRestartNumberingCtrl* {.importc: "m_restartNumberingCtrl".}: ptr WxCheckBox
    mStdButtonSizer* {.importc: "m_stdButtonSizer".}: ptr WxStdDialogButtonSizer
    mOkButton* {.importc: "m_okButton".}: ptr WxButton
    mCancelButton* {.importc: "m_cancelButton".}: ptr WxButton
  

proc constructwxRichTextStyleOrganiserDialog*(): WxRichTextStyleOrganiserDialog {.
    cdecl, constructor, importcpp: "wxRichTextStyleOrganiserDialog(@)", 
    header: wxh.}
proc constructwxRichTextStyleOrganiserDialog*(flags: cint; 
    sheet: ptr WxRichTextStyleSheet; ctrl: ptr WxRichTextCtrl; 
    parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
    caption: WxString = symbol_Wxrichtextstyleorganiserdialog_Title; 
    pos: WxPoint = symbol_Wxrichtextstyleorganiserdialog_Position; 
    size: WxSize = symbol_Wxrichtextstyleorganiserdialog_Size; 
    style: clong = symbol_Wxrichtextstyleorganiserdialog_Style): WxRichTextStyleOrganiserDialog {.
    cdecl, constructor, importcpp: "wxRichTextStyleOrganiserDialog(@)", 
    header: wxh.}
proc create*(this: var WxRichTextStyleOrganiserDialog; flags: cint; 
             sheet: ptr WxRichTextStyleSheet; ctrl: ptr WxRichTextCtrl; 
             parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
             caption: WxString = symbol_Wxrichtextstyleorganiserdialog_Title; 
             pos: WxPoint = symbol_Wxrichtextstyleorganiserdialog_Position; 
             size: WxSize = symbol_Wxrichtextstyleorganiserdialog_Size; 
             style: clong = symbol_Wxrichtextstyleorganiserdialog_Style): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc createControls*(this: var WxRichTextStyleOrganiserDialog) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc init*(this: var WxRichTextStyleOrganiserDialog) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextStyleOrganiserDialog): bool {.
    cdecl, importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextStyleOrganiserDialog): bool {.
    cdecl, importcpp: "TransferDataToWindow", header: wxh.}
proc setStyleSheet*(this: var WxRichTextStyleOrganiserDialog; 
                    sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextStyleOrganiserDialog): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc setRichTextCtrl*(this: var WxRichTextStyleOrganiserDialog; 
                      ctrl: ptr WxRichTextCtrl) {.cdecl, 
    importcpp: "SetRichTextCtrl", header: wxh.}
proc getRichTextCtrl*(this: WxRichTextStyleOrganiserDialog): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: wxh.}
proc setFlags*(this: var WxRichTextStyleOrganiserDialog; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}
proc getFlags*(this: WxRichTextStyleOrganiserDialog): cint {.noSideEffect, 
    cdecl, importcpp: "GetFlags", header: wxh.}
proc showPreview*(this: var WxRichTextStyleOrganiserDialog; sel: cint = - 1) {.
    cdecl, importcpp: "ShowPreview", header: wxh.}
proc clearPreview*(this: var WxRichTextStyleOrganiserDialog) {.cdecl, 
    importcpp: "ClearPreview", header: wxh.}
proc onListSelection*(this: var WxRichTextStyleOrganiserDialog; 
                      event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnListSelection", header: wxh.}
proc getRestartNumbering*(this: WxRichTextStyleOrganiserDialog): bool {.
    noSideEffect, cdecl, importcpp: "GetRestartNumbering", header: wxh.}
proc setRestartNumbering*(this: var WxRichTextStyleOrganiserDialog; 
                          restartNumbering: bool) {.cdecl, 
    importcpp: "SetRestartNumbering", header: wxh.}
proc getSelectedStyle*(this: WxRichTextStyleOrganiserDialog): WxString {.
    noSideEffect, cdecl, importcpp: "GetSelectedStyle", header: wxh.}
proc getSelectedStyleDefinition*(this: WxRichTextStyleOrganiserDialog): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetSelectedStyleDefinition", header: wxh.}
proc applyStyle*(this: var WxRichTextStyleOrganiserDialog; 
                 ctrl: ptr WxRichTextCtrl = nil): bool {.cdecl, 
    importcpp: "ApplyStyle", header: wxh.}
proc onNewCharClick*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNewCharClick", header: wxh.}
proc onNewCharUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                      event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNewCharUpdate", header: wxh.}
proc onNewParaClick*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNewParaClick", header: wxh.}
proc onNewParaUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                      event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNewParaUpdate", header: wxh.}
proc onNewListClick*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNewListClick", header: wxh.}
proc onNewListUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                      event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNewListUpdate", header: wxh.}
proc onNewBoxClick*(this: var WxRichTextStyleOrganiserDialog; 
                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNewBoxClick", header: wxh.}
proc onNewBoxUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNewBoxUpdate", header: wxh.}
proc onApplyClick*(this: var WxRichTextStyleOrganiserDialog; 
                   event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnApplyClick", header: wxh.}
proc onApplyUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                    event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnApplyUpdate", header: wxh.}
proc onRenameClick*(this: var WxRichTextStyleOrganiserDialog; 
                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRenameClick", header: wxh.}
proc onRenameUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRenameUpdate", header: wxh.}
proc onEditClick*(this: var WxRichTextStyleOrganiserDialog; 
                  event: var WxCommandEvent) {.cdecl, importcpp: "OnEditClick", 
    header: wxh.}
proc onEditUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnEditUpdate", header: wxh.}
proc onDeleteClick*(this: var WxRichTextStyleOrganiserDialog; 
                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnDeleteClick", header: wxh.}
proc onDeleteUpdate*(this: var WxRichTextStyleOrganiserDialog; 
                     event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnDeleteUpdate", header: wxh.}
proc onHelpClick*(this: var WxRichTextStyleOrganiserDialog; 
                  event: var WxCommandEvent) {.cdecl, importcpp: "OnHelpClick", 
    header: wxh.}
proc getBitmapResource*(this: var WxRichTextStyleOrganiserDialog; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextStyleOrganiserDialog; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
