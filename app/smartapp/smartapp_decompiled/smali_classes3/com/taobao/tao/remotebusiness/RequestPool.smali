.class public Lcom/taobao/tao/remotebusiness/RequestPool;
.super Ljava/lang/Object;
.source "RequestPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIZINFO:Ljava/lang/String; = "DEFAULT"

.field public static final TAG:Ljava/lang/String; = "mtopsdk.RequestPool"


# instance fields
.field private lock:Ljava/util/concurrent/locks/Lock;

.field private requestPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->requestPool:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private getRequestPoolKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "DEFAULT"

    .line 175
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addToRequestPool(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Lmtopsdk/mtop/intf/MtopBuilder;)V
    .locals 1
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/RequestPool;->getRequestPoolKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->requestPool:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :cond_0
    new-instance v0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;

    invoke-direct {v0, p3}, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;-><init>(Lmtopsdk/mtop/intf/MtopBuilder;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->requestPool:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [addToRequestPool] add mtopBuilder to RequestPool."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p3}, Lmtopsdk/mtop/intf/MtopBuilder;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lmtopsdk/mtop/intf/MtopBuilder;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object p1

    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p3, "mtopsdk.RequestPool"

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public failAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/RequestPool;->getRequestPoolKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->requestPool:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 162
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 119
    :cond_0
    :try_start_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "mtopsdk.RequestPool"

    if-eqz v0, :cond_1

    .line 120
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [failAllRequest]fail all request,current size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;

    .line 127
    invoke-virtual {p2}, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->getMtopBuilder()Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p2

    .line 129
    iget-object v0, p2, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p2, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p3, p4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0, p3, p4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_1
    :try_start_3
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalErrorCodeMappingOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    instance-of v2, p2, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v2, :cond_4

    move-object v2, p2

    nop

    nop

    iget-object v2, v2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->listener:Lmtopsdk/mtop/common/MtopListener;

    goto :goto_2

    :cond_4
    iget-object v2, p2, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    :goto_2
    invoke-virtual {p2, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopContext(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/framework/domain/MtopContext;

    move-result-object v2

    .line 139
    iput-object v0, v2, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 140
    sget-object v3, Lmtopsdk/framework/util/FilterUtils;->errorCodeMappingAfterFilter:Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;

    invoke-virtual {v3, v2}, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;->doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 143
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[failAllRequest] do ErrorCode Mapping error.apiKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_5
    :goto_3
    instance-of v2, p2, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v2, :cond_6

    .line 147
    nop

    nop

    const/4 v2, 0x0

    .line 148
    invoke-static {v2, v2, p2}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object p2

    .line 149
    iput-object v0, p2, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 152
    invoke-static {}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->instance()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 154
    :cond_6
    iget-object v2, p2, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v2, :cond_2

    .line 155
    instance-of v3, v2, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v3, :cond_2

    .line 156
    check-cast v2, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    .line 157
    new-instance v3, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v3, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object p2, p2, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    invoke-interface {v2, v3, p2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 162
    :cond_7
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public retryAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/RequestPool;->getRequestPoolKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->requestPool:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 99
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 89
    :cond_0
    :try_start_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [retryAllRequest] retry all request,current size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mtopsdk.RequestPool"

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;

    .line 96
    invoke-virtual {p2}, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->retryRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/RequestPool;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
