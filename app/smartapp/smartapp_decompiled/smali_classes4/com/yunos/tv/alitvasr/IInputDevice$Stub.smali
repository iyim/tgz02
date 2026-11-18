.class public abstract Lcom/yunos/tv/alitvasr/IInputDevice$Stub;
.super Landroid/os/Binder;
.source "IInputDevice.java"

# interfaces
.implements Lcom/yunos/tv/alitvasr/IInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunos/tv/alitvasr/IInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IInputDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yunos.tv.alitvasr.IInputDevice"

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onFeed:I = 0x2

.field static final TRANSACTION_onStartRecord:I = 0x1

.field static final TRANSACTION_onStopRecord:I = 0x6

.field static final TRANSACTION_onStream:I = 0x3

.field static final TRANSACTION_onVolume:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yunos.tv.alitvasr.IInputDevice"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IInputDevice;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yunos.tv.alitvasr.IInputDevice"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/yunos/tv/alitvasr/IInputDevice;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/yunos/tv/alitvasr/IInputDevice;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/yunos/tv/alitvasr/IInputDevice$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yunos.tv.alitvasr.IInputDevice"

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onStopRecord()I

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onError(I)I

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 86
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onVolume(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 79
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 80
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onStream(Ljava/lang/String;ZZ)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 61
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onFeed([BI)I

    move-result p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 51
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IInputDevice$Stub;->onStartRecord(I)I

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 46
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
