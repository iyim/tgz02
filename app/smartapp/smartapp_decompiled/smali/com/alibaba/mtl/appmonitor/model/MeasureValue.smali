.class public Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.super Ljava/lang/Object;
.source "MeasureValue.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/model/IMerge;
.implements Lcom/alibaba/appmonitor/pool/Reusable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/mtl/appmonitor/model/IMerge<",
        "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
        ">;",
        "Lcom/alibaba/appmonitor/pool/Reusable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private finish:Z

.field private offset:Ljava/lang/Double;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 50
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 3

    .line 55
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method public static create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 3

    .line 59
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object p0

    check-cast p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object p0
.end method

.method public static create(DD)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 3

    .line 63
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object p0

    check-cast p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object p0
.end method

.method private getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->in(Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 5

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 158
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v0

    .line 159
    iput-boolean v1, v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 160
    iput-object v2, v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 161
    iput-wide v3, v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 115
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    .line 118
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 127
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 129
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 130
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 131
    iput-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBuckets()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 186
    monitor-exit p0

    return-object v0

    .line 188
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .line 190
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$000(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$100(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "-\u221e"

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$100(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$200(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "\u221e"

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$200(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->access$000(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public getOffset()Ljava/lang/Double;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    return v0
.end method

.method public declared-synchronized merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->increase()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 110
    :catch_0
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    return-void
.end method

.method protected declared-synchronized setBuckets(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    .locals 5

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getBounds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 200
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 204
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->buckets:Ljava/util/List;

    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-direct {v3, p0, v0, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;-><init>(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 212
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getBucket(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->increase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_3
    monitor-exit p0

    return-void

    .line 201
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setFinish(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    return-void
.end method

.method public setOffset(D)V
    .locals 0

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    return-void
.end method

.method public setValue(D)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 143
    :try_start_0
    iget-boolean p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->finish:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->offset:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->value:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
