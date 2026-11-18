.class public final Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;,
        Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Callback;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

.field private mMtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    .line 42
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$000(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mMtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;-><init>(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTraceId(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;
    .locals 2

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "EagleEye-TraceId"

    .line 373
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 374
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "eagleeye-traceid"

    .line 376
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 378
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 379
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private parseResponse(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 335
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 337
    :try_start_1
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    move-object v3, v0

    goto/16 :goto_3

    :cond_1
    move-object v1, v0

    move-object v2, v1

    .line 340
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 342
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 344
    :goto_1
    const-class v3, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    invoke-static {v4, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    :try_start_3
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$300(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setDataHash(I)V

    .line 349
    :cond_3
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$400(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setDataMd5(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-nez v3, :cond_5

    .line 358
    new-instance v3, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;-><init>()V

    .line 359
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    .line 361
    :cond_5
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 362
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->getTraceId(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 364
    :cond_6
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_6

    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_2
    move-object v0, v2

    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_3
    move-object v0, v2

    move-object v2, v3

    :goto_4
    :try_start_4
    const-string v1, "EC00000"

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_7

    .line 358
    new-instance v2, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;-><init>()V

    .line 359
    iget-object v3, p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    move-object v3, v2

    .line 361
    :cond_7
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 362
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->getTraceId(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 364
    :cond_8
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    :goto_5
    return-object v3

    :catchall_3
    move-exception v0

    :goto_6
    if-nez v3, :cond_9

    .line 358
    new-instance v3, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;-><init>()V

    .line 359
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    .line 361
    :cond_9
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 362
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->getTraceId(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 364
    :cond_a
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public send()Lmtopsdk/mtop/common/ApiID;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$100(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printSimple(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mMtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public syncRequest()Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->access$100(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printSimple(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mBuilder:Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->mMtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient;->parseResponse(Lcom/alibaba/ailabs/genie/pay/mtop/MtopClient$Builder;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;

    move-result-object v0

    return-object v0
.end method
