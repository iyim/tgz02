.class Lcom/alibaba/ailabs/genie/task/TaskService$2;
.super Ljava/lang/Object;
.source "TaskService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/TaskService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/TaskService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskService$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/TaskService;->access$200(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/TaskService;->access$300(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/TaskService;->access$400(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    return-void
.end method
