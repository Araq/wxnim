import "../../wx", "../../genui"
{.experimental.}

genui:
  mainFrame % Frame(title = "Hello World"):
    Panel | Boxsizer(orient = wxHorizontal):
      StaticBox(label = "Basic controls")[proportion = 1] | StaticBoxSizer(orient = wxVertical):
        Button: "Button"
        CheckBox[flag = wxAlign_right or wxAll]: "Checkbox"

mainFrame.show()
runMainLoop()