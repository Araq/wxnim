



discard "forward decl of wxRichTextCtrl"
discard "forward decl of wxRichTextBuffer"
type 
  WxRichTextStyleDefinition* {.importcpp: "wxRichTextStyleDefinition", 
                               header: wxh.} = object of WxObject
  

proc constructwxRichTextStyleDefinition*(def: WxRichTextStyleDefinition): WxRichTextStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextStyleDefinition(@)", header: wxh.}
proc constructwxRichTextStyleDefinition*(name: WxString = wxEmptyString): WxRichTextStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextStyleDefinition(@)", header: wxh.}
proc destroywxRichTextStyleDefinition*(this: var WxRichTextStyleDefinition) {.
    cdecl, importcpp: "#.~wxRichTextStyleDefinition()", header: wxh.}
proc init*(this: var WxRichTextStyleDefinition) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextStyleDefinition; def: WxRichTextStyleDefinition) {.
    cdecl, importcpp: "Copy", header: wxh.}
proc eq*(this: WxRichTextStyleDefinition; def: WxRichTextStyleDefinition): bool {.
    noSideEffect, cdecl, importcpp: "Eq", header: wxh.}
proc `==`*(this: WxRichTextStyleDefinition; def: WxRichTextStyleDefinition): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc clone*(this: WxRichTextStyleDefinition): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc setName*(this: var WxRichTextStyleDefinition; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextStyleDefinition): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setDescription*(this: var WxRichTextStyleDefinition; descr: WxString) {.
    cdecl, importcpp: "SetDescription", header: wxh.}
proc getDescription*(this: WxRichTextStyleDefinition): WxString {.noSideEffect, 
    cdecl, importcpp: "GetDescription", header: wxh.}
proc setBaseStyle*(this: var WxRichTextStyleDefinition; name: WxString) {.cdecl, 
    importcpp: "SetBaseStyle", header: wxh.}
proc getBaseStyle*(this: WxRichTextStyleDefinition): WxString {.noSideEffect, 
    cdecl, importcpp: "GetBaseStyle", header: wxh.}
proc setStyle*(this: var WxRichTextStyleDefinition; style: WxRichTextAttr) {.
    cdecl, importcpp: "SetStyle", header: wxh.}
proc getStyle*(this: WxRichTextStyleDefinition): WxRichTextAttr {.noSideEffect, 
    cdecl, importcpp: "GetStyle", header: wxh.}
proc getStyle*(this: var WxRichTextStyleDefinition): var WxRichTextAttr {.cdecl, 
    importcpp: "GetStyle", header: wxh.}
proc getStyleMergedWithBase*(this: WxRichTextStyleDefinition; 
                             sheet: ptr WxRichTextStyleSheet): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetStyleMergedWithBase", header: wxh.}
proc getProperties*(this: var WxRichTextStyleDefinition): var WxRichTextProperties {.
    cdecl, importcpp: "GetProperties", header: wxh.}
proc getProperties*(this: WxRichTextStyleDefinition): WxRichTextProperties {.
    noSideEffect, cdecl, importcpp: "GetProperties", header: wxh.}
proc setProperties*(this: var WxRichTextStyleDefinition; 
                    props: WxRichTextProperties) {.cdecl, 
    importcpp: "SetProperties", header: wxh.}

type 
  WxRichTextCharacterStyleDefinition* {.importcpp: "wxRichTextCharacterStyleDefinition", 
                                        header: wxh.} = object of WxRichTextStyleDefinition
  

proc constructwxRichTextCharacterStyleDefinition*(
    def: WxRichTextCharacterStyleDefinition): WxRichTextCharacterStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextCharacterStyleDefinition(@)", 
    header: wxh.}
proc constructwxRichTextCharacterStyleDefinition*(name: WxString = wxEmptyString): WxRichTextCharacterStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextCharacterStyleDefinition(@)", 
    header: wxh.}
proc destroywxRichTextCharacterStyleDefinition*(
    this: var WxRichTextCharacterStyleDefinition) {.cdecl, 
    importcpp: "#.~wxRichTextCharacterStyleDefinition()", header: wxh.}
proc clone*(this: WxRichTextCharacterStyleDefinition): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}

type 
  WxRichTextParagraphStyleDefinition* {.importcpp: "wxRichTextParagraphStyleDefinition", 
                                        header: wxh.} = object of WxRichTextStyleDefinition
  

