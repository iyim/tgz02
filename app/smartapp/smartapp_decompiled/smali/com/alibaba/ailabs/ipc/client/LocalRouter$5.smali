.class Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/client/LocalRouter;->onDied(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

.field final synthetic val$serverName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;->val$serverName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getSvrConnMgr()Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$5;->val$serverName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
