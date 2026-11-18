.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;
.super Ljava/lang/Object;
.source "FeatureFeedbackMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private messageType:Ljava/lang/String;

.field private payload:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->payload:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    return-object v0
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$Data;->payload:Lcom/alibaba/genie/waft/gcs/featurefeedback/been/FeatureFeedbackMessage$FeatureFeedbackData;

    return-void
.end method
