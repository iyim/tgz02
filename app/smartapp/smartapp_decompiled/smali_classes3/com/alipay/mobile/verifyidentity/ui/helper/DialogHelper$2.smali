.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$period:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->val$period:I

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
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;->val$period:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 136
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogHelper.toast(): exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
