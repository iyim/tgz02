.class Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;


# annotations
.annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryImpl"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final resource:Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

.field private size:J

.field private timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    invoke-static {p2}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    .line 570
    invoke-static {p2}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    const-wide/16 p1, -0x1

    .line 571
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    .line 572
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    return-object v0
.end method

.method public getSize()J
    .locals 5

    .line 596
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 597
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    .line 599
    :cond_0
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 5

    .line 582
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 583
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    .line 586
    :cond_0
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    return-wide v0
.end method
