.class public interface abstract Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;
.super Ljava/lang/Object;
.source "IMessageIpcCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
