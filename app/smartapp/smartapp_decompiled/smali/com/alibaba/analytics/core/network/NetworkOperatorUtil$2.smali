.class final Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkOperatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->registerSIMCardChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 5

    .line 72
    invoke-super {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    const/4 v0, 0x1

    .line 74
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onSubscriptionsChanged"

    aput-object v3, v1, v2

    const-string v3, "NetworkOperatorUtil"

    invoke-static {v3, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->updateNetworkOperatorName(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "CurrentNetworkOperator"

    aput-object v4, v1, v2

    invoke-static {}, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil;->access$100()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/analytics/core/network/NetworkOperatorUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/utils/UTMCDevice;->updateUTMCDeviceNetworkStatus(Landroid/content/Context;)V

    return-void
.end method
