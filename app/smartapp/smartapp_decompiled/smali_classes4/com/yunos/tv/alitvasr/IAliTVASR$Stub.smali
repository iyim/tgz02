.class public abstract Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;
.super Landroid/os/Binder;
.source "IAliTVASR.java"

# interfaces
.implements Lcom/yunos/tv/alitvasr/IAliTVASR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunos/tv/alitvasr/IAliTVASR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IAliTVASR$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yunos.tv.alitvasr.IAliTVASR"

.field static final TRANSACTION_clientToAsr:I = 0xc

.field static final TRANSACTION_getService:I = 0xd

.field static final TRANSACTION_onFarDeviceData:I = 0xb

.field static final TRANSACTION_playTTS:I = 0x4

.field static final TRANSACTION_playTTSWithCallback:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendEventToServer:I = 0xe

.field static final TRANSACTION_setASRMode:I = 0x7

.field static final TRANSACTION_setAliTVASREnable:I = 0x3

.field static final TRANSACTION_setResultMode:I = 0x6

.field static final TRANSACTION_showASRUI:I = 0x8

.field static final TRANSACTION_stopTTS:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_updateAppScene:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yunos.tv.alitvasr.IAliTVASR"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASR;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yunos.tv.alitvasr.IAliTVASR"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/yunos/tv/alitvasr/IAliTVASR;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/yunos/tv/alitvasr/IAliTVASR;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.yunos.tv.alitvasr.IAliTVASR"

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 228
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;

    move-result-object p2

    .line 237
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;)I

    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 211
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 216
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 221
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->getService(ILandroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 188
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 193
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 198
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 167
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 170
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 175
    :cond_3
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->onFarDeviceData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 146
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 149
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 154
    :cond_5
    invoke-virtual {p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->updateAppScene(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 161
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 134
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    move-result-object p2

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 123
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 v3, 0x1

    .line 128
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->showASRUI(Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->setASRMode(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->setResultMode(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->stopTTS()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->playTTS(Ljava/lang/String;)Z

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 73
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    const/4 v3, 0x1

    .line 78
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->setAliTVASREnable(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 64
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->unregisterCallback(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 51
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    move-result-object p4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    const/4 v3, 0x1

    .line 58
    :cond_9
    invoke-virtual {p0, p1, p4, v3}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;->registerCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 46
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
