.class Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;
.super Ljava/lang/Object;
.source "SpeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

.field final synthetic val$position:I

.field final synthetic val$s:Ljava/lang/String;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;Ljava/lang/String;ILandroid/widget/TextView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$s:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$position:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "s:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeedActivity"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$position:I

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iget v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->val$finalCurrentIndex:I

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$tv:Landroid/widget/TextView;

    const-string v0, "#2B3852"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->val$list:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "speed"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->finish()V

    return-void
.end method
