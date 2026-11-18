.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/-$$Lambda$MusicService$OtherReceiver$cd5ycaiNEWiDMNlTdOyvv1rvbFA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OtherReceiver;->lambda$onReceive$11$MusicService$OtherReceiver(I)V

    return-void
.end method
