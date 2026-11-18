.class Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/client/LocalRouter;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

.field final synthetic val$isAwaysAlive:Z

.field final synthetic val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

.field final synthetic val$serverName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$serverName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    iput-boolean p4, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$isAwaysAlive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getSvrConnMgr()Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$serverName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    iget-boolean v3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$7;->val$isAwaysAlive:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->add(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method
