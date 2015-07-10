



discard "forward decl of wxWindowBase"
discard "forward decl of wxLayoutConstraints"
const 
  wxLAYOUT_DEFAULT_MARGIN* = 0

type 
  WxEdge* {.size: sizeof(cint), pure, importcpp: "wxLayoutConstraints::wxEdge", 
            header: wxh.} = enum 
    wxLeft, wxTop, wxRight, wxBottom, wxWidth, wxHeight, wxCenter, wxCenterX, 
    wxCenterY


type 
  WxRelationship* {.size: sizeof(cint), 
                    importcpp: "wxLayoutConstraints::wxRelationship", 
                    header: wxh.} = enum 
    wxUnconstrained = 0, wxAsIs, wxPercentOf, wxAbove, wxBelow, wxLeftOf, 
    wxRightOf, wxSameAs, wxAbsolute



type 
  WxIndividualLayoutConstraint* {.importcpp: "wxIndividualLayoutConstraint", 
                                  header: wxh.} = object of WxObject
  

proc constructwxIndividualLayoutConstraint*(): WxIndividualLayoutConstraint {.
    cdecl, constructor, importcpp: "wxIndividualLayoutConstraint(@)", 
    header: wxh.}
proc destroywxIndividualLayoutConstraint*(this: var WxIndividualLayoutConstraint) {.
    cdecl, importcpp: "#.~wxIndividualLayoutConstraint()", header: wxh.}
proc set*(this: var WxIndividualLayoutConstraint; rel: WxRelationship; 
          otherW: ptr WxWindowBase; otherE: WxEdge; val: cint = 0; 
          marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Set", 
    header: wxh.}
proc leftOf*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
             marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "LeftOf", 
    header: wxh.}
proc rightOf*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
              marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, 
    importcpp: "RightOf", header: wxh.}
proc above*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
            marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Above", 
    header: wxh.}
proc below*(this: var WxIndividualLayoutConstraint; sibling: ptr WxWindowBase; 
            marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, importcpp: "Below", 
    header: wxh.}
proc sameAs*(this: var WxIndividualLayoutConstraint; otherW: ptr WxWindowBase; 
             edge: WxEdge; marg: cint = wxLAYOUT_DEFAULT_MARGIN) {.cdecl, 
    importcpp: "SameAs", header: wxh.}
proc percentOf*(this: var WxIndividualLayoutConstraint; 
                otherW: ptr WxWindowBase; wh: WxEdge; per: cint) {.cdecl, 
    importcpp: "PercentOf", header: wxh.}
proc absolute*(this: var WxIndividualLayoutConstraint; val: cint) {.cdecl, 
    importcpp: "Absolute", header: wxh.}
proc unconstrained*(this: var WxIndividualLayoutConstraint) {.cdecl, 
    importcpp: "Unconstrained", header: wxh.}
proc asIs*(this: var WxIndividualLayoutConstraint) {.cdecl, importcpp: "AsIs", 
    header: wxh.}
proc getOtherWindow*(this: var WxIndividualLayoutConstraint): ptr WxWindowBase {.
    cdecl, importcpp: "GetOtherWindow", header: wxh.}
proc getMyEdge*(this: WxIndividualLayoutConstraint): WxEdge {.noSideEffect, 
    cdecl, importcpp: "GetMyEdge", header: wxh.}
proc setEdge*(this: var WxIndividualLayoutConstraint; which: WxEdge) {.cdecl, 
    importcpp: "SetEdge", header: wxh.}
proc setValue*(this: var WxIndividualLayoutConstraint; v: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getMargin*(this: var WxIndividualLayoutConstraint): cint {.cdecl, 
    importcpp: "GetMargin", header: wxh.}
proc setMargin*(this: var WxIndividualLayoutConstraint; m: cint) {.cdecl, 
    importcpp: "SetMargin", header: wxh.}
proc getValue*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc getPercent*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, 
    cdecl, importcpp: "GetPercent", header: wxh.}
proc getOtherEdge*(this: WxIndividualLayoutConstraint): cint {.noSideEffect, 
    cdecl, importcpp: "GetOtherEdge", header: wxh.}
proc getDone*(this: WxIndividualLayoutConstraint): bool {.noSideEffect, cdecl, 
    importcpp: "GetDone", header: wxh.}
proc setDone*(this: var WxIndividualLayoutConstraint; d: bool) {.cdecl, 
    importcpp: "SetDone", header: wxh.}
proc getRelationship*(this: var WxIndividualLayoutConstraint): WxRelationship {.
    cdecl, importcpp: "GetRelationship", header: wxh.}
proc setRelationship*(this: var WxIndividualLayoutConstraint; r: WxRelationship) {.
    cdecl, importcpp: "SetRelationship", header: wxh.}
proc resetIfWin*(this: var WxIndividualLayoutConstraint; 
                 otherW: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "ResetIfWin", header: wxh.}
proc satisfyConstraint*(this: var WxIndividualLayoutConstraint; 
                        constraints: ptr WxLayoutConstraints; 
                        win: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "SatisfyConstraint", header: wxh.}
proc getEdge*(this: WxIndividualLayoutConstraint; which: WxEdge; 
              thisWin: ptr WxWindowBase; other: ptr WxWindowBase): cint {.
    noSideEffect, cdecl, importcpp: "GetEdge", header: wxh.}

type 
  WxLayoutConstraints* {.importcpp: "wxLayoutConstraints", header: wxh.} = object of WxObject
    left* {.importc: "left".}: WxIndividualLayoutConstraint
    top* {.importc: "top".}: WxIndividualLayoutConstraint
    right* {.importc: "right".}: WxIndividualLayoutConstraint
    bottom* {.importc: "bottom".}: WxIndividualLayoutConstraint
    width* {.importc: "width".}: WxIndividualLayoutConstraint
    height* {.importc: "height".}: WxIndividualLayoutConstraint
    centreX* {.importc: "centreX".}: WxIndividualLayoutConstraint
    centreY* {.importc: "centreY".}: WxIndividualLayoutConstraint


proc constructwxLayoutConstraints*(): WxLayoutConstraints {.cdecl, constructor, 
    importcpp: "wxLayoutConstraints(@)", header: wxh.}
proc destroywxLayoutConstraints*(this: var WxLayoutConstraints) {.cdecl, 
    importcpp: "#.~wxLayoutConstraints()", header: wxh.}
proc satisfyConstraints*(this: var WxLayoutConstraints; win: ptr WxWindowBase; 
                         noChanges: ptr cint): bool {.cdecl, 
    importcpp: "SatisfyConstraints", header: wxh.}
proc areSatisfied*(this: WxLayoutConstraints): bool {.noSideEffect, cdecl, 
    importcpp: "AreSatisfied", header: wxh.}