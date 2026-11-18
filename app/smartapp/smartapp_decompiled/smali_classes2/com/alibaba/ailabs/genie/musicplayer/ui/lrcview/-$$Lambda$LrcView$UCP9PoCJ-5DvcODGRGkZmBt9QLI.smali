.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->lambda$loadLrc$52$LrcView(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