proc constructwxRichTextParagraphStyleDefinition*(
    def: WxRichTextParagraphStyleDefinition): WxRichTextParagraphStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextParagraphStyleDefinition(@)", 
    header: wxh.}
proc constructwxRichTextParagraphStyleDefinition*(name: WxString = wxEmptyString): WxRichTextParagraphStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextParagraphStyleDefinition(@)", 
    header: wxh.}
proc destroywxRichTextParagraphStyleDefinition*(
    this: var WxRichTextParagraphStyleDefinition) {.cdecl, 
    importcpp: "#.~wxRichTextParagraphStyleDefinition()", header: wxh.}
proc setNextStyle*(this: var WxRichTextParagraphStyleDefinition; name: WxString) {.
    cdecl, importcpp: "SetNextStyle", header: wxh.}
proc getNextStyle*(this: WxRichTextParagraphStyleDefinition): WxString {.
    noSideEffect, cdecl, importcpp: "GetNextStyle", header: wxh.}
proc copy*(this: var WxRichTextParagraphStyleDefinition; 
           def: WxRichTextParagraphStyleDefinition) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc `==`*(this: WxRichTextParagraphStyleDefinition; 
           def: WxRichTextParagraphStyleDefinition): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc clone*(this: WxRichTextParagraphStyleDefinition): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}

type 
  WxRichTextListStyleDefinition* {.importcpp: "wxRichTextListStyleDefinition", 
                                   header: wxh.} = object of WxRichTextParagraphStyleDefinition
  

proc constructwxRichTextListStyleDefinition*(def: WxRichTextListStyleDefinition): WxRichTextListStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextListStyleDefinition(@)", 
    header: wxh.}
proc constructwxRichTextListStyleDefinition*(name: WxString = wxEmptyString): WxRichTextListStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextListStyleDefinition(@)", 
    header: wxh.}
proc destroywxRichTextListStyleDefinition*(
    this: var WxRichTextListStyleDefinition) {.cdecl, 
    importcpp: "#.~wxRichTextListStyleDefinition()", header: wxh.}
proc copy*(this: var WxRichTextListStyleDefinition; 
           def: WxRichTextListStyleDefinition) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc `==`*(this: WxRichTextListStyleDefinition; 
           def: WxRichTextListStyleDefinition): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc clone*(this: WxRichTextListStyleDefinition): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}
proc setLevelAttributes*(this: var WxRichTextListStyleDefinition; i: cint; 
                         attr: WxRichTextAttr) {.cdecl, 
    importcpp: "SetLevelAttributes", header: wxh.}
proc getLevelAttributes*(this: var WxRichTextListStyleDefinition; i: cint): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetLevelAttributes", header: wxh.}
proc getLevelAttributes*(this: WxRichTextListStyleDefinition; i: cint): ptr WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetLevelAttributes", header: wxh.}
proc setAttributes*(this: var WxRichTextListStyleDefinition; i: cint; 
                    leftIndent: cint; leftSubIndent: cint; bulletStyle: cint; 
                    bulletSymbol: WxString = wxEmptyString) {.cdecl, 
    importcpp: "SetAttributes", header: wxh.}
proc findLevelForIndent*(this: WxRichTextListStyleDefinition; indent: cint): cint {.
    noSideEffect, cdecl, importcpp: "FindLevelForIndent", header: wxh.}
proc combineWithParagraphStyle*(this: var WxRichTextListStyleDefinition; 
                                indent: cint; paraStyle: WxRichTextAttr; 
                                styleSheet: ptr WxRichTextStyleSheet = nil): WxRichTextAttr {.
    cdecl, importcpp: "CombineWithParagraphStyle", header: wxh.}
proc getCombinedStyle*(this: var WxRichTextListStyleDefinition; indent: cint; 
                       styleSheet: ptr WxRichTextStyleSheet = nil): WxRichTextAttr {.
    cdecl, importcpp: "GetCombinedStyle", header: wxh.}
proc getCombinedStyleForLevel*(this: var WxRichTextListStyleDefinition; 
                               level: cint; 
                               styleSheet: ptr WxRichTextStyleSheet = nil): WxRichTextAttr {.
    cdecl, importcpp: "GetCombinedStyleForLevel", header: wxh.}
