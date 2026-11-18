.class public interface abstract Lcom/alibaba/genie/waft/gcs/ut/api/IUt;
.super Ljava/lang/Object;
.source "IUt.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.genie.waft.gcs.ut.imp.UtImp"
.end annotation


# virtual methods
.method public abstract sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
