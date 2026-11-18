.class public final Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ultron/datamodel/cache/db/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field private id:J

.field public tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->id:J

    .line 53
    iput-object p3, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->tag:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/taobao/android/ultron/datamodel/cache/db/FileCache$CacheEntry;->id:J

    return-wide v0
.end method
