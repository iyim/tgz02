.class final Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;
.super Ljava/lang/Object;
.source "MeasureValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 0

    .line 171
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 0

    .line 176
    new-array p1, p1, [Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;->newArray(I)[Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object p1

    return-object p1
.end method
