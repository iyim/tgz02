.class public Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;
.super Ljava/lang/Object;
.source "NetworkImpl.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/network/api/Network;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GenieNetwork"

.field public static final ourHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->ourHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private synthetic a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh cache. url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->sendInternal(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, La/a/a/a/a/a/a$a;->a:La/a/a/a/a/a/a;

    .line 13
    iget-object p1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, p1, v0}, La/a/a/a/a/a/a;->a(Ljava/lang/String;Lcom/alibaba/genie/waft/gcs/network/api/Response;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 1

    .line 15
    invoke-static {p0}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Network;

    move-result-object v0

    .line 17
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Network;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendAsync() exp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/aranger/exception/IPCException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$TuJOt9zRiSgFe5l1t-pTbumAsjc(Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private sendInternal(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Network;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Network;->send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(I)V

    .line 4
    invoke-static {p1, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public send(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 3
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 2
    invoke-static {p1}, La/a/a/a/a/a/b;->b(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, La/a/a/a/a/a/a$a;->a:La/a/a/a/a/a/a;

    .line 4
    iget-object v1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, La/a/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    sget-object v1, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->ourHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$NetworkImpl$TuJOt9zRiSgFe5l1t-pTbumAsjc;-><init>(Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 30
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->sendInternal(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    sget-object v1, La/a/a/a/a/a/a$a;->a:La/a/a/a/a/a/a;

    .line 34
    iget-object p1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, p1, v0}, La/a/a/a/a/a/a;->a(Ljava/lang/String;Lcom/alibaba/genie/waft/gcs/network/api/Response;)V

    :cond_2
    return-object v0

    .line 36
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p1
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V
    .locals 1
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Network;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Network;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 3
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, La/a/a/a/a/a/b;->b(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, La/a/a/a/a/a/a$a;->a:La/a/a/a/a/a/a;

    .line 5
    iget-object v1, p1, Lcom/alibaba/genie/waft/gcs/network/api/Request;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, La/a/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    invoke-interface {p2, v0}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v0, La/a/a/a/a/a/c;

    invoke-direct {v0, p1, p2}, La/a/a/a/a/a/c;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    .line 15
    sget-object p2, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->ourHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;

    invoke-direct {v1, p1, v0}, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 16
    new-instance v1, La/a/a/a/a/a/c;

    invoke-direct {v1, p1, p2}, La/a/a/a/a/a/c;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    .line 18
    sget-object p2, Lcom/alibaba/genie/waft/gcs/network/NetworkImpl;->ourHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;

    invoke-direct {v2, p1, v1}, Lcom/alibaba/genie/waft/gcs/network/-$$Lambda$LlTO3wqbvz4nFm97mnXoJyOnscQ;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    throw v0

    .line 30
    :cond_1
    new-instance v0, La/a/a/a/a/a/c;

    invoke-direct {v0, p1, p2}, La/a/a/a/a/a/c;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    .line 31
    invoke-static {p1}, La/a/a/a/a/a/b;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;)Lcom/alibaba/genie/waft/gcs/network/api/Network;

    move-result-object p2

    .line 32
    invoke-interface {p2, p1, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Network;->sendAsync(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V

    return-void
.end method
