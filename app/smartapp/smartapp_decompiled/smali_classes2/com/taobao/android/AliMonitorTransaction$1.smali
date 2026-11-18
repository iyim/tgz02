.class final Lcom/taobao/android/AliMonitorTransaction$1;
.super Ljava/lang/Object;
.source "AliMonitorTransaction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/AliMonitorTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/android/AliMonitorTransaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorTransaction;
    .locals 0

    .line 116
    invoke-static {p1}, Lcom/taobao/android/AliMonitorTransaction;->readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorTransaction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorTransaction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorTransaction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/android/AliMonitorTransaction;
    .locals 0

    .line 121
    new-array p1, p1, [Lcom/taobao/android/AliMonitorTransaction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorTransaction$1;->newArray(I)[Lcom/taobao/android/AliMonitorTransaction;

    move-result-object p1

    return-object p1
.end method
