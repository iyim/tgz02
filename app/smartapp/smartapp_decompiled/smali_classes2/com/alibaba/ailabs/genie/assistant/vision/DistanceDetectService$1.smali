.class Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;
.super Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;
.source "DistanceDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/acamera/IACameraCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "business"

    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_distance"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "distance"

    .line 54
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    const-string v2, "com.alibaba.ailabs.genie.launcher/com.alibaba.ailabs.genie.launcher.activity.AdultHomeActivity"

    .line 58
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alibaba.ailabs.genie.children/com.alibaba.ailabs.genie.children.activity.HomeActivity"

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    .line 59
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, 0x28

    :cond_1
    if-ge p1, v0, :cond_2

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$008(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)I

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$002(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;I)I

    .line 70
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_4

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$002(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;I)I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trigger notify = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "onStateUpdate need  showScreenDistanceTipDialog"

    .line 74
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateUpdate s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
