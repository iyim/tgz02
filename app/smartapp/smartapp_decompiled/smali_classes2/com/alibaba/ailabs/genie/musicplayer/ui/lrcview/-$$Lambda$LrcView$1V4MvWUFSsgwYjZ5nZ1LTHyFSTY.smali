.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

.field private final synthetic f$1:J

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-wide p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$1:J

    iput-wide p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$1:J

    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;->f$2:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->lambda$updateTime$54$LrcView(JJ)V

    return-void
.end method
