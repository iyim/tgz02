.class public Landroid/taobao/windvane/cache/WVMemoryCacheInfo;
.super Ljava/lang/Object;
.source "WVMemoryCacheInfo.java"


# instance fields
.field public cachedTime:J

.field public mCachedDatas:[B

.field public mCachedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedHeaders:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    .line 16
    iput-object p2, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    .line 17
    iput-object p1, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedHeaders:Ljava/util/Map;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    return-void
.end method
