#///////////////////////////////////////////////////////////////////////////
# Name:        wx/generic/icon.h
# Purpose:     wxIcon implementation for ports where it's same as wxBitmap
# Author:      Julian Smart
# Modified by:
# Created:     17/09/98
# Copyright:   (c) Julian Smart
# Licence:     wxWindows licence
#///////////////////////////////////////////////////////////////////////////

#-----------------------------------------------------------------------------
# wxIcon
#-----------------------------------------------------------------------------

type
  WxIcon* {.importcpp: "wxIcon", header: "wx.h".} = object of WxBitmap

proc constructwxIcon*(): WxIcon {.constructor, importcpp: "wxIcon(@)",
                                  header: "wx.h".}
proc constructwxIcon*(bits: cstringArray): WxIcon {.constructor,
    importcpp: "wxIcon(@)", header: "wx.h".}
proc constructwxIcon*(filename: WxString;
                      `type`: WxBitmapType;
                      desiredWidth: cint = - 1; desiredHeight: cint = - 1): WxIcon {.
    constructor, importcpp: "wxIcon(@)", header: "wx.h".}

proc loadFile*(this: var WxIcon; name: WxString; flags: WxBitmapType;
               desiredWidth: cint; desiredHeight: cint): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc loadFile*(this: var WxIcon; name: WxString;
               flags: WxBitmapType): bool {.
    importcpp: "LoadFile", header: "wx.h".}
proc copyFromBitmap*(this: var WxIcon; bmp: WxBitmap) {.
    importcpp: "CopyFromBitmap", header: "wx.h".}