proc getLevelCount*(this: WxRichTextListStyleDefinition): cint {.noSideEffect, 
    cdecl, importcpp: "GetLevelCount", header: wxh.}
proc isNumbered*(this: WxRichTextListStyleDefinition; i: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsNumbered", header: wxh.}

type 
  WxRichTextBoxStyleDefinition* {.importcpp: "wxRichTextBoxStyleDefinition", 
                                  header: wxh.} = object of WxRichTextStyleDefinition
  

proc constructwxRichTextBoxStyleDefinition*(def: WxRichTextBoxStyleDefinition): WxRichTextBoxStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextBoxStyleDefinition(@)", 
    header: wxh.}
proc constructwxRichTextBoxStyleDefinition*(name: WxString = wxEmptyString): WxRichTextBoxStyleDefinition {.
    cdecl, constructor, importcpp: "wxRichTextBoxStyleDefinition(@)", 
    header: wxh.}
proc destroywxRichTextBoxStyleDefinition*(this: var WxRichTextBoxStyleDefinition) {.
    cdecl, importcpp: "#.~wxRichTextBoxStyleDefinition()", header: wxh.}
proc copy*(this: var WxRichTextBoxStyleDefinition; 
           def: WxRichTextBoxStyleDefinition) {.cdecl, importcpp: "Copy", 
    header: wxh.}
proc `==`*(this: WxRichTextBoxStyleDefinition; def: WxRichTextBoxStyleDefinition): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc clone*(this: WxRichTextBoxStyleDefinition): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "Clone", header: wxh.}

type 
  WxRichTextStyleSheet* {.importcpp: "wxRichTextStyleSheet", header: wxh.} = object of WxObject
  

proc constructwxRichTextStyleSheet*(sheet: WxRichTextStyleSheet): WxRichTextStyleSheet {.
    cdecl, constructor, importcpp: "wxRichTextStyleSheet(@)", header: wxh.}
proc constructwxRichTextStyleSheet*(): WxRichTextStyleSheet {.cdecl, 
    constructor, importcpp: "wxRichTextStyleSheet(@)", header: wxh.}
proc destroywxRichTextStyleSheet*(this: var WxRichTextStyleSheet) {.cdecl, 
    importcpp: "#.~wxRichTextStyleSheet()", header: wxh.}
proc init*(this: var WxRichTextStyleSheet) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc copy*(this: var WxRichTextStyleSheet; sheet: WxRichTextStyleSheet) {.cdecl, 
    importcpp: "Copy", header: wxh.}
proc `==`*(this: WxRichTextStyleSheet; sheet: WxRichTextStyleSheet): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: wxh.}
proc addCharacterStyle*(this: var WxRichTextStyleSheet; 
                        def: ptr WxRichTextCharacterStyleDefinition): bool {.
    cdecl, importcpp: "AddCharacterStyle", header: wxh.}
proc addParagraphStyle*(this: var WxRichTextStyleSheet; 
                        def: ptr WxRichTextParagraphStyleDefinition): bool {.
    cdecl, importcpp: "AddParagraphStyle", header: wxh.}
proc addListStyle*(this: var WxRichTextStyleSheet; 
                   def: ptr WxRichTextListStyleDefinition): bool {.cdecl, 
    importcpp: "AddListStyle", header: wxh.}
proc addBoxStyle*(this: var WxRichTextStyleSheet; 
                  def: ptr WxRichTextBoxStyleDefinition): bool {.cdecl, 
    importcpp: "AddBoxStyle", header: wxh.}
proc addStyle*(this: var WxRichTextStyleSheet; 
               def: ptr WxRichTextStyleDefinition): bool {.cdecl, 
    importcpp: "AddStyle", header: wxh.}
proc removeCharacterStyle*(this: var WxRichTextStyleSheet; 
                           def: ptr WxRichTextStyleDefinition; 
                           deleteStyle: bool = false): bool {.cdecl, 
    importcpp: "RemoveCharacterStyle", header: wxh.}
proc removeParagraphStyle*(this: var WxRichTextStyleSheet; 
                           def: ptr WxRichTextStyleDefinition; 
                           deleteStyle: bool = false): bool {.cdecl, 
    importcpp: "RemoveParagraphStyle", header: wxh.}
