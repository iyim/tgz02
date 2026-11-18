.class Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;
.super Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;
.source "MtopProgressListenerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;
.implements Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProgressListenerImpl"


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.MtopProgressListenerImpl"

    if-eqz v1, :cond_0

    const-string v1, "Mtop onDataReceived event received."

    .line 38
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The request of MtopBusiness is cancelled."

    .line 43
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    if-eqz v1, :cond_5

    .line 51
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 52
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "onReceive: ON_DATA_RECEIVED in self-defined handler."

    .line 53
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    invoke-interface {v1, p1, p2}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "listener onDataReceived callback error in self-defined handler."

    .line 58
    invoke-static {v2, v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 66
    :cond_4
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {p2, p1, v0}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->instance()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method

.method public onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.MtopProgressListenerImpl"

    if-eqz v1, :cond_0

    const-string v1, "Mtop onHeader event received."

    .line 75
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The request of MtopBusiness is cancelled."

    .line 79
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    if-eqz v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 87
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "onReceive: ON_HEADER in self-defined handler."

    .line 88
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    invoke-interface {v1, p1, p2}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "listener onHeader callback error in self-defined handler."

    .line 93
    invoke-static {v2, v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 101
    :cond_4
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopProgressListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {p2, p1, v0}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object p1

    .line 102
    invoke-static {}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->instance()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
