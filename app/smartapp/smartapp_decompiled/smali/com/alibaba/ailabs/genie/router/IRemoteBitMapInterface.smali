.class public interface abstract Lcom/alibaba/ailabs/genie/router/IRemoteBitMapInterface;
.super Ljava/lang/Object;
.source "IRemoteBitMapInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/IRemoteBitMapInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
