.class public Lc/a/a/b/f/a;
.super Lc/a/a/b/b$a;
.source ""

# interfaces
.implements Lc/a/a/b/h/b;
.implements Lc/a/a/b/e/b$a;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lc/a/a/b/i/d;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static l:Landroid/os/Handler;


# instance fields
.field public final b:Lc/a/a/b/h/a;

.field public c:Lc/a/a/b/g/d;

.field public d:Lc/a/a/b/c;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:Landroid/content/Context;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/a/a/b/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/a/a/b/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/a/a/b/b$a;-><init>()V

    new-instance v0, Lc/a/a/b/h/a;

    invoke-direct {v0}, Lc/a/a/b/h/a;-><init>()V

    iput-object v0, p0, Lc/a/a/b/f/a;->b:Lc/a/a/b/h/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/b/f/a;->f:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/b/f/a;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    iput-object p2, p0, Lc/a/a/b/f/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/b/f/a;->h:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lc/a/a/b/f/a;->e()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    return-void
.end method

.method public static e()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lc/a/a/b/f/a;->l:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lc/a/a/b/f/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a/a/b/f/a;->l:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ipc_core"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lc/a/a/b/f/a;->l:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lc/a/a/b/f/a;->l:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lc/a/a/b/h/a;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/f/a;->b:Lc/a/a/b/h/a;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied-> type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalRouter"

    invoke-static {v1, v0}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    new-instance v0, Lc/a/a/b/f/a$b;

    invoke-direct {v0, p0, p2}, Lc/a/a/b/f/a$b;-><init>(Lc/a/a/b/f/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/b/c$a;->a(Landroid/os/IBinder;)Lc/a/a/b/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnMultiRouter  multiRouter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocalRouter"

    invoke-static {v1, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lc/a/a/b/f/a;->a(Lc/a/a/b/c;Z)V

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Lc/a/a/b/c;Ljava/lang/String;Lc/a/a/b/e/c;)V
    .locals 5

    const-string v0, "LocalRouter"

    if-eqz p3, :cond_3

    .line 1
    iget-boolean v1, p3, Lc/a/a/b/e/c;->c:Z

    if-nez v1, :cond_3

    .line 2
    iget-boolean v1, p3, Lc/a/a/b/e/c;->a:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    .line 4
    iget v4, p3, Lc/a/a/b/e/c;->b:I

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "uri"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v3, p3, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    check-cast p1, Lc/a/a/b/c$a$a;

    :try_start_1
    invoke-virtual {p1, p2, v3, v2}, Lc/a/a/b/c$a$a;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "register multi router fail "

    goto :goto_0

    :cond_1
    const-string p1, "multi router null "

    :goto_0
    invoke-static {v0, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 8
    iget v0, p3, Lc/a/a/b/e/c;->h:I

    .line 9
    invoke-static {v0}, Lc/a/a/b/j/a;->a(I)I

    move-result v0

    .line 10
    iput v0, p3, Lc/a/a/b/e/c;->h:I

    .line 11
    invoke-static {v0}, Lc/a/a/b/j/a;->b(I)J

    move-result-wide v0

    .line 12
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multi router= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", info = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lc/a/a/b/e/c;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, "null"

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lc/a/a/b/c;Z)V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lc/a/a/b/e/c;)V
    .locals 4

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p2, Lc/a/a/b/e/c;->a:Z

    .line 14
    iget-boolean v1, p2, Lc/a/a/b/e/c;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p2, Lc/a/a/b/e/c;->b:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v1, p2, Lc/a/a/b/e/c;->d:Ljava/lang/Object;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object v1, p2, Lc/a/a/b/e/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v0

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p2, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    const-string v3, "LocalRouter"

    if-eqz v1, :cond_4

    .line 15
    iget-object v0, p0, Lc/a/a/b/f/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/b/e/c;

    const-string v0, "register local server = "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lc/a/a/b/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc/a/a/b/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 16
    :cond_4
    iget-boolean v1, p2, Lc/a/a/b/e/c;->c:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p2, Lc/a/a/b/e/c;->b:I

    if-ne v1, v0, :cond_6

    iget-object v0, p2, Lc/a/a/b/e/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-nez v1, :cond_7

    iget-object v1, p2, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/e/c;

    const-string v1, "register remote server = "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lc/a/a/b/e/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lc/a/a/b/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/a/a/b/f/a;->b()Lc/a/a/b/c;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lc/a/a/b/f/a;->a(Lc/a/a/b/c;Ljava/lang/String;Lc/a/a/b/e/c;)V

    move-object p1, v0

    goto :goto_5

    :cond_8
    const-string p1, " fail param register server = "

    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lc/a/a/b/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    if-eq p1, p2, :cond_9

    const-string p2, "remove has old server = "

    invoke-static {p2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lc/a/a/b/e/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;Lc/a/a/b/e/c;Landroid/os/IBinder;)V
    .locals 4

    .line 18
    iget-object v0, p2, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    if-ne p3, v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v1, p2, Lc/a/a/b/e/c;->g:Ljava/lang/Object;

    .line 20
    check-cast v1, Lc/a/a/b/e/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lc/a/a/b/e/b;->a(Landroid/os/IBinder;)V

    .line 21
    iput-object v2, p2, Lc/a/a/b/e/c;->g:Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 22
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    new-instance v2, Lc/a/a/b/e/b;

    invoke-direct {v2, p0, v0, p1}, Lc/a/a/b/e/b;-><init>(Lc/a/a/b/e/b$a;ILjava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 23
    :try_start_0
    invoke-interface {p3, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :cond_3
    :goto_1
    iput-object v2, p2, Lc/a/a/b/e/c;->g:Ljava/lang/Object;

    .line 25
    iput-object p3, p2, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    goto :goto_2

    :cond_4
    iput-object v2, p2, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    .line 26
    :goto_2
    iget-object p3, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    new-instance v0, Lc/a/a/b/f/a$c;

    invoke-direct {v0, p0, p1, p2}, Lc/a/a/b/f/a$c;-><init>(Lc/a/a/b/f/a;Ljava/lang/String;Lc/a/a/b/e/c;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lc/a/a/b/g/a;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    new-instance v1, Lc/a/a/b/f/a$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/a/a/b/f/a$d;-><init>(Lc/a/a/b/f/a;Ljava/lang/String;Lc/a/a/b/g/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerServerConnection, fail serverName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",serverConnection = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRouter"

    invoke-static {p2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0, p1}, Lc/a/a/b/f/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lc/a/a/b/c;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lc/a/a/b/f/a;->d:Lc/a/a/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/f/a;->c()Lc/a/a/b/c;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, v3}, Lc/a/a/b/f/a;->b(Lc/a/a/b/c;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v3}, Lc/a/a/b/f/a;->a(Lc/a/a/b/c;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiRouter fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalRouter"

    invoke-static {v2, v1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public final b(Lc/a/a/b/c;Z)V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/f/a;->d:Lc/a/a/b/c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lc/a/a/b/f/a;->d:Lc/a/a/b/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/a/a/b/f/a;->d:Lc/a/a/b/c;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iput-object p1, p0, Lc/a/a/b/f/a;->d:Lc/a/a/b/c;

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iput v1, p0, Lc/a/a/b/f/a;->g:I

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lc/a/a/b/f/a;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    check-cast p1, Lc/a/a/b/c$a$a;

    :try_start_3
    invoke-virtual {p1, v0, v1, p0, p2}, Lc/a/a/b/c$a$a;->a(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2
    :cond_5
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multi router  = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalRouter"

    invoke-static {p2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lc/a/a/b/f/a;->f:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lc/a/a/b/f/a;->g:I

    invoke-static {p1}, Lc/a/a/b/j/a;->a(I)I

    move-result p1

    iput p1, p0, Lc/a/a/b/f/a;->g:I

    iget p1, p0, Lc/a/a/b/f/a;->g:I

    invoke-static {p1}, Lc/a/a/b/j/a;->b(I)J

    move-result-wide v1

    iget-object p1, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "try to reconnect multi router, retryTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public binderDied()V
    .locals 2

    const-string v0, "LocalRouter"

    const-string v1, "multi router is Died"

    invoke-static {v0, v1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lc/a/a/b/f/a;->a(Lc/a/a/b/c;Z)V

    return-void
.end method

.method public final c()Lc/a/a/b/c;
    .locals 4

    const-string v0, "LocalRouter"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start to getMultiRouterDirect  1 uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/a/b/f/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lc/a/a/b/f/a;->h:Landroid/content/Context;

    .line 2
    iget-object v2, p0, Lc/a/a/b/f/a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end to getMultiRouterDirect  2 uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a/a/b/f/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/b/j/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc/a/a/b/c$a;->a(Landroid/os/IBinder;)Lc/a/a/b/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 3
    iget-object v0, p0, Lc/a/a/b/f/a;->h:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lc/a/a/b/f/a;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/b/e/c;

    const-string v2, "LocalRouter"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 5
    iget v4, v1, Lc/a/a/b/e/c;->b:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    .line 6
    iget-object p1, v1, Lc/a/a/b/e/c;->d:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no support local server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 8
    :cond_2
    :goto_0
    iget-object v3, v1, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    if-ne v4, v5, :cond_4

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    :cond_3
    iget-object v3, v1, Lc/a/a/b/e/c;->f:Ljava/lang/String;

    .line 11
    invoke-static {v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get local server binder from content provider serverName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binder = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v3}, Lc/a/a/b/f/a;->a(Ljava/lang/String;Lc/a/a/b/e/c;Landroid/os/IBinder;)V

    :cond_4
    return-object v3

    :cond_5
    iget-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/e/c;

    if-eqz v0, :cond_6

    .line 12
    iget-object v1, v0, Lc/a/a/b/e/c;->e:Landroid/os/IBinder;

    if-eqz v1, :cond_6

    .line 13
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v1

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lc/a/a/b/f/a;->b()Lc/a/a/b/c;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get multi router fail,  server name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_7
    check-cast v1, Lc/a/a/b/c$a$a;

    :try_start_1
    invoke-virtual {v1, p1}, Lc/a/a/b/c$a$a;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_8

    new-instance v0, Lc/a/a/b/e/c;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3}, Lc/a/a/b/e/c;-><init>(ZLandroid/os/IBinder;)V

    iget-object v4, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0, p1, v0, v1}, Lc/a/a/b/f/a;->a(Ljava/lang/String;Lc/a/a/b/e/c;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_9
    move-object v1, v3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get remote server name= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", binder = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lc/a/a/b/j/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method public d()Lc/a/a/b/g/d;
    .locals 2

    iget-object v0, p0, Lc/a/a/b/f/a;->c:Lc/a/a/b/g/d;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/b/f/a;->c:Lc/a/a/b/g/d;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/b/g/d;

    invoke-static {}, Lc/a/a/b/f/a;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lc/a/a/b/g/d;-><init>(Landroid/os/Handler;Lc/a/a/b/i/d;)V

    iput-object v0, p0, Lc/a/a/b/f/a;->c:Lc/a/a/b/g/d;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/a/b/f/a;->c:Lc/a/a/b/g/d;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/e/c;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lc/a/a/b/f/a;->b()Lc/a/a/b/c;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Lc/a/a/b/f/a;->a(Lc/a/a/b/c;Ljava/lang/String;Lc/a/a/b/e/c;)V

    goto :goto_3

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lc/a/a/b/f/a;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/a/a/b/e/c;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lc/a/a/b/e/c;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lc/a/a/b/e/c;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, v3}, Lc/a/a/b/f/a;->a(Ljava/lang/String;Lc/a/a/b/e/c;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc/a/a/b/c;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, v0, p1}, Lc/a/a/b/f/a;->b(Lc/a/a/b/c;Z)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lc/a/a/b/f/a;->b()Lc/a/a/b/c;

    :cond_6
    :goto_3
    return v1
.end method

.method public onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/b/f/a;->k:Landroid/os/Handler;

    new-instance v1, Lc/a/a/b/f/a$a;

    invoke-direct {v1, p0, p1}, Lc/a/a/b/f/a$a;-><init>(Lc/a/a/b/f/a;Lcom/alibaba/ailabs/ipc/event/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
