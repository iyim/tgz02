.class Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;
.super Ljava/lang/Object;
.source "BaseFBPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

.field final synthetic val$finalJs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->val$finalJs:Ljava/lang/String;

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

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->access$000(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeExecuteJs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->val$finalJs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->access$100(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$2;->val$finalJs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/FBPluginCtx;->nativeExecuteJs(Ljava/lang/String;)I

    return-void
.end method
