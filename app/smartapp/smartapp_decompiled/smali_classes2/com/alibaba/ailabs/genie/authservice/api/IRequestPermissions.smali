.class public interface abstract Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissions;
.super Ljava/lang/Object;
.source "IRequestPermissions.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.ailabs.genie.authservice.RequestPermissionsImpl"
.end annotation


# virtual methods
.method public abstract cloudRquestPermissions(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;
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

.method public abstract requestPermissions(Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;)V
    .param p1    # Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;
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