proc removeListStyle*(this: var WxRichTextStyleSheet; 
                      def: ptr WxRichTextStyleDefinition; 
                      deleteStyle: bool = false): bool {.cdecl, 
    importcpp: "RemoveListStyle", header: wxh.}
proc removeBoxStyle*(this: var WxRichTextStyleSheet; 
                     def: ptr WxRichTextStyleDefinition; 
                     deleteStyle: bool = false): bool {.cdecl, 
    importcpp: "RemoveBoxStyle", header: wxh.}
proc removeStyle*(this: var WxRichTextStyleSheet; 
                  def: ptr WxRichTextStyleDefinition; deleteStyle: bool = false): bool {.
    cdecl, importcpp: "RemoveStyle", header: wxh.}
proc findCharacterStyle*(this: WxRichTextStyleSheet; name: WxString; 
                         recurse: bool = true): ptr WxRichTextCharacterStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindCharacterStyle", header: wxh.}
proc findParagraphStyle*(this: WxRichTextStyleSheet; name: WxString; 
                         recurse: bool = true): ptr WxRichTextParagraphStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindParagraphStyle", header: wxh.}
proc findListStyle*(this: WxRichTextStyleSheet; name: WxString; 
                    recurse: bool = true): ptr WxRichTextListStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindListStyle", header: wxh.}
proc findBoxStyle*(this: WxRichTextStyleSheet; name: WxString; 
                   recurse: bool = true): ptr WxRichTextBoxStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindBoxStyle", header: wxh.}
proc findStyle*(this: WxRichTextStyleSheet; name: WxString; recurse: bool = true): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindStyle", header: wxh.}
proc getCharacterStyleCount*(this: WxRichTextStyleSheet): csize {.noSideEffect, 
    cdecl, importcpp: "GetCharacterStyleCount", header: wxh.}
proc getParagraphStyleCount*(this: WxRichTextStyleSheet): csize {.noSideEffect, 
    cdecl, importcpp: "GetParagraphStyleCount", header: wxh.}
proc getListStyleCount*(this: WxRichTextStyleSheet): csize {.noSideEffect, 
    cdecl, importcpp: "GetListStyleCount", header: wxh.}
proc getBoxStyleCount*(this: WxRichTextStyleSheet): csize {.noSideEffect, cdecl, 
    importcpp: "GetBoxStyleCount", header: wxh.}
proc getCharacterStyle*(this: WxRichTextStyleSheet; n: csize): ptr WxRichTextCharacterStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetCharacterStyle", header: wxh.}
proc getParagraphStyle*(this: WxRichTextStyleSheet; n: csize): ptr WxRichTextParagraphStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetParagraphStyle", header: wxh.}
proc getListStyle*(this: WxRichTextStyleSheet; n: csize): ptr WxRichTextListStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetListStyle", header: wxh.}
proc getBoxStyle*(this: WxRichTextStyleSheet; n: csize): ptr WxRichTextBoxStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetBoxStyle", header: wxh.}
proc deleteStyles*(this: var WxRichTextStyleSheet) {.cdecl, 
    importcpp: "DeleteStyles", header: wxh.}
proc insertSheet*(this: var WxRichTextStyleSheet; 
                  before: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "InsertSheet", header: wxh.}
proc appendSheet*(this: var WxRichTextStyleSheet; 
                  after: ptr WxRichTextStyleSheet): bool {.cdecl, 
    importcpp: "AppendSheet", header: wxh.}
proc unlink*(this: var WxRichTextStyleSheet) {.cdecl, importcpp: "Unlink", 
    header: wxh.}
