.class public interface abstract Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/IGenieJsApiWorker;
.super Ljava/lang/Object;
.source "IGenieJsApiWorker.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.tmall.genie.waft.gcs.jsworker.imp.GenieJsApiWorker"
.end annotation


# virtual methods
.method public abstract sendAsync(Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/GenieJsApiWorkerCallback;)V
    .param p1    # Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;
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
