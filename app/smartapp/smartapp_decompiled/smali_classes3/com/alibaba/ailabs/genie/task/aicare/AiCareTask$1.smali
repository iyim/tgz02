.class Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "AiCareTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->getIACallback()Lcom/alibaba/ailabs/acamera/IACameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onServiceConnected"

    .line 52
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->access$002(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)Z

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;->access$100(Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;Z)V

    const-string p1, "TaskService-AiCare"

    const-string v0, "getAVEService connected"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
