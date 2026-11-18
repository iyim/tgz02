.class Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;
.super Ljava/lang/Object;
.source "OrangeUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->notify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

.field final synthetic val$orangeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->this$0:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->val$orangeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->this$0:Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->val$orangeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->access$000(Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->access$100()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager;->access$100()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->val$orangeId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/orange/OrangeUpdateManager$1;->val$orangeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/geniesdk/orange/IOrangeReceiver;->onReceiver(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
