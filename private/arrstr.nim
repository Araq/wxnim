type
  WxArrayString* {.importcpp: "wxArrayString", header: "wx.h".} = object # type of
                                                                         # function used by
                                                                         # wxArrayString::Sort()
                                                                         #
                                                                         # Allocate the new buffer big enough to hold
                                                                         # m_nCount +
                                                                         # nIncrement items and
                                                                         # return the pointer to the old buffer, which must be deleted by the caller
                                                                         # (if the old buffer is big enough, just return NULL).
    mNSize* {.importc: "m_nSize".}: csize # current size of the array
    mNCount* {.importc: "m_nCount".}: csize # current number of elements
    mPItems* {.importc: "m_pItems".}: ptr WxString # pointer to data
    mAutoSort* {.importc: "m_autoSort".}: bool # if true, keep the array always sorted

  CompareFunction* = proc (first: WxString; second: WxString): cint {.cdecl.}
  CompareFunction2* = proc (first: ptr WxString; second: ptr WxString): cint {.cdecl.}

proc constructwxArrayString*(): WxArrayString {.constructor,
    importcpp: "wxArrayString(@)", header: "wx.h".}
proc constructwxArrayString*(autoSort: cint): WxArrayString {.constructor,
    importcpp: "wxArrayString(@)", header: "wx.h".}
proc constructwxArrayString*(sz: csize; a: cstringArray): WxArrayString {.
    constructor, importcpp: "wxArrayString(@)", header: "wx.h".}

proc constructwxArrayString*(sz: csize; a: ptr WxString): WxArrayString {.
    constructor, importcpp: "wxArrayString(@)", header: "wx.h".}
proc constructwxArrayString*(array: WxArrayString): WxArrayString {.constructor,
    importcpp: "wxArrayString(@)", header: "wx.h".}
proc destroywxArrayString*(this: var WxArrayString) {.
    importcpp: "#.~wxArrayString()", header: "wx.h".}
proc empty*(this: var WxArrayString) {.importcpp: "Empty", header: "wx.h".}
proc clear*(this: var WxArrayString) {.importcpp: "Clear", header: "wx.h".}
proc alloc*(this: var WxArrayString; nCount: csize) {.importcpp: "Alloc",
    header: "wx.h".}
proc shrink*(this: var WxArrayString) {.importcpp: "Shrink", header: "wx.h".}
proc getCount*(this: WxArrayString): csize {.noSideEffect,
    importcpp: "GetCount", header: "wx.h".}
proc isEmpty*(this: WxArrayString): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "wx.h".}
proc count*(this: WxArrayString): csize {.noSideEffect, importcpp: "Count",
    header: "wx.h".}
proc item*(this: var WxArrayString; nIndex: csize): var WxString {.
    importcpp: "Item", header: "wx.h".}
proc item*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect,
    importcpp: "Item", header: "wx.h".}
proc `[]`*(this: var WxArrayString; nIndex: csize): var WxString {.
    importcpp: "#[@]", header: "wx.h".}
proc `[]`*(this: WxArrayString; nIndex: csize): WxString {.noSideEffect,
    importcpp: "#[@]", header: "wx.h".}
proc last*(this: var WxArrayString): var WxString {.importcpp: "Last",
    header: "wx.h".}
proc last*(this: WxArrayString): WxString {.noSideEffect, importcpp: "Last",
    header: "wx.h".}
proc index*(this: WxArrayString; str: WxString; bCase: bool = true;
            bFromEnd: bool = false): cint {.noSideEffect, importcpp: "Index",
    header: "wx.h".}
proc add*(this: var WxArrayString; str: WxString; nInsert: csize = 1): csize {.
    importcpp: "Add", header: "wx.h".}
proc insert*(this: var WxArrayString; str: WxString; uiIndex: csize;
             nInsert: csize = 1) {.importcpp: "Insert", header: "wx.h".}
proc setCount*(this: var WxArrayString; count: csize) {.importcpp: "SetCount",
    header: "wx.h".}
proc remove*(this: var WxArrayString; sz: WxString) {.importcpp: "Remove",
    header: "wx.h".}
proc removeAt*(this: var WxArrayString; nIndex: csize; nRemove: csize = 1) {.
    importcpp: "RemoveAt", header: "wx.h".}
proc sort*(this: var WxArrayString; reverseOrder: bool = false) {.
    importcpp: "Sort", header: "wx.h".}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction) {.
    importcpp: "Sort", header: "wx.h".}
