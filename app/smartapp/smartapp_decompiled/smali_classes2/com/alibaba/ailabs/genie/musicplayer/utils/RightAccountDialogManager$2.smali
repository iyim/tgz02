.class Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;
.super Ljava/lang/Object;
.source "RightAccountDialogManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$CanReceiveRightByIdResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;->activateRightDialog(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;->val$rightAccountInterface:Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$RightAccountInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateRightDialog canReceiveRightById errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "msg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RightAccountDialogManager"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateRightDialog rightReceiveCCBean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->isCanReceive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightAccountDialogManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean$ModelBean;->isCanReceive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;-><init>()V

    .line 117
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/utils/RightAccountDialogManager$2;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CanReceiveRightByIdBean;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest;->receiveCCRight(Lcom/alibaba/ailabs/genie/musicplayer/apis/RightReceiveCCRequest$RightReceiveCClResult;)V

    :cond_0
    return-void
.end method
