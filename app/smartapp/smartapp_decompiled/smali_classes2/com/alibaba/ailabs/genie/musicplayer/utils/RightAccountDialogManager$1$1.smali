.class Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;
.super Ljava/lang/Object;
.source "RightAccountDialogManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

.field final synthetic val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSuccess$59(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;->JumpToNewPage()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9886\u53d6\u6743\u76ca\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialogManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveCCRight errorCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rightAccountInterface11:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    if-eqz p1, :cond_0

    const-string p1, "11 rightAccountInterface.JumpToNewPage():"

    .line 79
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;->JumpToNewPage()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;)V
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rightReceiveCCBean  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialogManager"

    .line 45
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->isReceiveSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "rightReceiveCCBean.getModel().isReceiveSuccess() success "

    .line 49
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    goto :goto_0

    :cond_0
    const-string v0, "rightReceiveCCBean.getModel().isReceiveSuccess() false "

    .line 53
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rightAccountInterface00:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    goto :goto_0

    :cond_2
    const-string p1, "rightReceiveCCBean.getModel()  is null "

    .line 62
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    if-eqz p1, :cond_3

    .line 64
    new-instance p1, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$1;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/-$$Lambda$RightAccountDialogManager$1$1$jho-n_Bx0wIq9ZsffqrC-DjmH3E;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/-$$Lambda$RightAccountDialogManager$1$1$jho-n_Bx0wIq9ZsffqrC-DjmH3E;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
