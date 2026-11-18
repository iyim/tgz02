.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "FeatureEventResponse.java"


# instance fields
.field data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;


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
.method public getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponse;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponse;->getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponse;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/network/data/FeatureEventResponseData;

    return-void
.end method
