



type 
  NativeFormat* = cushort
  WxDataFormat* {.importcpp: "wxDataFormat", header: wxh.} = object 
  

proc constructwxDataFormat*(format: NativeFormat = NativeFormat(wxDF_INVALID)): WxDataFormat {.
    cdecl, constructor, importcpp: "wxDataFormat(@)", header: wxh.}
proc constructwxDataFormat*(format: WxString): WxDataFormat {.cdecl, 
    constructor, importcpp: "wxDataFormat(@)", header: wxh.}
proc constructwxDataFormat*(format: cstring): WxDataFormat {.cdecl, constructor, 
    importcpp: "wxDataFormat(@)", header: wxh.}
proc constructwxDataFormat*(format: WxCStrData): WxDataFormat {.cdecl, 
    constructor, importcpp: "wxDataFormat(@)", header: wxh.}
proc `==`*(this: WxDataFormat; format: WxDataFormatId): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc `==`*(this: WxDataFormat; format: WxDataFormat): bool {.noSideEffect, 
    cdecl, importcpp: "(# == #)", header: wxh.}
proc getFormatId*(this: WxDataFormat): NativeFormat {.noSideEffect, cdecl, 
    importcpp: "GetFormatId", header: wxh.}
proc setType*(this: var WxDataFormat; format: NativeFormat) {.cdecl, 
    importcpp: "SetType", header: wxh.}
proc getType*(this: WxDataFormat): NativeFormat {.noSideEffect, cdecl, 
    importcpp: "GetType", header: wxh.}
proc getId*(this: WxDataFormat): WxString {.noSideEffect, cdecl, 
    importcpp: "GetId", header: wxh.}
proc setId*(this: var WxDataFormat; format: WxString) {.cdecl, 
    importcpp: "SetId", header: wxh.}
proc isStandard*(this: WxDataFormat): bool {.noSideEffect, cdecl, 
    importcpp: "IsStandard", header: wxh.}

var wxFormatInvalid* {.importcpp: "wxFormatInvalid", header: wxh.}: WxDataFormat


type 
  WxDataObjectBase* {.importcpp: "wxDataObjectBase", header: wxh, inheritable.} = object 
  
  Direction* {.size: sizeof(cint), pure, 
               importcpp: "wxDataObjectBase::Direction", header: wxh.} = enum 
    Get = 0x00000001, Set = 0x00000002, Both = 0x00000003


proc destroywxDataObjectBase*(this: var WxDataObjectBase) {.cdecl, 
    importcpp: "#.~wxDataObjectBase()", header: wxh.}
proc getPreferredFormat*(this: WxDataObjectBase; dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: wxh.}
proc getFormatCount*(this: WxDataObjectBase; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: wxh.}
proc getAllFormats*(this: WxDataObjectBase; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: wxh.}
proc getDataSize*(this: WxDataObjectBase; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxDataObjectBase; format: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxDataObjectBase; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                    header: wxh.}
proc isSupported*(this: WxDataObjectBase; format: WxDataFormat; 
                  dir: Direction = Direction.Get): bool {.noSideEffect, cdecl, 
    importcpp: "IsSupported", header: wxh.}

type 
  WxDataObject* {.importcpp: "wxDataObject", header: wxh.} = object of WxDataObjectBase
  

proc constructwxDataObject*(): WxDataObject {.cdecl, constructor, 
    importcpp: "wxDataObject(@)", header: wxh.}
proc destroywxDataObject*(this: var WxDataObject) {.cdecl, 
    importcpp: "#.~wxDataObject()", header: wxh.}
proc setAutoDelete*(this: var WxDataObject) {.cdecl, importcpp: "SetAutoDelete", 
    header: wxh.}
proc isSupportedFormat*(this: WxDataObject; format: WxDataFormat): bool {.
    noSideEffect, cdecl, importcpp: "IsSupportedFormat", header: wxh.}
proc needsVerbatimData*(this: WxDataObject; format: WxDataFormat): bool {.
    noSideEffect, cdecl, importcpp: "NeedsVerbatimData", header: wxh.}
proc getSizeFromBuffer*(this: var WxDataObject; buffer: pointer; 
                        size: ptr csize; format: WxDataFormat): pointer {.cdecl, 
    importcpp: "GetSizeFromBuffer", header: wxh.}
proc setSizeInBuffer*(this: var WxDataObject; buffer: pointer; size: csize; 
                      format: WxDataFormat): pointer {.discardable, cdecl, 
    importcpp: "SetSizeInBuffer", header: wxh.}
