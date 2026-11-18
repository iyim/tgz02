.class public abstract Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;
.super Landroid/os/Binder;
.source "IAliTVASRTTSCallback.java"

# interfaces
.implements Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yunos.tv.alitvasr.IAliTVASRTTSCallback"

.field static final TRANSACTION_onException:I = 0x3

.field static final TRANSACTION_onTtsStart:I = 0x1

.field static final TRANSACTION_onTtsStop:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yunos.tv.alitvasr.IAliTVASRTTSCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yunos.tv.alitvasr.IAliTVASRTTSCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "com.yunos.tv.alitvasr.IAliTVASRTTSCallback"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;->onException(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 57
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;->onTtsStop()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 48
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback$Stub;->onTtsStart(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
