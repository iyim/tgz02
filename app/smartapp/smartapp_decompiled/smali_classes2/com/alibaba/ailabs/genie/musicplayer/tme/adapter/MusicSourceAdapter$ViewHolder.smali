.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public bindingCancel:Landroid/widget/TextView;

.field public bindingNow:Landroid/widget/TextView;

.field public musicDesc:Landroid/widget/TextView;

.field public musicIcon:Landroid/widget/ImageView;

.field public musicVipIcon:Landroid/widget/ImageView;

.field public playFirst:Landroid/widget/LinearLayout;

.field public sourceName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 179
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 180
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->source_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->sourceName:Landroid/widget/TextView;

    .line 181
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicDesc:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_vip_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicVipIcon:Landroid/widget/ImageView;

    .line 184
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->play_first:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->playFirst:Landroid/widget/LinearLayout;

    .line 185
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->binding_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingCancel:Landroid/widget/TextView;

    .line 186
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->binding_now:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingNow:Landroid/widget/TextView;

    return-void
.end method
