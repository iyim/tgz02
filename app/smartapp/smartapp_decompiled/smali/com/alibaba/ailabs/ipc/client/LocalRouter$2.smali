.class Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/client/LocalRouter;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

.field final synthetic val$listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->val$listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->access$000(Lcom/alibaba/ailabs/ipc/client/LocalRouter;)Lcom/alibaba/ailabs/ipc/IMultiRouter;

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getEventBus()Lcom/alibaba/ailabs/ipc/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$2;->val$listener:Lcom/alibaba/ailabs/ipc/event/OnEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/event/EventBus;->subscribe(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/event/OnEventListener;)V

    return-void
.end method
