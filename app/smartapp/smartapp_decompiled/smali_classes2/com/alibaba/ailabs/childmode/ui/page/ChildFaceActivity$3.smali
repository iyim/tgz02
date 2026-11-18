.class Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;
.super Ljava/lang/Object;
.source "ChildFaceActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;


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

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildFaceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "raceFailed"

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    const/4 p2, 0x1

    const-string v0, "\u6444\u50cf\u5934\u88ab\u5360\u7528\uff0c\u81ea\u52a8\u5207\u6362\u4e3a\u5bc6\u7801\u6a21\u5f0f\uff01"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "childface_identiy"

    const-string p2, "childface_identity"

    const-string v0, "no"

    .line 124
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->addFirst(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    :cond_0
    return-void
.end method

.method public onIdentifyFail(ILjava/lang/String;)V
    .locals 1

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onIdentifyFail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChildFaceActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "childface_identiy"

    const-string p2, "childface_identity"

    const-string v0, "no"

    .line 147
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V

    .line 150
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    iget-object p2, p2, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->mValidatePasswordFlow:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->addFirst(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void
.end method

.method public onIdentifySuccess()V
    .locals 3

    const-string v0, "ChildFaceActivity"

    const-string v1, "onIdentifySuccess: "

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "childface_identiy"

    const-string v1, "childface_identity"

    const-string v2, "yes"

    .line 136
    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->access$000(Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;Z)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity$3;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ChildFaceActivity;->finish()V

    .line 140
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    return-void
.end method
