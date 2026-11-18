.class public Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OtherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$11$MusicService$OtherReceiver(I)V
    .locals 1

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    const-string p1, "MusicService"

    const-string v0, "receive stop from other app"

    .line 1233
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stop()V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "Control"

    .line 1223
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u65e0\u6548\u7684\u64ad\u653e\u547d\u4ee4 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicService"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "live"

    .line 1228
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1231
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;I)V

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
