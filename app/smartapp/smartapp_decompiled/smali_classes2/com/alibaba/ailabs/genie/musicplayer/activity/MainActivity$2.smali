.class Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->showRightAccountDialog(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

.field final synthetic val$isCanPlay:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;Z)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->val$isCanPlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V

    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.musicplayer.tme/page/tme_main?showScene=setting&showBenefits="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 584
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->val$isCanPlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 587
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&needRefresh="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 589
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;)V

    return-void
.end method
