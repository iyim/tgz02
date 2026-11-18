.class public final Lcom/alibaba/ailabs/ipc/Router;
.super Ljava/lang/Object;
.source "Router.java"


# static fields
.field public static final URI_SUFFIX:Ljava/lang/String; = "alibaba.ailabs.ipc"

.field private static final mRouter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/ipc/Router;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sUri:Ljava/lang/String;


# instance fields
.field private mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/ipc/Router;->mRouter:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/alibaba/ailabs/ipc/Router;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/ipc/Router;->sContext:Landroid/content/Context;

    .line 101
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/ipc/Router;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/Router;
    .locals 2

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/ipc/Router;->sUri:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alibaba.ailabs.ipc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/multiRouter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    sput-object v0, Lcom/alibaba/ailabs/ipc/Router;->sUri:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p0

    return-object p0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .line 47
    invoke-static {}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;
    .locals 2

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/ipc/Router;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/Router;->mRouter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/ipc/Router;

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Lcom/alibaba/ailabs/ipc/Router;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/ipc/Router;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/alibaba/ailabs/ipc/Router;->mRouter:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;
    .locals 2

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    const-class v0, Lcom/alibaba/ailabs/ipc/Router;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/Router;->mRouter:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/ipc/Router;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getServer(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServer(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V

    return-void
.end method

.method public registerServer(Ljava/lang/Class;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;",
            ")V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServer(Ljava/lang/Class;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    return-void
.end method

.method public registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    return-void
.end method

.method public registerServerConnection(Ljava/lang/Class;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/ipc/conn/ISvrConn;",
            "Z)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method

.method public registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method

.method public setKeepConnection(Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->setKeepConnection(Z)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method

.method public unregisterServer(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterServer(Ljava/lang/Class;)V

    return-void
.end method

.method public unregisterServer(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterServer(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterServerConnection(Ljava/lang/Class;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/ipc/conn/ISvrConn;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    return-void
.end method

.method public unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/Router;->mLocalRouter:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method
