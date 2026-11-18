.class public interface abstract Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;
.super Ljava/lang/Object;
.source "IRequestPermissionListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/Callback;
.end annotation


# virtual methods
.method public abstract authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
