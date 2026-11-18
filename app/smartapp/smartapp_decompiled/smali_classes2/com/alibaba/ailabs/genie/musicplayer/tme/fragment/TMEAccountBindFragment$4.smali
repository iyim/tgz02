.class Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;
.super Ljava/lang/Object;
.source "TMEAccountBindFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/QueryQrcodeAuthorizationRequest$QueryQrcodeAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public invalid()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$1100(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$b20ZBL0EvUdUccD-u1UTES6nakA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$b20ZBL0EvUdUccD-u1UTES6nakA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$invalid$123$TMEAccountBindFragment$4()V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    .line 616
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$next$122$TMEAccountBindFragment$4()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    const/16 v1, 0x457

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;I)V

    return-void
.end method

.method public synthetic lambda$success$121$TMEAccountBindFragment$4(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)V

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization$ModelBean;->getSp()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$1200(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;Ljava/lang/String;)V

    return-void
.end method

.method public next()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$1000(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$Cw0gD6Kg6LP8CUPqBTMfX0TgGyk;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$Cw0gD6Kg6LP8CUPqBTMfX0TgGyk;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public success(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;->access$900(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/-$$Lambda$TMEAccountBindFragment$4$rLdThTjDmM-bV-yFvWe30O8x2es;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/fragment/TMEAccountBindFragment$4;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/QRcodeAuthorization;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
