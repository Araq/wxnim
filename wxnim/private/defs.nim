


const 
  FUTURE_WXWIN_COMPATIBILITY_3_0* = 1

type 
  Wxtype* = cshort





const 
  wxNOT_FOUND* = (- 1)


type 
  WxCoord* = cint

const 
  wxDefaultCoord* = - 1



type 
  WxInt8* = cchar
  WxUint8* = cuchar
  WxByte* = WxUint8
  WxInt16* = cshort
  WxUint16* = cushort
  WxUint32* = cuint
  WxInt32* = cint
  WxInt64* = clonglong
  WxWord* = WxUint16
  WxDword* = WxUint32
  WxFloat32* = cfloat
  WxFloat64* = cdouble
  WxDouble* = cdouble
  WxGeometryCentre* {.size: sizeof(cint), importcpp: "wxGeometryCentre", 
                      header: wxh.} = enum 
    wxCENTER = 0x00000001



const 
  wxCENTER_FRAME* = 0x00000000


const 
  wxCENTRE_ON_SCREEN* = 0x00000002
  wxCENTER_ON_SCREEN* = wxCENTRE_ON_SCREEN

type 
  WxOrientation* {.size: sizeof(cint), importcpp: "wxOrientation", header: wxh.} = enum 
    wxHORIZONTAL = 0x00000004, wxVERTICAL = 0x00000008, 
    wxBOTH = 0x00000004 or 0x00000008


const 
  wxORIENTATION_MASK* = wxBOTH

type 
  WxDirection* {.size: sizeof(cint), importcpp: "wxDirection", header: wxh.} = enum 
    wxLEFT = 0x00000010, wxRIGHT = 0x00000020, wxUP = 0x00000040, 
    wxDOWN = 0x00000080, 
    wxALL = (0x00000010 or 0x00000020 or 0x00000040 or 0x00000080)


const 
  wxTOP* = wxUP
  wxBOTTOM* = wxDOWN
  wxNORTH* = wxUP
  wxSOUTH* = wxDOWN
  wxWEST* = wxLEFT
  wxEAST* = wxRIGHT
  wxDIRECTION_MASK* = wxALL

type 
  WxAlignment* {.size: sizeof(cint), importcpp: "wxAlignment", header: wxh.} = enum 
    wxALIGN_INVALID = - 1, wxALIGN_NOT = 0x00000000, 
    wxALIGN_CENTER_HORIZONTAL = 0x00000100, wxALIGN_RIGHT = 0x00000200, 
    wxALIGN_BOTTOM = 0x00000400, wxALIGN_CENTER_VERTICAL = 0x00000800, 
    wxALIGN_CENTER = (0x00000100 or 0x00000800), wxALIGN_MASK = 0x00000F00


const 
  wxALIGN_LEFT* = wxALIGN_NOT
  wxALIGN_TOP* = wxALIGN_NOT


type 
  WxSizerFlagBits* {.size: sizeof(cint), importcpp: "wxSizerFlagBits", 
                     header: wxh.} = enum 
    wxRESERVE_SPACE_EVEN_IF_HIDDEN = 0x00000002, wxFIXED_MINSIZE = 0x00008000, 
    wxSIZER_FLAG_BITS_MASK = 0x00008002


type 
  WxStretch* {.size: sizeof(cint), importcpp: "wxStretch", header: wxh.} = enum 
    wxSTRETCH_NOT = 0x00000000, wxSHRINK = 0x00001000, wxGROW = 0x00002000, 
    wxSHAPED = 0x00004000, wxSTRETCH_MASK = 0x00007000, 
    wxTILE = 0x00004000 or 0x00008000


const 
  wxEXPAND* = wxGROW


type 
  WxBorder* {.size: sizeof(cint), importcpp: "wxBorder", header: wxh.} = enum 
    wxBORDER_DEFAULT = 0, wxBORDER_NONE = 0x00200000, 
    wxBORDER_STATIC = 0x01000000, wxBORDER_SIMPLE = 0x02000000, 
    wxBORDER_RAISED = 0x04000000, wxBORDER_SUNKEN = 0x08000000, 
    wxBORDER_DOUBLE = 0x10000000, wxBORDER_MASK = 0x1F200000


const 
  wxBORDER_THEME* = wxBORDER_DOUBLE
  wxDEFAULT_CONTROL_BORDER* = wxBORDER_SUNKEN


