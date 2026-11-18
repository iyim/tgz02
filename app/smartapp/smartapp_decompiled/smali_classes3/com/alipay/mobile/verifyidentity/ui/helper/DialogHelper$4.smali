.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$cancelable:Z

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$showProgressBar:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$showProgressBar:Z

    iput-boolean p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$cancelable:Z

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$showProgressBar:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setProgressVisiable(Z)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DialogHelper"

    .line 240
    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    :goto_0
    return-void
.end method
