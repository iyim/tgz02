.class public Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;
.super Landroid/app/Dialog;
.source "ConversationDialog.java"


# instance fields
.field private iv_close:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->dialog_conversation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->mMainView:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$id;->iv_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->iv_close:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->iv_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$ConversationDialog$E4j00eBO6vNJoiXpwcNSSHEBlOA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/view/-$$Lambda$ConversationDialog$E4j00eBO6vNJoiXpwcNSSHEBlOA;-><init>(Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$75$ConversationDialog(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/view/ConversationDialog;->dismiss()V

    return-void
.end method