proc sort*(this: var WxArrayString; compareFunction: CompareFunction2) {.
    importcpp: "Sort", header: "wx.h".}
proc `==`*(this: WxArrayString; a: WxArrayString): bool {.noSideEffect,
    importcpp: "(# == #)", header: "wx.h".}
proc capacity*(this: WxArrayString): int {.noSideEffect,
    importcpp: "capacity", header: "wx.h".}

proc maxSize*(this: WxArrayString): int {.noSideEffect,
    importcpp: "max_size", header: "wx.h".}
proc popBack*(this: var WxArrayString) {.importcpp: "pop_back", header: "wx.h".}


proc reserve*(this: var WxArrayString; n: int) {.importcpp: "reserve",
    header: "wx.h".}
  # base::reserve

proc size*(this: WxArrayString): int {.noSideEffect, importcpp: "size",
    header: "wx.h".}
proc swap*(this: var WxArrayString; other: var WxArrayString) {.
    importcpp: "swap", header: "wx.h".}
# this class provides a temporary wxString* from a
# wxArrayString

type
  WxCArrayString* {.importcpp: "wxCArrayString", header: "wx.h".} = object
    mArray* {.importc: "m_array".}: WxArrayString
    mStrings* {.importc: "m_strings".}: ptr WxString


proc constructwxCArrayString*(array: WxArrayString): WxCArrayString {.
    constructor, importcpp: "wxCArrayString(@)", header: "wx.h".}
proc destroywxCArrayString*(this: var WxCArrayString) {.
    importcpp: "#.~wxCArrayString()", header: "wx.h".}
proc getCount*(this: WxCArrayString): csize {.noSideEffect,
    importcpp: "GetCount", header: "wx.h".}
proc getStrings*(this: var WxCArrayString): ptr WxString {.
    importcpp: "GetStrings", header: "wx.h".}
proc release*(this: var WxCArrayString): ptr WxString {.importcpp: "Release",
    header: "wx.h".}
# ----------------------------------------------------------------------------
# helper functions for working with arrays
# ----------------------------------------------------------------------------
# by default, these functions use the escape character to escape the
# separators occurring inside the string to be joined, this can be disabled by
# passing '\0' as escape

proc wxJoin*(arr: WxArrayString; sep: char; escape: char = '\x08'): WxString {.
    importcpp: "wxJoin(@)", header: "wx.h".}
proc wxSplit*(str: WxString; sep: char; escape: char = '\x08'): WxArrayString {.
    importcpp: "wxSplit(@)", header: "wx.h".}
# ----------------------------------------------------------------------------
# This helper class allows to pass both C array of wxStrings or wxArrayString
# using the same interface.
#
# Use it when you have two methods taking wxArrayString or (int, wxString[]),
# that do the same thing. This class lets you iterate over input data in the
# same way whether it is a raw array of strings or wxArrayString.
#
# The object does not take ownership of the data -- internally it keeps
# pointers to the data, therefore the data must be disposed of by user
# and only after this object is destroyed. Usually it is not a problem as
# only temporary objects of this class are used.
# ----------------------------------------------------------------------------

type
  WxArrayStringsAdapter* {.importcpp: "wxArrayStringsAdapter", header: "wx.h".} = object

proc constructwxArrayStringsAdapter*(strings: WxArrayString): WxArrayStringsAdapter {.
    constructor, importcpp: "wxArrayStringsAdapter(@)", header: "wx.h".}
proc constructwxArrayStringsAdapter*(n: cuint; strings: ptr WxString): WxArrayStringsAdapter {.
    constructor, importcpp: "wxArrayStringsAdapter(@)", header: "wx.h".}
proc constructwxArrayStringsAdapter*(s: WxString): WxArrayStringsAdapter {.
    constructor, importcpp: "wxArrayStringsAdapter(@)", header: "wx.h".}
proc getCount*(this: WxArrayStringsAdapter): csize {.noSideEffect,
    importcpp: "GetCount", header: "wx.h".}
proc isEmpty*(this: WxArrayStringsAdapter): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "wx.h".}
proc `[]`*(this: WxArrayStringsAdapter; i: cuint): WxString {.noSideEffect,
    importcpp: "#[@]", header: "wx.h".}
proc asArrayString*(this: WxArrayStringsAdapter): WxArrayString {.noSideEffect,
    importcpp: "AsArrayString", header: "wx.h".}
