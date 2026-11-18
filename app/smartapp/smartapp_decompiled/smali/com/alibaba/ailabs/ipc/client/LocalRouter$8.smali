.class Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/client/LocalRouter;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

.field final synthetic val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

.field final synthetic val$serverName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->val$serverName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getSvrConnMgr()Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->val$serverName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$8;->val$serverConnection:Lcom/alibaba/ailabs/ipc/conn/ISvrConn;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/conn/SvrConnMgr;->remove(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)Z

    return-void
.end method
