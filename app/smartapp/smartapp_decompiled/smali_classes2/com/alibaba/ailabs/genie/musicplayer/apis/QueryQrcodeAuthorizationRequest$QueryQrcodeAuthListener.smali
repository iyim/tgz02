.class public interface abstract Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;
.super Ljava/lang/Object;
.source "QueryQrcodeAuthorizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryQrcodeAuthListener"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invalid()V
.end method

.method public abstract next()V
.end method

.method public abstract success(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V
.end method
