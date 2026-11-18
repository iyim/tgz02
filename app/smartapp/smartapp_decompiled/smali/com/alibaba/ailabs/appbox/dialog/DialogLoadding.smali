.class public Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogLoadding.java"


# instance fields
.field private cancel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->cancel:Z

    .line 15
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_installed_downing:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->cancel:Z

    return p0
.end method

.method private init()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->rl_root_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCancel(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogLoadding;->cancel:Z

    return-void
.end method

.method public show()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
