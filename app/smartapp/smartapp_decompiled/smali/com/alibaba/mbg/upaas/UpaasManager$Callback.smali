.class public interface abstract Lcom/alibaba/mbg/upaas/UpaasManager$Callback;
.super Ljava/lang/Object;
.source "UpaasManager.java"


# annotations
.annotation build Lcom/alibaba/mbg/unet/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/upaas/UpaasManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onUpaasStateChange(I)V
.end method

.method public abstract onVidFetched()V
.end method
