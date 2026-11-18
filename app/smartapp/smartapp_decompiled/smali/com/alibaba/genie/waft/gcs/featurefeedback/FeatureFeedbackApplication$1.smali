.class Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$1;
.super Ljava/lang/Object;
.source "FeatureFeedbackApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->initMessageCenterDelay()V
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

    .line 43
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$1;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication$1;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;

    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;->access$000(Lcom/alibaba/genie/waft/gcs/featurefeedback/FeatureFeedbackApplication;)V

    return-void
.end method
