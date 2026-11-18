.class Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/common/file/FileTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntriesCollector"
.end annotation


# instance fields
.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public postVisitDirectory(Ljava/io/File;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public visitFile(Ljava/io/File;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$000(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    sget-object v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    if-ne v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    new-instance v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;

    iget-object v0, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
