.class final Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;
.super Ljava/util/HashMap;
.source "FeatureFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x5

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u975e\u5e38\u6ee1\u610f"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u6709\u6539\u8fdb\u7a7a\u95f4"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u4e00\u822c\u822c"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u6ee1\u610f"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u975e\u5e38\u4e0d\u6ee1\u610f"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/activity/FeatureFeedbackActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