proc getNextSheet*(this: WxRichTextStyleSheet): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetNextSheet", header: wxh.}
proc setNextSheet*(this: var WxRichTextStyleSheet; 
                   sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetNextSheet", header: wxh.}
proc getPreviousSheet*(this: WxRichTextStyleSheet): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetPreviousSheet", header: wxh.}
proc setPreviousSheet*(this: var WxRichTextStyleSheet; 
                       sheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetPreviousSheet", header: wxh.}
proc setName*(this: var WxRichTextStyleSheet; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxRichTextStyleSheet): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setDescription*(this: var WxRichTextStyleSheet; descr: WxString) {.cdecl, 
    importcpp: "SetDescription", header: wxh.}
proc getDescription*(this: WxRichTextStyleSheet): WxString {.noSideEffect, 
    cdecl, importcpp: "GetDescription", header: wxh.}
proc getProperties*(this: var WxRichTextStyleSheet): var WxRichTextProperties {.
    cdecl, importcpp: "GetProperties", header: wxh.}
proc getProperties*(this: WxRichTextStyleSheet): WxRichTextProperties {.
    noSideEffect, cdecl, importcpp: "GetProperties", header: wxh.}
proc setProperties*(this: var WxRichTextStyleSheet; props: WxRichTextProperties) {.
    cdecl, importcpp: "SetProperties", header: wxh.}
proc addStyle*(this: var WxRichTextStyleSheet; list: var WxList; 
               def: ptr WxRichTextStyleDefinition): bool {.cdecl, 
    importcpp: "AddStyle", header: wxh.}
proc removeStyle*(this: var WxRichTextStyleSheet; list: var WxList; 
                  def: ptr WxRichTextStyleDefinition; deleteStyle: bool): bool {.
    cdecl, importcpp: "RemoveStyle", header: wxh.}
proc findStyle*(this: WxRichTextStyleSheet; list: WxList; name: WxString; 
                recurse: bool = true): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "FindStyle", header: wxh.}

type 
  WxRichTextStyleListBox* {.importcpp: "wxRichTextStyleListBox", header: wxh.} = object of WxListBox
  
  WxRichTextStyleType* {.size: sizeof(cint), importcpp: "wxRichTextStyleListBox::wxRichTextStyleType", 
                         header: wxh.} = enum 
    wxRICHTEXT_STYLE_ALL, wxRICHTEXT_STYLE_PARAGRAPH, 
    wxRICHTEXT_STYLE_CHARACTER, wxRICHTEXT_STYLE_LIST, wxRICHTEXT_STYLE_BOX


proc constructwxRichTextStyleListBox*(): WxRichTextStyleListBox {.cdecl, 
    constructor, importcpp: "wxRichTextStyleListBox(@)", header: wxh.}
proc constructwxRichTextStyleListBox*(parent: ptr WxWindow; 
                                      id: WxWindowID = wxID_ANY; 
                                      pos: WxPoint = wxDefaultPosition; 
                                      size: WxSize = wxDefaultSize; 
                                      style: clong = 0): WxRichTextStyleListBox {.
    cdecl, constructor, importcpp: "wxRichTextStyleListBox(@)", header: wxh.}
proc destroywxRichTextStyleListBox*(this: var WxRichTextStyleListBox) {.cdecl, 
    importcpp: "#.~wxRichTextStyleListBox()", header: wxh.}
proc init*(this: var WxRichTextStyleListBox) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextStyleListBox; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createHTML*(this: WxRichTextStyleListBox; 
                 def: ptr WxRichTextStyleDefinition): WxString {.noSideEffect, 
    cdecl, importcpp: "CreateHTML", header: wxh.}
proc setStyleSheet*(this: var WxRichTextStyleListBox; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextStyleListBox): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc setRichTextCtrl*(this: var WxRichTextStyleListBox; ctrl: ptr WxRichTextCtrl) {.
    cdecl, importcpp: "SetRichTextCtrl", header: wxh.}
proc getRichTextCtrl*(this: WxRichTextStyleListBox): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: wxh.}
proc getStyle*(this: WxRichTextStyleListBox; i: csize): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetStyle", header: wxh.}
proc getIndexForStyle*(this: WxRichTextStyleListBox; name: WxString): cint {.
    noSideEffect, cdecl, importcpp: "GetIndexForStyle", header: wxh.}
proc setStyleSelection*(this: var WxRichTextStyleListBox; name: WxString): cint {.
    cdecl, importcpp: "SetStyleSelection", header: wxh.}
proc updateStyles*(this: var WxRichTextStyleListBox) {.cdecl, 
    importcpp: "UpdateStyles", header: wxh.}
proc applyStyle*(this: var WxRichTextStyleListBox; i: cint) {.cdecl, 
    importcpp: "ApplyStyle", header: wxh.}
proc onLeftDown*(this: var WxRichTextStyleListBox; event: var WxMouseEvent) {.
    cdecl, importcpp: "OnLeftDown", header: wxh.}
