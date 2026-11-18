.class Lcom/alibaba/ailabs/genie/task/video/VideoTask$1;
.super Ljava/lang/Object;
.source "VideoTask.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/event/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/video/VideoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/VideoTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/VideoTask;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/VideoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/VideoTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/VideoTask;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/task/video/VideoTask;->access$000(Lcom/alibaba/ailabs/genie/task/video/VideoTask;Lcom/alibaba/ailabs/ipc/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
