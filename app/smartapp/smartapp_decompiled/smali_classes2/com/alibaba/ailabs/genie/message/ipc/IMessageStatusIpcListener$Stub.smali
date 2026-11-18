.class public abstract Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub;
.super Landroid/os/Binder;
.source "IMessageStatusIpcListener.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alibaba.ailabs.genie.message.ipc.IMessageStatusIpcListener"

.field static final TRANSACTION_basicTypes:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageStatusIpcListener"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageStatusIpcListener"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageStatusIpcListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 49
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    .line 62
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageStatusIpcListener$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
