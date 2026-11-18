.class public Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;
.super Ljava/lang/Object;
.source "MarketMemCacheMgr.java"


# static fields
.field private static final KEY_MARKET_TAB_PAGE:Ljava/lang/String; = "market_tab_cache_"

.field private static final ourInstance:Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;
    .locals 1

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;

    return-object v0
.end method


# virtual methods
.method public cacheStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market_tab_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCacheStr(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/MarketMemCacheMgr;->map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market_tab_cache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
