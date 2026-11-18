.class public interface abstract Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;
.super Ljava/lang/Object;
.source "IAliTVASRTTSCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onException(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTtsStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTtsStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
