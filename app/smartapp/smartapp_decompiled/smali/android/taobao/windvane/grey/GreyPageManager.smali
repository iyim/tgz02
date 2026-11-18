.class public Landroid/taobao/windvane/grey/GreyPageManager;
.super Ljava/lang/Object;
.source "GreyPageManager.java"


# static fields
.field private static volatile instance:Landroid/taobao/windvane/grey/GreyPageManager;

.field private static final mGreyPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/grey/GreyPageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Landroid/taobao/windvane/grey/GreyPageManager;
    .locals 2

    .line 14
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Landroid/taobao/windvane/grey/GreyPageManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Landroid/taobao/windvane/grey/GreyPageManager;

    invoke-direct {v1}, Landroid/taobao/windvane/grey/GreyPageManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->instance:Landroid/taobao/windvane/grey/GreyPageManager;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/taobao/windvane/grey/GreyPageInfo;)V
    .locals 2

    .line 26
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/grey/GreyPageInfo;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getGreyPageInfo(Ljava/lang/String;)Landroid/taobao/windvane/grey/GreyPageInfo;
    .locals 1

    .line 42
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/grey/GreyPageInfo;

    return-object p1
.end method

.method public isGreyPage(Ljava/lang/String;)Z
    .locals 1

    .line 38
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Landroid/taobao/windvane/grey/GreyPageInfo;)V
    .locals 1

    .line 30
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/taobao/windvane/grey/GreyPageInfo;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 34
    sget-object v0, Landroid/taobao/windvane/grey/GreyPageManager;->mGreyPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
