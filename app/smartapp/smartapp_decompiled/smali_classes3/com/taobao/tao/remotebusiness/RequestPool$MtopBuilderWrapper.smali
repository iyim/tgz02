.class Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;
.super Ljava/lang/Object;
.source "RequestPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/remotebusiness/RequestPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtopBuilderWrapper"
.end annotation


# instance fields
.field private mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

.field private retryTime:I


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/intf/MtopBuilder;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    return-void
.end method


# virtual methods
.method public getMtopBuilder()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    return-object v0
.end method

.method public retryRequest()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    instance-of v1, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v1, :cond_0

    .line 193
    nop

    nop

    .line 195
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->retryRequest()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->getMtopContext()Lmtopsdk/framework/domain/MtopContext;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    invoke-virtual {v1}, Lmtopsdk/mtop/common/ApiID;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    iget v1, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->retryTime:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 203
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v1, v1, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v1, :cond_1

    .line 204
    instance-of v2, v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v2, :cond_1

    .line 205
    check-cast v1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    .line 206
    new-instance v2, Lmtopsdk/mtop/common/MtopFinishEvent;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v2, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    iget-object v0, v0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 210
    :cond_2
    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->apiId:Lmtopsdk/mtop/common/ApiID;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/ApiID;->cancelApiCall()Z

    .line 211
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    .line 212
    iget v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/tao/remotebusiness/RequestPool$MtopBuilderWrapper;->retryTime:I

    :cond_3
    :goto_0
    return-void
.end method
