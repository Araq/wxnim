
{.emit: """

#include <wx/wxprec.h>
#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif
class MyApp: public wxApp
{
public:
    virtual bool OnInit() { return true; }
};
""".}

proc init =
  {.emit: """
  wxApp::SetInstance(new MyApp());
  int dummy = 0;
  wxEntryStart(dummy, (char**) NULL);
  wxTheApp->OnInit();
  """.}

init()

proc runMainLoop*() =
  {.emit: """
  wxTheApp->OnRun();
  wxTheApp->OnExit();
  wxEntryCleanup();
  """.}
