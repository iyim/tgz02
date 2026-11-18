.class public interface abstract Lcom/alibaba/genie/waft/gcs/network/api/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.genie.waft.gcs.network.NetworkImpl"
.end annotation


# virtual methods
.method public abstract send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public abstract sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public abstract sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
