///////////////////////////////////////////////////////////////////////////////
// Name:        wx/listctrl.h
// Purpose:     wxListCtrl class
// Author:      Vadim Zeitlin
// Modified by:
// Created:     04.12.99
// Copyright:   (c) wxWidgets team
// Licence:     wxWindows licence
///////////////////////////////////////////////////////////////////////////////

#ifndef _WX_LISTCTRL_H_BASE_
#define _WX_LISTCTRL_H_BASE_

#if wxUSE_LISTCTRL
// type of compare function for wxListCtrl sort operation
typedef
int (*wxListCtrlCompare)(long item1, long item2, long sortData);

// ----------------------------------------------------------------------------
// wxListCtrl constants
// ----------------------------------------------------------------------------

// style flags
#define wxLC_VRULES          0x0001
#define wxLC_HRULES          0x0002

#define wxLC_ICON            0x0004
#define wxLC_SMALL_ICON      0x0008
#define wxLC_LIST            0x0010
#define wxLC_REPORT          0x0020

#define wxLC_ALIGN_TOP       0x0040
#define wxLC_ALIGN_LEFT      0x0080
#define wxLC_AUTOARRANGE     0x0100
#define wxLC_VIRTUAL         0x0200
#define wxLC_EDIT_LABELS     0x0400
#define wxLC_NO_HEADER       0x0800
#define wxLC_NO_SORT_HEADER  0x1000
#define wxLC_SINGLE_SEL      0x2000
#define wxLC_SORT_ASCENDING  0x4000
#define wxLC_SORT_DESCENDING 0x8000

#define wxLC_MASK_TYPE       (wxLC_ICON | wxLC_SMALL_ICON | wxLC_LIST | wxLC_REPORT)
#define wxLC_MASK_ALIGN      (wxLC_ALIGN_TOP | wxLC_ALIGN_LEFT)
#define wxLC_MASK_SORT       (wxLC_SORT_ASCENDING | wxLC_SORT_DESCENDING)

// for compatibility only
#define wxLC_USER_TEXT       wxLC_VIRTUAL

// Omitted because
//  (a) too much detail
//  (b) not enough style flags
//  (c) not implemented anyhow in the generic version
//
// #define wxLC_NO_SCROLL
// #define wxLC_NO_LABEL_WRAP
// #define wxLC_OWNERDRAW_FIXED
// #define wxLC_SHOW_SEL_ALWAYS

// Mask flags to tell app/GUI what fields of wxListItem are valid
#define wxLIST_MASK_STATE           0x0001
#define wxLIST_MASK_TEXT            0x0002
#define wxLIST_MASK_IMAGE           0x0004
#define wxLIST_MASK_DATA            0x0008
#define wxLIST_SET_ITEM             0x0010
#define wxLIST_MASK_WIDTH           0x0020
#define wxLIST_MASK_FORMAT          0x0040

// State flags for indicating the state of an item
#define wxLIST_STATE_DONTCARE       0x0000
#define wxLIST_STATE_DROPHILITED    0x0001      // MSW only
#define wxLIST_STATE_FOCUSED        0x0002
#define wxLIST_STATE_SELECTED       0x0004
#define wxLIST_STATE_CUT            0x0008      // MSW only
#define wxLIST_STATE_DISABLED       0x0010      // OS2 only
#define wxLIST_STATE_FILTERED       0x0020      // OS2 only
#define wxLIST_STATE_INUSE          0x0040      // OS2 only
#define wxLIST_STATE_PICKED         0x0080      // OS2 only
#define wxLIST_STATE_SOURCE         0x0100      // OS2 only

// Hit test flags, used in HitTest
#define wxLIST_HITTEST_ABOVE            0x0001  // Above the client area.
#define wxLIST_HITTEST_BELOW            0x0002  // Below the client area.
#define wxLIST_HITTEST_NOWHERE          0x0004  // In the client area but below the last item.
#define wxLIST_HITTEST_ONITEMICON       0x0020  // On the bitmap associated with an item.
#define wxLIST_HITTEST_ONITEMLABEL      0x0080  // On the label (string) associated with an item.
#define wxLIST_HITTEST_ONITEMRIGHT      0x0100  // In the area to the right of an item.
#define wxLIST_HITTEST_ONITEMSTATEICON  0x0200  // On the state icon for a tree view item that is in a user-defined state.
#define wxLIST_HITTEST_TOLEFT           0x0400  // To the left of the client area.
#define wxLIST_HITTEST_TORIGHT          0x0800  // To the right of the client area.

