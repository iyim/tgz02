.class final Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;
.super Ljava/lang/Object;
.source "GenieAIRouter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->registTaskClient(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;->val$uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScene, send, s="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GenieAIRouter"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.alibaba.ailabs.genie.smartapp"

    .line 376
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.alibaba.ailabs.genie.smartapp.video.open"

    .line 377
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p3, "uri"

    .line 378
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;->val$uri:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p3, "scene"

    .line 379
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/GenieAIRouter$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->access$000()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->access$000()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
