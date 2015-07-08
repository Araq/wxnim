
import "../wx", driver

{.experimental.}

proc createFrame(): ptr WxFrame
let f = createFrame()

proc handleButtonClick(e: var WxCommandEvent) {.cdecl.} =
  f.setStatusText("Quit called!")

proc createFrame(): ptr WxFrame =
  result = cnew constructWxFrame(nil, WxWindowID(wxID_ANY), "Hello World",
                                 constructWxPoint(50, 50),
                                 constructWxSize(450, 340))
  discard result.createStatusBar()
  result.setStatusText("Welcome to wxWidgets!")

  let menuFile = cnew constructWxMenu()

  let helloID = newControlId()
  echo "ID ", helloID
  discard menuFile.append(WxWindowID(helloID), "&Hello...\tCtrl-H",
                   "Help string shown in status bar for this menu item")
  discard menuFile.appendSeparator()
  discard menuFile.append(wxID_EXIT.cint)
  let menuHelp = cnew constructWxMenu()
  discard menuHelp.append(wxID_ABOUT.cint)
  let menuBar = cnew constructWxMenuBar()
  discard menuBar.append(menuFile, "&File")
  discard menuBar.append(menuHelp, "&Help")
  result.setMenuBar(menuBar)

  menuBar.`bind`(wxEVT_MENU, handleButtonClick,
     WxStandardID helloID) #wxID_EXIT)

  #menuBar.connect(wxID_EXIT.cint, wxEVT_MENU_OPEN,
  #  cast[pointer](handleButtonClick))

discard f.show(true)

runMainLoop()
