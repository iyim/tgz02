.class Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeatureFeedbackActivity.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout$OnStarAppraiseChangeListener;


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

    .line 131
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(I)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {v0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$002(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;I)I

    .line 135
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$100(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->setSelectScoreIndex(I)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$400(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2$1;-><init>(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/view/StarAppraiseLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
