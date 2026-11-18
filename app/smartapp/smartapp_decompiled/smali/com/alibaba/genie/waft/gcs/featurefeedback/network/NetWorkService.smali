.class public interface abstract Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkService;
.super Ljava/lang/Object;
.source "NetWorkService.java"


# virtual methods
.method public abstract generalUserEventUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/tg/network/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "eventType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresVersion"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "triggerTime"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresEntryTime"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresExitTime"
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;
        value = "GrowthCommonService.generalUserEventUpload.v2"
    .end annotation

    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;
        host = "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"
    .end annotation

    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopResponse;
        value = Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponse;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/ailabs/tg/network/Call<",
            "Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract uploadFeedbackInfo(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/alibaba/ailabs/tg/network/Call;
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "featuresVersion"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "systemVersion"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "invitedTemplate"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "score"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "tags"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;
            value = "operationType"
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;
        value = "FeaturesFeedbackPlatformService.uploadFeedbackInfo"
    .end annotation

    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;
        host = "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"
    .end annotation

    .annotation runtime Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopResponse;
        value = Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponse;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/alibaba/ailabs/tg/network/Call<",
            "Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;",
            ">;"
        }
    .end annotation
.end method
