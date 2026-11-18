.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$SongItemAdapter$a1pLsAiwbCzV0kuHLWyzLsHUE4c;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/SongItemAdapter;->lambda$getView$25$SongItemAdapter(ILandroid/view/View;)V

    return-void
.end method
