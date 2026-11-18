.class public Lcom/alibaba/genie/market/task/ClientDataToServer;
.super Ljava/lang/Object;
.source "ClientDataToServer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/genie/market/task/ClientDataToServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/alibaba/genie/market/task/ClientDataToServer$1;

    invoke-direct {v0}, Lcom/alibaba/genie/market/task/ClientDataToServer$1;-><init>()V

    sput-object v0, Lcom/alibaba/genie/market/task/ClientDataToServer;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/market/task/ClientDataToServer;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/genie/market/task/ClientDataToServer;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/genie/market/task/ClientDataToServer;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget-object p2, p0, Lcom/alibaba/genie/market/task/ClientDataToServer;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
