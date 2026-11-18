.class Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$2;
.super Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;
.source "FeatureFeedbackApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->initMessageCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "FeatureFeedbackApplication"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageCenterClient"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/SystemUtil;->getBetaUpdateState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    .line 60
    :try_start_0
    const-class v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parse error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getPayload()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " message type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getMessageType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genius.sys.feature.feedback"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getPayload()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getTriggerTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string p2, " trigger than current more than one minute ignore this pop window message "

    .line 69
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->getPayload()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil;->sendFeatureFeedback(ILcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;ILjava/util/List;)V

    goto :goto_1

    .line 72
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->access$100()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "data"

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->access$100()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void
.end method
