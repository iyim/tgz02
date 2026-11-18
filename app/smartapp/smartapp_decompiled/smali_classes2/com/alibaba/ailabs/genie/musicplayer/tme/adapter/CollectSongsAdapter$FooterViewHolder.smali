.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;
.super Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;
.source "CollectSongsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterViewHolder"
.end annotation


# instance fields
.field public songEnd:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 160
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->song_end:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;->songEnd:Landroid/view/View;

    return-void
.end method
