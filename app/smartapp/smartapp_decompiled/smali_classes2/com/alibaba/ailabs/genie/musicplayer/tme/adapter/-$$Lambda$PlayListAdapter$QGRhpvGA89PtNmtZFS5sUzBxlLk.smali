.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->lambda$onBindViewHolder$141$PlayListAdapter(ILandroid/view/View;)V

    return-void
.end method
