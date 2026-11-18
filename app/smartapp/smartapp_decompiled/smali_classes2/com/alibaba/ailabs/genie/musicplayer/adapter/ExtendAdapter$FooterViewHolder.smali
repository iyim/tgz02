.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterViewHolder"
.end annotation


# instance fields
.field backToMainBt:Landroid/widget/Button;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Landroid/view/View;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    .line 421
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 422
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->backToMainBt:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;->backToMainBt:Landroid/widget/Button;

    .line 423
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;->backToMainBt:Landroid/widget/Button;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$FooterViewHolder$IrGskPHbGcaj6jTX9n_PfleM9fc;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$FooterViewHolder$IrGskPHbGcaj6jTX9n_PfleM9fc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$68$ExtendAdapter$FooterViewHolder(Landroid/view/View;)V
    .locals 2

    .line 424
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$FooterViewHolder;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;->onItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V

    :cond_0
    return-void
.end method
