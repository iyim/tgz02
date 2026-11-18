.class Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;
.super Ljava/lang/Object;
.source "RightAccountDialogManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RightAccountDialog$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->showRightAccountDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

.field final synthetic val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConfirm$60(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 167
    invoke-interface {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;->JumpToNewPage()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;)V

    .line 175
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;->JumpToNewPage()V

    :cond_0
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 4

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;)V

    .line 165
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$3;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/-$$Lambda$RightAccountDialogManager$3$j-UDtaViRQjs9s3L-hF7QAVEp2w;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/-$$Lambda$RightAccountDialogManager$3$j-UDtaViRQjs9s3L-hF7QAVEp2w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
