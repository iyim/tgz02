.class public interface abstract Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/GenieJsApiWorkerCallback;
.super Ljava/lang/Object;
.source "GenieJsApiWorkerCallback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/Callback;
.end annotation


# virtual methods
.method public abstract fail(Ljava/lang/String;ILjava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public abstract success(Ljava/lang/String;ILjava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
