.class final Lcom/alibaba/genie/market/task/ClientDataToServer$1;
.super Ljava/lang/Object;
.source "ClientDataToServer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/market/task/ClientDataToServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/genie/market/task/ClientDataToServer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/genie/market/task/ClientDataToServer;
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/genie/market/task/ClientDataToServer;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/market/task/ClientDataToServer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/market/task/ClientDataToServer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/genie/market/task/ClientDataToServer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/genie/market/task/ClientDataToServer;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/alibaba/genie/market/task/ClientDataToServer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/market/task/ClientDataToServer$1;->newArray(I)[Lcom/alibaba/genie/market/task/ClientDataToServer;

    move-result-object p1

    return-object p1
.end method
