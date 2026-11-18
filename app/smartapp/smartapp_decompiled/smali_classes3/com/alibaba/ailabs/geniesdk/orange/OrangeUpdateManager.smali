.class public Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;
.super Ljava/lang/Object;
.source "OrangeUpdateManager.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeUpdateManager"

.field private static volatile mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

.field private static final sHandler:Landroid/os/Handler;

.field private static final sReceiverMaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->notifyApp(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Ljava/util/WeakHashMap;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;
    .locals 2

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->mInstance:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    return-object v0
.end method

.method private notifyApp(Ljava/lang/String;)V
    .locals 4

    .line 106
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?status="

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotify id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OrangeUpdateManager"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public notify(Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify: orangeId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrangeUpdateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;-><init>(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    sget-object v2, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->register(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregister(Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->sReceiverMaps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