#define wxLIST_HITTEST_ONITEM (wxLIST_HITTEST_ONITEMICON | wxLIST_HITTEST_ONITEMLABEL | wxLIST_HITTEST_ONITEMSTATEICON)

// GetSubItemRect constants
#define wxLIST_GETSUBITEMRECT_WHOLEITEM -1l

// Flags for GetNextItem (MSW only except wxLIST_NEXT_ALL)
enum
{
    wxLIST_NEXT_ABOVE,          // Searches for an item above the specified item
    wxLIST_NEXT_ALL,            // Searches for subsequent item by index
    wxLIST_NEXT_BELOW,          // Searches for an item below the specified item
    wxLIST_NEXT_LEFT,           // Searches for an item to the left of the specified item
    wxLIST_NEXT_RIGHT           // Searches for an item to the right of the specified item
};

// Alignment flags for Arrange (MSW only except wxLIST_ALIGN_LEFT)
enum
{
    wxLIST_ALIGN_DEFAULT,
    wxLIST_ALIGN_LEFT,
    wxLIST_ALIGN_TOP,
    wxLIST_ALIGN_SNAP_TO_GRID
};

// Column format (MSW only except wxLIST_FORMAT_LEFT)
enum wxListColumnFormat
{
    wxLIST_FORMAT_LEFT,
    wxLIST_FORMAT_RIGHT,
    wxLIST_FORMAT_CENTER
};

// Autosize values for SetColumnWidth
enum
{
    wxLIST_AUTOSIZE = -1,
    wxLIST_AUTOSIZE_USEHEADER = -2      // partly supported by generic version
};

// Flag values for GetItemRect
enum
{
    wxLIST_RECT_BOUNDS,
    wxLIST_RECT_ICON,
    wxLIST_RECT_LABEL
};

// Flag values for FindItem (MSW only)
enum
{
    wxLIST_FIND_UP,
    wxLIST_FIND_DOWN,
    wxLIST_FIND_LEFT,
    wxLIST_FIND_RIGHT
};

class wxImageList : public wxList {};

// ----------------------------------------------------------------------------
// wxListItemAttr: a structure containing the visual attributes of an item
// ----------------------------------------------------------------------------

// TODO: this should be renamed to wxItemAttr or something general like this
//       and used as base class for wxTextAttr which duplicates this class
//       entirely currently
class WXDLLIMPEXP_CORE wxListItemAttr
{
public:
    // ctors
    wxListItemAttr() { }
    wxListItemAttr(const wxColour& colText,
                   const wxColour& colBack,
                   const wxFont& font)
        : m_colText(colText), m_colBack(colBack), m_font(font)
    {
    }

    // default copy ctor, assignment operator and dtor are ok


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


    // this is almost like assignment operator except it doesn't overwrite the
    // fields unset in the source attribute
    void AssignFrom(const wxListItemAttr& source)
    {
        if ( source.HasTextColour() )
            SetTextColour(source.GetTextColour());
        if ( source.HasBackgroundColour() )
            SetBackgroundColour(source.GetBackgroundColour());
        if ( source.HasFont() )
            SetFont(source.GetFont());
    }

private:
    wxColour m_colText,
             m_colBack;
    wxFont   m_font;
};

