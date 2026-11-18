.class public Lc/b/a/b/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/e$c;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/b/a/b/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lc/b/a/b/l/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/b/e;->b:Ljava/util/Map;

    new-instance v0, Lc/b/a/b/l/d;

    invoke-direct {v0}, Lc/b/a/b/l/d;-><init>()V

    iput-object v0, p0, Lc/b/a/b/e;->c:Lc/b/a/b/l/d;

    iget-object v0, p0, Lc/b/a/b/e;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lc/b/a/b/e;->c:Lc/b/a/b/l/d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/b/a/b/e;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lc/b/a/b/l/a;

    invoke-direct {v2}, Lc/b/a/b/l/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/b/a/b/e;->b:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lc/b/a/b/l/e;

    invoke-direct {v2}, Lc/b/a/b/l/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/b/e$a;

    invoke-direct {v1, p0}, Lc/b/a/b/e$a;-><init>(Lc/b/a/b/e;)V

    const-string v2, "EventHandlerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b/a/b/e$b;

    invoke-direct {v1, p0}, Lc/b/a/b/e$b;-><init>(Lc/b/a/b/e;)V

    const-string v2, "GetTimeMapThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/i/i;)V
    .locals 2

    iget-object v0, p0, Lc/b/a/b/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lc/b/a/b/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-class p1, Lc/b/a/b/e;

    const/4 v0, 0x0

    const-string v1, "got event to process, but mWorkHandler is null"

    .line 1
    invoke-static {v1, p1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
