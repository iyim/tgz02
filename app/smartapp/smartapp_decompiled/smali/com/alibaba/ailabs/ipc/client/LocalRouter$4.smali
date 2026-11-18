.class Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ipc/client/LocalRouter;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

.field final synthetic val$event:Lcom/alibaba/ailabs/ipc/event/Event;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ipc/client/LocalRouter;Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;->val$event:Lcom/alibaba/ailabs/ipc/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;->this$0:Lcom/alibaba/ailabs/ipc/client/LocalRouter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/client/LocalRouter;->getEventBus()Lcom/alibaba/ailabs/ipc/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/client/LocalRouter$4;->val$event:Lcom/alibaba/ailabs/ipc/event/Event;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ipc/event/EventBus;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V

    return-void
.end method
