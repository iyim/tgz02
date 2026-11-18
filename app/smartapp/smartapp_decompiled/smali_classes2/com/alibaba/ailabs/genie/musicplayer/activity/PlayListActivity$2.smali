.class Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;
.super Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
.source "PlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->initIndicator()V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 228
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method public dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/String;I)V
    .locals 2

    .line 231
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->indicatorTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->lineSelected:I

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 233
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)I

    move-result p2

    if-ne p3, p2, :cond_1

    .line 235
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isChildResource(Ljava/lang/String;)Z

    move-result p2

    const/high16 v1, 0x41d00000    # 26.0f

    if-eqz p2, :cond_0

    const-string p2, "#6A95EB"

    .line 236
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    const-string p2, "#FE2161"

    .line 239
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    const/4 p2, 0x0

    .line 242
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p2, "#2B3852"

    .line 244
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41b00000    # 22.0f

    .line 245
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x4

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :goto_1
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/PlayListActivity$2;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
