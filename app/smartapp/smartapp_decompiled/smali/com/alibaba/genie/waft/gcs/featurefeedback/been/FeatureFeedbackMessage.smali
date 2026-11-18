.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;
.super Ljava/lang/Object;
.source "FeatureFeedbackMessage.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;,
        Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;
    }
.end annotation


# instance fields
.field private data:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

.field private deviceId:Ljava/lang/String;

.field private expireTime:J

.field private targetServiceId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->expireTime:J

    return-wide v0
.end method

.method public setData(Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->data:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;->expireTime:J

    return-void
.end method
