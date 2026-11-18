.class public interface abstract Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;
.super Ljava/lang/Object;
.source "IAliTVASRResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponseCallback(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
