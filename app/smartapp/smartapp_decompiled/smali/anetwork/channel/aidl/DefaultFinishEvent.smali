.class public Lanetwork/channel/aidl/DefaultFinishEvent;
.super Ljava/lang/Object;
.source "DefaultFinishEvent.java"

# interfaces
.implements Lanetwork/channel/NetworkEvent$FinishEvent;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/DefaultFinishEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field code:I

.field context:Ljava/lang/Object;

.field desc:Ljava/lang/String;

.field public final rs:Lanet/channel/statist/RequestStatistic;

.field statisticData:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultFinishEvent$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultFinishEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 44
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->rs:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;
    .locals 2

    .line 75
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lanetwork/channel/statist/StatisticData;

    iput-object p0, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 30
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    return v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .line 38
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultFinishEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "code="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statisticData="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->statisticData:Lanetwork/channel/statist/StatisticData;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
