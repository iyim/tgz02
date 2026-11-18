.class Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "FeatureFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->onChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;->this$1:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;->this$1:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$200(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;->this$1:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;

    iget-object v0, v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$300(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
