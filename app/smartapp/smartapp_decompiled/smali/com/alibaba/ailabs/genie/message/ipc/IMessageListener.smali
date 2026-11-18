.class public interface abstract Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;
.super Ljava/lang/Object;
.source "IMessageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
