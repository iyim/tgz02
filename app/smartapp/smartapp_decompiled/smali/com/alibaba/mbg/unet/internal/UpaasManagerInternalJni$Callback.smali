.class public interface abstract Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni$Callback;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/UpaasManagerInternalJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLog(Ljava/lang/String;)V
.end method

.method public abstract onUpaasStateChange(I)V
.end method

.method public abstract onVidFetch(Ljava/lang/String;)V
.end method