const 
  wxVSCROLL* = 0x80000000
  wxHSCROLL* = 0x40000000
  wxCAPTION* = 0x20000000


const 
  wxDOUBLE_BORDER* = wxBORDER_DOUBLE
  wxSUNKEN_BORDER* = wxBORDER_SUNKEN
  wxRAISED_BORDER* = wxBORDER_RAISED
  wxBORDER* = wxBORDER_SIMPLE
  wxSIMPLE_BORDER* = wxBORDER_SIMPLE
  wxSTATIC_BORDER* = wxBORDER_STATIC
  wxNO_BORDER* = wxBORDER_NONE


const 
  wxALWAYS_SHOW_SB* = 0x00800000


const 
  wxCLIP_CHILDREN* = 0x00400000


const 
  wxCLIP_SIBLINGS* = 0x20000000
  wxTRANSPARENT_WINDOW* = 0x00100000


const 
  wxTAB_TRAVERSAL* = 0x00080000


const 
  wxWANTS_CHARS* = 0x00040000


const 
  wxRETAINED* = 0x00000000
  wxBACKINGSTORE* = wxRETAINED


const 
  wxPOPUP_WINDOW* = 0x00020000


const 
  wxFULL_REPAINT_ON_RESIZE* = 0x00010000


const 
  wxNO_FULL_REPAINT_ON_RESIZE* = 0


const 
  wxWS_EX_VALIDATE_RECURSIVELY* = 0x00000001


const 
  wxWS_EX_BLOCK_EVENTS* = 0x00000002


const 
  wxWS_EX_TRANSIENT* = 0x00000004


const 
  wxWS_EX_THEMED_BACKGROUND* = 0x00000008


const 
  wxWS_EX_PROCESS_IDLE* = 0x00000010


const 
  wxWS_EX_PROCESS_UI_UPDATES* = 0x00000020


const 
  wxFRAME_EX_METAL* = 0x00000040
  wxDIALOG_EX_METAL* = 0x00000040


const 
  wxWS_EX_CONTEXTHELP* = 0x00000080


const 
  wxFRAME_EX_CONTEXTHELP* = wxWS_EX_CONTEXTHELP
  wxDIALOG_EX_CONTEXTHELP* = wxWS_EX_CONTEXTHELP


const 
  wxFRAME_DRAWER* = 0x00000020


const 
  wxFRAME_NO_WINDOW_MENU* = 0x00000100


const 
  wxMB_DOCKABLE* = 0x00000001


const 
  wxMENU_TEAROFF* = 0x00000001


const 
  wxCOLOURED* = 0x00000800
  wxFIXED_LENGTH* = 0x00000400


const 
  wxLB_SORT* = 0x00000010
  wxLB_SINGLE* = 0x00000020
  wxLB_MULTIPLE* = 0x00000040
  wxLB_EXTENDED* = 0x00000080


const 
  wxLB_NEEDED_SB* = 0x00000000
  wxLB_OWNERDRAW* = 0x00000100
  wxLB_ALWAYS_SB* = 0x00000200
  wxLB_NO_SB* = 0x00000400
  wxLB_HSCROLL* = wxHSCROLL


const 
  wxLB_INT_HEIGHT* = 0x00000800


const 
  wxCB_SIMPLE* = 0x00000004
  wxCB_SORT* = 0x00000008
  wxCB_READONLY* = 0x00000010
  wxCB_DROPDOWN* = 0x00000020


const 
  wxRA_LEFTTORIGHT* = 0x00000001
  wxRA_TOPTOBOTTOM* = 0x00000002


const 
  wxRA_SPECIFY_COLS* = wxHORIZONTAL
  wxRA_SPECIFY_ROWS* = wxVERTICAL


const 
  wxRA_HORIZONTAL* = wxHORIZONTAL
  wxRA_VERTICAL* = wxVERTICAL


const 
  wxRB_GROUP* = 0x00000004
  wxRB_SINGLE* = 0x00000008


const 
  wxSB_HORIZONTAL* = wxHORIZONTAL
  wxSB_VERTICAL* = wxVERTICAL


const 
  wxSP_HORIZONTAL* = wxHORIZONTAL
  wxSP_VERTICAL* = wxVERTICAL
  wxSP_ARROW_KEYS* = 0x00004000
  wxSP_WRAP* = 0x00008000


