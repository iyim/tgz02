.class Lcom/alibaba/ailabs/genie/task/TaskApplication$1;
.super Ljava/lang/Object;
.source "TaskApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/TaskApplication;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TaskService-App"

    const-string v1, "startService->TaskService"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->access$000(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->access$100(Lcom/alibaba/ailabs/genie/task/TaskApplication;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$1;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->startAbcService()V

    return-void
.end method
