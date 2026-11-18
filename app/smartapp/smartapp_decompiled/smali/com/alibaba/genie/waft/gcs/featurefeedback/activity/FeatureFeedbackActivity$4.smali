.class Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeatureFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->finish()V

    .line 156
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$4;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->sendFeaturesFeedback(I)V

    return-void
.end method