const 
  wxTC_RIGHTJUSTIFY* = 0x00000010
  wxTC_FIXEDWIDTH* = 0x00000020
  wxTC_TOP* = 0x00000000
  wxTC_LEFT* = 0x00000020
  wxTC_RIGHT* = 0x00000040
  wxTC_BOTTOM* = 0x00000080
  wxTC_MULTILINE* = 0x00000200
  wxTC_OWNERDRAW* = 0x00000400


const 
  wxBI_EXPAND* = wxEXPAND


const 
  wxLI_HORIZONTAL* = wxHORIZONTAL
  wxLI_VERTICAL* = wxVERTICAL


const 
  wxYES* = 0x00000002
  wxOK* = 0x00000004
  wxNO* = 0x00000008
  wxYES_NO* = (wxYES or wxNO)
  wxCANCEL* = 0x00000010
  wxAPPLY* = 0x00000020
  wxCLOSE* = 0x00000040
  wxOK_DEFAULT* = 0x00000000
  wxYES_DEFAULT* = 0x00000000
  wxNO_DEFAULT* = 0x00000080
  wxCANCEL_DEFAULT* = 0x80000000
  wxICON_EXCLAMATION* = 0x00000100
  wxICON_HAND* = 0x00000200
  wxICON_WARNING* = wxICON_EXCLAMATION
  wxICON_ERROR* = wxICON_HAND
  wxICON_QUESTION* = 0x00000400
  wxICON_INFORMATION* = 0x00000800
  wxICON_STOP* = wxICON_HAND
  wxICON_ASTERISK* = wxICON_INFORMATION
  wxHELP* = 0x00001000
  wxFORWARD* = 0x00002000
  wxBACKWARD* = 0x00004000
  wxRESET* = 0x00008000
  wxMORE* = 0x00010000
  wxSETUP* = 0x00020000
  wxICON_NONE* = 0x00040000
  wxICON_AUTH_NEEDED* = 0x00080000
  wxICON_MASK* = (wxICON_EXCLAMATION or wxICON_HAND or wxICON_QUESTION or
      wxICON_INFORMATION or wxICON_NONE or wxICON_AUTH_NEEDED)


type 
  WxBackgroundStyle* {.size: sizeof(cint), importcpp: "wxBackgroundStyle", 
                       header: wxh.} = enum 
    wxBG_STYLE_ERASE, wxBG_STYLE_SYSTEM, wxBG_STYLE_PAINT, 
    wxBG_STYLE_TRANSPARENT, wxBG_STYLE_COLOUR


const 
  wxBG_STYLE_CUSTOM* = wxBG_STYLE_PAINT


type 
  WxKeyType* {.size: sizeof(cint), importcpp: "wxKeyType", header: wxh.} = enum 
    wxKEY_NONE, wxKEY_INTEGER, wxKEY_STRING



