.class Lcom/ut/mini/UTAnalytics$4;
.super Ljava/lang/Object;
.source "UTAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTAnalytics;->createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTAnalytics;

.field final synthetic val$aLogMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTAnalytics;Ljava/util/Map;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/ut/mini/UTAnalytics$4;->this$0:Lcom/ut/mini/UTAnalytics;

    iput-object p2, p0, Lcom/ut/mini/UTAnalytics$4;->val$aLogMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    iget-object v1, p0, Lcom/ut/mini/UTAnalytics$4;->val$aLogMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/alibaba/analytics/IAnalytics;->transferLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
