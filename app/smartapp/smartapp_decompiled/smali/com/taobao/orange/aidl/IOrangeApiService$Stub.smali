.class public abstract Lcom/taobao/orange/aidl/IOrangeApiService$Stub;
.super Landroid/os/Binder;
.source "IOrangeApiService.java"

# interfaces
.implements Lcom/taobao/orange/aidl/IOrangeApiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/aidl/IOrangeApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/aidl/IOrangeApiService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.taobao.orange.aidl.IOrangeApiService"

.field static final TRANSACTION_addCandidate:I = 0xa

.field static final TRANSACTION_addFails:I = 0x8

.field static final TRANSACTION_forceCheckUpdate:I = 0x7

.field static final TRANSACTION_getConfigs:I = 0x3

.field static final TRANSACTION_getCustomConfig:I = 0x2

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_registerListener:I = 0x4

.field static final TRANSACTION_setUserId:I = 0x9

.field static final TRANSACTION_unregisterListener:I = 0x5

.field static final TRANSACTION_unregisterListeners:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.taobao.orange.aidl.IOrangeApiService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/IOrangeApiService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.taobao.orange.aidl.IOrangeApiService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/taobao/orange/aidl/IOrangeApiService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/taobao/orange/aidl/IOrangeApiService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.taobao.orange.aidl.IOrangeApiService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/ParcelableCandidateCompare;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, p4, p2}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->addCandidate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableCandidateCompare;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 132
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->setUserId(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 123
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->addFails([Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 116
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->forceCheckUpdate()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 107
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->unregisterListeners(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 96
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/orange/aidl/ParcelableConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/ParcelableConfigListener;

    move-result-object p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->unregisterListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 83
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/taobao/orange/aidl/ParcelableConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/ParcelableConfigListener;

    move-result-object p4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->registerListener(Ljava/lang/String;Lcom/taobao/orange/aidl/ParcelableConfigListener;Z)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 73
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v2

    .line 61
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 47
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    sget-object p1, Lcom/taobao/orange/OConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/orange/OConfig;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_1
    invoke-virtual {p0, p1}, Lcom/taobao/orange/aidl/IOrangeApiService$Stub;->init(Lcom/taobao/orange/OConfig;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 42
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
