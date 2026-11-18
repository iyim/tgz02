.class public final synthetic Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;->f$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;->f$1:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->lambda$success$121$TMEAccountBindFragment$4(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V

    return-void
.end method
