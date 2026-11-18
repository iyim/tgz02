.class public Lcom/alibaba/mtl/appmonitor/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field public eventId:Ljava/lang/Integer;

.field private lock:Ljava/lang/Object;

.field public module:Ljava/lang/String;

.field public monitorPoint:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/Transaction$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 34
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 2

    .line 111
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>()V

    .line 113
    :try_start_0
    const-class v1, Lcom/alibaba/mtl/appmonitor/Transaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addDimensionValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addDimensionValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public begin(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 47
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/analytics/IAnalytics;->transaction_begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 64
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/analytics/IAnalytics;->transaction_end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
