


const 
  wxHAS_MULTIPLE_FILEDLG_FILTERS* = true


const 
  wxFD_OPEN* = 0x00000001
  wxFD_SAVE* = 0x00000002
  wxFD_OVERWRITE_PROMPT* = 0x00000004
  wxFD_FILE_MUST_EXIST* = 0x00000010
  wxFD_MULTIPLE* = 0x00000020
  wxFD_CHANGE_DIR* = 0x00000080
  wxFD_PREVIEW* = 0x00000100

const 
  wxFD_DEFAULT_STYLE* = wxFD_OPEN


type 
  WxFileDialogBase* {.importcpp: "wxFileDialogBase", header: wxh.} = object of WxDialog
  

proc constructwxFileDialogBase*(): WxFileDialogBase {.cdecl, constructor, 
    importcpp: "wxFileDialogBase(@)", header: wxh.}
proc constructwxFileDialogBase*(parent: ptr WxWindow; message: WxString = constructWxString(
    "Select a file"); defaultDir: WxString = wxEmptyString; 
                                defaultFile: WxString = wxEmptyString; wildCard: WxString = constructWxString(
    fileWildcard); style: clong = wxFD_DEFAULT_STYLE; 
                                pos: WxPoint = wxDefaultPosition; 
                                sz: WxSize = wxDefaultSize; 
                                name: WxString = constructWxString("filedlg")): WxFileDialogBase {.
    cdecl, constructor, importcpp: "wxFileDialogBase(@)", header: wxh.}
proc destroywxFileDialogBase*(this: var WxFileDialogBase) {.cdecl, 
    importcpp: "#.~wxFileDialogBase()", header: wxh.}
proc create*(this: var WxFileDialogBase; parent: ptr WxWindow; 
             message: WxString = constructWxString("Select a file"); 
             defaultDir: WxString = wxEmptyString; 
             defaultFile: WxString = wxEmptyString; 
             wildCard: WxString = constructWxString(fileWildcard); 
             style: clong = wxFD_DEFAULT_STYLE; 
             pos: WxPoint = wxDefaultPosition; sz: WxSize = wxDefaultSize; 
             name: WxString = constructWxString("filedlg")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc hasFdFlag*(this: WxFileDialogBase; flag: cint): bool {.noSideEffect, cdecl, 
    importcpp: "HasFdFlag", header: wxh.}
proc setMessage*(this: var WxFileDialogBase; message: WxString) {.cdecl, 
    importcpp: "SetMessage", header: wxh.}
proc setPath*(this: var WxFileDialogBase; path: WxString) {.cdecl, 
    importcpp: "SetPath", header: wxh.}
proc setDirectory*(this: var WxFileDialogBase; dir: WxString) {.cdecl, 
    importcpp: "SetDirectory", header: wxh.}
proc setFilename*(this: var WxFileDialogBase; name: WxString) {.cdecl, 
    importcpp: "SetFilename", header: wxh.}
proc setWildcard*(this: var WxFileDialogBase; wildCard: WxString) {.cdecl, 
    importcpp: "SetWildcard", header: wxh.}
proc setFilterIndex*(this: var WxFileDialogBase; filterIndex: cint) {.cdecl, 
    importcpp: "SetFilterIndex", header: wxh.}
proc getMessage*(this: WxFileDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetMessage", header: wxh.}
proc getPath*(this: WxFileDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetPath", header: wxh.}
proc getPaths*(this: WxFileDialogBase; paths: var WxArrayString) {.noSideEffect, 
    cdecl, importcpp: "GetPaths", header: wxh.}
proc getDirectory*(this: WxFileDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetDirectory", header: wxh.}
proc getFilename*(this: WxFileDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFilename", header: wxh.}
proc getFilenames*(this: WxFileDialogBase; files: var WxArrayString) {.
    noSideEffect, cdecl, importcpp: "GetFilenames", header: wxh.}
proc getWildcard*(this: WxFileDialogBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetWildcard", header: wxh.}
proc getFilterIndex*(this: WxFileDialogBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetFilterIndex", header: wxh.}
proc getCurrentlySelectedFilename*(this: WxFileDialogBase): WxString {.
    noSideEffect, cdecl, importcpp: "GetCurrentlySelectedFilename", header: wxh.}
type 
  ExtraControlCreatorFunction* = proc (a2: ptr WxWindow): ptr WxWindow {.cdecl.}

proc supportsExtraControl*(this: WxFileDialogBase): bool {.noSideEffect, cdecl, 
    importcpp: "SupportsExtraControl", header: wxh.}
proc setExtraControlCreator*(this: var WxFileDialogBase; 
                             creator: ExtraControlCreatorFunction): bool {.
    cdecl, importcpp: "SetExtraControlCreator", header: wxh.}
proc getExtraControl*(this: WxFileDialogBase): ptr WxWindow {.noSideEffect, 
    cdecl, importcpp: "GetExtraControl", header: wxh.}
proc appendExtension*(filePath: WxString; extensionList: WxString): WxString {.
    cdecl, importcpp: "wxFileDialogBase::AppendExtension(@)", header: wxh.}

proc wxFileSelector*(message: WxString = constructWxString("Select a file"); 
                     defaultPath: WxString = wxEmptyString; 
                     defaultFilename: WxString = wxEmptyString; 
                     defaultExtension: WxString = wxEmptyString; 
                     wildcard: WxString = constructWxString(fileWildcard); 
                     flags: cint = 0; parent: ptr WxWindow = nil; 
                     x: cint = wxDefaultCoord; y: cint = wxDefaultCoord): WxString {.
    cdecl, importcpp: "wxFileSelector(@)", header: wxh.}

proc wxFileSelectorEx*(message: WxString = constructWxString("Select a file"); 
                       defaultPath: WxString = wxEmptyString; 
                       defaultFilename: WxString = wxEmptyString; 
                       indexDefaultExtension: ptr cint = nil; 
                       wildcard: WxString = constructWxString(fileWildcard); 
                       flags: cint = 0; parent: ptr WxWindow = nil; 
                       x: cint = wxDefaultCoord; y: cint = wxDefaultCoord): WxString {.
    cdecl, importcpp: "wxFileSelectorEx(@)", header: wxh.}

proc wxLoadFileSelector*(what: WxString; extension: WxString; 
                         defaultName: WxString = wxEmptyString; 
                         parent: ptr WxWindow = nil): WxString {.cdecl, 
    importcpp: "wxLoadFileSelector(@)", header: wxh.}

proc wxSaveFileSelector*(what: WxString; extension: WxString; 
                         defaultName: WxString = wxEmptyString; 
                         parent: ptr WxWindow = nil): WxString {.cdecl, 
    importcpp: "wxSaveFileSelector(@)", header: wxh.}