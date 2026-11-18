.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)V
    .locals 1

    .line 249
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

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
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DialogHelper"

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogHelper.dismissProgressDialog(): exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method
