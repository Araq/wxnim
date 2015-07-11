



type 
  WxRichTextXMLHelper* {.importcpp: "wxRichTextXMLHelper", header: wxh.} = object of WxObject
    mFileEncoding* {.importc: "m_fileEncoding".}: WxString
    mFlags* {.importc: "m_flags".}: cint


proc constructwxRichTextXMLHelper*(): WxRichTextXMLHelper {.cdecl, constructor, 
    importcpp: "wxRichTextXMLHelper(@)", header: wxh.}
proc constructwxRichTextXMLHelper*(enc: WxString): WxRichTextXMLHelper {.cdecl, 
    constructor, importcpp: "wxRichTextXMLHelper(@)", header: wxh.}
proc destroywxRichTextXMLHelper*(this: var WxRichTextXMLHelper) {.cdecl, 
    importcpp: "#.~wxRichTextXMLHelper()", header: wxh.}
proc init*(this: var WxRichTextXMLHelper) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc setupForSaving*(this: var WxRichTextXMLHelper; enc: WxString) {.cdecl, 
    importcpp: "SetupForSaving", header: wxh.}
proc clear*(this: var WxRichTextXMLHelper) {.cdecl, importcpp: "Clear", 
    header: wxh.}
proc setFileEncoding*(this: var WxRichTextXMLHelper; encoding: WxString) {.
    cdecl, importcpp: "SetFileEncoding", header: wxh.}
proc getFileEncoding*(this: WxRichTextXMLHelper): WxString {.noSideEffect, 
    cdecl, importcpp: "GetFileEncoding", header: wxh.}
proc colourToHexString*(col: WxColour): WxString {.cdecl, 
    importcpp: "wxRichTextXMLHelper::ColourToHexString(@)", header: wxh.}
proc hexStringToColour*(hex: WxString): WxColour {.cdecl, 
    importcpp: "wxRichTextXMLHelper::HexStringToColour(@)", header: wxh.}
proc hasParam*(node: ptr WxXmlNode; param: WxString): bool {.cdecl, 
    importcpp: "wxRichTextXMLHelper::HasParam(@)", header: wxh.}
proc getParamNode*(node: ptr WxXmlNode; param: WxString): ptr WxXmlNode {.cdecl, 
    importcpp: "wxRichTextXMLHelper::GetParamNode(@)", header: wxh.}
proc getNodeContent*(node: ptr WxXmlNode): WxString {.cdecl, 
    importcpp: "wxRichTextXMLHelper::GetNodeContent(@)", header: wxh.}
proc getParamValue*(node: ptr WxXmlNode; param: WxString): WxString {.cdecl, 
    importcpp: "wxRichTextXMLHelper::GetParamValue(@)", header: wxh.}
proc getText*(node: ptr WxXmlNode; param: WxString = wxEmptyString): WxString {.
    cdecl, importcpp: "wxRichTextXMLHelper::GetText(@)", header: wxh.}
proc findNode*(node: ptr WxXmlNode; name: WxString): ptr WxXmlNode {.cdecl, 
    importcpp: "wxRichTextXMLHelper::FindNode(@)", header: wxh.}
proc attributeToXML*(str: WxString): WxString {.cdecl, 
    importcpp: "wxRichTextXMLHelper::AttributeToXML(@)", header: wxh.}
proc richTextFixFaceName*(facename: var WxString): bool {.cdecl, 
    importcpp: "wxRichTextXMLHelper::RichTextFixFaceName(@)", header: wxh.}
proc colourStringToLong*(colStr: WxString): clong {.cdecl, 
    importcpp: "wxRichTextXMLHelper::ColourStringToLong(@)", header: wxh.}
proc parseDimension*(dimStr: WxString): WxTextAttrDimension {.cdecl, 
    importcpp: "wxRichTextXMLHelper::ParseDimension(@)", header: wxh.}
proc makeStringFromProperty*(this: var WxRichTextXMLHelper; `var`: WxVariant): WxString {.
    cdecl, importcpp: "MakeStringFromProperty", header: wxh.}
proc makePropertyFromString*(this: var WxRichTextXMLHelper; name: WxString; 
                             value: WxString; `type`: WxString): WxVariant {.
    cdecl, importcpp: "MakePropertyFromString", header: wxh.}
proc importProperties*(this: var WxRichTextXMLHelper; 
                       properties: var WxRichTextProperties; node: ptr WxXmlNode): bool {.
    cdecl, importcpp: "ImportProperties", header: wxh.}
proc importStyle*(this: var WxRichTextXMLHelper; attr: var WxRichTextAttr; 
                  node: ptr WxXmlNode; isPara: bool = false): bool {.cdecl, 
    importcpp: "ImportStyle", header: wxh.}
proc importStyleDefinition*(this: var WxRichTextXMLHelper; 
                            sheet: ptr WxRichTextStyleSheet; node: ptr WxXmlNode): bool {.
    cdecl, importcpp: "ImportStyleDefinition", header: wxh.}
proc getFlags*(this: WxRichTextXMLHelper): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc setFlags*(this: var WxRichTextXMLHelper; flags: cint) {.cdecl, 
    importcpp: "SetFlags", header: wxh.}

type 
  WxXmlNode* {.importcpp: "wxXmlNode", header: wxh.} = object 
  

discard "forward decl of wxXmlDocument"
type 
  WxRichTextXMLHandler* {.importcpp: "wxRichTextXMLHandler", header: wxh.} = object of WxRichTextFileHandler
  

proc constructwxRichTextXMLHandler*(name: WxString = "XML"; 
                                    ext: WxString = "xml"; 
                                    `type` = wxRICHTEXT_TYPE_XML): WxRichTextXMLHandler {.
    cdecl, constructor, importcpp: "wxRichTextXMLHandler(@)", header: wxh.}
proc init*(this: var WxRichTextXMLHandler) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createObjectForXMLName*(this: WxRichTextXMLHandler; 
                             parent: ptr WxRichTextObject; name: WxString): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "CreateObjectForXMLName", header: wxh.}
proc canSave*(this: WxRichTextXMLHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanSave", header: wxh.}
proc canLoad*(this: WxRichTextXMLHandler): bool {.noSideEffect, cdecl, 
    importcpp: "CanLoad", header: wxh.}
proc getHelper*(this: var WxRichTextXMLHandler): var WxRichTextXMLHelper {.
    cdecl, importcpp: "GetHelper", header: wxh.}
proc registerNodeName*(nodeName: WxString; className: WxString) {.cdecl, 
    importcpp: "wxRichTextXMLHandler::RegisterNodeName(@)", header: wxh.}

