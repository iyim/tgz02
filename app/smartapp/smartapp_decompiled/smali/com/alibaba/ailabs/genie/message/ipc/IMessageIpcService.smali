.class public interface abstract Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;
.super Ljava/lang/Object;
.source "IMessageIpcService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;
    }
.end annotation


# virtual methods
.method public abstract call(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract countUnread(Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listUnreadMessage(IILcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
