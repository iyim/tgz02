.class public Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;
.super Landroid/support/constraint/ConstraintLayout;
.source "VoipToPstnView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DURATION:I = 0x1f4


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

.field private mContext:Landroid/content/Context;

.field private mOnItemClickListener:Landroid/view/View$OnClickListener;

.field private mOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_voip_to_pstn:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    .line 45
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->default_avatar_260:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$mipmap;->default_avatar_260:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnPstn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnPstnRipple:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnSystemInformRipple:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnSystemInform:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public enableSysInform(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnSystemInform:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->system_inform:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnSystemInform:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->system_inform_unchecked:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onAttachedToWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 116
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_pstn_ripple:I

    if-eq v0, v1, :cond_3

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_pstn:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_system_inform:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->btn_system_inform_ripple:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 126
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 121
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnSystemInform:Landroid/widget/Button;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 117
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->btnPstn:Landroid/widget/Button;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onDetachedFromWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->ivAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public setCallOutInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->tvRelationship:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding;->tvCallTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
