.class public interface abstract Lcom/alibaba/ailabs/genie/resmanager/IResListener;
.super Ljava/lang/Object;
.source "IResListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/resmanager/IResListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(IILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
