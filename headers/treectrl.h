/////////////////////////////////////////////////////////////////////////////
// Name:        wx/treectrl.h
// Purpose:     wxTreeCtrl base header
// Author:      Karsten Ballueder
// Modified by:
// Created:
// Copyright:   (c) Karsten Ballueder
// Licence:     wxWindows licence
/////////////////////////////////////////////////////////////////////////////

#ifndef _WX_TREECTRL_H_BASE_
#define _WX_TREECTRL_H_BASE_

// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/defs.h"

#if wxUSE_TREECTRL

#include "wx/control.h"
#include "wx/treebase.h"
#include "wx/textctrl.h" // wxTextCtrl::ms_classinfo used through wxCLASSINFO macro

class WXDLLIMPEXP_FWD_CORE wxImageList;
// ----------------------------------------------------------------------------
// headers
// ----------------------------------------------------------------------------

#include "wx/defs.h"

#if wxUSE_TREECTRL

#include "wx/window.h"  // for wxClientData
#include "wx/event.h"
#include "wx/dynarray.h"
#include "wx/itemid.h"

// ----------------------------------------------------------------------------
// wxTreeItemId identifies an element of the tree. It's opaque for the
// application and the only method which can be used by user code is IsOk().
// ----------------------------------------------------------------------------

// This is a class and not a typedef because existing code may forward declare
// wxTreeItemId as a class and we don't want to break it without good reason.
class wxTreeItemId
{
public:
    wxTreeItemId() : wxItemId<void*>() { }
    wxTreeItemId(void* pItem) : wxItemId<void*>(pItem) { }
};

// ----------------------------------------------------------------------------
// wxTreeItemData is some (arbitrary) user class associated with some item. The
// main advantage of having this class (compared to old untyped interface) is
// that wxTreeItemData's are destroyed automatically by the tree and, as this
// class has virtual dtor, it means that the memory will be automatically
// freed. OTOH, we don't just use wxObject instead of wxTreeItemData because
// the size of this class is critical: in any real application, each tree leaf
// will have wxTreeItemData associated with it and number of leaves may be
// quite big.
//
// Because the objects of this class are deleted by the tree, they should
// always be allocated on the heap!
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxTreeItemData: public wxClientData
{
friend class WXDLLIMPEXP_FWD_CORE wxTreeCtrl;
friend class WXDLLIMPEXP_FWD_CORE wxGenericTreeCtrl;
public:
    // creation/destruction
    // --------------------
        // default ctor
    wxTreeItemData() { }

        // default copy ctor/assignment operator are ok

    // accessor: get the item associated with us
    const wxTreeItemId& GetId() const { return m_pItem; }
    void SetId(const wxTreeItemId& id) { m_pItem = id; }

protected:
    wxTreeItemId m_pItem;
};

typedef void *wxTreeItemIdValue;

//WX_DEFINE_EXPORTED_ARRAY_PTR(wxTreeItemIdValue, wxArrayTreeItemIdsBase);

// this is a wrapper around the array class defined above which allow to wok
// with values of natural wxTreeItemId type instead of using wxTreeItemIdValue
// and does it without any loss of efficiency
class WXDLLIMPEXP_CORE wxArrayTreeItemIds // : public wxArrayTreeItemIdsBase
{
public:
    void Add(const wxTreeItemId& id)
        { wxArrayTreeItemIdsBase::Add(id.m_pItem); }
    void Insert(const wxTreeItemId& id, size_t pos)
        { wxArrayTreeItemIdsBase::Insert(id.m_pItem, pos); }
    wxTreeItemId Item(size_t i) const
        { return wxTreeItemId(wxArrayTreeItemIdsBase::Item(i)); }
    wxTreeItemId operator[](size_t i) const { return Item(i); }
};

// ----------------------------------------------------------------------------
// constants
// ----------------------------------------------------------------------------

