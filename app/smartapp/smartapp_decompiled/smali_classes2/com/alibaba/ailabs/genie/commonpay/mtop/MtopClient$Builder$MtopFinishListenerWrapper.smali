.class Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;
.super Ljava/lang/Object;
.source "MtopClient.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtopFinishListenerWrapper"
.end annotation


# instance fields
.field private callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    return-void
.end method

.method private isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 316
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
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 7

    const-string p2, "EC00000"

    .line 261
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printMtopFinishEvent(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 262
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printMtopFinishEventTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->isResponseNull(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_2

    :try_start_1
    const-string v0, "\u7f51\u7edc\u5f02\u5e38, \u8bf7\u7a0d\u540e\u91cd\u8bd5"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    new-instance v1, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    .line 306
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 309
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/commonpay/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;->onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V

    return-void

    :catchall_0
    move-exception v1

    move-object v2, p2

    :goto_0
    move-object v3, v0

    goto/16 :goto_4

    .line 277
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 280
    :try_start_3
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :cond_3
    move-object v2, v0

    move-object v3, v2

    .line 284
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 286
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v4, v0

    .line 288
    :goto_2
    const-class v1, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    invoke-static {v4, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 290
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$300(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setDataHash(I)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$400(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 294
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setDataMd5(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    if-nez v1, :cond_7

    .line 303
    new-instance v1, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;-><init>()V

    .line 304
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    .line 306
    :cond_7
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 309
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/commonpay/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 311
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;->onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V

    return-void

    :catchall_2
    move-exception p2

    move-object v0, v1

    move-object v1, p2

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v0

    .line 298
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v0, :cond_9

    .line 303
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    .line 306
    :cond_9
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 309
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/commonpay/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 311
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;->onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V

    return-void

    :catchall_5
    move-exception v1

    move-object v2, p2

    :goto_4
    if-nez v0, :cond_b

    .line 303
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;-><init>()V

    .line 304
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->request:Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;

    .line 306
    :cond_b
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setErrCode(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setError(Ljava/lang/String;)V

    .line 308
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;->access$500(Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 309
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/commonpay/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->setTraceId(Ljava/lang/String;)V

    .line 311
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/MtopClient$Callback;->onResponse(Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
