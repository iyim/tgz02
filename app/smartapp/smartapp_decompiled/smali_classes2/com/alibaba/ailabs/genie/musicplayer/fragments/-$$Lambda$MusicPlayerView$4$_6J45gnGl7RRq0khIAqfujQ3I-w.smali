.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->lambda$onLoadFailed$165$MusicPlayerView$4(Landroid/widget/ImageView;)V

    return-void
.end method
