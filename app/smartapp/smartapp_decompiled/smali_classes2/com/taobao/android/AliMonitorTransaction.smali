.class public Lcom/taobao/android/AliMonitorTransaction;
.super Ljava/lang/Object;
.source "AliMonitorTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taobao/android/AliMonitorTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

.field public eventId:Ljava/lang/Integer;

.field private lock:Ljava/lang/Object;

.field public module:Ljava/lang/String;

.field public monitorPoint:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/taobao/android/AliMonitorTransaction$1;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorTransaction$1;-><init>()V

    sput-object v0, Lcom/taobao/android/AliMonitorTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorDimensionValueSet;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/taobao/android/AliMonitorTransaction;->eventId:Ljava/lang/Integer;

    .line 27
    iput-object p2, p0, Lcom/taobao/android/AliMonitorTransaction;->module:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/taobao/android/AliMonitorTransaction;->monitorPoint:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/AliMonitorTransaction;->transactionId:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/AliMonitorTransaction;->lock:Ljava/lang/Object;

    return-void
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/taobao/android/AliMonitorTransaction;
    .locals 2

    .line 100
    new-instance v0, Lcom/taobao/android/AliMonitorTransaction;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorTransaction;-><init>()V

    .line 102
    :try_start_0
    const-class v1, Lcom/taobao/android/AliMonitorTransaction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorDimensionValueSet;

    iput-object v1, v0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/AliMonitorTransaction;->eventId:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/AliMonitorTransaction;->module:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/AliMonitorTransaction;->monitorPoint:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/android/AliMonitorTransaction;->transactionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addDimensionValues(Lcom/taobao/android/AliMonitorDimensionValueSet;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/taobao/android/AliMonitorTransaction;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    if-nez v1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    invoke-virtual {v1, p1}, Lcom/taobao/android/AliMonitorDimensionValueSet;->addValues(Lcom/taobao/android/AliMonitorDimensionValueSet;)Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 73
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

    .line 77
    iget-object v0, p0, Lcom/taobao/android/AliMonitorTransaction;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    if-nez v1, :cond_0

    .line 79
    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    const-class v2, Lcom/taobao/android/AliMonitorDimensionValueSet;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/android/AliMonitorBalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/taobao/android/AliMonitorReusable;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorDimensionValueSet;

    iput-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/android/AliMonitorDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 82
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

    .line 44
    invoke-static {}, Lcom/taobao/android/AliMonitorServiceFetcher;->getMonitorService()Lcom/taobao/android/AliMonitorInterface;

    move-result-object v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 47
    :cond_0
    invoke-static {}, Lcom/taobao/android/AliMonitorServiceFetcher;->getMonitorService()Lcom/taobao/android/AliMonitorInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/AliMonitorInterface;->transaction_begin(Lcom/taobao/android/AliMonitorTransaction;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/taobao/android/AliMonitorServiceFetcher;->getMonitorService()Lcom/taobao/android/AliMonitorInterface;

    move-result-object v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 60
    :cond_0
    invoke-static {}, Lcom/taobao/android/AliMonitorServiceFetcher;->getMonitorService()Lcom/taobao/android/AliMonitorInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/android/AliMonitorInterface;->transaction_end(Lcom/taobao/android/AliMonitorTransaction;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object p2, p0, Lcom/taobao/android/AliMonitorTransaction;->eventId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object p2, p0, Lcom/taobao/android/AliMonitorTransaction;->module:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/taobao/android/AliMonitorTransaction;->monitorPoint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/taobao/android/AliMonitorTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
