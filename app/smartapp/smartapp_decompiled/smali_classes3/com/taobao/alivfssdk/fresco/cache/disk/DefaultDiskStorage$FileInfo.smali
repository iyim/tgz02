.class Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public final catalog:Ljava/lang/String;

.field public final resourceId:Ljava/lang/String;

.field public final type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;


# direct methods
.method private constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V
    .locals 0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    .line 660
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    .line 661
    instance-of p1, p3, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    if-eqz p1, :cond_0

    move-object p1, p3

    nop

    nop

    iget-object p1, p1, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 663
    :try_start_0
    nop

    nop

    iget-object p1, p3, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;->mKey2:Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0xb

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    .line 672
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$1;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V

    return-void
.end method

.method private constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    .line 678
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    .line 679
    iput-object p3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 706
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 707
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    .line 711
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 712
    invoke-static {v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->fromExtension(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x0

    .line 716
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 717
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    invoke-virtual {v3, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_2

    return-object v2

    .line 722
    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/16 v0, 0x21

    .line 725
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 727
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 731
    :cond_4
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;

    invoke-direct {v0, v3, p0, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    .line 697
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ".tmp"

    .line 700
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public toPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 689
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->catalog:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    iget-object p1, p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;->extension:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->type:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