proc onLeftDoubleClick*(this: var WxRichTextStyleListBox; 
                        event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnLeftDoubleClick", header: wxh.}
proc onIdle*(this: var WxRichTextStyleListBox; event: var WxIdleEvent) {.cdecl, 
    importcpp: "OnIdle", header: wxh.}
proc convertTenthsMMToPixels*(this: WxRichTextStyleListBox; dc: var WxDC; 
                              units: cint): cint {.noSideEffect, cdecl, 
    importcpp: "ConvertTenthsMMToPixels", header: wxh.}
proc canAutoSetSelection*(this: var WxRichTextStyleListBox): bool {.cdecl, 
    importcpp: "CanAutoSetSelection", header: wxh.}
proc setAutoSetSelection*(this: var WxRichTextStyleListBox; autoSet: bool) {.
    cdecl, importcpp: "SetAutoSetSelection", header: wxh.}
proc setApplyOnSelection*(this: var WxRichTextStyleListBox; applyOnSel: bool) {.
    cdecl, importcpp: "SetApplyOnSelection", header: wxh.}
proc getApplyOnSelection*(this: WxRichTextStyleListBox): bool {.noSideEffect, 
    cdecl, importcpp: "GetApplyOnSelection", header: wxh.}
proc setStyleType*(this: var WxRichTextStyleListBox; 
                   styleType: WxRichTextStyleType) {.cdecl, 
    importcpp: "SetStyleType", header: wxh.}
proc getStyleType*(this: WxRichTextStyleListBox): WxRichTextStyleType {.
    noSideEffect, cdecl, importcpp: "GetStyleType", header: wxh.}
proc getStyleToShowInIdleTime*(ctrl: ptr WxRichTextCtrl; 
                               styleType: WxRichTextStyleType): WxString {.
    cdecl, importcpp: "wxRichTextStyleListBox::GetStyleToShowInIdleTime(@)", 
    header: wxh.}

const 
  wxRICHTEXTSTYLELIST_HIDE_TYPE_SELECTOR* = 0x00001000

type 
  WxRichTextStyleListCtrl* {.importcpp: "wxRichTextStyleListCtrl", header: wxh.} = object of WxControl
  

proc constructwxRichTextStyleListCtrl*(): WxRichTextStyleListCtrl {.cdecl, 
    constructor, importcpp: "wxRichTextStyleListCtrl(@)", header: wxh.}
proc constructwxRichTextStyleListCtrl*(parent: ptr WxWindow; 
                                       id: WxWindowID = wxID_ANY; 
                                       pos: WxPoint = wxDefaultPosition; 
                                       size: WxSize = wxDefaultSize; 
                                       style: clong = 0): WxRichTextStyleListCtrl {.
    cdecl, constructor, importcpp: "wxRichTextStyleListCtrl(@)", header: wxh.}
proc destroywxRichTextStyleListCtrl*(this: var WxRichTextStyleListCtrl) {.cdecl, 
    importcpp: "#.~wxRichTextStyleListCtrl()", header: wxh.}
proc init*(this: var WxRichTextStyleListCtrl) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextStyleListCtrl; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc updateStyles*(this: var WxRichTextStyleListCtrl) {.cdecl, 
    importcpp: "UpdateStyles", header: wxh.}
proc setStyleSheet*(this: var WxRichTextStyleListCtrl; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextStyleListCtrl): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc setRichTextCtrl*(this: var WxRichTextStyleListCtrl; 
                      ctrl: ptr WxRichTextCtrl) {.cdecl, 
    importcpp: "SetRichTextCtrl", header: wxh.}
proc getRichTextCtrl*(this: WxRichTextStyleListCtrl): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: wxh.}
proc setStyleType*(this: var WxRichTextStyleListCtrl; 
                   styleType: WxRichTextStyleType) {.cdecl, 
    importcpp: "SetStyleType", header: wxh.}
proc getStyleType*(this: WxRichTextStyleListCtrl): WxRichTextStyleType {.
    noSideEffect, cdecl, importcpp: "GetStyleType", header: wxh.}
proc styleTypeToIndex*(this: var WxRichTextStyleListCtrl; 
                       styleType: WxRichTextStyleType): cint {.cdecl, 
    importcpp: "StyleTypeToIndex", header: wxh.}
proc styleIndexToType*(this: var WxRichTextStyleListCtrl; i: cint): WxRichTextStyleType {.
    cdecl, importcpp: "StyleIndexToType", header: wxh.}
