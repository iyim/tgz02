.class Lcom/ali/watchmem/core/WatchmemActivityManager$3;
.super Ljava/lang/Object;
.source "WatchmemActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/watchmem/core/WatchmemActivityManager;->add(Landroid/app/Activity;)V
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

    .line 80
    iput-object p1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$3;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    iput-object p2, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    new-instance v0, Lcom/ali/watchmem/data/WatchmemActivityWrapper;

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ali/watchmem/data/WatchmemActivityWrapper;-><init>(Landroid/app/Activity;)V

    .line 84
    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$3;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

    invoke-static {v1}, Lcom/ali/watchmem/core/WatchmemActivityManager;->access$000(Lcom/ali/watchmem/core/WatchmemActivityManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ali/watchmem/core/WatchmemActivityManager$3;->this$0:Lcom/ali/watchmem/core/WatchmemActivityManager;

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
