.class final Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
.super Ljava/lang/Object;
.source "GCSMtop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# static fields
.field private static final ANDROID_SYS_NETWORK_ERROR:Ljava/lang/String; = "ANDROID_SYS_NETWORK_ERROR"

.field private static final CONN_TIMEOUT_DEFAULT:I = 0x7530

.field private static final DEFAULT_IDE_PROJECT_STAGING_8:Ljava/lang/String; = "default-ide-project-staging8"

.field private static final FAIL_SYS_SERVICE_TIMEOUT:Ljava/lang/String; = "FAIL_SYS_SERVICE_TIMEOUT"

.field private static final RETRY_TIME_DEFAULT:I = 0x3

.field private static final SOCKET_TIMEOUT_DEFAULT:I = 0x7530


# instance fields
.field private calcDataHash:Z

.field private calcDataMd5:Z

.field private callback:Landroid/os/IBinder;

.field private checkResult:Z

.field private connTimeoutMilliSecond:I

.field private methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

.field private modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private mtop:Lmtopsdk/mtop/intf/Mtop;

.field private mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

.field private noCache:Z

.field private pickTraceId:Z

.field private projectStaging:Ljava/lang/String;

.field private protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

.field request:Lmtopsdk/mtop/domain/MtopRequest;

.field private retryCount:I

.field private retryTime:I

.field private socketTimeoutMilliSecond:I

.field private ttid:Ljava/lang/String;

.field private useWua:Z


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 2
    .param p1    # Lmtopsdk/mtop/domain/MtopRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->noCache:Z

    const/4 v1, 0x0

    .line 136
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->useWua:Z

    .line 141
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->checkResult:Z

    .line 142
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->calcDataHash:Z

    .line 143
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->calcDataMd5:Z

    .line 144
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->pickTraceId:Z

    .line 147
    iput v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryCount:I

    .line 152
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->callback:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryCount:I

    return p0
.end method

.method static synthetic access$508(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I
    .locals 2

    .line 119
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryCount:I

    return v0
.end method

.method private defaultBuild()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->ttid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->getTtid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->ttid:Ljava/lang/String;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 256
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->ttid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 257
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    new-instance v2, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;-><init>(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;Lmtopsdk/mtop/domain/MtopRequest;)V

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 356
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eqz v0, :cond_2

    .line 357
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    if-nez v0, :cond_3

    .line 361
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    if-nez v0, :cond_4

    .line 366
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 370
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->noCache:Z

    if-eqz v0, :cond_5

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;

    goto :goto_0

    .line 373
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useCache()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 376
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->useWua:Z

    if-eqz v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 380
    :cond_6
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryTime:I

    if-gtz v0, :cond_7

    const/4 v0, 0x3

    .line 381
    iput v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryTime:I

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryTime:I

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 385
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->connTimeoutMilliSecond:I

    const/16 v1, 0x7530

    if-gtz v0, :cond_8

    .line 386
    iput v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->connTimeoutMilliSecond:I

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->connTimeoutMilliSecond:I

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 390
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->socketTimeoutMilliSecond:I

    if-gtz v0, :cond_9

    .line 391
    iput v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->socketTimeoutMilliSecond:I

    .line 393
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->socketTimeoutMilliSecond:I

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 395
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 398
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eq v1, v2, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_c

    :cond_b
    const/4 v1, 0x1

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_e

    .line 402
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "scm_project="

    const-string v3, "EagleEye-UserData"

    if-nez v1, :cond_d

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    .line 411
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getProjectStaging()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 414
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_e
    :goto_2
    return-void
.end method

.method private isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public build()Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->defaultBuild()V

    return-object p0
.end method

.method public cacheControlNoCache(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->noCache:Z

    return-object p0
.end method

.method public calcDataHash(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->calcDataHash:Z

    return-object p0
.end method

.method public calcDataMd5(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->calcDataMd5:Z

    return-object p0
.end method

.method public checkResult(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->checkResult:Z

    return-object p0
.end method

.method public connectionTimeout(I)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 221
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->connTimeoutMilliSecond:I

    return-object p0
.end method

.method public envModeEnum(Lmtopsdk/mtop/domain/EnvModeEnum;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method public ipcCallback(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->callback:Landroid/os/IBinder;

    return-object p0
.end method

.method public mtop(Lmtopsdk/mtop/intf/Mtop;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    return-object p0
.end method

.method public pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->pickTraceId:Z

    return-object p0
.end method

.method public projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    return-object p0
.end method

.method public retryTime(I)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->retryTime:I

    return-object p0
.end method

.method public socketTimeout(I)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 226
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->socketTimeoutMilliSecond:I

    return-object p0
.end method

.method public ttid(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public useDefaultProjectStaging()Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 1

    const-string v0, "default-ide-project-staging8"

    .line 236
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public useWua(Z)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->useWua:Z

    return-object p0
.end method
