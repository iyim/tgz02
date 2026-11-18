.class final Lcom/taobao/aranger/core/wrapper/ServiceWrapper$1;
.super Ljava/lang/Object;
.source "ServiceWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/core/wrapper/ServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/taobao/aranger/core/wrapper/ServiceWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;
    .locals 2

    .line 32
    new-instance v0, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;-><init>(Lcom/taobao/aranger/core/wrapper/ServiceWrapper$1;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/taobao/aranger/core/wrapper/ServiceWrapper;
    .locals 0

    .line 38
    new-array p1, p1, [Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/aranger/core/wrapper/ServiceWrapper$1;->newArray(I)[Lcom/taobao/aranger/core/wrapper/ServiceWrapper;

    move-result-object p1

    return-object p1
.end method
