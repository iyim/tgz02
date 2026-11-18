.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field final synthetic val$configurable:Landroid/os/Bundle;

.field final synthetic val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negative:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$configurable:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p9, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

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
    .locals 9

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    new-instance v8, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$msg:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$positive:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negative:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$configurable:Landroid/os/Bundle;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v8}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setNegativeListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setPositiveListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$isCanceledOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogHelper.alert(): exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    :goto_0
    return-void
.end method
