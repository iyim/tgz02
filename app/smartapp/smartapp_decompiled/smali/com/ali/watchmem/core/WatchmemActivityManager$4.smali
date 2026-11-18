.class Lcom/ali/watchmem/core/WatchmemActivityManager$4;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemActivityManager;->remove(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemActivityManager;Landroid/app/Activity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    .line 98
    invoke-virtual {v1}, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->val$activity:Landroid/app/Activity;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$4;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchmemActivityManager"

    invoke-static {v1, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