// ----------------------------------------------------------------------------
// wxListItem: the item or column info, used to exchange data with wxListCtrl
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxListItem : public wxObject
{
public:
    wxListItem() { Init(); m_attr = NULL; }
    wxListItem(const wxListItem& item)
        : wxObject(),
          m_mask(item.m_mask),
          m_itemId(item.m_itemId),
          m_col(item.m_col),
          m_state(item.m_state),
          m_stateMask(item.m_stateMask),
          m_text(item.m_text),
          m_image(item.m_image),
          m_data(item.m_data),
          m_format(item.m_format),
          m_width(item.m_width),
          m_attr(NULL)
    {
        // copy list item attributes
        if ( item.HasAttributes() )
            m_attr = new wxListItemAttr(*item.GetAttributes());
    }

    wxListItem& operator=(const wxListItem& item)
    {
        if ( &item != this )
        {
            m_mask = item.m_mask;
            m_itemId = item.m_itemId;
            m_col = item.m_col;
            m_state = item.m_state;
            m_stateMask = item.m_stateMask;
            m_text = item.m_text;
            m_image = item.m_image;
            m_data = item.m_data;
            m_format = item.m_format;
            m_width = item.m_width;
            m_attr = item.m_attr ? new wxListItemAttr(*item.m_attr) : NULL;
        }

        return *this;
    }

    virtual ~wxListItem() { delete m_attr; }

    // resetting
    void Clear() { Init(); m_text.clear(); ClearAttributes(); }
    void ClearAttributes() { if ( m_attr ) { delete m_attr; m_attr = NULL; } }

    // setters
    void SetMask(long mask)
        { m_mask = mask; }
    void SetId(long id)
        { m_itemId = id; }
    void SetColumn(int col)
        { m_col = col; }
    void SetState(long state)
        { m_mask |= wxLIST_MASK_STATE; m_state = state; m_stateMask |= state; }
    void SetStateMask(long stateMask)
        { m_stateMask = stateMask; }
    void SetText(const wxString& text)
        { m_mask |= wxLIST_MASK_TEXT; m_text = text; }
    void SetImage(int image)
        { m_mask |= wxLIST_MASK_IMAGE; m_image = image; }
    void SetData(long data)
        { m_mask |= wxLIST_MASK_DATA; m_data = data; }
    void SetData(void *data)
        { m_mask |= wxLIST_MASK_DATA; m_data = wxPtrToUInt(data); }

    void SetWidth(int width)
        { m_mask |= wxLIST_MASK_WIDTH; m_width = width; }
    void SetAlign(wxListColumnFormat align)
        { m_mask |= wxLIST_MASK_FORMAT; m_format = align; }

    void SetTextColour(const wxColour& colText)
        { Attributes().SetTextColour(colText); }
    void SetBackgroundColour(const wxColour& colBack)
        { Attributes().SetBackgroundColour(colBack); }
    void SetFont(const wxFont& font)
        { Attributes().SetFont(font); }

    // accessors
    long GetMask() const { return m_mask; }
    long GetId() const { return m_itemId; }
    int GetColumn() const { return m_col; }
    long GetState() const { return m_state & m_stateMask; }
    const wxString& GetText() const { return m_text; }
    int GetImage() const { return m_image; }
    unsigned long GetData() const { return m_data; }

    int GetWidth() const { return m_width; }
    wxListColumnFormat GetAlign() const { return (wxListColumnFormat)m_format; }

    wxListItemAttr *GetAttributes() const { return m_attr; }
    bool HasAttributes() const { return m_attr != NULL; }

    wxColour GetTextColour() const
        { return HasAttributes() ? m_attr->GetTextColour() : wxNullColour; }
    wxColour GetBackgroundColour() const
        { return HasAttributes() ? m_attr->GetBackgroundColour()
                                 : wxNullColour; }
    wxFont GetFont() const
        { return HasAttributes() ? m_attr->GetFont() : wxNullFont; }

    // these members are public for compatibility

    long            m_mask;     // Indicates what fields are valid
    long            m_itemId;   // The zero-based item position
    int             m_col;      // Zero-based column, if in report mode
    long            m_state;    // The state of the item
    long            m_stateMask;// Which flags of m_state are valid (uses same flags)
    wxString        m_text;     // The label/header text
    int             m_image;    // The zero-based index into an image list
    unsigned long       m_data;     // App-defined data

    // For columns only
    int             m_format;   // left, right, centre
    int             m_width;    // width of column
};

// ----------------------------------------------------------------------------
// wxListCtrlBase: the base class for the main control itself.
// ----------------------------------------------------------------------------

// Unlike other base classes, this class doesn't currently define the API of
// the real control class but is just used for implementation convenience. We
// should define the public class functions as pure virtual here in the future
// however.
class WXDLLIMPEXP_CORE wxListCtrlBase : public wxControl
{
public:
    wxListCtrlBase() { }

    // Image list methods.
    // -------------------

