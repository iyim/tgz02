.class public interface abstract Lcom/alibaba/genie/waft/gcs/featurefeedback/api/IFeatureFeedback;
.super Ljava/lang/Object;
.source "IFeatureFeedback.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation runtime Lcom/taobao/aranger/annotation/type/ServiceName;
    value = "com.alibaba.genie.waft.gcs.featurefeedback.impl.FeatureFeedbackImpl"
.end annotation


# virtual methods
.method public abstract uploadFeatureEvent(Lcom/alibaba/genie/waft/gcs/featurefeedback/api/GeneralUserEventDTO;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation
.end method
