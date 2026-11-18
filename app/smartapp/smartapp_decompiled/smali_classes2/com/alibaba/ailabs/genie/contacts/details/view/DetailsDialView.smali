.class public Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;
.super Landroid/support/constraint/ConstraintLayout;
.source "DetailsDialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;
    }
.end annotation


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getTagValue(Landroid/view/View;)Z
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 113
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_contacts_dial:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    .line 41
    new-instance p1, Lcom/alibaba/ailabs/genie/contacts/model/Features;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/alibaba/ailabs/genie/contacts/model/Features;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setDialListener$24$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onMessageClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$25$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onPSTNClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$26$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onVoipVideoClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$27$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onVoipAudioClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$28$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onMessageClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$29$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onPSTNClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$30$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onVoipVideoClickListener(Z)V

    return-void
.end method

.method public synthetic lambda$setDialListener$31$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->getTagValue(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;->onVoipAudioClickListener(Z)V

    return-void
.end method

.method public setDialListener(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$UiFaSEM-kE4LEirWU8_yk3aE6OY;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$UiFaSEM-kE4LEirWU8_yk3aE6OY;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$L-q8YvYxmNIdEN74CufUcsfOaeM;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$L-q8YvYxmNIdEN74CufUcsfOaeM;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$5jMi5wajX3bLivm6zfUKaMHzyN8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$5jMi5wajX3bLivm6zfUKaMHzyN8;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$SRwXSgtohQo-NQK09M8V6DuoTA4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$SRwXSgtohQo-NQK09M8V6DuoTA4;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnRippleMessage:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$K-gOcZ9fxh1jsxnGOL0ijq5bCv8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$K-gOcZ9fxh1jsxnGOL0ijq5bCv8;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnRipplePstn:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnRippleVideo:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$zUa6ZMN0biYOvDjU-ubP_fRS7eE;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$zUa6ZMN0biYOvDjU-ubP_fRS7eE;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnRippleAudio:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$g-RRDf7h-XLrSxuBjlbW6XhXnK0;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$g-RRDf7h-XLrSxuBjlbW6XhXnK0;-><init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFeature(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getMessage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_message_unchecked:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_message:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnMessage:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getPstn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_pstn_unchecked:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_pstn:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnPstn:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVideo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_voip_vedio_unchecked:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_voip_vedio:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipVideo:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Features;->getVoice()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_voip_audio_unchecked:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$drawable;->contacts_voip_audio:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding;->btnVoipAudio:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
