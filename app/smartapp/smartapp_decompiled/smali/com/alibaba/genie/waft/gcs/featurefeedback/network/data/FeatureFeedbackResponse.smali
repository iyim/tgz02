.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "FeatureFeedbackResponse.java"


# instance fields
.field data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponse;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponse;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponse;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureFeedbackResponseData;

    return-void
.end method
