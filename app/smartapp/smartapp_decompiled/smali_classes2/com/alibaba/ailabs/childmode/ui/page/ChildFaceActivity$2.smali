.class Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;
.super Ljava/lang/Object;
.source "ChildFaceActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelViewClicked(Landroid/view/View;)V
    .locals 2

    const-string p1, "ChildFaceActivity"

    const-string v0, "onCancelViewClicked: "

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "cancel_click"

    const-string v1, "childface_identiy"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->abortFlows()V

    return-void
.end method

.method public onSwitchPasswordViewClicked(Landroid/view/View;)V
    .locals 2

    const-string p1, "ChildFaceActivity"

    const-string v0, "onSwitchPasswordViewClicked: "

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "password_click"

    const-string v1, "childface_identiy"

    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->addFirst(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void
.end method

.method public onTTSPlayEngineCalled(ILjava/lang/String;)V
    .locals 8

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTTSPlayEngineCalled: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ttsMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;Z)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$2;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method
