.class public Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;
.super Landroid/widget/RelativeLayout;
.source "SwitchItemView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->init(Landroid/content/Context;)V

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

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_switch_item:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->init(Landroid/content/Context;)V

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_SwitchItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_SwitchItemView_con_switchLeftIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 46
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_SwitchItemView_con_switchMiddleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_SwitchItemView_con_switchToggleEnable:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;->ivItemIcon:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;->ivItemIcon:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;->toggle:Landroid/widget/Switch;

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setToggleChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/add/view/SwitchItemView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;->toggle:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
