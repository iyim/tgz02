.class final Lcom/taobao/android/AliMonitorDimensionSet$1;
.super Ljava/lang/Object;
.source "AliMonitorDimensionSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/AliMonitorDimensionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/android/AliMonitorDimensionSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/taobao/android/AliMonitorDimensionSet;->readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorDimensionSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/android/AliMonitorDimensionSet;
    .locals 0

    .line 192
    new-array p1, p1, [Lcom/taobao/android/AliMonitorDimensionSet;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/taobao/android/AliMonitorDimensionSet$1;->newArray(I)[Lcom/taobao/android/AliMonitorDimensionSet;

    move-result-object p1

    return-object p1
.end method