    // Associate the given (possibly NULL to indicate that no images will be
    // used) image list with the control. The ownership of the image list
    // passes to the control, i.e. it will be deleted when the control itself
    // is destroyed.
    //
    // The value of "which" must be one of wxIMAGE_LIST_{NORMAL,SMALL,STATE}.
    virtual void AssignImageList(wxImageList* imageList, int which) = 0;

    // Same as AssignImageList() but the control does not delete the image list
    // so it can be shared among several controls.
    virtual void SetImageList(wxImageList* imageList, int which) = 0;

    // Return the currently used image list, may be NULL.
    virtual wxImageList* GetImageList(int which) const = 0;


    // Column-related methods.
    // -----------------------

    // All these methods can only be used in report view mode.

    // Appends a new column.
    //
    // Returns the index of the newly inserted column or -1 on error.
    long AppendColumn(const wxString& heading,
                      wxListColumnFormat format = wxLIST_FORMAT_LEFT,
                      int width = -1);

    // Add a new column to the control at the position "col".
    //
    // Returns the index of the newly inserted column or -1 on error.
    long InsertColumn(long col, const wxListItem& info);
    long InsertColumn(long col,
                      const wxString& heading,
                      wxListColumnFormat format = wxLIST_FORMAT_LEFT,
                      int width = wxLIST_AUTOSIZE);

    // Delete the given or all columns.
    virtual bool DeleteColumn(int col) = 0;
    virtual bool DeleteAllColumns() = 0;

    // Return the current number of columns.
    virtual int GetColumnCount() const = 0;

    // Get or update information about the given column. Set item mask to
    // indicate the fields to retrieve or change.
    //
    // Returns false on error, e.g. if the column index is invalid.
    virtual bool GetColumn(int col, wxListItem& item) const = 0;
    virtual bool SetColumn(int col, const wxListItem& item) = 0;

    // Convenient wrappers for the above methods which get or update just the
    // column width.
    virtual int GetColumnWidth(int col) const = 0;
    virtual bool SetColumnWidth(int col, int width) = 0;

    // return the attribute for the item (may return NULL if none)
    virtual wxListItemAttr *OnGetItemAttr(long item) const;

    // Other miscellaneous accessors.
    // ------------------------------

    // Convenient functions for testing the list control mode:
    bool InReportView() const { return HasFlag(wxLC_REPORT); }
    bool IsVirtual() const { return HasFlag(wxLC_VIRTUAL); }

    // Enable or disable beep when incremental match doesn't find any item.
    // Only implemented in the generic version currently.
    virtual void EnableBellOnNoMatch(bool WXUNUSED(on) = true) { }

    void EnableAlternateRowColours(bool enable = true);
    void SetAlternateRowColour(const wxColour& colour);
};

// ----------------------------------------------------------------------------
// wxListEvent - the event class for the wxListCtrl notifications
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxListEvent : public wxNotifyEvent
{
public:
    wxListEvent(wxEventType commandType = wxEVT_NULL, int winid = 0)
        : wxNotifyEvent(commandType, winid)
        , m_code(-1)
        , m_oldItemIndex(-1)
        , m_itemIndex(-1)
        , m_col(-1)
        , m_pointDrag()
        , m_item()
        , m_editCancelled(false)
        { }

    wxListEvent(const wxListEvent& event)
        : wxNotifyEvent(event)
        , m_code(event.m_code)
        , m_oldItemIndex(event.m_oldItemIndex)
        , m_itemIndex(event.m_itemIndex)
        , m_col(event.m_col)
        , m_pointDrag(event.m_pointDrag)
        , m_item(event.m_item)
        , m_editCancelled(event.m_editCancelled)
        { }

    int GetKeyCode() const { return m_code; }
    long GetIndex() const { return m_itemIndex; }
    int GetColumn() const { return m_col; }
    wxPoint GetPoint() const { return m_pointDrag; }
    const wxString& GetLabel() const { return m_item.m_text; }
    const wxString& GetText() const { return m_item.m_text; }
    int GetImage() const { return m_item.m_image; }
    unsigned long GetData() const { return m_item.m_data; }
    long GetMask() const { return m_item.m_mask; }
    const wxListItem& GetItem() const { return m_item; }

    // for wxEVT_LIST_CACHE_HINT only
    long GetCacheFrom() const { return m_oldItemIndex; }
    long GetCacheTo() const { return m_itemIndex; }

    // was label editing canceled? (for wxEVT_LIST_END_LABEL_EDIT only)
    bool IsEditCancelled() const { return m_editCancelled; }
    void SetEditCanceled(bool editCancelled) { m_editCancelled = editCancelled; }

    virtual wxEvent *Clone() const { return new wxListEvent(*this); }

//protected: -- not for backwards compatibility
    int           m_code;
    long          m_oldItemIndex; // only for wxEVT_LIST_CACHE_HINT
    long          m_itemIndex;
    int           m_col;
    wxPoint       m_pointDrag;

    wxListItem    m_item;
};

