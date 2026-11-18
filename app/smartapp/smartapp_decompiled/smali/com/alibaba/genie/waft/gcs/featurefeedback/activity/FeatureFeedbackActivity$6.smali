.class Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;
.super Ljava/lang/Object;
.source "FeatureFeedbackActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->createTag(Ljava/lang/String;)Landroid/widget/CheckBox;
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

    .line 196
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " tag check change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureFeedbackActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {p2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$600(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$6;->this$0:Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;

    invoke-static {p2}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;->access$600(Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
