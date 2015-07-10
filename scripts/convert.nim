
import os, strutils

const whatif = false

proc exec(cmd: string) =
  when whatif:
    echo cmd
  else:
    if os.execShellCmd(cmd) != 0:
      echo "FAILURE ", cmd
    else:
      echo "SUCCESS ", cmd

when not declared(os.tailDir):
  proc tailDir(path: string): string =
    var q = 1
    if len(path) >= 1 and path[len(path)-1] in {DirSep, AltSep}: q = 2
    for i in 0..len(path)-q:
      if path[i] in {DirSep, AltSep}:
        return substr(path, i+1)
    result = ""

proc main(dir: string; rec: bool) =
  for kind, file in walkDir(dir):
    case kind
    of pcDir:
      if rec: main(file, rec)
    of pcFile:
      if file.endswith(".h"):
        exec "c2nim headers/wx.c2nim " & file &
             " --out:private" / file.tailDir.changeFileExt("nim")
    else: discard

main("headers", true)
