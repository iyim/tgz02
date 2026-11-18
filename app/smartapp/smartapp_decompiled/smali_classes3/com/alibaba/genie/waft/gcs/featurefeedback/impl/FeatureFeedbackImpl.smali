.class public Lcom/alibaba/genie/waft/gcs/featurefeedback/impl/FeatureFeedbackImpl;
.super Ljava/lang/Object;
.source "FeatureFeedbackImpl.java"

# interfaces
.implements Lcom/alibaba/genie/waft/gcs/featurefeedback/api/IFeatureFeedback;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FeatureFeedbackImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "FeatureFeedbackImpl"

    const-string v1, " uploadFeatureEvent receive ipc invoke success "

    .line 20
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/featurefeedback/util/SystemUtil;->getBetaUpdateState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/alibaba/genie/waft/gcs/featurefeedback/network/NetWorkUtil;->uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
