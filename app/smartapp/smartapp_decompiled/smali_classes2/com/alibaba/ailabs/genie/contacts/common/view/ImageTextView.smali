.class public Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;
.super Landroid/widget/RelativeLayout;
.source "ImageTextView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->init(Landroid/content/Context;)V

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_image_text:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->init(Landroid/content/Context;)V

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ImageTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ImageTextView_con_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 48
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ImageTextView_con_middleText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$styleable;->con_ImageTextView_con_middleTextSize:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 50
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;->tvText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;->tvText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;->ivIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestOptions;)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/view/ImageTextView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding;->ivIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->REQUEST_OPTIONS_160:Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/glide/GlideUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bumptech/glide/request/RequestOptions;)V

    return-void
.end method
