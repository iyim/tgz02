.class public abstract Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;
.super Landroid/os/Binder;
.source "IAliTVASRCallback.java"

# interfaces
.implements Lcom/yunos/tv/alitvasr/IAliTVASRCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunos/tv/alitvasr/IAliTVASRCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yunos.tv.alitvasr.IAliTVASRCallback"

.field static final TRANSACTION_asrToClient:I = 0x5

.field static final TRANSACTION_getAppContextData:I = 0x3

.field static final TRANSACTION_getSceneInfo:I = 0x4

.field static final TRANSACTION_handleASRCommand:I = 0x2

.field static final TRANSACTION_onASRStatusUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yunos.tv.alitvasr.IAliTVASRCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASRCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yunos.tv.alitvasr.IAliTVASRCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.yunos.tv.alitvasr.IAliTVASRCallback"

    if-eq p1, v1, :cond_b

    const/4 v3, 0x2

    if-eq p1, v3, :cond_9

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 113
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 118
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 123
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 92
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 95
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 100
    :cond_5
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 107
    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 77
    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 80
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 85
    :cond_8
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->getAppContextData(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 62
    :cond_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 65
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 70
    :cond_a
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->handleASRCommand(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 48
    :cond_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 51
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 56
    :cond_c
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->onASRStatusUpdate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
