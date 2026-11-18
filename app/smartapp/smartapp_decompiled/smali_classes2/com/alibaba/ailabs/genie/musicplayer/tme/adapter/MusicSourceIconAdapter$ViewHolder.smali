.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicSourceIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public musicIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->music_source_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    return-void
.end method
