.class final Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;
.super Ljava/lang/Object;
.source "Debounce.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/util/Debounce;->debounce(Ljava/lang/Object;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/Debounce;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/util/Debounce$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method
