.class public Lanetwork/channel/aidl/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Lanetwork/channel/Response;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "anet.NetworkResponse"


# instance fields
.field bytedata:[B

.field private connHeadFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private error:Ljava/lang/Throwable;

.field private statisticData:Lanetwork/channel/statist/StatisticData;

.field statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/NetworkResponse$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 83
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 5

    const-string v0, "anet.NetworkResponse"

    .line 131
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 134
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_0

    .line 137
    new-array v4, v4, [B

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    .line 138
    iget-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 140
    :cond_0
    const-class v4, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lanetwork/channel/statist/StatisticData;

    iput-object p0, v1, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "[readFromParcel] source.readSerializable() error"

    .line 144
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "[readFromParcel]"

    invoke-static {v0, v4, v3, p0, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBytedata()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    return-object v0
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 100
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .line 172
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 95
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    return v0
.end method

.method public setBytedata([B)V
    .locals 0

    .line 51
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    return-void
.end method

.method public setConnHeadFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 42
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    .line 43
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkResponse ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "statusCode="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connHeadFields="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytedata="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statisticData="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 113
    iget p2, p0, Lanetwork/channel/aidl/NetworkResponse;->statusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    if-eqz p2, :cond_0

    .line 117
    array-length p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 119
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    .line 121
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->bytedata:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    :cond_1
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->connHeadFields:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 124
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->statisticData:Lanetwork/channel/statist/StatisticData;

    if-eqz p2, :cond_2

    .line 125
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_2
    return-void
.end method
