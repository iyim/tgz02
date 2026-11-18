.class public Lmtopsdk/framework/filter/before/ExecuteCallBeforeFilter;
.super Ljava/lang/Object;
.source "ExecuteCallBeforeFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IBeforeFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExecuteCallBeforeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doBefore(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 5

    const-string v0, "STOP"

    const-string v1, "mtopsdk.ExecuteCallBeforeFilter"

    .line 33
    :try_start_0
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    .line 34
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v2

    iget-object v2, v2, Lmtopsdk/mtop/global/MtopConfig;->callFactory:Lmtopsdk/network/Call$Factory;

    if-nez v2, :cond_0

    .line 37
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call Factory of mtopInstance is null.instanceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v4}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v3, "ANDROID_SYS_MTOP_MISS_CALL_FACTORY"

    const-string v4, "Mtop\u5b9e\u4f8b\u6ca1\u6709\u8bbe\u7f6eCall Factory"

    invoke-direct {v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 40
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 41
    iput-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 42
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    return-object v0

    .line 45
    :cond_0
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->networkRequest:Lmtopsdk/network/domain/Request;

    invoke-interface {v2, v3}, Lmtopsdk/network/Call$Factory;->newCall(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;

    move-result-object v2

    .line 46
    new-instance v3, Lmtopsdk/mtop/network/NetworkCallbackAdapter;

    invoke-direct {v3, p1}, Lmtopsdk/mtop/network/NetworkCallbackAdapter;-><init>(Lmtopsdk/framework/domain/MtopContext;)V

    invoke-interface {v2, v3}, Lmtopsdk/network/Call;->enqueue(Lmtopsdk/network/NetworkCallback;)V

    .line 47
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    invoke-virtual {v3, v2}, Lmtopsdk/mtop/common/ApiID;->setCall(Lmtopsdk/network/Call;)V

    :cond_1
    const-string p1, "CONTINUE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke call.enqueue of mtopInstance error,apiKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    invoke-static {v1, p1, v3, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.ExecuteCallBeforeFilter"

    return-object v0
.end method
