.class public Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;
.super Landroid/widget/RelativeLayout;
.source "EditItemView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_edit_item:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->init(Landroid/content/Context;)V

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_EditItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_EditItemView_con_editLeftIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 53
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_EditItemView_con_editMiddleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_EditItemView_con_editRightHint:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->ivItemIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->ivItemIcon:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getEditText()Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    return-object v0
.end method

.method public getEditTextId()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getId()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->getEditText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeCopy()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setLongClickable(Z)V

    return-void
.end method

.method public requestEditFocus()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->requestFocus()Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setFocusable(Z)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setInputMode(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setInputType(I)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setOnRightClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/EditItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding;->etRight:Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/EditTextEllipsize;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