proc getStyleListBox*(this: WxRichTextStyleListCtrl): ptr WxRichTextStyleListBox {.
    noSideEffect, cdecl, importcpp: "GetStyleListBox", header: wxh.}
proc getStyleChoice*(this: WxRichTextStyleListCtrl): ptr WxChoice {.
    noSideEffect, cdecl, importcpp: "GetStyleChoice", header: wxh.}
proc onChooseType*(this: var WxRichTextStyleListCtrl; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnChooseType", header: wxh.}
proc onSize*(this: var WxRichTextStyleListCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: wxh.}

type 
  WxRichTextStyleComboPopup* {.importcpp: "wxRichTextStyleComboPopup", 
                               header: wxh.} = object of WxRichTextStyleListBox
  

proc init*(this: var WxRichTextStyleComboPopup) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextStyleComboPopup; parent: ptr WxWindow): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc getControl*(this: var WxRichTextStyleComboPopup): ptr WxWindow {.cdecl, 
    importcpp: "GetControl", header: wxh.}
proc setStringValue*(this: var WxRichTextStyleComboPopup; s: WxString) {.cdecl, 
    importcpp: "SetStringValue", header: wxh.}
proc getStringValue*(this: WxRichTextStyleComboPopup): WxString {.noSideEffect, 
    cdecl, importcpp: "GetStringValue", header: wxh.}
proc canAutoSetSelection*(this: var WxRichTextStyleComboPopup): bool {.cdecl, 
    importcpp: "CanAutoSetSelection", header: wxh.}
proc onMouseMove*(this: var WxRichTextStyleComboPopup; event: var WxMouseEvent) {.
    cdecl, importcpp: "OnMouseMove", header: wxh.}
proc onMouseClick*(this: var WxRichTextStyleComboPopup; event: var WxMouseEvent) {.
    cdecl, importcpp: "OnMouseClick", header: wxh.}

type 
  WxRichTextStyleComboCtrl* {.importcpp: "wxRichTextStyleComboCtrl", header: wxh.} = object of WxComboCtrl
  

proc constructwxRichTextStyleComboCtrl*(): WxRichTextStyleComboCtrl {.cdecl, 
    constructor, importcpp: "wxRichTextStyleComboCtrl(@)", header: wxh.}
proc constructwxRichTextStyleComboCtrl*(parent: ptr WxWindow; 
                                        id: WxWindowID = wxID_ANY; 
                                        pos: WxPoint = wxDefaultPosition; 
                                        size: WxSize = wxDefaultSize; 
                                        style: clong = wxCB_READONLY): WxRichTextStyleComboCtrl {.
    cdecl, constructor, importcpp: "wxRichTextStyleComboCtrl(@)", header: wxh.}
proc destroywxRichTextStyleComboCtrl*(this: var WxRichTextStyleComboCtrl) {.
    cdecl, importcpp: "#.~wxRichTextStyleComboCtrl()", header: wxh.}
proc init*(this: var WxRichTextStyleComboCtrl) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextStyleComboCtrl; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc updateStyles*(this: var WxRichTextStyleComboCtrl) {.cdecl, 
    importcpp: "UpdateStyles", header: wxh.}
proc setStyleSheet*(this: var WxRichTextStyleComboCtrl; 
                    styleSheet: ptr WxRichTextStyleSheet) {.cdecl, 
    importcpp: "SetStyleSheet", header: wxh.}
proc getStyleSheet*(this: WxRichTextStyleComboCtrl): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc setRichTextCtrl*(this: var WxRichTextStyleComboCtrl; 
                      ctrl: ptr WxRichTextCtrl) {.cdecl, 
    importcpp: "SetRichTextCtrl", header: wxh.}
proc getRichTextCtrl*(this: WxRichTextStyleComboCtrl): ptr WxRichTextCtrl {.
    noSideEffect, cdecl, importcpp: "GetRichTextCtrl", header: wxh.}
proc getStylePopup*(this: WxRichTextStyleComboCtrl): ptr WxRichTextStyleComboPopup {.
    noSideEffect, cdecl, importcpp: "GetStylePopup", header: wxh.}
proc onIdle*(this: var WxRichTextStyleComboCtrl; event: var WxIdleEvent) {.
    cdecl, importcpp: "OnIdle", header: wxh.}



