.class Lcom/ali/watchmem/core/WatchmemActivityManager$5;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemActivityManager;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;


# direct methods
.method constructor <init>(Lcom/ali/watchmem/core/WatchmemActivityManager;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$200(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    new-instance v1, Lcom/ali/watchmem/core/DefaultWatchmemActivityWrapperFetcher;

    invoke-direct {v1}, Lcom/ali/watchmem/core/DefaultWatchmemActivityWrapperFetcher;-><init>()V

    invoke-static {v0, v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$202(Lcom/ali/watchmem/core/WatchmemActivityManager;Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;)Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v0}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$200(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/watchmem/core/lowmem/IWatchmemActivityWrapperFetcher;->getTargetActivityWrapper(Ljava/util/List;)Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 132
    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$300(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v2}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v3}, Lcom/ali/watchmem/data/WatchmemActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "\n"

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$5;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v2}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$300(Lcom/ali/watchmem/core/WatchmemActivityManager;)Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/ali/watchmem/core/WatchmemActivityManager$ForceFinishActivityCallback;->callback(Ljava/lang/String;)V

    .line 146
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchmemActivityManager"

    invoke-static {v1, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
