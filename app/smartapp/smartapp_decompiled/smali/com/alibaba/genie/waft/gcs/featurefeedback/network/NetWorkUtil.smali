.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetWorkUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendFeatureFeedback(ILcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;ILjava/util/List;)V
    .locals 8
    .param p1    # Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->getReleaseVersion()Ljava/lang/String;

    move-result-object v3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendFeatureFeedback version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " featureFeedbackSubmitType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetWorkUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-class v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getFeaturesId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getFeaturesVersion()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->getEvaluateCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v4, 0x1

    .line 32
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, p3

    .line 27
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;->uploadFeedbackInfo(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/alibaba/ailabs/tg/network/Call;

    move-result-object p0

    new-instance p1, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$1;

    invoke-direct {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$1;-><init>()V

    .line 35
    invoke-interface {p0, p1}, Lcom/alibaba/ailabs/tg/network/Call;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;)V

    return-void
.end method

.method public static uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V
    .locals 9

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uploadFeatureEvent execute eventType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetWorkUtil"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "featuresId"

    .line 55
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->optValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "featuresVersion"

    .line 56
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->optValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "triggerTime"

    .line 57
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->optValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "featuresEntryTime"

    .line 58
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->optValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "featuresExitTime"

    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/Utils;->optValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    const-class v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;

    invoke-static {v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopNetBusinessManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;->getEventType()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;->generalUserEventUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/tg/network/Call;

    move-result-object p0

    new-instance v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$2;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil$2;-><init>()V

    .line 67
    invoke-interface {p0, v0}, Lcom/alibaba/ailabs/tg/network/Call;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;)V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "uploadFeatureEvent data is  empty "

    .line 51
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
