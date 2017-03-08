import "../wx", driver, "../richtext", "../stc", genui
{.experimental.}
{.emit: "#include <wx/spinctrl.h>" .}

var cbChoices = constructWxArrayString()
cbChoices.add "Combobox 1"
cbChoices.add "Combobox 2"
cbChoices.add "Combobox 3"

var
  spinner: ptr WxSpinCtrl
  slider: ptr WxSlider
  gauge: ptr WxGauge

proc spinnerCallback(e: var WxSpinEvent) {.cdecl.} =
  let val = e.getPosition()
  slider.setValue(val)
  gauge.setValue(val)

proc sliderCallback(e: var WxCommandEvent) {.cdecl.} =
  let val = e.getInt()
  spinner.setValue(val)
  gauge.setValue(val)

genui:
  mainFrame % Frame(title = "Hello World"):
    Panel | Boxsizer(orient = wxHorizontal):
      StaticBox(label = "Basic controls")[proportion = 1] | Boxsizer(orient = wxVertical):
        Button: "Button"
        CheckBox: "Checkbox"
        TextCtrl(value = "Entry")
        StaticText: "Label"
      Panel[proportion = 2] | Boxsizer(orient = wxVertical):
        StaticBox(label = "Numbers")[proportion = 1] | Boxsizer(orient = wxVertical):
          spinner % SpinCtrl(min = 0, max = 100) -> (wxEVT_SPINCTRL, spinnerCallback)
          slider % Slider(value = 0, minValue = 0, maxValue = 100) -> (wxEVT_SLIDER, sliderCallback)
          gauge % Gauge(range = 100)
        StaticBox(label = "Lists")[proportion = 1] | Boxsizer(orient = wxVertical):
          Choice(choices = cbChoices, pos = wxDefaultPosition, size = wxDefaultSize)
          ComboBox(choices = cbChoices)
          RadioButton(style = wxRB_GROUP): "RadioButton 1"
          RadioButton: "RadioButton 2"
          RadioButton: "RadioButton 3"

mainFrame.show()
runMainLoop()