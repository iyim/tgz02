.class public Lcom/alibaba/ailabs/appbox/activity/DialogOpenAppActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "DialogOpenAppActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_tts_2_app:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DialogOpenAppActivity;->setContentView(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
