



discard "forward decl of wxWindowBase"
discard "forward decl of wxLayoutConstraints"
const 
  wxLAYOUT_DEFAULT_MARGIN* = 0

type 
  WxEdge* {.size: sizeof(cint), pure, importcpp: "wxLayoutConstraints::wxEdge", 
            header: "<wx/wx.h>".} = enum 
    wxLeft, wxTop, wxRight, wxBottom, wxWidth, wxHeight, wxCenter, wxCenterX, 
    wxCenterY


type 
  WxRelationship* {.size: sizeof(cint), 
                    importcpp: "wxLayoutConstraints::wxRelationship", 
                    header: "<wx/wx.h>".} = enum 
    wxUnconstrained = 0, wxAsIs, wxPercentOf, wxAbove, wxBelow, wxLeftOf, 
    wxRightOf, wxSameAs, wxAbsolute



type 
  WxIndividualLayoutConstraint* {.importcpp: "wxIndividualLayoutConstraint", 
                                  header: "<wx/wx.h>".} = object of WxObject
  

proc constructwxIndividualLayoutConstraint*(): WxIndividualLayoutConstraint {.
    cdecl, constructor, importcpp: "wxIndividualLayoutConstraint(@)", 
    header: "<wx/wx.h>".}
proc destroywxIndividualLayoutConstraint*(this: var WxIndividualLayoutConstraint) {.
    cdecl, importcpp: "#.~wxIndividualLayoutConstraint()", header: "<wx/wx.h>".}
proc set*(this: var WxIndividualLayoutConstraint; rel: WxRelationship; 
          otherW: ptr WxWindowBase; otherE: WxEdge; val: cint = 0; 
          marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Set", 
    header: "<wx/wx.h>".}
proc leftOf*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
             marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "LeftOf", 
    header: "<wx/wx.h>".}
proc rightOf*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
              marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, 
    importcpp: "RightOf", header: "<wx/wx.h>".}
proc above*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
            marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Above", 
    header: "<wx/wx.h>".}
proc below*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
            marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Below", 
    header: "<wx/wx.h>".}
proc sameAs*(this: var WxIndividualLayoutConstraint; otherW: ptr WxWindowBase; 
             edge: WxEdge; marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, 
    importcpp: "SameAs", header: "<wx/wx.h>".}
proc percentOf*(this: var WxIndividualLayoutConstraint; 
                otherW: ptr WxWindowBase; wh: WxEdge; per: cint) {.cdecl, 
    importcpp: "PercentOf", header: "<wx/wx.h>".}
proc absolute*(this: var WxIndividualLayoutConstraint; val: cint) {.cdecl, 
    importcpp: "Absolute", header: "<wx/wx.h>".}
proc unconstrained*(this: var WxIndividualLayoutConstraint) {.cdecl, 
    importcpp: "Unconstrained", header: "<wx/wx.h>".}
proc asIs*(this: var WxIndividualLayoutConstraint) {.cdecl, importcpp: "AsIs", 
    header: "<wx/wx.h>".}
proc getOtherWindow*(this: var WxIndividualLayoutConstraint): ptr WxWindowBase {.
    cdecl, importcpp: "GetOtherWindow", header: "<wx/wx.h>".}
proc getMyEdge*(this: WxIndividualLayoutConstraint): WxEdge {.noSideEffect, 
    cdecl, importcpp: "GetMyEdge", header: "<wx/wx.h>".}
proc setEdge*(this: var WxIndividualLayoutConstraint; which: WxEdge) {.cdecl, 
    importcpp: "SetEdge", header: "<wx/wx.h>".}
proc setValue*(this: var WxIndividualLayoutConstraint; v: cint) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getMargin*(this: var WxIndividualLayoutConstraint): cint {.cdecl, 
    importcpp: "GetMargin", header: "<wx/wx.h>".}
proc setMargin*(this: var WxIndividualLayoutConstraint; m: cint) {.cdecl, 
    importcpp: "SetMargin", header: "<wx/wx.h>".}
proc getValue*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc getPercent*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, 
    cdecl, importcpp: "GetPercent", header: "<wx/wx.h>".}
proc getOtherEdge*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, 
    cdecl, importcpp: "GetOtherEdge", header: "<wx/wx.h>".}
proc getDone*(this: WxIndividualLayoutConstraint): bool {.noSideEffect, cdecl, 
    importcpp: "GetDone", header: "<wx/wx.h>".}
proc setDone*(this: var WxIndividualLayoutConstraint; d: bool) {.cdecl, 
    importcpp: "SetDone", header: "<wx/wx.h>".}
proc getRelationship*(this: var WxIndividualLayoutConstraint): WxRelationship {.
    cdecl, importcpp: "GetRelationship", header: "<wx/wx.h>".}
proc setRelationship*(this: var WxIndividualLayoutConstraint; r: WxRelationship) {.
    cdecl, importcpp: "SetRelationship", header: "<wx/wx.h>".}
proc resetIfWin*(this: var WxIndividualLayoutConstraint; 
                 otherW: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "ResetIfWin", header: "<wx/wx.h>".}
proc satisfyConstraint*(this: var WxIndividualLayoutConstraint; 
                        constraints: ptr WxLayoutConstraints; 
                        win: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "SatisfyConstraint", header: "<wx/wx.h>".}
proc getEdge*(this: WxIndividualLayoutConstraint; which: WxEdge; 
              thisWin: ptr WxWindowBase; other: ptr WxWindowBase): cint {.
    noSideEffect, cdecl, importcpp: "GetEdge", header: "<wx/wx.h>".}

type 
  WxLayoutConstraints* {.importcpp: "wxLayoutConstraints", header: "<wx/wx.h>".} = object of WxObject
    left* {.importc: "left".}: WxIndividualLayoutConstraint
    top* {.importc: "top".}: WxIndividualLayoutConstraint
    right* {.importc: "right".}: WxIndividualLayoutConstraint
    bottom* {.importc: "bottom".}: WxIndividualLayoutConstraint
    width* {.importc: "width".}: WxIndividualLayoutConstraint
    height* {.importc: "height".}: WxIndividualLayoutConstraint
    centreX* {.importc: "centreX".}: WxIndividualLayoutConstraint
    centreY* {.importc: "centreY".}: WxIndividualLayoutConstraint


proc constructwxLayoutConstraints*(): WxLayoutConstraints {.cdecl, constructor, 
    importcpp: "wxLayoutConstraints(@)", header: "<wx/wx.h>".}
proc destroywxLayoutConstraints*(this: var WxLayoutConstraints) {.cdecl, 
    importcpp: "#.~wxLayoutConstraints()", header: "<wx/wx.h>".}
proc satisfyConstraints*(this: var WxLayoutConstraints; win: ptr WxWindowBase; 
                         noChanges: ptr cint): bool {.cdecl, 
    importcpp: "SatisfyConstraints", header: "<wx/wx.h>".}
proc areSatisfied*(this: WxLayoutConstraints): bool {.noSideEffect, cdecl, 
    importcpp: "AreSatisfied", header: "<wx/wx.h>".}