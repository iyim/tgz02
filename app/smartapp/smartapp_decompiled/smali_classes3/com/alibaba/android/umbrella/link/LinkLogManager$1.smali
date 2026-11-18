.class Lcom/alibaba/android/umbrella/link/LinkLogManager$1;
.super Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;
.source "LinkLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerLogEntity(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

.field final synthetic val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-direct {p0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public runSafety()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/TLogger;->logTLog(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getMainBizName()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {v1}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getChildBizName()Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {v2}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getFeatureType()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {v3}, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v4}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$000(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$100(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$1;->val$entity:Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogCache;->add(Ljava/lang/Object;)V

    return-void
.end method
