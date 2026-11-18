.class Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->isMainActivityInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->isPlayListActivityInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->isSpeedActivityInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
