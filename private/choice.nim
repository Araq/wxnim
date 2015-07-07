#///////////////////////////////////////////////////////////////////////////
# Name:        wx/choice.h
# Purpose:     wxChoice class interface
# Author:      Vadim Zeitlin
# Modified by:
# Created:     26.07.99
# Copyright:   (c) wxWidgets team
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# headers
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# wxChoice allows to select one of a non-modifiable list of strings
# ----------------------------------------------------------------------------

type 
  WxChoiceBase* {.importcpp: "wxChoiceBase", header: "wx.h".} = object of WxControlWithItems # 
                                                                                             # The 
                                                                                             # generic 
                                                                                             # implementation 
                                                                                             # doesn't 
                                                                                             # determine 
                                                                                             # the 
                                                                                             # height 
                                                                                             # correctly 
                                                                                             # and
                                                                                             # 
                                                                                             # doesn't 
                                                                                             # account 
                                                                                             # for 
                                                                                             # the 
                                                                                             # width 
                                                                                             # of 
                                                                                             # the 
                                                                                             # arrow 
                                                                                             # but 
                                                                                             # does 
                                                                                             # take 
                                                                                             # into 
                                                                                             # account
                                                                                             # 
                                                                                             # the 
                                                                                             # string 
                                                                                             # widths, 
                                                                                             # so 
                                                                                             # the 
                                                                                             # derived 
                                                                                             # classes 
                                                                                             # should 
                                                                                             # override 
                                                                                             # it 
                                                                                             # and 
                                                                                             # set 
                                                                                             # the
                                                                                             # 
                                                                                             # height 
                                                                                             # and 
                                                                                             # add 
                                                                                             # the 
                                                                                             # arrow 
                                                                                             # width 
                                                                                             # to 
                                                                                             # the 
                                                                                             # size 
                                                                                             # returned 
                                                                                             # by 
                                                                                             # this 
                                                                                             # version.
  

proc constructwxChoiceBase*(): WxChoiceBase {.constructor, 
    importcpp: "wxChoiceBase(@)", header: "wx.h".}
proc destroywxChoiceBase*(this: var WxChoiceBase) {.
    importcpp: "#.~wxChoiceBase()", header: "wx.h".}
proc getCurrentSelection*(this: WxChoiceBase): cint {.noSideEffect, 
    importcpp: "GetCurrentSelection", header: "wx.h".}
proc setColumns*(this: var WxChoiceBase; n: cint = 1) {.importcpp: "SetColumns", 
    header: "wx.h".}
proc getColumns*(this: WxChoiceBase): cint {.noSideEffect, 
    importcpp: "GetColumns", header: "wx.h".}
proc command*(this: var WxChoiceBase; event: var WxCommandEvent) {.
    importcpp: "Command", header: "wx.h".}
proc isSorted*(this: WxChoiceBase): bool {.noSideEffect, importcpp: "IsSorted", 
    header: "wx.h".}