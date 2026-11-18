.class public Lmtopsdk/mtop/network/NetworkCallbackAdapter;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Lmtopsdk/network/NetworkCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkCallbackAdapter"


# instance fields
.field filterManager:Lmtopsdk/framework/manager/FilterManager;

.field public finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

.field public headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

.field final mtopContext:Lmtopsdk/framework/domain/MtopContext;


# direct methods
.method public constructor <init>(Lmtopsdk/framework/domain/MtopContext;)V
    .locals 1
    .param p1    # Lmtopsdk/framework/domain/MtopContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    if-eqz p1, :cond_2

    .line 43
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v0

    iget-object v0, v0, Lmtopsdk/mtop/global/MtopConfig;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    iput-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    .line 46
    :cond_0
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    .line 47
    instance-of v0, p1, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_1

    .line 48
    move-object v0, p1

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    iput-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->headerListener:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    .line 50
    :cond_1
    instance-of v0, p1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v0, :cond_2

    .line 51
    check-cast p1, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iput-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->finishListener:Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    :cond_2
    return-void
.end method


# virtual methods
.method public onCancel(Lmtopsdk/network/Call;)V
    .locals 1

    .line 122
    new-instance v0, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {v0}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    invoke-interface {p1}, Lmtopsdk/network/Call;->request()Lmtopsdk/network/domain/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    const/4 v0, -0x8

    invoke-virtual {p1, v0}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object p1

    .line 123
    iget-object v0, p1, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    iget-object v0, v0, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onFinish(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lmtopsdk/network/Call;Ljava/lang/Exception;)V
    .locals 1

    .line 110
    new-instance v0, Lmtopsdk/network/domain/Response$Builder;

    invoke-direct {v0}, Lmtopsdk/network/domain/Response$Builder;-><init>()V

    invoke-interface {p1}, Lmtopsdk/network/Call;->request()Lmtopsdk/network/domain/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmtopsdk/network/domain/Response$Builder;->request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    const/4 v0, -0x7

    invoke-virtual {p1, v0}, Lmtopsdk/network/domain/Response$Builder;->code(I)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmtopsdk/network/domain/Response$Builder;->message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmtopsdk/network/domain/Response$Builder;->build()Lmtopsdk/network/domain/Response;

    move-result-object p1

    .line 111
    iget-object p2, p1, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    iget-object p2, p2, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onFinish(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    iget-object v1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v1, v1, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    .line 79
    iget-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 80
    new-instance p2, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;

    invoke-direct {p2, p0, p1}, Lmtopsdk/mtop/network/NetworkCallbackAdapter$2;-><init>(Lmtopsdk/mtop/network/NetworkCallbackAdapter;Lmtopsdk/network/domain/Response;)V

    .line 105
    iget-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object v0, v0, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1, p2, v0}, Lmtopsdk/framework/util/FilterUtils;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public onHeader(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
    .locals 1

    .line 57
    new-instance v0, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/network/NetworkCallbackAdapter$1;-><init>(Lmtopsdk/mtop/network/NetworkCallbackAdapter;Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    iget-object p2, p2, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p1, v0, p2}, Lmtopsdk/framework/util/FilterUtils;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public onResponse(Lmtopsdk/network/Call;Lmtopsdk/network/domain/Response;)V
    .locals 0

    .line 116
    iget-object p1, p2, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    iget-object p1, p1, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onHeader(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    .line 117
    iget-object p1, p2, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    iget-object p1, p1, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lmtopsdk/mtop/network/NetworkCallbackAdapter;->onFinish(Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    return-void
.end method
