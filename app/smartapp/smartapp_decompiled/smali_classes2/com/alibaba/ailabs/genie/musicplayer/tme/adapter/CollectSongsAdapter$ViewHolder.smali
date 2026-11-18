.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CollectSongsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public songImg:Landroid/widget/ImageView;

.field public songName:Landroid/widget/TextView;

.field public songTag:Landroid/widget/ImageView;

.field public songTagLeft:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songImg:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTag:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_tag_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTagLeft:Landroid/widget/ImageView;

    .line 151
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songName:Landroid/widget/TextView;

    return-void
.end method
