#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/slider.h
# Purpose:     wxSlider interface
# Author:      Vadim Zeitlin
# Modified by:
# Created:     09.02.01
# Copyright:   (c) 1996-2001 Vadim Zeitlin
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# headers
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# wxSlider flags
# ----------------------------------------------------------------------------

const 
  wxSL_HORIZONTAL* = wxHORIZONTAL
  wxSL_VERTICAL* = wxVERTICAL
  wxSL_TICKS* = 0x00000010
  wxSL_AUTOTICKS* = wxSL_TICKS
  wxSL_LEFT* = 0x00000040
  wxSL_TOP* = 0x00000080
  wxSL_RIGHT* = 0x00000100
  wxSL_BOTTOM* = 0x00000200
  wxSL_BOTH* = 0x00000400
  wxSL_SELRANGE* = 0x00000800
  wxSL_INVERSE* = 0x00001000
  wxSL_MIN_MAX_LABELS* = 0x00002000
  wxSL_VALUE_LABEL* = 0x00004000
  wxSL_LABELS* = (wxSL_MIN_MAX_LABELS or wxSL_VALUE_LABEL)

# obsolete

const 
  wxSL_NOTIFY_DRAG* = 0x00000000

# ----------------------------------------------------------------------------
# wxSliderBase: define wxSlider interface
# ----------------------------------------------------------------------------

type 
  WxSliderBase* {.importcpp: "wxSliderBase", header: "wx.h".} = object of WxControl # 
                                                                                    # the 
                                                                                    # ctor 
                                                                                    # of 
                                                                                    # the 
                                                                                    # derived 
                                                                                    # class 
                                                                                    # should 
                                                                                    # have 
                                                                                    # the 
                                                                                    # following 
                                                                                    # form:
                                                                                    #
                                                                                    #    
                                                                                    #    wxSlider(wxWindow 
                                                                                    #    *parent,
                                                                                    #             
                                                                                    #             wxWindowID 
                                                                                    #             id,
                                                                                    #             
                                                                                    #             int 
                                                                                    #             value, 
                                                                                    #             int 
                                                                                    #             minValue, 
                                                                                    #             int 
                                                                                    #             maxValue,
                                                                                    #             
                                                                                    #             const 
                                                                                    #             wxPoint& 
                                                                                    #             pos 
                                                                                    #             = 
                                                                                    #             wxDefaultPosition,
                                                                                    #             
                                                                                    #             const 
                                                                                    #             wxSize& 
                                                                                    #             size 
                                                                                    #             = 
                                                                                    #             wxDefaultSize,
                                                                                    #             
                                                                                    #             long 
                                                                                    #             style 
                                                                                    #             = 
                                                                                    #             wxSL_HORIZONTAL,
                                                                                    #             
                                                                                    #             const 
                                                                                    #             wxValidator& 
                                                                                    #             validator 
                                                                                    #             = 
                                                                                    #             wxDefaultValidator,
                                                                                    #             
                                                                                    #             const 
                                                                                    #             wxString& 
                                                                                    #             name 
                                                                                    #             = 
                                                                                    #             wxSliderNameStr);
                                                                                    #    
                                                                                    # 
                                                                                    # Platform-specific 
                                                                                    # implementation 
                                                                                    # of 
                                                                                    # SetTickFreq
  

proc constructwxSliderBase*(): WxSliderBase {.constructor, 
    importcpp: "wxSliderBase(@)", header: "wx.h".}
proc getValue*(this: WxSliderBase): cint {.noSideEffect, importcpp: "GetValue", 
    header: "wx.h".}
proc setValue*(this: var WxSliderBase; value: cint) {.importcpp: "SetValue", 
    header: "wx.h".}
proc setRange*(this: var WxSliderBase; minValue: cint; maxValue: cint) {.
    importcpp: "SetRange", header: "wx.h".}
proc getMin*(this: WxSliderBase): cint {.noSideEffect, importcpp: "GetMin", 
    header: "wx.h".}
proc getMax*(this: WxSliderBase): cint {.noSideEffect, importcpp: "GetMax", 
    header: "wx.h".}
proc setMin*(this: var WxSliderBase; minValue: cint) {.importcpp: "SetMin", 
    header: "wx.h".}
proc setMax*(this: var WxSliderBase; maxValue: cint) {.importcpp: "SetMax", 
    header: "wx.h".}
proc setLineSize*(this: var WxSliderBase; lineSize: cint) {.
    importcpp: "SetLineSize", header: "wx.h".}
proc setPageSize*(this: var WxSliderBase; pageSize: cint) {.
    importcpp: "SetPageSize", header: "wx.h".}
proc getLineSize*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetLineSize", header: "wx.h".}
proc getPageSize*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetPageSize", header: "wx.h".}
proc setThumbLength*(this: var WxSliderBase; lenPixels: cint) {.
    importcpp: "SetThumbLength", header: "wx.h".}
proc getThumbLength*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetThumbLength", header: "wx.h".}
proc setTickFreq*(this: var WxSliderBase; freq: cint) {.
    importcpp: "SetTickFreq", header: "wx.h".}
proc getTickFreq*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetTickFreq", header: "wx.h".}
proc clearTicks*(this: var WxSliderBase) {.importcpp: "ClearTicks", 
    header: "wx.h".}
proc setTick*(this: var WxSliderBase; tickPos: cint) {.importcpp: "SetTick", 
    header: "wx.h".}
proc clearSel*(this: var WxSliderBase) {.importcpp: "ClearSel", header: "wx.h".}
proc getSelEnd*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetSelEnd", header: "wx.h".}
proc getSelStart*(this: WxSliderBase): cint {.noSideEffect, 
    importcpp: "GetSelStart", header: "wx.h".}
proc setSelection*(this: var WxSliderBase; min: cint; max: cint) {.
    importcpp: "SetSelection", header: "wx.h".}
# _WX_SLIDER_H_BASE_
