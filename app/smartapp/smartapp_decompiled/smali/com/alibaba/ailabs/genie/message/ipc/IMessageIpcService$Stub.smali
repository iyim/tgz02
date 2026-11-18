.class public abstract Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;
.super Landroid/os/Binder;
.source "IMessageIpcService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alibaba.ailabs.genie.message.ipc.IMessageIpcService"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_countUnread:I = 0x2

.field static final TRANSACTION_listUnreadMessage:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x4

.field static final TRANSACTION_unregisterListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageIpcService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageIpcService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.alibaba.ailabs.genie.message.ipc.IMessageIpcService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 96
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->unregisterListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->registerListener(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 74
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    move-result-object p2

    .line 81
    invoke-virtual {p0, p1, p4, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->listUnreadMessage(IILcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 65
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->countUnread(Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 49
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 52
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcService$Stub;->call(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/message/ipc/IMessageIpcCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
