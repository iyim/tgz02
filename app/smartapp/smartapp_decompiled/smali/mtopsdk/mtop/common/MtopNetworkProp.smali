.class public Lmtopsdk/mtop/common/MtopNetworkProp;
.super Ljava/lang/Object;
.source "MtopNetworkProp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30f72c8a3cbdabccL


# instance fields
.field public accessToken:Ljava/lang/String;

.field public apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

.field public authCode:Ljava/lang/String;

.field public autoRedirect:Z

.field public backGround:Z

.field public bizId:I

.field public cacheKeyBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clientTraceId:Ljava/lang/String;

.field public connTimeout:I

.field public customDailyDomain:Ljava/lang/String;

.field public customDomain:Ljava/lang/String;

.field public customOnlineDomain:Ljava/lang/String;

.field public customPreDomain:Ljava/lang/String;

.field public enableProgressListener:Z

.field public envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public forceRefreshCache:Z

.field public handler:Landroid/os/Handler;

.field public isInnerOpen:Z

.field public method:Lmtopsdk/mtop/domain/MethodEnum;

.field public netParam:I

.field public openAppKey:Ljava/lang/String;

.field public pageName:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public priorityData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public priorityFlag:Z

.field public protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

.field public queryParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reqAppKey:Ljava/lang/String;

.field public reqBizExt:Ljava/lang/String;

.field public reqContext:Ljava/lang/Object;

.field public reqSource:I

.field public reqUserId:Ljava/lang/String;

.field public requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public retryTimes:I

.field public skipCacheCallback:Z

.field public socketTimeout:I

.field public timeCalibrated:Z

.field public ttid:Ljava/lang/String;

.field public useCache:Z

.field public userInfo:Ljava/lang/String;

.field public wuaFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 36
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    .line 67
    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->timeCalibrated:Z

    .line 88
    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 93
    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    .line 98
    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    const-string v1, "DEFAULT_AUTH"

    .line 119
    iput-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    const/16 v1, 0x2710

    .line 140
    iput v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    const/16 v1, 0x3a98

    .line 145
    iput v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    .line 155
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string v1, "DEFAULT"

    .line 170
    iput-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 236
    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->priorityData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMethod()Lmtopsdk/mtop/domain/MethodEnum;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    return-object v0
.end method

.method public getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySslSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    return-void
.end method

.method public setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 257
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MtopNetworkProp [ protocol="

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", envMode="

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoRedirect="

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryTimes="

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestHeaders="

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeCalibrated="

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->timeCalibrated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ttid="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useCache="

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceRefreshCache="

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheKeyBlackList="

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    if-eqz v1, :cond_0

    const-string v1, ", apiType="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiType:Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/ApiTypeEnum;->getApiType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", openAppKey="

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", queryParameterMap="

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connTimeout="

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", socketTimeout="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizId="

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqBizExt="

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reqUserId="

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reqAppKey="

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authCode="

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTraceId ="

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", netParam="

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqSource="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
