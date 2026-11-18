.class Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;
.super Ljava/lang/Object;
.source "DMRequester.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;
.implements Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ultron/datamodel/imp/DMRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Response"
.end annotation


# instance fields
.field mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

.field mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

.field mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    .line 223
    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    .line 224
    iput-object p4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    return-void
.end method


# virtual methods
.method public onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 12

    const/4 p2, 0x1

    .line 377
    new-array v0, p2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCached,request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DMRequester"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    new-array v0, p2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCached, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMRequester-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v4, v4, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stageFromStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCacheData(Z)V

    .line 383
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3, p1, p3}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->isDealDataOuter(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-void

    .line 391
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-boolean v0, v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mSubmit:Z

    const-string v9, "submit onSuccess callback error"

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 393
    :try_start_1
    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/16 v4, 0x2710

    iget-object v7, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V

    .line 394
    iget-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3, p1, v11, p2, v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 396
    new-array p3, v10, [Ljava/lang/String;

    aput-object v9, p3, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    invoke-static {v1, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    .line 401
    :cond_2
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-direct {v0, v3}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    .line 402
    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 403
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    :try_start_2
    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/16 v4, 0x2710

    iget-object v7, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getExtraData()Ljava/util/Map;

    move-result-object v8

    move-object v5, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V

    .line 407
    iget-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3, p1, v11, p2, v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v3, "isCachaData"

    const-string v4, "true"

    .line 409
    invoke-virtual {v0, v3, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->addExtraData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/16 v4, 0x2710

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getExtraData()Ljava/util/Map;

    move-result-object v8

    move-object v5, p1

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V

    .line 411
    iget-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3, p1, v11, v2, v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 414
    new-array p3, v10, [Ljava/lang/String;

    aput-object v9, p3, v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    invoke-static {v1, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 12

    .line 357
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$100(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    const/4 v0, 0x1

    .line 358
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 359
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DMRequester"

    .line 358
    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMRequester-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v4, v4, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v5, v5, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCacheData(Z)V

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->isDealDataOuter(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p3, 0x2

    .line 367
    new-array p3, p3, [Ljava/lang/String;

    const-string v1, "onError \u8282\u70b9onError\u56de\u8c03\u5904\u7406\u9519\u8bef\u51fa\u9519"

    aput-object v1, p3, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {v2, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v7, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 371
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v11

    const-string v4, "netRequest"

    .line 370
    invoke-static/range {v4 .. v11}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p3, p3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, p3, v3, v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V

    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 231
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$000(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "requestTime"

    .line 232
    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    const-string v2, "dataParseTime"

    .line 233
    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v2, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$100(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    .line 237
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$200(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z

    move-result v2

    const-string v8, "DMRequester"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 238
    new-instance v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;

    invoke-direct {v2, v1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;Lmtopsdk/mtop/domain/MtopResponse;)V

    new-array v3, v10, [Ljava/lang/Object;

    .line 247
    invoke-virtual {v2, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 249
    :cond_1
    new-array v2, v9, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess, request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v4, v4, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v8, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 251
    new-array v2, v9, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v8, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMRequester-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMRequester onSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v4, v4, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSucess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "ultronProfile"

    invoke-static {v11, v2}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->isCacheData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->reset()V

    .line 260
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v2, v10}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCacheData(Z)V

    .line 264
    :cond_3
    :try_start_0
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v3, p1

    move-object/from16 v5, p4

    :try_start_1
    invoke-virtual {v2, v3, v0, v5}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->isDealDataOuter(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_4

    return-void

    :catch_0
    move/from16 v3, p1

    move-object/from16 v5, p4

    :catch_1
    :cond_4
    const-string v2, "isDealDataOuter"

    .line 269
    invoke-static {v11, v2}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-boolean v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mSubmit:Z

    const-string v12, "submit onSuccess callback error"

    const/4 v13, 0x2

    if-eqz v2, :cond_5

    .line 273
    :try_start_2
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    iget-object v6, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 275
    new-array v2, v13, [Ljava/lang/String;

    aput-object v12, v2, v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v8, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void

    .line 280
    :cond_5
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$000(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z

    move-result v2

    const-string v4, "processData_ultron"

    if-eqz v2, :cond_6

    .line 281
    invoke-static {v4}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 284
    :cond_6
    new-instance v7, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;

    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-direct {v7, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;-><init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v2

    const-class v6, Lcom/alibaba/fastjson/JSONObject;

    new-array v14, v10, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v2, v6, v14}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "data"

    .line 286
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 288
    invoke-virtual {v7, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseProtocolFeatures(Lcom/alibaba/fastjson/JSONObject;)V

    .line 290
    sget-object v14, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->FEATURE_CONTAINER_CACHE:Ljava/math/BigInteger;

    invoke-virtual {v7, v14}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->hasFeature(Ljava/math/BigInteger;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 291
    iget-object v14, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v15, v14, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v14, v14, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v16, v14

    move-object v14, v7

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v19}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->processCache(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;ZZ)V

    .line 293
    :cond_7
    invoke-virtual {v7, v2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lcom/alibaba/fastjson/JSONObject;)V

    .line 294
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v2}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$000(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 295
    invoke-static {v4}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    :cond_8
    const-string v2, "parse complete"

    .line 298
    invoke-static {v11, v2}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 302
    :try_start_3
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    iget-object v6, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getExtraData()Ljava/util/Map;

    move-result-object v7

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/IDMContext;Ljava/util/Map;)V

    .line 303
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v3, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v4, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v4}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v0, v3, v9, v4}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V

    goto/16 :goto_2

    .line 305
    :cond_9
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/4 v6, 0x1

    invoke-virtual {v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getExtraData()Ljava/util/Map;

    move-result-object v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v15, v7

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V

    .line 306
    invoke-virtual {v15}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getExtraData()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    const-string v3, "protocolVersion"

    .line 310
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    instance-of v3, v2, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v3, :cond_b

    return-void

    .line 315
    :cond_b
    :try_start_4
    nop

    nop

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x4000cccccccccccdL    # 2.1

    cmpl-double v6, v2, v4

    if-lez v6, :cond_c

    const-string v14, "dataProcess"

    .line 318
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "parse response error"

    const-string v21, "error msg"

    move-object/from16 v17, v2

    invoke-static/range {v14 .. v21}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object v3, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v4, v1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v4}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v0, v3, v10, v4}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception v0

    .line 323
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 327
    new-array v2, v13, [Ljava/lang/String;

    aput-object v12, v2, v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v8, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    :goto_2
    const-string v0, "callback complete"

    .line 329
    invoke-static {v11, v0}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->stage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 12

    .line 335
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mMtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$100(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    const/4 v0, 0x1

    .line 336
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSystemError: errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",errorMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v3, v3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 337
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DMRequester"

    .line 336
    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMRequester-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v4, v4, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v5, v5, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setCacheData(Z)V

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    invoke-virtual {v1, p1, p2, p3}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->isDealDataOuter(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mOuterCallback:Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;->onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p3, 0x2

    .line 345
    new-array p3, p3, [Ljava/lang/String;

    const-string v1, "onSystemError \u8282\u70b9onError\u56de\u8c03\u5904\u7406\u9519\u8bef\u51fa\u9519"

    aput-object v1, p3, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {v2, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v7, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 350
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v11

    const-string v4, "netRequest"

    .line 349
    invoke-static/range {v4 .. v11}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-object p3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p3, p3, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->access$300(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, p3, v3, v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V

    return-void
.end method
