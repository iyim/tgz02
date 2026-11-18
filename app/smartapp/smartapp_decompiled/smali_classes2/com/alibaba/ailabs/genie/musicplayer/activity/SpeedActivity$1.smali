.class Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;
.super Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
.source "SpeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

.field final synthetic val$finalCurrentIndex:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;Landroid/content/Context;ILjava/util/List;ILjava/util/List;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity;

    iput p5, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->val$finalCurrentIndex:I

    iput-object p6, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->val$list:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method public dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V
    .locals 2

    .line 64
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->speedTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/SpeedActivity$1;Ljava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
