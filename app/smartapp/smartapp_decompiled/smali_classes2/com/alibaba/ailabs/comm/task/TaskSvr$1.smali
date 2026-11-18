.class Lcom/alibaba/ailabs/comm/task/TaskSvr$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskSvr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/task/TaskSvr;->registerTinyReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/task/TaskSvr;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$1;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$1;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$000(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/comm/utils/Utils;->getForegroundPageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/TaskSvr$1;->this$0:Lcom/alibaba/ailabs/comm/task/TaskSvr;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->access$100(Lcom/alibaba/ailabs/comm/task/TaskSvr;)Lcom/alibaba/ailabs/comm/task/SceneExecutor;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/alibaba/ailabs/comm/task/SceneExecutor;->onActivityChange(Ljava/lang/String;ZZZ)V

    return-void
.end method
