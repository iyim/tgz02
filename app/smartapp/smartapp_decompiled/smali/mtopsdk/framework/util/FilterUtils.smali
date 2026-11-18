.class public final Lmtopsdk/framework/util/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field public static final errorCodeMappingAfterFilter:Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;

    invoke-direct {v0}, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;-><init>()V

    sput-object v0, Lmtopsdk/framework/util/FilterUtils;->errorCodeMappingAfterFilter:Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkFilterManager(Lmtopsdk/framework/manager/FilterManager;Lmtopsdk/framework/domain/MtopContext;)V
    .locals 2

    if-nez p0, :cond_1

    .line 101
    new-instance p0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v0, "ANDROID_SYS_MTOPSDK_INIT_ERROR"

    const-string v1, "MTOPSDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {p0, v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 104
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 106
    :cond_0
    iput-object p0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 107
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    :cond_1
    return-void
.end method

.method public static handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 35
    new-instance v1, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v1, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 36
    iget-object v2, p0, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    iput-object v2, v1, Lmtopsdk/mtop/common/MtopFinishEvent;->seqNo:Ljava/lang/String;

    .line 37
    sget-object v2, Lmtopsdk/framework/util/FilterUtils;->errorCodeMappingAfterFilter:Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;

    invoke-virtual {v2, p0}, Lmtopsdk/framework/filter/after/ErrorCodeMappingAfterFilter;->doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;

    .line 38
    new-instance v2, Lmtopsdk/framework/util/FilterUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lmtopsdk/framework/util/FilterUtils$1;-><init>(Lmtopsdk/framework/domain/MtopContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 56
    iget-object v0, p0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {v0, v2, p0}, Lmtopsdk/framework/util/FilterUtils;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public static parseRetCodeFromHeader(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-retcode"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-mapping-code"

    invoke-static {v1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    :goto_0
    return-void
.end method

.method public static submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p2, p1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method