// ----------------------------------------------------------------------------
// wxListCtrl event macros
// ----------------------------------------------------------------------------

wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_BEGIN_DRAG, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_BEGIN_RDRAG, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_BEGIN_LABEL_EDIT, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_END_LABEL_EDIT, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_DELETE_ITEM, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_DELETE_ALL_ITEMS, wxListEvent );

wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_SELECTED, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_DESELECTED, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_KEY_DOWN, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_INSERT_ITEM, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_COL_CLICK, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_RIGHT_CLICK, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_MIDDLE_CLICK, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_ACTIVATED, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_CACHE_HINT, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_COL_RIGHT_CLICK, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_COL_BEGIN_DRAG, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_COL_DRAGGING, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_COL_END_DRAG, wxListEvent );
wxDECLARE_EXPORTED_EVENT( WXDLLIMPEXP_CORE, wxEVT_LIST_ITEM_FOCUSED, wxListEvent );


class WXDLLIMPEXP_CORE wxListCtrl: public wxListCtrlBase
{
public:
    /*
     * Public interface
     */

    wxListCtrl() { Init(); }

    wxListCtrl(wxWindow *parent,
               wxWindowID id = #@ WxWindowID(wxID_ANY)
                               @#,
               const wxPoint& pos = wxDefaultPosition,
               const wxSize& size = wxDefaultSize,
               long style = wxLC_ICON,
               const wxValidator& validator = wxDefaultValidator,
               const wxString& name = wxListCtrlNameStr)
    {
        Init();

        Create(parent, id, pos, size, style, validator, name);
    }

    virtual ~wxListCtrl();

    bool Create(wxWindow *parent,
                wxWindowID id = #@ WxWindowID(wxID_ANY)
                               @#,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxLC_ICON,
                const wxValidator& validator = wxDefaultValidator,
                const wxString& name = wxListCtrlNameStr);


    // Attributes
    ////////////////////////////////////////////////////////////////////////////

    // Set the control colours
    bool SetForegroundColour(const wxColour& col);
    bool SetBackgroundColour(const wxColour& col);

    // Gets information about this column
    bool GetColumn(int col, wxListItem& item) const;

    // Sets information about this column
    bool SetColumn(int col, const wxListItem& item);

    // Gets the column width
    int GetColumnWidth(int col) const;

    // Sets the column width
    bool SetColumnWidth(int col, int width);


    // Gets the column order from its index or index from its order
    int GetColumnOrder(int col) const;
    int GetColumnIndexFromOrder(int order) const;

    // Gets the column order for all columns
    wxArrayInt GetColumnsOrder() const;

    // Sets the column order for all columns
    bool SetColumnsOrder(const wxArrayInt& orders);


    // Gets the number of items that can fit vertically in the
    // visible area of the list control (list or report view)
    // or the total number of items in the list control (icon
    // or small icon view)
    int GetCountPerPage() const;

    // return the total area occupied by all the items (icon/small icon only)
    wxRect GetViewRect() const;

    // Gets the edit control for editing labels.
    wxTextCtrl* GetEditControl() const;

    // Gets information about the item
    bool GetItem(wxListItem& info) const;

    // Sets information about the item
    bool SetItem(wxListItem& info);

    // Sets a string field at a particular column
    long SetItem(long index, int col, const wxString& label, int imageId = -1);

    // Gets the item state
    int  GetItemState(long item, long stateMask) const;

    // Sets the item state
    bool SetItemState(long item, long state, long stateMask);

    // Sets the item image
    bool SetItemImage(long item, int image, int selImage = -1);
    bool SetItemColumnImage(long item, long column, int image);

