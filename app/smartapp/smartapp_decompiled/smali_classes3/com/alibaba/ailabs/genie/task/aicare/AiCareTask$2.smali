.class Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;
.super Ljava/lang/Object;
.source "AiCareTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->updateSettingSync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$2;->val$force:Z

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->access$200(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V

    return-void
.end method
