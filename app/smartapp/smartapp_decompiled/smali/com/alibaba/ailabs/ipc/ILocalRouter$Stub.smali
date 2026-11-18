.class public abstract Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;
.super Landroid/os/Binder;
.source "ILocalRouter.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/ILocalRouter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ipc/ILocalRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alibaba.ailabs.ipc.ILocalRouter"

.field static final TRANSACTION_onCommu:I = 0x4

.field static final TRANSACTION_onConnMultiRouter:I = 0x1

.field static final TRANSACTION_onEvent:I = 0x3

.field static final TRANSACTION_onUnregisterRemoteServer:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.alibaba.ailabs.ipc.ILocalRouter"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ILocalRouter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.alibaba.ailabs.ipc.ILocalRouter"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/alibaba/ailabs/ipc/ILocalRouter;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/alibaba/ailabs/ipc/ILocalRouter;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.alibaba.ailabs.ipc.ILocalRouter"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 79
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 84
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 89
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 66
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 69
    sget-object p1, Lcom/alibaba/ailabs/ipc/event/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/alibaba/ailabs/ipc/event/Event;

    .line 74
    :cond_5
    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V

    return v0

    .line 58
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->onUnregisterRemoteServer(Ljava/lang/String;)V

    return v0

    .line 50
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/ILocalRouter$Stub;->onConnMultiRouter(Landroid/os/IBinder;)V

    return v0
.end method
