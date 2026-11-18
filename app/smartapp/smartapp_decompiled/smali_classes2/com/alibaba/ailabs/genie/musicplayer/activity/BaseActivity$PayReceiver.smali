.class Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$32$BaseActivity$PayReceiver(Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->paySuccess(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paySuccess"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "state"

    .line 497
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "type"

    .line 498
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayReceiver, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 506
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 507
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->payFailed(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payFailed"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
