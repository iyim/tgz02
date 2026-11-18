.class public interface abstract Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel;
.super Ljava/lang/Object;
.source "IRequestPermissionModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;,
        Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;
    }
.end annotation


# virtual methods
.method public abstract breakReference()V
.end method

.method public abstract cloudServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V
.end method

.method public abstract loadServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V
.end method
