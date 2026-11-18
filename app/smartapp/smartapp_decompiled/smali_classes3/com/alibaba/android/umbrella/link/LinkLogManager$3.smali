.class Lcom/alibaba/android/umbrella/link/LinkLogManager$3;
.super Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;
.source "LinkLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/LinkLogManager;->triggerCommitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

.field final synthetic val$childBizName:Ljava/lang/String;

.field final synthetic val$errorCode:Ljava/lang/String;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$featureType:Ljava/lang/String;

.field final synthetic val$mainBizName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$tagId:Ljava/lang/String;

.field final synthetic val$tagVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$mainBizName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$childBizName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$featureType:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$errorCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$tagVersion:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$tagId:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$params:Ljava/util/Map;

    iput-object p9, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public runSafety()V
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$000(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$mainBizName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$childBizName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$featureType:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->isSkipCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$mainBizName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$childBizName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$featureType:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$tagVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$200(Lcom/alibaba/android/umbrella/link/LinkLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    iget-object v5, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$featureType:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$tagId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$mainBizName:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$childBizName:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$params:Ljava/util/Map;

    iget-object v11, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$errorCode:Ljava/lang/String;

    iget-object v12, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->val$errorMsg:Ljava/lang/String;

    invoke-static/range {v5 .. v12}, Lcom/alibaba/android/umbrella/link/AppMonitorAlarm;->commitFailureStability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$100(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogCache;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/umbrella/link/LinkLogManager$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/umbrella/link/LinkLogManager$3$1;-><init>(Lcom/alibaba/android/umbrella/link/LinkLogManager$3;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/link/LinkLogCache;->consumeAndEraseLocked(Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$000(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/LinkLogSwitcher;->getLinkCacheMaxSize()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->this$0:Lcom/alibaba/android/umbrella/link/LinkLogManager;

    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/LinkLogManager;->access$100(Lcom/alibaba/android/umbrella/link/LinkLogManager;)Lcom/alibaba/android/umbrella/link/LinkLogCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/umbrella/link/LinkLogCache;->resizeCacheIfNeed(I)V

    return-void
.end method
