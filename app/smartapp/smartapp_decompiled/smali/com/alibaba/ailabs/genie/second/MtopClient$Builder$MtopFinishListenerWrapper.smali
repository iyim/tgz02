.class Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;
.super Ljava/lang/Object;
.source "MtopClient.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtopFinishListenerWrapper"
.end annotation


# instance fields
.field private callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 6

    const-string p2, "EC00000"

    .line 377
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 380
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->access$1100(Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const-string v1, "MtopFinishEvent is null"

    invoke-interface {p1, p2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    return-void

    .line 385
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 387
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    .line 388
    array-length v2, v1

    if-gtz v2, :cond_2

    .line 389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const-string v1, "byte data is null"

    invoke-interface {p1, p2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 398
    array-length v5, v3

    if-gtz v5, :cond_3

    goto :goto_1

    .line 401
    :cond_3
    aget-object v2, v3, v4

    goto :goto_2

    .line 399
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 403
    :goto_2
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 405
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 406
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper$1;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/reflect/Type;

    aget-object v2, v2, v4

    aput-object v2, v5, v4

    invoke-direct {v1, p0, v5}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper$1;-><init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;[Ljava/lang/reflect/Type;)V

    new-array v2, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    .line 409
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$600(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 410
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->setDataHash(I)V

    .line 412
    :cond_5
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$700(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/analytics/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->setDataMd5(Ljava/lang/String;)V

    .line 416
    :cond_6
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$800(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 417
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/MtopUtil;->getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->setTraceId(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    if-nez v1, :cond_8

    .line 427
    :try_start_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const-string v1, "ApiResponse parse exception"

    invoke-interface {p1, p2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$900(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 434
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    if-nez p1, :cond_9

    .line 436
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    const-string v1, "data is null"

    invoke-interface {p1, p2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 441
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    goto :goto_3

    .line 443
    :cond_a
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->getMsgCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->getMsgInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 446
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 422
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 452
    :try_start_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    return-void

    :goto_4
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    iput-object v0, p2, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
