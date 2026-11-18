.class Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$10;
.super Ljava/lang/Object;
.source "PasswordInputUnifiedPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$NotifyResultHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V
    .locals 1

    .line 530
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$10;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

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
.method public notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$10;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    return-void
.end method
