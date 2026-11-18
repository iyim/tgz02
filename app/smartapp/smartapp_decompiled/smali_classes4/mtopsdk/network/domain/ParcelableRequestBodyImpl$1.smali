.class final Lmtopsdk/network/domain/ParcelableRequestBodyImpl$1;
.super Ljava/lang/Object;
.source "ParcelableRequestBodyImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmtopsdk/network/domain/ParcelableRequestBodyImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl$1;->createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    .locals 1

    .line 61
    new-instance v0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-direct {v0, p1}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl$1;->newArray(I)[Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    .locals 0

    .line 66
    new-array p1, p1, [Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    return-object p1
.end method