// enum for different images associated with a treectrl item
enum wxTreeItemIcon
{
    wxTreeItemIcon_Normal,              // not selected, not expanded
    wxTreeItemIcon_Selected,            //     selected, not expanded
    wxTreeItemIcon_Expanded,            // not selected,     expanded
    wxTreeItemIcon_SelectedExpanded,    //     selected,     expanded
    wxTreeItemIcon_Max
};

// special values for the 'state' parameter of wxTreeCtrl::SetItemState()
static const int wxTREE_ITEMSTATE_NONE  = -1;   // not state (no display state image)
static const int wxTREE_ITEMSTATE_NEXT  = -2;   // cycle to the next state
static const int wxTREE_ITEMSTATE_PREV  = -3;   // cycle to the previous state

// ----------------------------------------------------------------------------
// wxTreeCtrl flags
// ----------------------------------------------------------------------------

#define wxTR_NO_BUTTONS              0x0000     // for convenience
#define wxTR_HAS_BUTTONS             0x0001     // draw collapsed/expanded btns
#define wxTR_NO_LINES                0x0004     // don't draw lines at all
#define wxTR_LINES_AT_ROOT           0x0008     // connect top-level nodes
#define wxTR_TWIST_BUTTONS           0x0010     // still used by wxTreeListCtrl

#define wxTR_SINGLE                  0x0000     // for convenience
#define wxTR_MULTIPLE                0x0020     // can select multiple items

#define wxTR_HAS_VARIABLE_ROW_HEIGHT 0x0080     // what it says

#define wxTR_EDIT_LABELS             0x0200     // can edit item labels
#define wxTR_ROW_LINES               0x0400     // put border around items
#define wxTR_HIDE_ROOT               0x0800     // don't display root node

#define wxTR_FULL_ROW_HIGHLIGHT      0x2000     // highlight full horz space

// make the default control appearance look more native-like depending on the
// platform
#if defined(__WXGTK20__)
    #define wxTR_DEFAULT_STYLE       (wxTR_HAS_BUTTONS | wxTR_NO_LINES)
#elif defined(__WXMAC__)
    #define wxTR_DEFAULT_STYLE \
        (wxTR_HAS_BUTTONS | wxTR_NO_LINES | wxTR_FULL_ROW_HIGHLIGHT)
#else
    #define wxTR_DEFAULT_STYLE       (wxTR_HAS_BUTTONS | wxTR_LINES_AT_ROOT)
#endif

// values for the `flags' parameter of wxTreeCtrl::HitTest() which determine
// where exactly the specified point is situated:

static const int wxTREE_HITTEST_ABOVE            = 0x0001;
static const int wxTREE_HITTEST_BELOW            = 0x0002;
static const int wxTREE_HITTEST_NOWHERE          = 0x0004;
    // on the button associated with an item.
static const int wxTREE_HITTEST_ONITEMBUTTON     = 0x0008;
    // on the bitmap associated with an item.
static const int wxTREE_HITTEST_ONITEMICON       = 0x0010;
    // on the indent associated with an item.
static const int wxTREE_HITTEST_ONITEMINDENT     = 0x0020;
    // on the label (string) associated with an item.
static const int wxTREE_HITTEST_ONITEMLABEL      = 0x0040;
    // on the right of the label associated with an item.
static const int wxTREE_HITTEST_ONITEMRIGHT      = 0x0080;
    // on the label (string) associated with an item.
static const int wxTREE_HITTEST_ONITEMSTATEICON  = 0x0100;
    // on the left of the wxTreeCtrl.
static const int wxTREE_HITTEST_TOLEFT           = 0x0200;
    // on the right of the wxTreeCtrl.
static const int wxTREE_HITTEST_TORIGHT          = 0x0400;
    // on the upper part (first half) of the item.
static const int wxTREE_HITTEST_ONITEMUPPERPART  = 0x0800;
    // on the lower part (second half) of the item.
static const int wxTREE_HITTEST_ONITEMLOWERPART  = 0x1000;

    // anywhere on the item