type 
  WxStandardID* {.size: sizeof(cint), importcpp: "wxStandardID", header: wxh.} = enum 
    wxID_AUTO_LOWEST = - 32000, wxID_AUTO_HIGHEST = - 2000, wxID_NONE = - 3, 
    wxID_SEPARATOR = - 2, wxID_ANY = - 1, wxID_LOWEST = 4999, wxID_OPEN, 
    wxID_CLOSE, wxID_NEW, wxID_SAVE, wxID_SAVEAS, wxID_REVERT, wxID_EXIT, 
    wxID_UNDO, wxID_REDO, wxID_HELP, wxID_PRINT, wxID_PRINT_SETUP, 
    wxID_PAGE_SETUP, wxID_PREVIEW, wxID_ABOUT, wxID_HELP_CONTENTS, 
    wxID_HELP_INDEX, wxID_HELP_SEARCH, wxID_HELP_COMMANDS, wxID_HELP_PROCEDURES, 
    wxID_HELP_CONTEXT, wxID_CLOSE_ALL, wxID_PREFERENCES, wxID_EDIT = 5030, 
    wxID_CUT, wxID_COPY, wxID_PASTE, wxID_CLEAR, wxID_FIND, wxID_DUPLICATE, 
    wxID_SELECTALL, wxID_DELETE, wxID_REPLACE, wxID_REPLACE_ALL, 
    wxID_PROPERTIES, wxID_VIEW_DETAILS, wxID_VIEW_LARGEICONS, 
    wxID_VIEW_SMALLICONS, wxID_VIEW_LIST, wxID_VIEW_SORTDATE, 
    wxID_VIEW_SORTNAME, wxID_VIEW_SORTSIZE, wxID_VIEW_SORTTYPE, 
    wxID_FILE = 5050, wxID_FILE1, wxID_FILE2, wxID_FILE3, wxID_FILE4, 
    wxID_FILE5, wxID_FILE6, wxID_FILE7, wxID_FILE8, wxID_FILE9, wxID_OK = 5100, 
    wxID_CANCEL, wxID_APPLY, wxID_YES, wxID_NO, wxID_STATIC, wxID_FORWARD, 
    wxID_BACKWARD, wxID_DEFAULT, wxID_MORE, wxID_SETUP, wxID_RESET, 
    wxID_CONTEXT_HELP, wxID_YESTOALL, wxID_NOTOALL, wxID_ABORT, wxID_RETRY, 
    wxID_IGNORE, wxID_ADD, wxID_REMOVE, wxID_UP, wxID_DOWN, wxID_HOME, 
    wxID_REFRESH, wxID_STOP, wxID_INDEX, wxID_BOLD, wxID_ITALIC, 
    wxID_JUSTIFY_CENTER, wxID_JUSTIFY_FILL, wxID_JUSTIFY_RIGHT, 
    wxID_JUSTIFY_LEFT, wxID_UNDERLINE, wxID_INDENT, wxID_UNINDENT, 
    wxID_ZOOM_100, wxID_ZOOM_FIT, wxID_ZOOM_IN, wxID_ZOOM_OUT, wxID_UNDELETE, 
    wxID_REVERT_TO_SAVED, wxID_CDROM, wxID_CONVERT, wxID_EXECUTE, wxID_FLOPPY, 
    wxID_HARDDISK, wxID_BOTTOM, wxID_FIRST, wxID_LAST, wxID_TOP, wxID_INFO, 
    wxID_JUMP_TO, wxID_NETWORK, wxID_SELECT_COLOR, wxID_SELECT_FONT, 
    wxID_SORT_ASCENDING, wxID_SORT_DESCENDING, wxID_SPELL_CHECK, 
    wxID_STRIKETHROUGH, wxID_SYSTEM_MENU = 5200, wxID_CLOSE_FRAME, 
    wxID_MOVE_FRAME, wxID_RESIZE_FRAME, wxID_MAXIMIZE_FRAME, wxID_ICONIZE_FRAME, 
    wxID_RESTORE_FRAME, wxID_MDI_WINDOW_FIRST = 5230, wxID_MDI_WINDOW_TILE_HORZ, 
    wxID_MDI_WINDOW_TILE_VERT, wxID_MDI_WINDOW_ARRANGE_ICONS, 
    wxID_MDI_WINDOW_PREV, wxID_MDI_WINDOW_NEXT, wxID_OSX_MENU_FIRST = 5250, 
    wxID_OSX_HIDEOTHERS, wxID_OSX_SHOWALL, wxID_OSX_SERVICES, 
    wxID_FILEDLGG = 5900, wxID_FILECTRL = 5950, wxID_HIGHEST = 5999


const 
  wxID_MDI_WINDOW_CASCADE* = wxID_MDI_WINDOW_FIRST
  wxID_MDI_WINDOW_LAST* = wxID_MDI_WINDOW_NEXT
  wxID_OSX_HIDE* = wxID_OSX_MENU_FIRST
  wxID_OSX_MENU_LAST* = wxID_OSX_SERVICES


type 
  WxWindowID* {.size: sizeof(cint), importcpp: "wxWindowID", header: wxh.} = cint

converter WxStandardIDtoWxWindowID*(windowID: WxStandardID): WxWindowID = cast[WxWindowID](windowID)


type 
  WxItemKind* {.size: sizeof(cint), importcpp: "wxItemKind", header: wxh.} = enum 
    wxITEM_SEPARATOR = - 1, wxITEM_NORMAL, wxITEM_CHECK, wxITEM_RADIO, 
    wxITEM_DROPDOWN, wxITEM_MAX



type 
  WxCheckBoxState* {.size: sizeof(cint), importcpp: "wxCheckBoxState", 
                     header: wxh.} = enum 
    wxCHK_UNCHECKED, wxCHK_CHECKED, wxCHK_UNDETERMINED



