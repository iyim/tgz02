.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;
.super Ljava/lang/Object;
.source "FeatureFeedbackMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureFeedbackData"
.end annotation


# instance fields
.field private evaluateCount:I

.field private featuresDesc:Ljava/lang/String;

.field private featuresId:J

.field private featuresName:Ljava/lang/String;

.field private featuresVersion:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private triggerTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEvaluateCount()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->evaluateCount:I

    return v0
.end method

.method public getFeaturesDesc()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturesId()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresId:J

    return-wide v0
.end method

.method public getFeaturesName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturesVersion()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->triggerTime:J

    return-wide v0
.end method

.method public setEvaluateCount(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->evaluateCount:I

    return-void
.end method

.method public setFeaturesDesc(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresDesc:Ljava/lang/String;

    return-void
.end method

.method public setFeaturesId(J)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresId:J

    return-void
.end method

.method public setFeaturesName(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresName:Ljava/lang/String;

    return-void
.end method

.method public setFeaturesVersion(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->featuresVersion:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->tags:Ljava/util/Map;

    return-void
.end method

.method public setTriggerTime(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;->triggerTime:J

    return-void
.end method