static const int wxTREE_HITTEST_ONITEM  = wxTREE_HITTEST_ONITEMICON |
                                          wxTREE_HITTEST_ONITEMLABEL;

// ----------------------------------------------------------------------------
// wxTreeItemAttr: a structure containing the visual attributes of an item
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxTreeItemAttr
{
public:
    // ctors
    wxTreeItemAttr() { }
    wxTreeItemAttr(const wxColour& colText,
                   const wxColour& colBack,
                   const wxFont& font)
        : m_colText(colText), m_colBack(colBack), m_font(font) { }

    // setters
    void SetTextColour(const wxColour& colText) { m_colText = colText; }
    void SetBackgroundColour(const wxColour& colBack) { m_colBack = colBack; }
    void SetFont(const wxFont& font) { m_font = font; }

    // accessors
    bool HasTextColour() const { return m_colText.IsOk(); }
    bool HasBackgroundColour() const { return m_colBack.IsOk(); }
    bool HasFont() const { return m_font.IsOk(); }

    const wxColour& GetTextColour() const { return m_colText; }
    const wxColour& GetBackgroundColour() const { return m_colBack; }
    const wxFont& GetFont() const { return m_font; }
};

// ----------------------------------------------------------------------------
// wxTreeEvent is a special class for all events associated with tree controls
//
// NB: note that not all accessors make sense for all events, see the event
//     descriptions below
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_FWD_CORE wxTreeCtrlBase;

class WXDLLIMPEXP_CORE wxTreeEvent : public wxNotifyEvent
{
public:
    wxTreeEvent(wxEventType commandType = wxEVT_NULL, int id = 0);
    wxTreeEvent(wxEventType commandType,
                wxTreeCtrlBase *tree,
                const wxTreeItemId &item = constructWxTreeItemId());
    wxTreeEvent(const wxTreeEvent& event);

    virtual wxEvent *Clone() const { return new wxTreeEvent(*this); }

    // accessors
        // get the item on which the operation was performed or the newly
        // selected item for wxEVT_TREE_SEL_CHANGED/ING events
    wxTreeItemId GetItem() const { return m_item; }
    void SetItem(const wxTreeItemId& item) { m_item = item; }

        // for wxEVT_TREE_SEL_CHANGED/ING events, get the previously
        // selected item
    wxTreeItemId GetOldItem() const { return m_itemOld; }
    void SetOldItem(const wxTreeItemId& item) { m_itemOld = item; }

        // the point where the mouse was when the drag operation started (for
        // wxEVT_TREE_BEGIN_(R)DRAG events only) or click position
    wxPoint GetPoint() const { return m_pointDrag; }
    void SetPoint(const wxPoint& pt) { m_pointDrag = pt; }

        // keyboard data (for wxEVT_TREE_KEY_DOWN only)
    const wxKeyEvent& GetKeyEvent() const { return m_evtKey; }
    int GetKeyCode() const { return m_evtKey.GetKeyCode(); }
    void SetKeyEvent(const wxKeyEvent& evt) { m_evtKey = evt; }

        // label (for EVT_TREE_{BEGIN|END}_LABEL_EDIT only)
    const wxString& GetLabel() const { return m_label; }
    void SetLabel(const wxString& label) { m_label = label; }

        // edit cancel flag (for EVT_TREE_{BEGIN|END}_LABEL_EDIT only)
    bool IsEditCancelled() const { return m_editCancelled; }
    void SetEditCanceled(bool editCancelled) { m_editCancelled = editCancelled; }

        // Set the tooltip for the item (for EVT\_TREE\_ITEM\_GETTOOLTIP events)
    void SetToolTip(const wxString& toolTip) { m_label = toolTip; }
    wxString GetToolTip() { return m_label; }
};

typedef void (*wxTreeEventFunction)(wxTreeEvent&);

// ----------------------------------------------------------------------------
// tree control events and macros for handling them
// ----------------------------------------------------------------------------

wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_BEGIN_DRAG, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_BEGIN_RDRAG, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_BEGIN_LABEL_EDIT, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_END_LABEL_EDIT, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_DELETE_ITEM, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_GET_INFO, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_SET_INFO, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_EXPANDED, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_EXPANDING, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_COLLAPSED, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_COLLAPSING, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_SEL_CHANGED, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_SEL_CHANGING, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_KEY_DOWN, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_ACTIVATED, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_RIGHT_CLICK, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_MIDDLE_CLICK, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_END_DRAG, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_STATE_IMAGE_CLICK, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_GETTOOLTIP, wxTreeEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_TREE_ITEM_MENU, wxTreeEvent );

#def wxTreeEventHandler(func) \
    wxEVENT_HANDLER_CAST(wxTreeEventFunction, func)

#def wx__DECLARE_TREEEVT(evt, id, fn) \
    wx__DECLARE_EVT1(wxEVT_TREE_ ## evt, id, wxTreeEventHandler(fn))

// GetItem() returns the item being dragged, GetPoint() the mouse coords
//
// if you call event.Allow(), the drag operation will start and a
// EVT_TREE_END_DRAG event will be sent when the drag is over.
#def EVT_TREE_BEGIN_DRAG(id, fn) wx__DECLARE_TREEEVT(BEGIN_DRAG, id, fn)
#def EVT_TREE_BEGIN_RDRAG(id, fn) wx__DECLARE_TREEEVT(BEGIN_RDRAG, id, fn)

// GetItem() is the item on which the drop occurred (if any) and GetPoint() the
// current mouse coords
#def EVT_TREE_END_DRAG(id, fn) wx__DECLARE_TREEEVT(END_DRAG, id, fn)

// GetItem() returns the itme whose label is being edited, GetLabel() returns
// the current item label for BEGIN and the would be new one for END.
//
// Vetoing BEGIN event means that label editing won't happen at all,
// vetoing END means that the new value is discarded and the old one kept
#def EVT_TREE_BEGIN_LABEL_EDIT(id, fn) wx__DECLARE_TREEEVT(BEGIN_LABEL_EDIT, id, fn)
#def EVT_TREE_END_LABEL_EDIT(id, fn) wx__DECLARE_TREEEVT(END_LABEL_EDIT, id, fn)

// provide/update information about GetItem() item
#def EVT_TREE_GET_INFO(id, fn) wx__DECLARE_TREEEVT(GET_INFO, id, fn)
#def EVT_TREE_SET_INFO(id, fn) wx__DECLARE_TREEEVT(SET_INFO, id, fn)

// GetItem() is the item being expanded/collapsed, the "ING" versions can use
#def EVT_TREE_ITEM_EXPANDED(id, fn) wx__DECLARE_TREEEVT(ITEM_EXPANDED, id, fn)
#def EVT_TREE_ITEM_EXPANDING(id, fn) wx__DECLARE_TREEEVT(ITEM_EXPANDING, id, fn)
#def EVT_TREE_ITEM_COLLAPSED(id, fn) wx__DECLARE_TREEEVT(ITEM_COLLAPSED, id, fn)
#def EVT_TREE_ITEM_COLLAPSING(id, fn) wx__DECLARE_TREEEVT(ITEM_COLLAPSING, id, fn)

// GetOldItem() is the item which had the selection previously, GetItem() is
// the item which acquires selection
#def EVT_TREE_SEL_CHANGED(id, fn) wx__DECLARE_TREEEVT(SEL_CHANGED, id, fn)
#def EVT_TREE_SEL_CHANGING(id, fn) wx__DECLARE_TREEEVT(SEL_CHANGING, id, fn)

// GetKeyCode() returns the key code
// NB: this is the only message for which GetItem() is invalid (you may get the
//     item from GetSelection())
#def EVT_TREE_KEY_DOWN(id, fn) wx__DECLARE_TREEEVT(KEY_DOWN, id, fn)

// GetItem() returns the item being deleted, the associated data (if any) will
// be deleted just after the return of this event handler (if any)
#def EVT_TREE_DELETE_ITEM(id, fn) wx__DECLARE_TREEEVT(DELETE_ITEM, id, fn)

// GetItem() returns the item that was activated (double click, enter, space)
#def EVT_TREE_ITEM_ACTIVATED(id, fn) wx__DECLARE_TREEEVT(ITEM_ACTIVATED, id, fn)

// GetItem() returns the item for which the context menu shall be shown
#def EVT_TREE_ITEM_MENU(id, fn) wx__DECLARE_TREEEVT(ITEM_MENU, id, fn)

// GetItem() returns the item that was clicked on
#def EVT_TREE_ITEM_RIGHT_CLICK(id, fn) wx__DECLARE_TREEEVT(ITEM_RIGHT_CLICK, id, fn)
#def EVT_TREE_ITEM_MIDDLE_CLICK(id, fn) wx__DECLARE_TREEEVT(ITEM_MIDDLE_CLICK, id, fn)

// GetItem() returns the item whose state image was clicked on
#def EVT_TREE_STATE_IMAGE_CLICK(id, fn) wx__DECLARE_TREEEVT(STATE_IMAGE_CLICK, id, fn)

// GetItem() is the item for which the tooltip is being requested
#def EVT_TREE_ITEM_GETTOOLTIP(id, fn) wx__DECLARE_TREEEVT(ITEM_GETTOOLTIP, id, fn)

// ----------------------------------------------------------------------------
// wxTreeCtrlBase
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxTreeCtrlBase : public wxControl
{
public:
    wxTreeCtrlBase();
    virtual ~wxTreeCtrlBase();

    // accessors
    // ---------

        // get the total number of items in the control
    virtual unsigned int GetCount() const = 0;

        // indent is the number of pixels the children are indented relative to
        // the parents position. SetIndent() also redraws the control
        // immediately.
    virtual unsigned int GetIndent() const = 0;
    virtual void SetIndent(unsigned int indent) = 0;

        // spacing is the number of pixels between the start and the Text
        // (has no effect under wxMSW)
    unsigned int GetSpacing() const { return m_spacing; }
    void SetSpacing(unsigned int spacing) { m_spacing = spacing; }

        // image list: these functions allow to associate an image list with
        // the control and retrieve it. Note that the control does _not_ delete
        // the associated image list when it's deleted in order to allow image
        // lists to be shared between different controls.
        //
        // The normal image list is for the icons which correspond to the
        // normal tree item state (whether it is selected or not).
        // Additionally, the application might choose to show a state icon
        // which corresponds to an app-defined item state (for example,
        // checked/unchecked) which are taken from the state image list.
    wxImageList *GetImageList() const { return m_imageListNormal; }
    wxImageList *GetStateImageList() const { return m_imageListState; }

    virtual void SetImageList(wxImageList *imageList) = 0;
    virtual void SetStateImageList(wxImageList *imageList) = 0;
    void AssignImageList(wxImageList *imageList)
    {
        SetImageList(imageList);
        m_ownsImageListNormal = true;
    }
    void AssignStateImageList(wxImageList *imageList)
    {
        SetStateImageList(imageList);
        m_ownsImageListState = true;
    }


    // Functions to work with tree ctrl items. Unfortunately, they can _not_ be
    // member functions of wxTreeItem because they must know the tree the item
    // belongs to for Windows implementation and storing the pointer to
    // wxTreeCtrl in each wxTreeItem is just too much waste.

    // accessors
    // ---------

        // retrieve items label
    virtual wxString GetItemText(const wxTreeItemId& item) const = 0;
        // get one of the images associated with the item (normal by default)
    virtual int GetItemImage(const wxTreeItemId& item,
                     wxTreeItemIcon which = wxTreeItemIcon_Normal) const = 0;
        // get the data associated with the item
    virtual wxTreeItemData *GetItemData(const wxTreeItemId& item) const = 0;

        // get the item's text colour
    virtual wxColour GetItemTextColour(const wxTreeItemId& item) const = 0;

        // get the item's background colour
    virtual wxColour GetItemBackgroundColour(const wxTreeItemId& item) const = 0;

        // get the item's font
    virtual wxFont GetItemFont(const wxTreeItemId& item) const = 0;

        // get the items state
    int GetItemState(const wxTreeItemId& item) const
    {
        return DoGetItemState(item);
    }

    // modifiers
    // ---------

        // set items label
    virtual void SetItemText(const wxTreeItemId& item, const wxString& text) = 0;
        // set one of the images associated with the item (normal by default)
    virtual void SetItemImage(const wxTreeItemId& item,
                              int image,
                              wxTreeItemIcon which = wxTreeItemIcon_Normal) = 0;
        // associate some data with the item
    virtual void SetItemData(const wxTreeItemId& item, wxTreeItemData *data) = 0;

        // force appearance of [+] button near the item. This is useful to
        // allow the user to expand the items which don't have any children now
        // - but instead add them only when needed, thus minimizing memory
        // usage and loading time.
    virtual void SetItemHasChildren(const wxTreeItemId& item,
                                    bool has = true) = 0;

        // the item will be shown in bold
    virtual void SetItemBold(const wxTreeItemId& item, bool bold = true) = 0;

        // the item will be shown with a drop highlight
    virtual void SetItemDropHighlight(const wxTreeItemId& item,
                                      bool highlight = true) = 0;

        // set the items text colour
    virtual void SetItemTextColour(const wxTreeItemId& item,
                                   const wxColour& col) = 0;

        // set the items background colour
    virtual void SetItemBackgroundColour(const wxTreeItemId& item,
                                         const wxColour& col) = 0;

        // set the items font (should be of the same height for all items)
    virtual void SetItemFont(const wxTreeItemId& item,
                             const wxFont& font) = 0;

        // set the items state (special state values: wxTREE_ITEMSTATE_NONE/NEXT/PREV)
    void SetItemState(const wxTreeItemId& item, int state);

    // item status inquiries
    // ---------------------

        // is the item visible (it might be outside the view or not expanded)?
    virtual bool IsVisible(const wxTreeItemId& item) const = 0;
        // does the item has any children?
    virtual bool ItemHasChildren(const wxTreeItemId& item) const = 0;
        // same as above
    bool HasChildren(const wxTreeItemId& item) const
      { return ItemHasChildren(item); }
        // is the item expanded (only makes sense if HasChildren())?
    virtual bool IsExpanded(const wxTreeItemId& item) const = 0;
        // is this item currently selected (the same as has focus)?
    virtual bool IsSelected(const wxTreeItemId& item) const = 0;
        // is item text in bold font?
    virtual bool IsBold(const wxTreeItemId& item) const = 0;
        // is the control empty?
    bool IsEmpty() const;


    // number of children
    // ------------------

        // if 'recursively' is false, only immediate children count, otherwise
        // the returned number is the number of all items in this branch
    virtual size_t GetChildrenCount(const wxTreeItemId& item,
                                    bool recursively = true) const = 0;

    // navigation
    // ----------

    // wxTreeItemId.IsOk() will return false if there is no such item

        // get the root tree item
    virtual wxTreeItemId GetRootItem() const = 0;

        // get the item currently selected (may return NULL if no selection)
    virtual wxTreeItemId GetSelection() const = 0;

        // get the items currently selected, return the number of such item
        //
        // NB: this operation is expensive and can take a long time for a
        //     control with a lot of items (~ O(number of items)).
    virtual size_t GetSelections(wxArrayTreeItemIds& selections) const = 0;

        // get the last item to be clicked when the control has wxTR_MULTIPLE
        // equivalent to GetSelection() if not wxTR_MULTIPLE
    virtual wxTreeItemId GetFocusedItem() const = 0;


        // Clears the currently focused item
    virtual void ClearFocusedItem() = 0;
        // Sets the currently focused item. Item should be valid
    virtual void SetFocusedItem(const wxTreeItemId& item) = 0;


        // get the parent of this item (may return NULL if root)
    virtual wxTreeItemId GetItemParent(const wxTreeItemId& item) const = 0;

        // for this enumeration function you must pass in a "cookie" parameter
        // which is opaque for the application but is necessary for the library
        // to make these functions reentrant (i.e. allow more than one
        // enumeration on one and the same object simultaneously). Of course,
        // the "cookie" passed to GetFirstChild() and GetNextChild() should be
        // the same!

        // get the first child of this item
    virtual wxTreeItemId GetFirstChild(const wxTreeItemId& item,
                                       wxTreeItemIdValue& cookie) const = 0;
        // get the next child
    virtual wxTreeItemId GetNextChild(const wxTreeItemId& item,
                                      wxTreeItemIdValue& cookie) const = 0;
        // get the last child of this item - this method doesn't use cookies
    virtual wxTreeItemId GetLastChild(const wxTreeItemId& item) const = 0;

        // get the next sibling of this item
    virtual wxTreeItemId GetNextSibling(const wxTreeItemId& item) const = 0;
        // get the previous sibling
    virtual wxTreeItemId GetPrevSibling(const wxTreeItemId& item) const = 0;

        // get first visible item
    virtual wxTreeItemId GetFirstVisibleItem() const = 0;
        // get the next visible item: item must be visible itself!
        // see IsVisible() and wxTreeCtrl::GetFirstVisibleItem()
    virtual wxTreeItemId GetNextVisible(const wxTreeItemId& item) const = 0;
        // get the previous visible item: item must be visible itself!
    virtual wxTreeItemId GetPrevVisible(const wxTreeItemId& item) const = 0;

    // operations
    // ----------

        // add the root node to the tree
    virtual wxTreeItemId AddRoot(const wxString& text,
                                 int image = -1, int selImage = -1,
                                 wxTreeItemData *data = NULL) = 0;

        // insert a new item in as the first child of the parent
    wxTreeItemId PrependItem(const wxTreeItemId& parent,
                             const wxString& text,
                             int image = -1, int selImage = -1,
                             wxTreeItemData *data = NULL)
    {
        return DoInsertItem(parent, 0u, text, image, selImage, data);
    }

        // insert a new item after a given one
    wxTreeItemId InsertItem(const wxTreeItemId& parent,
                            const wxTreeItemId& idPrevious,
                            const wxString& text,
                            int image = -1, int selImage = -1,
                            wxTreeItemData *data = NULL)
    {
        return DoInsertAfter(parent, idPrevious, text, image, selImage, data);
    }

        // insert a new item before the one with the given index
    wxTreeItemId InsertItem(const wxTreeItemId& parent,
                            size_t pos,
                            const wxString& text,
                            int image = -1, int selImage = -1,
                            wxTreeItemData *data = NULL)
    {
        return DoInsertItem(parent, pos, text, image, selImage, data);
    }

        // insert a new item in as the last child of the parent
    wxTreeItemId AppendItem(const wxTreeItemId& parent,
                            const wxString& text,
                            int image = -1, int selImage = -1,
                            wxTreeItemData *data = NULL)
    {
        return DoInsertItem(parent, (size_t)-1, text, image, selImage, data);
    }

        // delete this item and associated data if any
    virtual void Delete(const wxTreeItemId& item) = 0;
        // delete all children (but don't delete the item itself)
        // NB: this won't send wxEVT_TREE_ITEM_DELETED events
    virtual void DeleteChildren(const wxTreeItemId& item) = 0;
        // delete all items from the tree
        // NB: this won't send wxEVT_TREE_ITEM_DELETED events
    virtual void DeleteAllItems() = 0;

        // expand this item
    virtual void Expand(const wxTreeItemId& item) = 0;
        // expand the item and all its children recursively
    void ExpandAllChildren(const wxTreeItemId& item);
        // expand all items
    void ExpandAll();
        // collapse the item without removing its children
    virtual void Collapse(const wxTreeItemId& item) = 0;
        // collapse the item and all its children
    void CollapseAllChildren(const wxTreeItemId& item);
        // collapse all items
    void CollapseAll();
        // collapse the item and remove all children
    virtual void CollapseAndReset(const wxTreeItemId& item) = 0;
        // toggles the current state
    virtual void Toggle(const wxTreeItemId& item) = 0;

        // remove the selection from currently selected item (if any)
    virtual void Unselect() = 0;
        // unselect all items (only makes sense for multiple selection control)
    virtual void UnselectAll() = 0;
        // select this item
    virtual void SelectItem(const wxTreeItemId& item, bool select = true) = 0;
        // selects all (direct) children for given parent (only for
        // multiselection controls)
    virtual void SelectChildren(const wxTreeItemId& parent) = 0;
        // unselect this item
    void UnselectItem(const wxTreeItemId& item) { SelectItem(item, false); }
        // toggle item selection
    void ToggleItemSelection(const wxTreeItemId& item)
    {
        SelectItem(item, !IsSelected(item));
    }

        // make sure this item is visible (expanding the parent item and/or
        // scrolling to this item if necessary)
    virtual void EnsureVisible(const wxTreeItemId& item) = 0;
        // scroll to this item (but don't expand its parent)
    virtual void ScrollTo(const wxTreeItemId& item) = 0;

        // start editing the item label: this (temporarily) replaces the item
        // with a one line edit control. The item will be selected if it hadn't
        // been before. textCtrlClass parameter allows you to create an edit
        // control of arbitrary user-defined class deriving from wxTextCtrl.
    virtual wxTextCtrl *EditLabel(const wxTreeItemId& item) = 0;
        // returns the same pointer as StartEdit() if the item is being edited,
        // NULL otherwise (it's assumed that no more than one item may be
        // edited simultaneously)
    virtual wxTextCtrl *GetEditControl() const = 0;
        // end editing and accept or discard the changes to item label
    virtual void EndEditLabel(const wxTreeItemId& item,
                              bool discardChanges = false) = 0;

        // Enable or disable beep when incremental match doesn't find any item.
        // Only implemented in the generic version currently.
    virtual void EnableBellOnNoMatch(bool WXUNUSED(on) = true) { }

    // sorting
    // -------

        // this function is called to compare 2 items and should return -1, 0
        // or +1 if the first item is less than, equal to or greater than the
        // second one. The base class version performs alphabetic comparaison
        // of item labels (GetText)
    virtual int OnCompareItems(const wxTreeItemId& item1,
                               const wxTreeItemId& item2)
    {
        return wxStrcmp(GetItemText(item1), GetItemText(item2));
    }

        // sort the children of this item using OnCompareItems
        //
        // NB: this function is not reentrant and not MT-safe (FIXME)!
    virtual void SortChildren(const wxTreeItemId& item) = 0;

    // items geometry
    // --------------

        // determine to which item (if any) belongs the given point (the
        // coordinates specified are relative to the client area of tree ctrl)
        // and, in the second variant, fill the flags parameter with a bitmask
        // of wxTREE_HITTEST_xxx constants.
    wxTreeItemId HitTest(const wxPoint& point) const
        { int dummy; return DoTreeHitTest(point, dummy); }
    wxTreeItemId HitTest(const wxPoint& point, int& flags) const
        { return DoTreeHitTest(point, flags); }

        // get the bounding rectangle of the item (or of its label only)
    virtual bool GetBoundingRect(const wxTreeItemId& item,
                                 wxRect& rect,
                                 bool textOnly = false) const = 0;


    // implementation
    // --------------

    virtual bool ShouldInheritColours() const { return false; }

    // hint whether to calculate best size quickly or accurately
    void SetQuickBestSize(bool q) { m_quickBestSize = q; }
    bool GetQuickBestSize() const { return m_quickBestSize; }
};

#endif
#endif // wxUSE_TREECTRL

#endif // _WX_TREECTRL_H_BASE_
