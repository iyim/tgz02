.class Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;
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
    name = "PurgingVisitor"
.end annotation


# instance fields
.field private insideBaseDirectory:Z

.field final synthetic this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isExpectedFile(Ljava/io/File;)Z
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$000(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    iget-object v2, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    if-ne v2, v3, :cond_1

    .line 338
    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->isRecentFile(Ljava/io/File;)Z

    move-result p1

    return p1

    .line 340
    :cond_1
    iget-object p1, v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    sget-object v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkState(Z)V

    return v2
.end method

.method private isRecentFile(Ljava/io/File;)Z
    .locals 6

    .line 348
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->TEMP_FILE_LIFETIME_MS:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public postVisitDirectory(Ljava/io/File;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$300(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$200(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    :cond_1
    return-void
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$200(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    :cond_0
    return-void
.end method

.method public visitFile(Ljava/io/File;)V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$PurgingVisitor;->isExpectedFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method
