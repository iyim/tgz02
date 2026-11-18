.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/-$$Lambda$BaseActivity$PayReceiver$ZWa-27IVVGR8ris-cnayLRJwpzg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$PayReceiver;->lambda$onReceive$32$BaseActivity$PayReceiver(Ljava/lang/String;)V

    return-void
.end method
