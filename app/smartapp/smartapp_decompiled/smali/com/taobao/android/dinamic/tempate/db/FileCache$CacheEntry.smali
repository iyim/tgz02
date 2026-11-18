.class public final Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/db/FileCache;
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->id:J

    .line 65
    iput-object p3, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->tag:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/io/File;Lcom/taobao/android/dinamic/tempate/db/FileCache$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/taobao/android/dinamic/tempate/db/FileCache$CacheEntry;->id:J

    return-wide v0
.end method
