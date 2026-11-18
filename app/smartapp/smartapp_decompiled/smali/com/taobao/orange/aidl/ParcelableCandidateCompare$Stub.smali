.class public abstract Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;
.super Landroid/os/Binder;
.source "ParcelableCandidateCompare.java"

# interfaces
.implements Lcom/taobao/orange/aidl/ParcelableCandidateCompare;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/aidl/ParcelableCandidateCompare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.taobao.orange.aidl.ParcelableCandidateCompare"

.field static final TRANSACTION_equals:I = 0x1

.field static final TRANSACTION_equalsNot:I = 0x2

.field static final TRANSACTION_fuzzy:I = 0x7

.field static final TRANSACTION_fuzzyNot:I = 0x8

.field static final TRANSACTION_greater:I = 0x3

.field static final TRANSACTION_greaterEquals:I = 0x4

.field static final TRANSACTION_less:I = 0x5

.field static final TRANSACTION_lessEquals:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.taobao.orange.aidl.ParcelableCandidateCompare"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/taobao/orange/aidl/ParcelableCandidateCompare;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.taobao.orange.aidl.ParcelableCandidateCompare"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/taobao/orange/aidl/ParcelableCandidateCompare;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/taobao/orange/aidl/ParcelableCandidateCompare;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.taobao.orange.aidl.ParcelableCandidateCompare"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 131
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->fuzzyNot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 119
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->fuzzy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->lessEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->less(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 83
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->greaterEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 71
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->greater(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 59
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->equalsNot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 47
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/taobao/orange/aidl/ParcelableCandidateCompare$Stub;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 42
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
