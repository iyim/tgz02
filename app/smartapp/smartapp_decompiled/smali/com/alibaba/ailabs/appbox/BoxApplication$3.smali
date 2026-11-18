.class Lcom/alibaba/ailabs/appbox/BoxApplication$3;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;
.source "BoxApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/BoxApplication;->handleAguiCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/BoxApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/BoxApplication;Landroid/content/Context;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$3;->this$0:Lcom/alibaba/ailabs/appbox/BoxApplication;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onGatewayStatus(Z)V
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgisManager.callback onGatewayStatus - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxApplication-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance p1, Lcom/alibaba/ailabs/appbox/BoxApplication$3$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/BoxApplication$3$1;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication$3;)V

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 317
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->unregisterAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V

    return-void
.end method

.method public onUserStatus(Z)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgisManager.callback onUserStatus - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxApplication-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
