.class public interface abstract Lcom/alibaba/ailabs/genie/resmanager/IResManager;
.super Ljava/lang/Object;
.source "IResManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/resmanager/IResManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerListener(ILcom/alibaba/ailabs/genie/resmanager/IResListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseResource(IILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requireResource(IIILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(ILcom/alibaba/ailabs/genie/resmanager/IResListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