    // Gets the item text
    wxString GetItemText(long item, int col = 0) const;

    // Sets the item text
    void SetItemText(long item, const wxString& str);

    // Gets the item data
    unsigned long GetItemData(long item) const;

    // Sets the item data
    bool SetItemPtrData(long item, unsigned long data);
    bool SetItemData(long item, long data) { return SetItemPtrData(item, data); }

    // Gets the item rectangle
    bool GetItemRect(long item, wxRect& rect, int code = wxLIST_RECT_BOUNDS) const;

    // Gets the subitem rectangle in report mode
    bool GetSubItemRect(long item, long subItem, wxRect& rect, int code = wxLIST_RECT_BOUNDS) const;

    // Gets the item position
    bool GetItemPosition(long item, wxPoint& pos) const;

    // Sets the item position
    bool SetItemPosition(long item, const wxPoint& pos);

    // Gets the number of items in the list control
    int GetItemCount() const;

    // Gets the number of columns in the list control
    int GetColumnCount() const { return m_colCount; }

    // get the horizontal and vertical components of the item spacing
    wxSize GetItemSpacing() const;

    // Foreground colour of an item.
    void SetItemTextColour( long item, const wxColour& col);
    wxColour GetItemTextColour( long item ) const;

    // Background colour of an item.
    void SetItemBackgroundColour( long item, const wxColour &col);
    wxColour GetItemBackgroundColour( long item ) const;

    // Font of an item.
    void SetItemFont( long item, const wxFont &f);
    wxFont GetItemFont( long item ) const;

    // Gets the number of selected items in the list control
    int GetSelectedItemCount() const;

    // Gets the text colour of the listview
    wxColour GetTextColour() const;

    // Sets the text colour of the listview
    void SetTextColour(const wxColour& col);

    // Gets the index of the topmost visible item when in
    // list or report view
    long GetTopItem() const;

    // Add or remove a single window style
    void SetSingleStyle(long style, bool add = true);

    // Set the whole window style
    void SetWindowStyleFlag(long style);

    // Searches for an item, starting from 'item'.
    // item can be -1 to find the first item that matches the
    // specified flags.
    // Returns the item or -1 if unsuccessful.
    long GetNextItem(long item, int geometry = wxLIST_NEXT_ALL, int state = wxLIST_STATE_DONTCARE) const;

    // Gets one of the three image lists
    wxImageList *GetImageList(int which) const;

    // Sets the image list
    // N.B. There's a quirk in the Win95 list view implementation.
    // If in wxLC_LIST mode, it'll *still* display images by the labels if
    // there's a small-icon image list set for the control - even though you
    // haven't specified wxLIST_MASK_IMAGE when inserting.
    // So you have to set a NULL small-icon image list to be sure that
    // the wxLC_LIST mode works without icons. Of course, you may want icons...
    void SetImageList(wxImageList *imageList, int which);
    void AssignImageList(wxImageList *imageList, int which);

    // refresh items selectively (only useful for virtual list controls)
    void RefreshItem(long item);
    void RefreshItems(long itemFrom, long itemTo);

    // Operations
    ////////////////////////////////////////////////////////////////////////////

    // Arranges the items
    bool Arrange(int flag = wxLIST_ALIGN_DEFAULT);

    // Deletes an item
    bool DeleteItem(long item);

    // Deletes all items
    bool DeleteAllItems();

    // Deletes a column
    bool DeleteColumn(int col);

    // Deletes all columns
    bool DeleteAllColumns();

    // Clears items, and columns if there are any.
    void ClearAll();

    // Edit the label
    wxTextCtrl* EditLabel(long item);

    // End label editing, optionally cancelling the edit
    bool EndEditLabel(bool cancel);

    // Ensures this item is visible
    bool EnsureVisible(long item);

    // Find an item whose label matches this string, starting from the item after 'start'
    // or the beginning if 'start' is -1.
    long FindItem(long start, const wxString& str, bool partial = false);

    // Find an item whose data matches this data, starting from the item after 'start'
    // or the beginning if 'start' is -1.
    long FindItem(long start, unsigned long data);

    // Find an item nearest this position in the specified direction, starting from
    // the item after 'start' or the beginning if 'start' is -1.
    long FindItem(long start, const wxPoint& pt, int direction);

