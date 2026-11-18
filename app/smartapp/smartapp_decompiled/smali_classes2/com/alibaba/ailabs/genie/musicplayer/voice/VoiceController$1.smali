.class Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;
.super Ljava/lang/Object;
.source "VoiceController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->registerTts(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;Landroid/content/Context;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsCallback(II)V
    .locals 5

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getDataFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "]"

    const-string v2, "], status = ["

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTtsCallback() & push called with: id = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTtsCallback() called with: id = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSSessionId(Ljava/lang/String;)V

    .line 170
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/subtasks/DelayedPlayRunnable;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/subtasks/DelayedPlayRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    .line 171
    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSIsOver(Z)V

    .line 160
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x17

    const-string v0, "Control"

    .line 161
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->isFirstRun()Z

    move-result p2

    const-string v0, "isFirstRun"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isFirstPlay"

    .line 163
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->val$context:Landroid/content/Context;

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;->val$sessionId:I

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;->unRegisterTts(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void
.end method
