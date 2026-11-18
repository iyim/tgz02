.class final Lcom/uc/sandboxExport/PreStartup$a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/sandboxExport/PreStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static k:Landroid/os/Handler;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/uc/sandboxExport/PreStartup$d;

.field c:Landroid/os/Handler;

.field d:Z

.field e:I

.field f:Landroid/content/ComponentName;

.field g:Landroid/os/IBinder;

.field h:Landroid/content/ServiceConnection;

.field final i:Ljava/lang/String;

.field final j:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/uc/sandboxExport/PreStartup$d;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sandbox.PreStartup."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/uc/sandboxExport/PreStartup$d;->a:I

    invoke-static {v1}, Lcom/uc/sandboxExport/h$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->a:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/uc/sandboxExport/PreStartup$a;->b:Lcom/uc/sandboxExport/PreStartup$d;

    .line 176
    iget p1, p2, Lcom/uc/sandboxExport/PreStartup$d;->a:I

    invoke-static {p1}, Lcom/uc/sandboxExport/PreStartup;->a(I)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    .line 178
    new-instance p1, Lcom/uc/sandboxExport/a;

    invoke-direct {p1, p0}, Lcom/uc/sandboxExport/a;-><init>(Lcom/uc/sandboxExport/PreStartup$a;)V

    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnknownState_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DIS_CONNECTED"

    return-object p0

    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "BIND_FAILED"

    return-object p0

    :cond_3
    const-string p0, "BINDING"

    return-object p0

    :cond_4
    const-string p0, "BIND"

    return-object p0

    :cond_5
    const-string p0, "IDLE"

    return-object p0
.end method

.method static synthetic a(Lcom/uc/sandboxExport/PreStartup$a;)V
    .locals 5

    .line 2215
    iget v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    if-eqz v0, :cond_0

    .line 2216
    iget-object p0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const-string v2, "call ChildServiceConnection.start() again!"

    .line 3093
    invoke-static {v0, p0, v2, v1}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2221
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->b:Lcom/uc/sandboxExport/PreStartup$d;

    iget-object v2, v2, Lcom/uc/sandboxExport/PreStartup$d;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    .line 2222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2223
    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 2226
    invoke-direct {p0, v1}, Lcom/uc/sandboxExport/PreStartup$a;->b(I)V

    .line 2228
    iget-object v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    aput-object v4, v1, v3

    const-string v3, "bindService %s..."

    invoke-static {v2, v3, v1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2230
    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    .line 3330
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 3337
    :cond_1
    sget-object v2, Lcom/uc/sandboxExport/PreStartup$a;->k:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 3338
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "U4SvcBindHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3339
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 3340
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/uc/sandboxExport/PreStartup$a;->k:Landroid/os/Handler;

    .line 3342
    :cond_2
    sget-object v2, Lcom/uc/sandboxExport/PreStartup$a;->k:Landroid/os/Handler;

    .line 2230
    :goto_0
    invoke-static {v1, v0, p0, v2}, Lcom/uc/sandboxExport/helper/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->d:Z

    .line 2233
    iget-boolean v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 2234
    invoke-direct {p0, v0}, Lcom/uc/sandboxExport/PreStartup$a;->b(I)V

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 2236
    invoke-direct {p0, v0}, Lcom/uc/sandboxExport/PreStartup$a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/uc/sandboxExport/PreStartup$a;Landroid/os/IBinder;)V
    .locals 4

    .line 4285
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "onServiceConnectedOnLauncherThread"

    const/4 v3, 0x0

    .line 5085
    invoke-static {v1, v0, v2, v3}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4286
    iput-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->g:Landroid/os/IBinder;

    .line 4287
    invoke-direct {p0, v1}, Lcom/uc/sandboxExport/PreStartup$a;->b(I)V

    .line 4288
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->h:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_0

    .line 4289
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/uc/sandboxExport/PreStartup$a;->g:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    invoke-static {v2}, Lcom/uc/sandboxExport/PreStartup$a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/uc/sandboxExport/PreStartup$a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "state changed: %s -> %s"

    invoke-static {v0, v2, v1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iput p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    return-void
.end method

.method static synthetic b(Lcom/uc/sandboxExport/PreStartup$a;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/uc/sandboxExport/PreStartup$a;->c()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private c()V
    .locals 4

    .line 254
    iget-boolean v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "unbindService %s"

    invoke-static {v0, v2, v1}, Lcom/uc/sandboxExport/helper/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    iput-boolean v3, p0, Lcom/uc/sandboxExport/PreStartup$a;->d:Z

    return-void
.end method

.method static synthetic c(Lcom/uc/sandboxExport/PreStartup$a;)V
    .locals 4

    .line 5293
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const-string v1, "onServiceDisconnectedOnLauncherThread"

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 6085
    invoke-static {v2, v0, v1, v3}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    .line 5294
    invoke-direct {p0, v0}, Lcom/uc/sandboxExport/PreStartup$a;->b(I)V

    .line 5295
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 5296
    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->f:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 5297
    :cond_0
    invoke-virtual {p0}, Lcom/uc/sandboxExport/PreStartup$a;->b()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 187
    iget v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 2

    .line 241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/uc/sandboxExport/c;

    invoke-direct {v1, p0}, Lcom/uc/sandboxExport/c;-><init>(Lcom/uc/sandboxExport/PreStartup$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/uc/sandboxExport/PreStartup$a;->c()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 302
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const-string v0, "onServiceConnected"

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1085
    invoke-static {v1, p1, v0, v2}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/uc/sandboxExport/e;

    invoke-direct {v0, p0, p2}, Lcom/uc/sandboxExport/e;-><init>(Lcom/uc/sandboxExport/PreStartup$a;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 313
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->i:Ljava/lang/String;

    const-string v0, "onServiceDisconnected"

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2085
    invoke-static {v1, p1, v0, v2}, Lcom/uc/sandboxExport/helper/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    iget-object p1, p0, Lcom/uc/sandboxExport/PreStartup$a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/uc/sandboxExport/f;

    invoke-direct {v0, p0}, Lcom/uc/sandboxExport/f;-><init>(Lcom/uc/sandboxExport/PreStartup$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/sandboxExport/PreStartup$a;->b:Lcom/uc/sandboxExport/PreStartup$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uc/sandboxExport/PreStartup$a;->e:I

    invoke-static {v2}, Lcom/uc/sandboxExport/PreStartup$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uc/sandboxExport/PreStartup$a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
