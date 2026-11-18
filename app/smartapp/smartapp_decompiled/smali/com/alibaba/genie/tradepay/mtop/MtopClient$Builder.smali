.class public final Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/tradepay/mtop/MtopClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;
    }
.end annotation


# static fields
.field private static final CONN_TIMEOUT_DEFAULT:I = 0x7530

.field private static final RETRY_TIME_DEFAULT:I = 0x3

.field private static final SOCKET_TIMEOUT_DEFAULT:I = 0x7530


# instance fields
.field private calcDataHash:Z

.field private calcDataMd5:Z

.field callback:Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;

.field private connTimeoutMilliSecond:I

.field private methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

.field private modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private mtop:Lmtopsdk/mtop/intf/Mtop;

.field private mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

.field private noCache:Z

.field private pickTraceId:Z

.field private projectStaging:Ljava/lang/String;

.field private protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

.field request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

.field private retryTime:I

.field private socketTimeoutMilliSecond:I

.field private ttid:Ljava/lang/String;

.field private useWua:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->noCache:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->useWua:Z

    .line 79
    iput-boolean v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataHash:Z

    .line 80
    iput-boolean v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataMd5:Z

    .line 81
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->pickTraceId:Z

    .line 87
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataHash:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataMd5:Z

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->pickTraceId:Z

    return p0
.end method

.method private defaultBuild()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->ttid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->getTtid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->ttid:Ljava/lang/String;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->callback:Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;

    if-eqz v0, :cond_2

    .line 184
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    new-instance v2, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;-><init>(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;)V

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eqz v0, :cond_3

    .line 188
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    if-nez v0, :cond_4

    .line 192
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 196
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    if-nez v0, :cond_5

    .line 197
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 201
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->noCache:Z

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;

    goto :goto_0

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useCache()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 207
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->useWua:Z

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 211
    :cond_7
    iget v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->retryTime:I

    if-gtz v0, :cond_8

    const/4 v0, 0x3

    .line 212
    iput v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->retryTime:I

    .line 214
    :cond_8
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->retryTime:I

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 216
    iget v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->connTimeoutMilliSecond:I

    const/16 v1, 0x7530

    if-gtz v0, :cond_9

    .line 217
    iput v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->connTimeoutMilliSecond:I

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v2, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->connTimeoutMilliSecond:I

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 221
    iget v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->socketTimeoutMilliSecond:I

    if-gtz v0, :cond_a

    .line 222
    iput v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->socketTimeoutMilliSecond:I

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->socketTimeoutMilliSecond:I

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eq v1, v2, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_f

    .line 232
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "scm_project="

    const-string v3, "EagleEye-UserData"

    if-nez v1, :cond_e

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    .line 241
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getProjectStaging()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 244
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_f
    :goto_2
    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/genie/tradepay/mtop/MtopClient;
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->defaultBuild()V

    .line 169
    new-instance v0, Lcom/alibaba/genie/tradepay/mtop/MtopClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/genie/tradepay/mtop/MtopClient;-><init>(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;Lcom/alibaba/genie/tradepay/mtop/MtopClient$1;)V

    return-object v0
.end method

.method public cacheControlNoCache(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->noCache:Z

    return-object p0
.end method

.method public calcDataHash(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataHash:Z

    return-object p0
.end method

.method public calcDataMd5(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->calcDataMd5:Z

    return-object p0
.end method

.method public callback(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->callback:Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;

    return-object p0
.end method

.method public connectionTimeout(I)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 153
    iput p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->connTimeoutMilliSecond:I

    return-object p0
.end method

.method public envModeEnum(Lmtopsdk/mtop/domain/EnvModeEnum;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->modeEnum:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method public mtop(Lmtopsdk/mtop/intf/Mtop;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->mtop:Lmtopsdk/mtop/intf/Mtop;

    return-object p0
.end method

.method public pickTraceId(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->pickTraceId:Z

    return-object p0
.end method

.method public projectStaging(Ljava/lang/String;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->projectStaging:Ljava/lang/String;

    return-object p0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->protocolEnum:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->methodEnum:Lmtopsdk/mtop/domain/MethodEnum;

    return-object p0
.end method

.method public retryTime(I)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->retryTime:I

    return-object p0
.end method

.method public socketTimeout(I)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 158
    iput p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->socketTimeoutMilliSecond:I

    return-object p0
.end method

.method public ttid(Ljava/lang/String;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->ttid:Ljava/lang/String;

    return-object p0
.end method

.method public useWua(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->useWua:Z

    return-object p0
.end method