type 
  WxHitTest* {.size: sizeof(cint), importcpp: "wxHitTest", header: wxh.} = enum 
    wxHT_NOWHERE, wxHT_SCROLLBAR_ARROW_LINE_1, wxHT_SCROLLBAR_ARROW_LINE_2, 
    wxHT_SCROLLBAR_ARROW_PAGE_1, wxHT_SCROLLBAR_ARROW_PAGE_2, 
    wxHT_SCROLLBAR_THUMB, wxHT_SCROLLBAR_BAR_1, wxHT_SCROLLBAR_BAR_2, 
    wxHT_SCROLLBAR_LAST, wxHT_WINDOW_OUTSIDE, wxHT_WINDOW_INSIDE, 
    wxHT_WINDOW_VERT_SCROLLBAR, wxHT_WINDOW_HORZ_SCROLLBAR, wxHT_WINDOW_CORNER, 
    wxHT_MAX


const 
  wxHT_SCROLLBAR_FIRST* = wxHT_NOWHERE


const 
  wxSIZE_AUTO_WIDTH* = 0x00000001


const 
  wxSIZE_AUTO_HEIGHT* = 0x00000002


const 
  wxSIZE_AUTO* = (wxSIZE_AUTO_WIDTH or wxSIZE_AUTO_HEIGHT)


const 
  wxSIZE_USE_EXISTING* = 0x00000000


const 
  wxSIZE_ALLOW_MINUS_ONE* = 0x00000004


const 
  wxSIZE_NO_ADJUSTMENTS* = 0x00000008


const 
  wxSIZE_FORCE* = 0x00000010


const 
  wxSIZE_FORCE_EVENT* = 0x00000020


type 
  WxHatchStyle* {.size: sizeof(cint), importcpp: "wxHatchStyle", header: wxh.} = enum 
    wxHATCHSTYLE_INVALID = - 1, wxHATCHSTYLE_FIRST = 111, 
    wxHATCHSTYLE_CROSSDIAG, wxHATCHSTYLE_FDIAGONAL, wxHATCHSTYLE_CROSS, 
    wxHATCHSTYLE_HORIZONTAL, wxHATCHSTYLE_VERTICAL


const 
  wxHATCHSTYLE_BDIAGONAL* = wxHATCHSTYLE_FIRST
  wxHATCHSTYLE_LAST* = wxHATCHSTYLE_VERTICAL



type 
  WxDeprecatedGUIConstants* {.size: sizeof(cint), 
                              importcpp: "wxDeprecatedGUIConstants", header: wxh.} = enum 
    wxDEFAULT = 70, wxDECORATIVE, wxROMAN, wxSCRIPT, wxSWISS, wxMODERN, 
    wxTELETYPE, wxVARIABLE = 80, wxFIXED, wxNORMAL = 90, wxLIGHT, wxBOLD, 
    wxITALIC, wxSLANT, wxSOLID = 100, wxDOT, wxLONG_DASH, wxSHORT_DASH, 
    wxDOT_DASH, wxUSER_DASH, wxTRANSPARENT, wxSTIPPLE_MASK_OPAQUE, 
    wxSTIPPLE_MASK, wxSTIPPLE = 110


const 
  wxBDIAGONAL_HATCH* = wxHATCHSTYLE_BDIAGONAL
  wxCROSSDIAG_HATCH* = wxHATCHSTYLE_CROSSDIAG
  wxFDIAGONAL_HATCH* = wxHATCHSTYLE_FDIAGONAL
  wxCROSS_HATCH* = wxHATCHSTYLE_CROSS
  wxHORIZONTAL_HATCH* = wxHATCHSTYLE_HORIZONTAL
  wxVERTICAL_HATCH* = wxHATCHSTYLE_VERTICAL
  wxFIRST_HATCH* = wxHATCHSTYLE_FIRST
  wxLAST_HATCH* = wxHATCHSTYLE_LAST


const 
  wxTOOL_TOP* = 1
  wxTOOL_BOTTOM* = 2
  wxTOOL_LEFT* = 3
  wxTOOL_RIGHT* = 4


