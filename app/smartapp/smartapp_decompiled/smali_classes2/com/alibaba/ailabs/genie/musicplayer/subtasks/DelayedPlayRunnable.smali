.class public Lcom/alibaba/ailabs/genie/musicplayer/subtasks/DelayedPlayRunnable;
.super Ljava/lang/Object;
.source "DelayedPlayRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "TTSDelay"


# instance fields
.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/subtasks/DelayedPlayRunnable;->mSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/subtasks/DelayedPlayRunnable;->mSessionId:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getTTSSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TTSDelay"

    if-nez v0, :cond_0

    const-string v0, "SessionId\u4e0d\u4e00\u6837\uff0c\u5df2TTS\u64ad\u653e\u7ed3\u675f"

    .line 24
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->isTTSIsOver()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5df2TTS\u64ad\u653e\u7ed3\u675f"

    .line 28
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "TTS\u56de\u8c03\u672a\u56de\u6765\uff0c\u8d85\u65f6\u5904\u7406"

    .line 31
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->setTTSIsOver(Z)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from_voice"

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getPosition()I

    move-result v0

    const-string v2, "Position"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "Control"

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
