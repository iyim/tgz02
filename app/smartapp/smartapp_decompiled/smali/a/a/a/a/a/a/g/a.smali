.class public La/a/a/a/a/a/g/a;
.super Ljava/lang/Object;
.source "GenieMtopClient.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/network/api/Network;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 48
    new-array p1, p1, [B

    .line 49
    :cond_1
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/api/Response;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;[BLcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)V

    goto :goto_0

    .line 50
    :cond_2
    new-instance v0, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    .line 53
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(ILjava/lang/String;)V

    .line 56
    invoke-static {p0, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static a(Lmtopsdk/mtop/intf/Mtop;Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 6
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    .line 2
    new-instance v1, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v1}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    const-string v2, "Need_Encode"

    .line 7
    invoke-static {p1, v2}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Ljava/lang/String;)Z

    move-result v2

    .line 8
    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    const-string v2, "Need_Session"

    .line 13
    invoke-static {p1, v2}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Ljava/lang/String;)Z

    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    const-string v2, "Version"

    const-string v3, "1.0"

    .line 18
    invoke-static {p1, v2, v3}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 20
    iget-object v2, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->d:[B

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 21
    array-length v4, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move-object v4, v3

    .line 25
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26
    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getTtid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 28
    :goto_2
    invoke-virtual {p0, v1, v2}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    :goto_3
    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getProjectStaging()Ljava/lang/String;

    move-result-object v3

    .line 35
    :cond_5
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scm_project="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EagleEye-UserData"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    :cond_6
    const/16 v0, 0x7530

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Timeout"

    invoke-static {p1, v2, v1}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 44
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    return-object p0
.end method


# virtual methods
.method public send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 6
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->isInited()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->checkMtopSDKInit()Z

    .line 7
    :cond_1
    invoke-static {v2, p1}, La/a/a/a/a/a/g/a;->a(Lmtopsdk/mtop/intf/Mtop;Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 11
    invoke-static {p1, v2}, La/a/a/a/a/a/g/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send() called with: request = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]. time = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v2
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 2
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0, p1}, La/a/a/a/a/a/g/a;->a(Lmtopsdk/mtop/intf/Mtop;Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;

    invoke-direct {v1, p1}, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 6
    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 2
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {v0, p1}, La/a/a/a/a/a/g/a;->a(Lmtopsdk/mtop/intf/Mtop;Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 12
    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
