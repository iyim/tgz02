.class Lcom/alibaba/ailabs/genie/task/TaskApplication$2;
.super Ljava/lang/Object;
.source "TaskApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/TaskApplication;->initConfig()V
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

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskApplication$2;->this$0:Lcom/alibaba/ailabs/genie/task/TaskApplication;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/task/TaskApplication;->access$200(Lcom/alibaba/ailabs/genie/task/TaskApplication;Ljava/lang/String;)V

    return-void
.end method
