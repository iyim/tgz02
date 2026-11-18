.class public Lcom/alibaba/genie/shopping/event/EventController;
.super Ljava/lang/Object;
.source "EventController.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/event/EventListener;


# static fields
.field public static sInstance:Lcom/alibaba/genie/shopping/event/EventController;


# instance fields
.field public mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/event/listener/CacheEventListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mCacheListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/alibaba/genie/shopping/event/listener/CacheEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mConListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/event/listener/PluginEventListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mPluginListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/alibaba/genie/shopping/event/listener/PluginEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/event/listener/UIEventListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected mUIListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/alibaba/genie/shopping/event/listener/UIEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 46
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 47
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 48
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/genie/shopping/event/EventController;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/event/EventController;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/event/EventController;->sInstance:Lcom/alibaba/genie/shopping/event/EventController;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/genie/shopping/event/EventController;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/event/EventController;-><init>()V

    sput-object v1, Lcom/alibaba/genie/shopping/event/EventController;->sInstance:Lcom/alibaba/genie/shopping/event/EventController;

    .line 36
    :cond_0
    sget-object v1, Lcom/alibaba/genie/shopping/event/EventController;->sInstance:Lcom/alibaba/genie/shopping/event/EventController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCacheEventListener(ILcom/alibaba/genie/shopping/event/listener/CacheEventListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/event/listener/CacheEventListener;

    if-ne v2, p2, :cond_3

    .line 75
    monitor-exit v0

    return-void

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 79
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public addConnectionEventListener(ILcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 175
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;

    if-ne v2, p2, :cond_3

    .line 177
    monitor-exit v0

    return-void

    .line 180
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 181
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public addPluginEventListener(ILcom/alibaba/genie/shopping/event/listener/PluginEventListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 222
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/event/listener/PluginEventListener;

    if-ne v2, p2, :cond_3

    .line 224
    monitor-exit v0

    return-void

    .line 227
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 228
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public addUIEventListener(ILcom/alibaba/genie/shopping/event/listener/UIEventListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 124
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/event/listener/UIEventListener;

    if-ne v2, p2, :cond_3

    .line 126
    monitor-exit v0

    return-void

    .line 129
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIListenerReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 130
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public handleCacheEvent(Landroid/os/Message;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/event/listener/CacheEventListener;

    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v1, p1}, Lcom/alibaba/genie/shopping/event/listener/CacheEventListener;->handleCacheEvent(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleConnectionEvent(Landroid/os/Message;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;

    if-eqz v1, :cond_0

    .line 306
    invoke-interface {v1, p1}, Lcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;->handleConnectionEvent(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleEvent(Landroid/os/Message;)V
    .locals 2

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/event/EventController;->handleUIEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 317
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/event/EventController;->handleCacheEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 319
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1388

    if-le v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x13ec

    if-ge v0, v1, :cond_2

    .line 320
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/event/EventController;->handleConnectionEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 321
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2ee0

    if-ge v0, v1, :cond_3

    .line 322
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/event/EventController;->handlePluginEvent(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handlePluginEvent(Landroid/os/Message;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/event/listener/PluginEventListener;

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1, p1}, Lcom/alibaba/genie/shopping/event/listener/PluginEventListener;->handlePluginEvent(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleUIEvent(Landroid/os/Message;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/event/listener/UIEventListener;

    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v1, p1}, Lcom/alibaba/genie/shopping/event/listener/UIEventListener;->handleUIEvent(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCacheEventListener(ILcom/alibaba/genie/shopping/event/listener/CacheEventListener;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 95
    iget-object p2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mCacheEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    monitor-exit v0

    return-void

    .line 102
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public removeConnectionEventListener(ILcom/alibaba/genie/shopping/event/listener/ConnectionEventListener;)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 191
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 192
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    iget-object p2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mConnectionEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1
    monitor-exit v0

    return-void

    .line 201
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public removePluginEventListener(ILcom/alibaba/genie/shopping/event/listener/PluginEventListener;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 241
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 242
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 244
    iget-object p2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mPluginEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    monitor-exit v0

    return-void

    .line 251
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public removeUIEventListener(ILcom/alibaba/genie/shopping/event/listener/UIEventListener;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 143
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 144
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 146
    iget-object p2, p0, Lcom/alibaba/genie/shopping/event/EventController;->mUIEventListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    monitor-exit v0

    return-void

    .line 153
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
