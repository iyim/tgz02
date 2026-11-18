.class Lcom/alibaba/android/umbrella/link/LinkLogManager$2;
.super Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;
.source "LinkLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerCommitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

.field final synthetic val$childBizName:Ljava/lang/String;

.field final synthetic val$featureType:Ljava/lang/String;

.field final synthetic val$mainBizName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$tagId:Ljava/lang/String;

.field final synthetic val$tagVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$mainBizName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$childBizName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$featureType:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$tagVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$tagId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public runSafety()V
    .locals 11

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$000(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$mainBizName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$childBizName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$featureType:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$mainBizName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$childBizName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$featureType:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$tagVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$200(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    iget-object v5, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$featureType:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$tagId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$mainBizName:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$childBizName:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$2;->val$params:Ljava/util/Map;

    invoke-static/range {v5 .. v10}, Lcom/alibaba/android/umbrella/link/AppMonitorAlarm;->commitSuccessStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
