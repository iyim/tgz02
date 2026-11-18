.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

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
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 50
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBizCancelListener Exception. Do nothing."

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    return-void
.end method
