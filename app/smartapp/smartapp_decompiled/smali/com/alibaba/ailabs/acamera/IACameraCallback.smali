.class public interface abstract Lcom/alibaba/ailabs/acamera/IACameraCallback;
.super Ljava/lang/Object;
.source "IACameraCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
