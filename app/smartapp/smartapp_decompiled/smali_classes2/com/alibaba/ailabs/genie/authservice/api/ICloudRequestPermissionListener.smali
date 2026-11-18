.class public interface abstract Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;
.super Ljava/lang/Object;
.source "ICloudRequestPermissionListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/Callback;
.end annotation


# virtual methods
.method public abstract cloudAuthServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
