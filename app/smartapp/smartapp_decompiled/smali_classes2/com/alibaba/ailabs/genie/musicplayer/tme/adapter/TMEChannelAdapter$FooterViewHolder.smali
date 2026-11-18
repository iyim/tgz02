.class Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TMEChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterViewHolder"
.end annotation


# instance fields
.field backToMainBt:Landroid/widget/Button;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Landroid/view/View;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 208
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 209
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->backToMainBt:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;->backToMainBt:Landroid/widget/Button;

    .line 211
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;->backToMainBt:Landroid/widget/Button;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$FooterViewHolder$BpkeU8XgdHVhBSDEfk3TLDn-jh0;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$FooterViewHolder$BpkeU8XgdHVhBSDEfk3TLDn-jh0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$129$TMEChannelAdapter$FooterViewHolder(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$OnItemClickListener;->onItemClick(II)V

    :cond_0
    return-void
.end method