type 
  WxDataFormatId* {.size: sizeof(cint), importcpp: "wxDataFormatId", header: wxh.} = enum 
    wxDF_INVALID = 0, wxDF_TEXT = 1, wxDF_BITMAP = 2, wxDF_METAFILE = 3, 
    wxDF_SYLK = 4, wxDF_DIF = 5, wxDF_TIFF = 6, wxDF_OEMTEXT = 7, wxDF_DIB = 8, 
    wxDF_PALETTE = 9, wxDF_PENDATA = 10, wxDF_RIFF = 11, wxDF_WAVE = 12, 
    wxDF_UNICODETEXT = 13, wxDF_ENHMETAFILE = 14, wxDF_FILENAME = 15, 
    wxDF_LOCALE = 16, wxDF_PRIVATE = 20, wxDF_HTML = 30, wxDF_MAX



type 
  WxKeyCode* {.size: sizeof(cint), importcpp: "wxKeyCode", header: wxh.} = enum 
    WXK_NONE = 0, WXK_CONTROL_A = 1, WXK_CONTROL_B, WXK_CONTROL_C, 
    WXK_CONTROL_D, WXK_CONTROL_E, WXK_CONTROL_F, WXK_CONTROL_G, WXK_CONTROL_H, 
    WXK_CONTROL_I, WXK_CONTROL_J, WXK_CONTROL_K, WXK_CONTROL_L, WXK_CONTROL_M, 
    WXK_CONTROL_N, WXK_CONTROL_O, WXK_CONTROL_P, WXK_CONTROL_Q, WXK_CONTROL_R, 
    WXK_CONTROL_S, WXK_CONTROL_T, WXK_CONTROL_U, WXK_CONTROL_V, WXK_CONTROL_W, 
    WXK_CONTROL_X, WXK_CONTROL_Y, WXK_CONTROL_Z, WXK_ESCAPE = 27, 
    WXK_SPACE = 32, WXK_DELETE = 127, WXK_SPECIAL1 = 193, WXK_SPECIAL2, 
    WXK_SPECIAL3, WXK_SPECIAL4, WXK_SPECIAL5, WXK_SPECIAL6, WXK_SPECIAL7, 
    WXK_SPECIAL8, WXK_SPECIAL9, WXK_SPECIAL10, WXK_SPECIAL11, WXK_SPECIAL12, 
    WXK_SPECIAL13, WXK_SPECIAL14, WXK_SPECIAL15, WXK_SPECIAL16, WXK_SPECIAL17, 
    WXK_SPECIAL18, WXK_SPECIAL19, WXK_SPECIAL20, WXK_START = 300, WXK_LBUTTON, 
    WXK_RBUTTON, WXK_CANCEL, WXK_MBUTTON, WXK_CLEAR, WXK_SHIFT, WXK_ALT, 
    WXK_CONTROL, WXK_MENU, WXK_PAUSE, WXK_CAPITAL, WXK_END, WXK_HOME, WXK_LEFT, 
    WXK_UP, WXK_RIGHT, WXK_DOWN, WXK_SELECT, WXK_PRINT, WXK_EXECUTE, 
    WXK_SNAPSHOT, WXK_INSERT, WXK_HELP, WXK_NUMPAD0, WXK_NUMPAD1, WXK_NUMPAD2, 
    WXK_NUMPAD3, WXK_NUMPAD4, WXK_NUMPAD5, WXK_NUMPAD6, WXK_NUMPAD7, 
    WXK_NUMPAD8, WXK_NUMPAD9, WXK_MULTIPLY, WXK_ADD, WXK_SEPARATOR, 
    WXK_SUBTRACT, WXK_DECIMAL, WXK_DIVIDE, WXK_F1, WXK_F2, WXK_F3, WXK_F4, 
    WXK_F5, WXK_F6, WXK_F7, WXK_F8, WXK_F9, WXK_F10, WXK_F11, WXK_F12, WXK_F13, 
    WXK_F14, WXK_F15, WXK_F16, WXK_F17, WXK_F18, WXK_F19, WXK_F20, WXK_F21, 
    WXK_F22, WXK_F23, WXK_F24, WXK_NUMLOCK, WXK_SCROLL, WXK_PAGEUP, 
    WXK_PAGEDOWN, WXK_NUMPAD_SPACE, WXK_NUMPAD_TAB, WXK_NUMPAD_ENTER, 
    WXK_NUMPAD_F1, WXK_NUMPAD_F2, WXK_NUMPAD_F3, WXK_NUMPAD_F4, WXK_NUMPAD_HOME, 
    WXK_NUMPAD_LEFT, WXK_NUMPAD_UP, WXK_NUMPAD_RIGHT, WXK_NUMPAD_DOWN, 
    WXK_NUMPAD_PAGEUP, WXK_NUMPAD_PAGEDOWN, WXK_NUMPAD_END, WXK_NUMPAD_BEGIN, 
    WXK_NUMPAD_INSERT, WXK_NUMPAD_DELETE, WXK_NUMPAD_EQUAL, WXK_NUMPAD_MULTIPLY, 
    WXK_NUMPAD_ADD, WXK_NUMPAD_SEPARATOR, WXK_NUMPAD_SUBTRACT, 
    WXK_NUMPAD_DECIMAL, WXK_NUMPAD_DIVIDE, WXK_WINDOWS_LEFT, WXK_WINDOWS_RIGHT, 
    WXK_WINDOWS_MENU