proc getBufferOffset*(this: var WxDataObject; format: WxDataFormat): csize {.
    cdecl, importcpp: "GetBufferOffset", header: wxh.}

type 
  WxDataObjectSimple* {.importcpp: "wxDataObjectSimple", header: wxh.} = object of WxDataObject
  

proc constructwxDataObjectSimple*(format: WxDataFormat = wxFormatInvalid): WxDataObjectSimple {.
    cdecl, constructor, importcpp: "wxDataObjectSimple(@)", header: wxh.}
proc getFormat*(this: WxDataObjectSimple): WxDataFormat {.noSideEffect, cdecl, 
    importcpp: "GetFormat", header: wxh.}
proc setFormat*(this: var WxDataObjectSimple; format: WxDataFormat) {.cdecl, 
    importcpp: "SetFormat", header: wxh.}
proc getDataSize*(this: WxDataObjectSimple): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxDataObjectSimple; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxDataObjectSimple; len: csize; buf: pointer): bool {.
    discardable, cdecl, importcpp: "SetData", header: wxh.}
proc getPreferredFormat*(this: WxDataObjectSimple; 
                         dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: wxh.}
proc getFormatCount*(this: WxDataObjectSimple; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: wxh.}
proc getAllFormats*(this: WxDataObjectSimple; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: wxh.}
proc getDataSize*(this: WxDataObjectSimple; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxDataObjectSimple; format: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxDataObjectSimple; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                    header: wxh.}

type 
  WxDataObjectComposite* {.importcpp: "wxDataObjectComposite", header: wxh.} = object of WxDataObject
  

proc constructwxDataObjectComposite*(): WxDataObjectComposite {.cdecl, 
    constructor, importcpp: "wxDataObjectComposite(@)", header: wxh.}
proc destroywxDataObjectComposite*(this: var WxDataObjectComposite) {.cdecl, 
    importcpp: "#.~wxDataObjectComposite()", header: wxh.}
proc add*(this: var WxDataObjectComposite; dataObject: ptr WxDataObjectSimple; 
          preferred: bool = false) {.cdecl, importcpp: "Add", header: wxh.}
proc getReceivedFormat*(this: WxDataObjectComposite): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetReceivedFormat", header: wxh.}
proc getObject*(this: WxDataObjectComposite; format: WxDataFormat; 
                dir: Direction = Direction.Get): ptr WxDataObjectSimple {.
    noSideEffect, cdecl, importcpp: "GetObject", header: wxh.}
proc getPreferredFormat*(this: WxDataObjectComposite; 
                         dir: Direction = Direction.Get): WxDataFormat {.
    noSideEffect, cdecl, importcpp: "GetPreferredFormat", header: wxh.}
proc getFormatCount*(this: WxDataObjectComposite; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: wxh.}
proc getAllFormats*(this: WxDataObjectComposite; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: wxh.}
proc getDataSize*(this: WxDataObjectComposite; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxDataObjectComposite; format: WxDataFormat; 
                  buf: pointer): bool {.noSideEffect, cdecl, 
                                        importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxDataObjectComposite; format: WxDataFormat; len: csize; 
              buf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                    header: wxh.}

type 
  WxHTMLDataObject* {.importcpp: "wxHTMLDataObject", header: wxh.} = object of WxDataObjectSimple
  

proc constructwxHTMLDataObject*(html: WxString = wxEmptyString): WxHTMLDataObject {.
    cdecl, constructor, importcpp: "wxHTMLDataObject(@)", header: wxh.}
