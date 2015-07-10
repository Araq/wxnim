
import os, strutils

proc exec(cmd: string) =
  if os.execShellCmd(cmd) != 0:
    echo "FAILURE ", cmd
  else:
    echo "SUCCESS ", cmd

proc main(dir: string; rec: bool) =
  for kind, file in walkDir(dir):
    case kind
    of pcDir:
      if rec: main(file, rec)
    of pcFile:
      if file.endswith(".h"):
        exec "c2nim headers/wx.c2nim headers/$1.h --out:private/$1.nim" %
          file.splitFile.name
    else: discard

main("headers", false)
