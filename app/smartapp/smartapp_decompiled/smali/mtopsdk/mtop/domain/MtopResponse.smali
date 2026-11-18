.class public Lmtopsdk/mtop/domain/MtopResponse;
.super Ljava/lang/Object;
.source "MtopResponse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    }
.end annotation


# static fields
.field private static final SHARP:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopResponse"

.field private static final serialVersionUID:J = 0x15bd0e193dcddcdbL


# instance fields
.field private api:Ljava/lang/String;

.field private volatile bParsed:Z

.field private bytedata:[B

.field private data:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dataJsonObject:Lorg/json/JSONObject;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mappingCode:Ljava/lang/String;

.field public mappingCodeSuffix:Ljava/lang/String;

.field private mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

.field private responseCode:I

.field private responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field private ret:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 99
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 99
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 119
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 99
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 126
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 179
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBytedata()[B
    .locals 1

    .line 264
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    return-object v0
.end method

.method public getDataJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 247
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 250
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 2

    .line 471
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getMappingCode()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;
    .locals 1

    .line 316
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 298
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    return v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 214
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 162
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    .locals 1

    .line 443
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 196
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    return-object v0
.end method

.method public is41XResult()Z
    .locals 1

    .line 550
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->is41XResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiLockedAndRequestQueued()Z
    .locals 2

    .line 570
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    const/16 v1, 0x1a4

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAIL_SYS_REQUEST_QUEUED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isApiLockedResult()Z
    .locals 2

    .line 560
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    const/16 v1, 0x1a4

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isApiLockedResult(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isApiSuccess()Z
    .locals 1

    .line 481
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExpiredRequest()Z
    .locals 1

    .line 491
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isExpiredRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIllegelSign()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isIllegelSign(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopSdkError()Z
    .locals 1

    .line 579
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isMtopSdkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopServerError()Z
    .locals 1

    .line 588
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isMtopServerError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkError()Z
    .locals 1

    .line 512
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoNetwork()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isNoNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionInvalid()Z
    .locals 1

    .line 530
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSessionInvalid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemError()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSystemError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseJsonByte()V
    .locals 8

    .line 332
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    monitor-enter p0

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v0, :cond_1

    .line 338
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 356
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 357
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mtopsdk.MtopResponse"

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[parseJsonByte]MtopResponse bytedata : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "api"

    .line 364
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 367
    :cond_4
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, "v"

    .line 368
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    :cond_5
    const-string/jumbo v0, "ret"

    .line 372
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 374
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    .line 376
    iget-object v6, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-lez v3, :cond_8

    .line 380
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 381
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "::"

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 383
    array-length v3, v0

    if-le v3, v1, :cond_8

    .line 385
    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 386
    aget-object v3, v0, v4

    iput-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 389
    :cond_7
    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 390
    aget-object v0, v0, v1

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    :cond_8
    const-string v0, "data"

    .line 397
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_9
    :goto_1
    :try_start_2
    iput-boolean v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "mtopsdk.MtopResponse"

    .line 399
    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v3, v3, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[parseJsonByte] parse bytedata error ,api="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ANDROID_SYS_JSONDATA_PARSE_ERROR"

    .line 403
    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 406
    :cond_b
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "\u89e3\u6790JSONDATA\u9519\u8bef"

    .line 407
    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 412
    :goto_3
    :try_start_4
    monitor-exit p0

    return-void

    .line 410
    :goto_4
    iput-boolean v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    throw v0

    .line 341
    :cond_c
    :goto_5
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "mtopsdk.MtopResponse"

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parseJsonByte]MtopResponse bytedata is blank,api="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_d
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ANDROID_SYS_JSONDATA_BLANK"

    .line 345
    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 348
    :cond_e
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    .line 349
    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 351
    :cond_f
    iput-boolean v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 352
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 412
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    return-void
.end method

.method public setBytedata([B)V
    .locals 0

    .line 271
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    return-void
.end method

.method public setData([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    return-void
.end method

.method public setDataJsonObject(Lorg/json/JSONObject;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    return-void
.end method

.method public setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .line 307
    iput p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    const-string v1, "MtopResponse[ api="

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",v="

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",retCode="

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",retMsg="

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mappingCode="

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mappingCodeSuffix="

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ret="

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data="

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",responseCode="

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",headerFields="

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",bytedata="

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
