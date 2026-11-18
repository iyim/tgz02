.class final Lcom/taobao/android/AliMonitorMeasureValueSet$1;
.super Ljava/lang/Object;
.source "AliMonitorMeasureValueSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/AliMonitorMeasureValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/android/AliMonitorMeasureValueSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorMeasureValueSet;
    .locals 0

    .line 177
    invoke-static {p1}, Lcom/taobao/android/AliMonitorMeasureValueSet;->readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorMeasureValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorMeasureValueSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorMeasureValueSet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/android/AliMonitorMeasureValueSet;
    .locals 0

    .line 182
    new-array p1, p1, [Lcom/taobao/android/AliMonitorMeasureValueSet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorMeasureValueSet$1;->newArray(I)[Lcom/taobao/android/AliMonitorMeasureValueSet;

    move-result-object p1

    return-object p1
.end method