const 
  WXK_BACK = WXK_CONTROL_H
  WXK_TAB = WXK_CONTROL_I
  WXK_RETURN = WXK_CONTROL_M

const 
  WXK_COMMAND* = WXK_CONTROL


type 
  WxKeyModifier* {.size: sizeof(cint), importcpp: "wxKeyModifier", header: wxh.} = enum 
    wxMOD_NONE = 0x00000000, wxMOD_ALT = 0x00000001, wxMOD_CONTROL = 0x00000002, 
    wxMOD_ALTGR = 1 or 2, wxMOD_SHIFT = 0x00000004, wxMOD_META = 0x00000008, 
    wxMOD_ALL = 0x0000FFFF


const 
  wxMOD_WIN* = wxMOD_META
  wxMOD_CMD* = wxMOD_CONTROL


template wxDLG_UNIT*(parent, pt: untyped): untyped = 
  parent.convertDialogToPixels(pt)


type 
  WxPaperSize* {.size: sizeof(cint), importcpp: "wxPaperSize", header: wxh.} = enum 
    wxPAPER_NONE, wxPAPER_LETTER, wxPAPER_LEGAL, wxPAPER_A4, wxPAPER_CSHEET, 
    wxPAPER_DSHEET, wxPAPER_ESHEET, wxPAPER_LETTERSMALL, wxPAPER_TABLOID, 
    wxPAPER_LEDGER, wxPAPER_STATEMENT, wxPAPER_EXECUTIVE, wxPAPER_A3, 
    wxPAPER_A4SMALL, wxPAPER_A5, wxPAPER_B4, wxPAPER_B5, wxPAPER_FOLIO, 
    wxPAPER_QUARTO, wxPAPER_10X14, wxPAPER_11X17, wxPAPER_NOTE, wxPAPER_ENV_9, 
    wxPAPER_ENV_10, wxPAPER_ENV_11, wxPAPER_ENV_12, wxPAPER_ENV_14, 
    wxPAPER_ENV_DL, wxPAPER_ENV_C5, wxPAPER_ENV_C3, wxPAPER_ENV_C4, 
    wxPAPER_ENV_C6, wxPAPER_ENV_C65, wxPAPER_ENV_B4, wxPAPER_ENV_B5, 
    wxPAPER_ENV_B6, wxPAPER_ENV_ITALY, wxPAPER_ENV_MONARCH, 
    wxPAPER_ENV_PERSONAL, wxPAPER_FANFOLD_US, wxPAPER_FANFOLD_STD_GERMAN, 
    wxPAPER_FANFOLD_LGL_GERMAN, wxPAPER_ISO_B4, wxPAPER_JAPANESE_POSTCARD, 
    wxPAPER_9X11, wxPAPER_10X11, wxPAPER_15X11, wxPAPER_ENV_INVITE, 
    wxPAPER_LETTER_EXTRA, wxPAPER_LEGAL_EXTRA, wxPAPER_TABLOID_EXTRA, 
    wxPAPER_A4EXTRA, wxPAPER_LETTER_TRANSVERSE, wxPAPER_A4TRANSVERSE, 
    wxPAPER_LETTER_EXTRA_TRANSVERSE, wxPAPER_A_PLUS, wxPAPER_B_PLUS, 
    wxPAPER_LETTER_PLUS, wxPAPER_A4PLUS, wxPAPER_A5TRANSVERSE, 
    wxPAPER_B5TRANSVERSE, wxPAPER_A3EXTRA, wxPAPER_A5EXTRA, wxPAPER_B5EXTRA, 
    wxPAPER_A2, wxPAPER_A3TRANSVERSE, wxPAPER_A3EXTRA_TRANSVERSE, 
    wxPAPER_DBL_JAPANESE_POSTCARD, wxPAPER_A6, wxPAPER_JENV_KAKU2, 
    wxPAPER_JENV_KAKU3, wxPAPER_JENV_CHOU3, wxPAPER_JENV_CHOU4, 
    wxPAPER_LETTER_ROTATED, wxPAPER_A3ROTATED, wxPAPER_A4ROTATED, 
    wxPAPER_A5ROTATED, wxPAPER_B4JIS_ROTATED, wxPAPER_B5JIS_ROTATED, 
    wxPAPER_JAPANESE_POSTCARD_ROTATED, wxPAPER_DBL_JAPANESE_POSTCARD_ROTATED, 
    wxPAPER_A6ROTATED, wxPAPER_JENV_KAKU2ROTATED, wxPAPER_JENV_KAKU3ROTATED, 
    wxPAPER_JENV_CHOU3ROTATED, wxPAPER_JENV_CHOU4ROTATED, wxPAPER_B6JIS, 
    wxPAPER_B6JIS_ROTATED, wxPAPER_12X11, wxPAPER_JENV_YOU4, 
    wxPAPER_JENV_YOU4ROTATED, wxPAPER_P16K, wxPAPER_P32K, wxPAPER_P32KBIG, 
    wxPAPER_PENV_1, wxPAPER_PENV_2, wxPAPER_PENV_3, wxPAPER_PENV_4, 
    wxPAPER_PENV_5, wxPAPER_PENV_6, wxPAPER_PENV_7, wxPAPER_PENV_8, 
    wxPAPER_PENV_9, wxPAPER_PENV_10, wxPAPER_P16K_ROTATED, wxPAPER_P32K_ROTATED, 
    wxPAPER_P32KBIG_ROTATED, wxPAPER_PENV_1ROTATED, wxPAPER_PENV_2ROTATED, 
    wxPAPER_PENV_3ROTATED, wxPAPER_PENV_4ROTATED, wxPAPER_PENV_5ROTATED, 
    wxPAPER_PENV_6ROTATED, wxPAPER_PENV_7ROTATED, wxPAPER_PENV_8ROTATED, 
    wxPAPER_PENV_9ROTATED, wxPAPER_PENV_10ROTATED, wxPAPER_A0, wxPAPER_A1



