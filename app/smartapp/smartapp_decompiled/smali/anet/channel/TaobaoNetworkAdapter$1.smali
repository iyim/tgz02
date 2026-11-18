.class final Lanet/channel/TaobaoNetworkAdapter$1;
.super Ljava/lang/Object;
.source "TaobaoNetworkAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/TaobaoNetworkAdapter;->init(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    :try_start_0
    new-instance v0, Lanet/channel/cache/AVFSCacheImpl;

    invoke-direct {v0}, Lanet/channel/cache/AVFSCacheImpl;-><init>()V

    .line 65
    invoke-virtual {v0}, Lanet/channel/cache/AVFSCacheImpl;->initialize()V

    .line 66
    new-instance v1, Lanet/channel/TaobaoNetworkAdapter$1$1;

    invoke-direct {v1, p0}, Lanet/channel/TaobaoNetworkAdapter$1$1;-><init>(Lanet/channel/TaobaoNetworkAdapter$1;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lanetwork/channel/cache/CacheManager;->addCache(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
