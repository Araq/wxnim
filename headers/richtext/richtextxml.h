/////////////////////////////////////////////////////////////////////////////
// Name:        wx/richtext/richtextxml.h
// Purpose:     XML and HTML I/O for wxRichTextCtrl
// Author:      Julian Smart
// Modified by:
// Created:     2005-09-30
// Copyright:   (c) Julian Smart
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_RICHTEXTXML_H_
#define _WX_RICHTEXTXML_H_

/*!
 * Includes
 */

#include "wx/hashmap.h"
#include "wx/richtext/richtextbuffer.h"
#include "wx/richtext/richtextstyles.h"

#if wxUSE_RICHTEXT && wxUSE_XML

/*!
    @class wxRichTextXMLHelper
    A utility class to help with XML import/export, that can be used outside
    saving a buffer if needed.
 */

class WXDLLIMPEXP_RICHTEXT wxRichTextXMLHelper: public wxObject
{
public:
    wxRichTextXMLHelper() { Init(); }
    wxRichTextXMLHelper(const wxString& enc) { Init(); SetupForSaving(enc); }
    ~wxRichTextXMLHelper();

    void Init();

    void SetupForSaving(const wxString& enc);

    void Clear();

    void SetFileEncoding(const wxString& encoding) { m_fileEncoding = encoding; }
    const wxString& GetFileEncoding() const { return m_fileEncoding; }

    // Convert a colour to a 6-digit hex string
    static wxString ColourToHexString(const wxColour& col);

    // Convert 6-digit hex string to a colour
    static wxColour HexStringToColour(const wxString& hex);

    static bool HasParam(wxXmlNode* node, const wxString& param);
    static wxXmlNode *GetParamNode(wxXmlNode* node, const wxString& param);
    static wxString GetNodeContent(wxXmlNode *node);
    static wxString GetParamValue(wxXmlNode *node, const wxString& param);
    static wxString GetText(wxXmlNode *node, const wxString& param = wxEmptyString);
    static wxXmlNode* FindNode(wxXmlNode* node, const wxString& name);

    static wxString AttributeToXML(const wxString& str);

    static bool RichTextFixFaceName(wxString& facename);
    static long ColourStringToLong(const wxString& colStr);
    static wxTextAttrDimension ParseDimension(const wxString& dimStr);

    // Make a string from the given property. This can be overridden for custom variants.
    virtual wxString MakeStringFromProperty(const wxVariant& var);

    // Create a proprty from the string read from the XML file.
    virtual wxVariant MakePropertyFromString(const wxString& name, const wxString& value, const wxString& type);

    // Import properties
    virtual bool ImportProperties(wxRichTextProperties& properties, wxXmlNode* node);

    virtual bool ImportStyle(wxRichTextAttr& attr, wxXmlNode* node, bool isPara = false);
    virtual bool ImportStyleDefinition(wxRichTextStyleSheet* sheet, wxXmlNode* node);

    // Get flags, as per handler flags
    int GetFlags() const { return m_flags; }
    void SetFlags(int flags) { m_flags = flags; }
public:
    wxString    m_fileEncoding;
    int         m_flags;
};

/*!
    @class wxRichTextXMLHandler

    Implements XML loading and saving. Two methods of saving are included:
    writing directly to a text stream, and populating an wxXmlDocument
    before writing it. The former method is considerably faster, so we favour
    that one, even though the code is a little less elegant.
 */

class WXDLLIMPEXP_FWD_XML wxXmlNode {};
class WXDLLIMPEXP_FWD_XML wxXmlDocument;

class WXDLLIMPEXP_RICHTEXT wxRichTextXMLHandler: public wxRichTextFileHandler
{
    DECLARE_DYNAMIC_CLASS(wxRichTextXMLHandler)
public:
    wxRichTextXMLHandler(const wxString& name = "XML", const wxString& ext = "xml",
      auto type = wxRICHTEXT_TYPE_XML)
        : wxRichTextFileHandler(name, ext, type)
        { Init(); }

    void Init();

    /// Creates an object given an XML element name
    virtual wxRichTextObject* CreateObjectForXMLName(wxRichTextObject* parent, const wxString& name) const;

    /// Can we save using this handler?
    virtual bool CanSave() const { return true; }

    /// Can we load using this handler?
    virtual bool CanLoad() const { return true; }

    /// Returns the XML helper object, implementing functionality
    /// that can be reused elsewhere.
    wxRichTextXMLHelper& GetHelper() { return m_helper; }

// Implementation

    /**
        Call with XML node name, C++ class name so that wxRTC can read in the node.
        If you add a custom object, call this.
    */
    static void RegisterNodeName(const wxString& nodeName, const wxString& className) { sm_nodeNameToClassMap[nodeName] = className; }

protected:
    wxRichTextXMLHelper m_helper;

    static wxStringToStringHashMap sm_nodeNameToClassMap;
};

#endif
    // wxUSE_RICHTEXT && wxUSE_XML

#endif
    // _WX_RICHTEXTXML_H_
