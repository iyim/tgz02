.class public Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;
.super Landroid/support/constraint/ConstraintLayout;
.source "DownloadTipsView.java"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->layout_download_tips:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;

    return-void
.end method


# virtual methods
.method public setContacts(Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V
    .locals 7

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;->tvInviteTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_invite_tips:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/common/utils/FormatUtil;->formatLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;->tvInviteTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_invite_tips:I

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/ailabs/genie/contacts/common/utils/FormatUtil;->formatLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/model/Contacts;->getRelationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setDownloadListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/DownloadTipsView;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding;->tvDownloadApp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
