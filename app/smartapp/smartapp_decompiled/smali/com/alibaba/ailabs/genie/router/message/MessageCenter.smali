.class public Lcom/alibaba/ailabs/genie/router/message/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/router/message/MessageCenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRouter:Lcom/alibaba/ailabs/ipc/Router;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mContext:Landroid/content/Context;

    const-string v0, "com.alibaba.ailabs.genie.router.ipc.service"

    .line 15
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mRouter:Lcom/alibaba/ailabs/ipc/Router;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;
    .locals 2

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mInstance:Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mInstance:Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mInstance:Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mInstance:Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    return-object p0
.end method


# virtual methods
.method public getRouter()Lcom/alibaba/ailabs/ipc/Router;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mRouter:Lcom/alibaba/ailabs/ipc/Router;

    return-object v0
.end method

.method public publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mRouter:Lcom/alibaba/ailabs/ipc/Router;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/ipc/Router;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mRouter:Lcom/alibaba/ailabs/ipc/Router;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/Router;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->mRouter:Lcom/alibaba/ailabs/ipc/Router;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/Router;->unsubscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method