    // Determines which item (if any) is at the specified point,
    // giving details in 'flags' (see wxLIST_HITTEST_... flags above)
    // Request the subitem number as well at the given coordinate.
    long HitTest(const wxPoint& point, int& flags, long* ptrSubItem = NULL) const;

    // Inserts an item, returning the index of the new item if successful,
    // -1 otherwise.
    long InsertItem(const wxListItem& info);

    // Insert a string item
    long InsertItem(long index, const wxString& label);

    // Insert an image item
    long InsertItem(long index, int imageIndex);

    // Insert an image/string item
    long InsertItem(long index, const wxString& label, int imageIndex);

    // set the number of items in a virtual list control
    void SetItemCount(long count);

    // Scrolls the list control. If in icon, small icon or report view mode,
    // x specifies the number of pixels to scroll. If in list view mode, x
    // specifies the number of columns to scroll.
    // If in icon, small icon or list view mode, y specifies the number of pixels
    // to scroll. If in report view mode, y specifies the number of lines to scroll.
    bool ScrollList(int dx, int dy);

    // Sort items.

    // fn is a function which takes 3 long arguments: item1, item2, data.
    // item1 is the long data associated with a first item (NOT the index).
    // item2 is the long data associated with a second item (NOT the index).
    // data is the same value as passed to SortItems.
    // The return value is a negative number if the first item should precede the second
    // item, a positive number of the second item should precede the first,
    // or zero if the two items are equivalent.

    // data is arbitrary data to be passed to the sort function.
    bool SortItems(wxListCtrlCompare fn, long data);

    // bring the control in sync with current m_windowStyle value
    void UpdateStyle();

    // Event handlers
    ////////////////////////////////////////////////////////////////////////////
    // Necessary for drawing hrules and vrules, if specified
    void OnPaint(wxPaintEvent& event);


    virtual bool ShouldInheritColours() const { return false; }

    virtual wxVisualAttributes GetDefaultAttributes() const
    {
        return GetClassDefaultAttributes(GetWindowVariant());
    }
};


// ----------------------------------------------------------------------------
// wxListView: a class which provides a better API for list control
// ----------------------------------------------------------------------------

class WXDLLIMPEXP_CORE wxListView : public wxListCtrl
{
public:
    wxListView() { }
    wxListView( wxWindow *parent,
                wxWindowID winid = #@ WxWindowID(wxID_ANY)
                               @#,
                const wxPoint& pos = wxDefaultPosition,
                const wxSize& size = wxDefaultSize,
                long style = wxLC_REPORT,
                const wxValidator& validator = wxDefaultValidator,
                const wxString &name = wxListCtrlNameStr)
    {
        Create(parent, winid, pos, size, style, validator, name);
    }

    // focus/selection stuff
    // ---------------------

    // [de]select an item
    void Select(long n, bool on = true)
    {
        SetItemState(n, on ? wxLIST_STATE_SELECTED : 0, wxLIST_STATE_SELECTED);
    }

    // focus and show the given item
    void Focus(long index)
    {
        SetItemState(index, wxLIST_STATE_FOCUSED, wxLIST_STATE_FOCUSED);
        EnsureVisible(index);
    }

    // get the currently focused item or -1 if none
    long GetFocusedItem() const
    {
        return GetNextItem(-1, wxLIST_NEXT_ALL, wxLIST_STATE_FOCUSED);
    }

    // get first and subsequent selected items, return -1 when no more
    long GetNextSelected(long item) const
        { return GetNextItem(item, wxLIST_NEXT_ALL, wxLIST_STATE_SELECTED); }
    long GetFirstSelected() const
        { return GetNextSelected(-1); }

    // return true if the item is selected
    bool IsSelected(long index) const
        { return GetItemState(index, wxLIST_STATE_SELECTED) != 0; }

    // columns
    // -------

    void SetColumnImage(int col, int image)
    {
        wxListItem item;
        item.SetMask(wxLIST_MASK_IMAGE);
        item.SetImage(image);
        SetColumn(col, item);
    }

    void ClearColumnImage(int col) { SetColumnImage(col, -1); }
};

#endif // wxUSE_LISTCTRL

#endif
    // _WX_LISTCTRL_H_BASE_
