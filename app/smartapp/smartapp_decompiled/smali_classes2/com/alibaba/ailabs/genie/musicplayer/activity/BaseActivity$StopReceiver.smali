.class public Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 476
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StopReceiver  onReceive"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Control"

    .line 477
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 479
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e0\u6548\u7684\u64ad\u653e\u547d\u4ee4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive,control:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12

    if-ne p2, p1, :cond_2

    .line 484
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 485
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 486
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->mBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$StopReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->finish()V

    :cond_2
    return-void
.end method
