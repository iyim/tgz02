.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

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
    .locals 2

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "now to finish this DialogActivity"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->access$201(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    return-void
.end method
