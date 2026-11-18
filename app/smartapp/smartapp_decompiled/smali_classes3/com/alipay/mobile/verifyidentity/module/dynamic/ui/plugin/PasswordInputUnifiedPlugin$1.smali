.class Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;
.super Ljava/lang/Object;
.source "PasswordInputUnifiedPlugin.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/OnConfirmListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

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
.method public onUserConfirm(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safeInputContext onUserConfirm"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$100(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$200(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    const-string v1, "onPwdConfirmed"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$300(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->updateVerifyStatus(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$400(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
