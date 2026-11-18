.class Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;
.super Ljava/lang/Object;
.source "PasswordInputUnifiedPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

.field final synthetic val$flag:Z

.field final synthetic val$isFrame:Z

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$parent:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$isFrame:Z

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$view:Landroid/view/View;

    iput-boolean p5, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$flag:Z

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
    .locals 8

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$parent:Landroid/view/View;

    .line 425
    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$isFrame:Z

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$view:Landroid/view/View;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1400(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1700(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1500(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;->access$1600(Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/birdnest/util/UiUtil;->getKeyboardType(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$view:Landroid/view/View;

    iget-boolean v6, p0, Lcom/alipay/mobile/verifyidentity/module/dynamic/ui/plugin/PasswordInputUnifiedPlugin$8;->val$flag:Z

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 432
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
