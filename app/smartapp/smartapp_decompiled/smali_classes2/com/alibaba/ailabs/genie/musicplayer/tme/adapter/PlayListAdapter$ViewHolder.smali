.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public centerImg:Landroid/widget/ImageView;

.field public playListContent:Landroid/widget/TextView;

.field public playListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->list_center_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->centerImg:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->play_list_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->playListName:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->play_list_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->playListContent:Landroid/widget/TextView;

    return-void
.end method
