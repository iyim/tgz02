.class public interface abstract Lcom/taobao/aranger/intf/IRemoteService;
.super Ljava/lang/Object;
.source "IRemoteService.java"

# interfaces
.implements Lcom/taobao/aranger/intf/IService;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isRemote()Z
.end method

.method public abstract sendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