proc getLength*(this: WxHTMLDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetLength", header: wxh.}
proc getHTML*(this: WxHTMLDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHTML", header: wxh.}
proc setHTML*(this: var WxHTMLDataObject; html: WxString) {.cdecl, 
    importcpp: "SetHTML", header: wxh.}
proc getDataSize*(this: WxHTMLDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxHTMLDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxHTMLDataObject; len: csize; buf: pointer): bool {.
    discardable, cdecl, importcpp: "SetData", header: wxh.}
proc getDataSize*(this: WxHTMLDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxHTMLDataObject; a3: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxHTMLDataObject; a3: WxDataFormat; len: csize; 
              buf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                    header: wxh.}
type 
  WxTextDataObject* {.importcpp: "wxTextDataObject", header: wxh.} = object of WxDataObjectSimple
  

proc constructwxTextDataObject*(text: WxString = wxEmptyString): WxTextDataObject {.
    cdecl, constructor, importcpp: "wxTextDataObject(@)", header: wxh.}
proc getTextLength*(this: WxTextDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetTextLength", header: wxh.}
proc getText*(this: WxTextDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetText", header: wxh.}
proc setText*(this: var WxTextDataObject; text: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc getFormatCount*(this: WxTextDataObject; dir: Direction = Direction.Get): csize {.
    noSideEffect, cdecl, importcpp: "GetFormatCount", header: wxh.}
proc getAllFormats*(this: WxTextDataObject; formats: ptr WxDataFormat; 
                    dir: Direction = Direction.Get) {.noSideEffect, cdecl, 
    importcpp: "GetAllFormats", header: wxh.}
proc getDataSize*(this: WxTextDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxTextDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxTextDataObject; len: csize; buf: pointer): bool {.
    discardable, cdecl, importcpp: "SetData", header: wxh.}
proc getDataSize*(this: WxTextDataObject; format: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxTextDataObject; format: WxDataFormat; pBuf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxTextDataObject; format: WxDataFormat; nLen: csize; 
              pBuf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                     header: wxh.}

type 
  WxBitmapDataObjectBase* {.importcpp: "wxBitmapDataObjectBase", header: wxh.} = object of WxDataObjectSimple
  

proc constructwxBitmapDataObjectBase*(bitmap: WxBitmap = wxNullBitmap): WxBitmapDataObjectBase {.
    cdecl, constructor, importcpp: "wxBitmapDataObjectBase(@)", header: wxh.}
proc getBitmap*(this: WxBitmapDataObjectBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmap", header: wxh.}
proc setBitmap*(this: var WxBitmapDataObjectBase; bitmap: WxBitmap) {.cdecl, 
    importcpp: "SetBitmap", header: wxh.}

type 
  WxFileDataObjectBase* {.importcpp: "wxFileDataObjectBase", header: wxh.} = object of WxDataObjectSimple
  

proc constructwxFileDataObjectBase*(): WxFileDataObjectBase {.cdecl, 
    constructor, importcpp: "wxFileDataObjectBase(@)", header: wxh.}
proc getFilenames*(this: WxFileDataObjectBase): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetFilenames", header: wxh.}

type 
  WxCustomDataObject* {.importcpp: "wxCustomDataObject", header: wxh.} = object of WxDataObjectSimple
  

proc constructwxCustomDataObject*(format: WxDataFormat = wxFormatInvalid): WxCustomDataObject {.
    cdecl, constructor, importcpp: "wxCustomDataObject(@)", header: wxh.}
proc destroywxCustomDataObject*(this: var WxCustomDataObject) {.cdecl, 
    importcpp: "#.~wxCustomDataObject()", header: wxh.}
proc takeData*(this: var WxCustomDataObject; size: csize; data: pointer) {.
    cdecl, importcpp: "TakeData", header: wxh.}
proc alloc*(this: var WxCustomDataObject; size: csize): pointer {.cdecl, 
    importcpp: "Alloc", header: wxh.}
proc free*(this: var WxCustomDataObject) {.cdecl, importcpp: "Free", header: wxh.}
proc getSize*(this: WxCustomDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc getData*(this: WxCustomDataObject): pointer {.noSideEffect, cdecl, 
    importcpp: "GetData", header: wxh.}
proc getDataSize*(this: WxCustomDataObject): csize {.noSideEffect, cdecl, 
    importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxCustomDataObject; buf: pointer): bool {.noSideEffect, 
    cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxCustomDataObject; size: csize; buf: pointer): bool {.
    discardable, cdecl, importcpp: "SetData", header: wxh.}
proc getDataSize*(this: WxCustomDataObject; a3: WxDataFormat): csize {.
    noSideEffect, cdecl, importcpp: "GetDataSize", header: wxh.}
proc getDataHere*(this: WxCustomDataObject; a3: WxDataFormat; buf: pointer): bool {.
    noSideEffect, cdecl, importcpp: "GetDataHere", header: wxh.}
proc setData*(this: var WxCustomDataObject; a3: WxDataFormat; len: csize; 
              buf: pointer): bool {.discardable, cdecl, importcpp: "SetData", 
                                    header: wxh.}

type 
  WxURLDataObject* {.importcpp: "wxURLDataObject", header: wxh.} = object of WxTextDataObject
  

proc constructwxURLDataObject*(url: WxString = wxEmptyString): WxURLDataObject {.
    cdecl, constructor, importcpp: "wxURLDataObject(@)", header: wxh.}
proc getURL*(this: WxURLDataObject): WxString {.noSideEffect, cdecl, 
    importcpp: "GetURL", header: wxh.}
proc setURL*(this: var WxURLDataObject; url: WxString) {.cdecl, 
    importcpp: "SetURL", header: wxh.}