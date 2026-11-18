.class Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1;
.super Ljava/lang/Object;
.source "SystemLaunchForceStopReceiver.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1;->this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;)V
    .locals 2

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SystemLaunchForceStopReceiver online; isSystemBooted11="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$000()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemForceStopReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1$1;-><init>(Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemLaunchForceStopReceiver online; isSystemBooted22="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$000()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 61
    invoke-static {p1}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$002(Z)Z

    .line 64
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver$1;->this$0:Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;->access$300(Lcom/alibaba/ailabs/comm/receiver/SystemLaunchForceStopReceiver;)Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->unregister(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
