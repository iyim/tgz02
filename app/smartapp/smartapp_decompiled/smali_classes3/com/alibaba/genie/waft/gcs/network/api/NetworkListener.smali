.class public interface abstract Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;
.super Ljava/lang/Object;
.source "NetworkListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/Callback;
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Response;
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
