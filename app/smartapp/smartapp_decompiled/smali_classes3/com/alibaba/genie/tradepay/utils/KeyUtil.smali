.class public Lcom/alibaba/genie/tradepay/utils/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendBackKeyEvent(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x4

    .line 41
    invoke-static {p0, v0}, Lcom/alibaba/genie/tradepay/utils/KeyUtil;->sendKeyEvent(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendHomeKeyEvent(Landroid/content/Context;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MAIN"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x200000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p0, :cond_0

    .line 51
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object p0

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendKeyEvent(I)V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/genie/tradepay/utils/KeyUtil$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/tradepay/utils/KeyUtil$1;-><init>(I)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendKeyEvent(Landroid/content/Context;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 31
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 32
    nop

    nop

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 33
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/alibaba/genie/tradepay/utils/KeyUtil;->sendKeyEvent(I)V

    :goto_0
    return-void
.end method
