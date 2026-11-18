.class public Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "MtopBaseListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopListenerProxy"


# instance fields
.field protected isCached:Z

.field protected listener:Lmtopsdk/mtop/common/MtopListener;

.field public reqContext:Ljava/lang/Object;

.field public response:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 20
    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->reqContext:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->isCached:Z

    .line 26
    iput-object p1, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    return-void
.end method


# virtual methods
.method public onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v0, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    iput-object p2, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->reqContext:Ljava/lang/Object;

    .line 36
    :cond_0
    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "mtopsdk.MtopListenerProxy"

    const-string v1, "[onFinished] notify error"

    .line 40
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v0, :cond_3

    .line 46
    iget-boolean v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->isCached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 42
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v0, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    invoke-interface {v0, p1, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
