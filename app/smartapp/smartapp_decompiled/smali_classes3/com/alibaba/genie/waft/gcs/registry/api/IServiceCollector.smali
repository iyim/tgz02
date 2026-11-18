.class public interface abstract Lcom/alibaba/genie/waft/gcs/registry/api/IServiceCollector;
.super Ljava/lang/Object;
.source "IServiceCollector.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.genie.waft.gcs.registry.ServiceCollector"
.end annotation


# virtual methods
.method public abstract collect(Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public abstract collect(Ljava/util/List;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method

.method public abstract find(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
