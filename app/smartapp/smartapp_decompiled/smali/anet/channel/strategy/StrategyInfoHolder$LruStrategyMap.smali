.class Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
.super Lanet/channel/strategy/utils/SerialLruCache;
.source "StrategyInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LruStrategyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanet/channel/strategy/utils/SerialLruCache<",
        "Ljava/lang/String;",
        "Lanet/channel/strategy/StrategyTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19e71035fbce956fL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 259
    invoke-direct {p0, v0}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected entryRemoved(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;)Z"
        }
    .end annotation

    .line 264
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap$1;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap$1;-><init>(Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;Ljava/util/Map$Entry;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/AmdcThreadPoolExecutor;->submitTask(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
