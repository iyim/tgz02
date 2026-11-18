.class public Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;
.super Ljava/lang/Object;
.source "MtopFinishListenerWrapper.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "MtopFinishWrapper"


# instance fields
.field public final mNetworkListener:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

.field public final mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mNetworkListener:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 6
    iput-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mNetworkListener:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "onFinished()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mNetworkListener:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "onFinished(). "

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 9
    :try_start_0
    invoke-interface {p2, p1}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopFinishEvent;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {p2, p1}, La/a/a/a/a/a/g/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1

    .line 17
    :try_start_1
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mNetworkListener:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    invoke-interface {p2, p1}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 19
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/mtop/MtopFinishListenerWrapper;->mRequest:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method
