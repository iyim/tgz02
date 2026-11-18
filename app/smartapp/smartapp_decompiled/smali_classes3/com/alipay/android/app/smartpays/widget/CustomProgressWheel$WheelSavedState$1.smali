.class final Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "CustomProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    .locals 2

    .line 757
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
    .locals 0

    .line 762
    new-array p1, p1, [Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;->newArray(I)[Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method
