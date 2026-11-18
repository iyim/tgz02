.class public Lcom/taobao/phenix/intf/PhenixTicket;
.super Ljava/lang/Object;
.source "PhenixTicket.java"

# interfaces
.implements Lcom/taobao/phenix/intf/IPhenixTicket;


# instance fields
.field done:Z

.field private mRequestContext:Lcom/taobao/rxm/request/RequestContext;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->done:Z

    .line 14
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->done:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/taobao/rxm/request/RequestContext;->isCancelledInMultiplex()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDone(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->done:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    :cond_0
    return-void
.end method

.method public setRequestContext(Lcom/taobao/rxm/request/RequestContext;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->mRequestContext:Lcom/taobao/rxm/request/RequestContext;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixTicket;->url:Ljava/lang/String;

    return-void
.end method

.method public theSame(Ljava/lang/String;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixTicket;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
