.class Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;
.super Ljava/lang/Object;
.source "RightAccountDialogManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

.field final synthetic val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9886\u53d6\u6743\u76ca\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialogManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateRightDialog receiveCCRight errorCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "activateRightDialog rightAccountInterface11:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;)V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateRightDialog rightReceiveCCBean  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialogManager"

    .line 120
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->isReceiveSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "activateRightDialog rightReceiveCCBean.getModel().isReceiveSuccess() success "

    .line 124
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    goto :goto_0

    :cond_0
    const-string v0, "activateRightDialog rightReceiveCCBean.getModel().isReceiveSuccess() false "

    .line 127
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateRightDialog rightAccountInterface00:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RightReceiveCCBean$ModelBean;->getReceiveStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    goto :goto_0

    :cond_2
    const-string p1, "activateRightDialog rightReceiveCCBean.getModel()  is null "

    .line 135
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;->val$canReceiveRightByIdBean:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    :cond_3
    :goto_0
    return-void
.end method
