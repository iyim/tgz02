.class Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$2;
.super Ljava/lang/Object;
.source "SystemLaunchForceStopReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;Landroid/content/Context;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$2;->this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string v1, "r82pdcBpnxVB"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemLaunchForceStopApp; data ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemForceStopReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$2;->this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$200(Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
