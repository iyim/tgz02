.class Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1$1;
.super Ljava/lang/Object;
.source "ChildFaceDetectService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1$1;->this$1:Lcom/alibaba/ailabs/genie/assistant/vision/ChildFaceDetectService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsCallback(II)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtsCallback() childface called with: i = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], i1 = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x3

    if-ne p1, p2, :cond_1

    :cond_0
    const-string p1, "onTtsCallback: childface play tts is over + "

    .line 178
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    const-string p1, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open&pkg=com.alibaba.ailabs.genie.datacenter&from=childface"

    .line 179
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->startActivity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
