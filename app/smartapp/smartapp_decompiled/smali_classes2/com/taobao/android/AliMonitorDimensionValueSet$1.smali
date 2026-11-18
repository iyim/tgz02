.class final Lcom/taobao/android/AliMonitorDimensionValueSet$1;
.super Ljava/lang/Object;
.source "AliMonitorDimensionValueSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/AliMonitorDimensionValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/android/AliMonitorDimensionValueSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionValueSet;
    .locals 0

    .line 163
    invoke-static {p1}, Lcom/taobao/android/AliMonitorDimensionValueSet;->readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorDimensionValueSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionValueSet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/android/AliMonitorDimensionValueSet;
    .locals 0

    .line 168
    new-array p1, p1, [Lcom/taobao/android/AliMonitorDimensionValueSet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorDimensionValueSet$1;->newArray(I)[Lcom/taobao/android/AliMonitorDimensionValueSet;

    move-result-object p1

    return-object p1
.end method