type 
  WxPrintOrientation* {.size: sizeof(cint), importcpp: "wxPrintOrientation", 
                        header: wxh.} = enum 
    wxPORTRAIT = 1, wxLANDSCAPE



type 
  WxDuplexMode* {.size: sizeof(cint), importcpp: "wxDuplexMode", header: wxh.} = enum 
    wxDUPLEX_SIMPLEX, wxDUPLEX_HORIZONTAL, wxDUPLEX_VERTICAL



const 
  wxPRINT_QUALITY_HIGH* = - 1
  wxPRINT_QUALITY_MEDIUM* = - 2
  wxPRINT_QUALITY_LOW* = - 3
  wxPRINT_QUALITY_DRAFT* = - 4

type 
  WxPrintQuality* = cint


type 
  WxPrintMode* {.size: sizeof(cint), importcpp: "wxPrintMode", header: wxh.} = enum 
    wxPRINT_MODE_NONE = 0, wxPRINT_MODE_PREVIEW = 1, wxPRINT_MODE_FILE = 2, 
    wxPRINT_MODE_PRINTER = 3, wxPRINT_MODE_STREAM = 4



type 
  WxUpdateUI* {.size: sizeof(cint), importcpp: "wxUpdateUI", header: wxh.} = enum 
    wxUPDATE_UI_NONE = 0x00000000, wxUPDATE_UI_RECURSE = 0x00000001, 
    wxUPDATE_UI_FROMIDLE = 0x00000002



type 
  WxSortCompareFunction* = proc (elem1: pointer; elem2: pointer): cint {.cdecl.}


type 
  WxListIterateFunction* = proc (current: pointer): cint {.cdecl.}


const 
  wxALL_FILES_PATTERN* = "*.*"
  wxALL_FILES* = "All files (*.*)|*.*"


const 
  wxPRIORITY_MIN* = 0
  wxPRIORITY_DEFAULT* = 50
  wxPRIORITY_MAX* = 100

