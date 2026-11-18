.class public Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;
.super Landroid/widget/RelativeLayout;
.source "ContactsExitView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->contacts_layout_exit:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivHome:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$ContactsExitView$8GSex3MJ9PocNaXjFX8NwONPPqA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/-$$Lambda$ContactsExitView$8GSex3MJ9PocNaXjFX8NwONPPqA;-><init>(Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->isChildMode(Landroid/content/Context;)Z

    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setChildMode(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->init(Landroid/content/Context;)V

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ExitView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ExitView_con_backVisible:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 59
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ExitView_con_homeVisible:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 60
    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ExitView_con_title:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz v0, :cond_1

    .line 67
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivHome:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivHome:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 72
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$3$ContactsExitView(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ActivityUtil;->gotoHome(Landroid/content/Context;)V

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public setBackListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setChildMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->btn_child_back:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivHome:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->btn_child_home:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivBack:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->btn_back:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->ivHome:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->btn_home:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
