.class final Lanetwork/channel/aidl/NetworkResponse$1;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/NetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/NetworkResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 0

    .line 157
    invoke-static {p1}, Lanetwork/channel/aidl/NetworkResponse;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/NetworkResponse$1;->createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lanetwork/channel/aidl/NetworkResponse;
    .locals 0

    .line 162
    new-array p1, p1, [Lanetwork/channel/aidl/NetworkResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/NetworkResponse$1;->newArray(I)[Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method
