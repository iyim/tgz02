.class Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doDismissProgressDialog post"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getDialogActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doDismissProgressDialog need finsh"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContextDialogHelper.dismissProgressDialog(): exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->updateDialogActivity(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void
.end method
