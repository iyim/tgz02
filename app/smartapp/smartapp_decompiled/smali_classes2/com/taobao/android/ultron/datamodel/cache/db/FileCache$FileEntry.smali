.class Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;
.super Lcom/taobao/android/ultron/datamodel/cache/db/Entry;
.source "FileCache.java"


# annotations
.annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Table;
    value = "file_cache"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;


# instance fields
.field public filename:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Column;
        value = "filename"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccess:J
    .annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Column;
        value = "size"
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/ultron/datamodel/cache/db/Entry$Column;
        value = "tag"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 297
    new-instance v0, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    const-class v1, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;

    invoke-direct {v0, v1}, Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->SCHEMA:Lcom/taobao/android/ultron/datamodel/cache/db/EntrySchema;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/Entry;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileEntry{hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->hashCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filename=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$FileEntry;->lastAccess:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
