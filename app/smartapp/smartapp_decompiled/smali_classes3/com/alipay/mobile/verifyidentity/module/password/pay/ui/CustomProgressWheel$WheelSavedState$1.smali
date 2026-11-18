.class final Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "CustomProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;
    .locals 2

    .line 686
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 684
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;
    .locals 0

    .line 691
    new-array p1, p1, [Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 684
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState$1;->newArray(I)[Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;

    move-result-object p1

    return-object p1
.end method
