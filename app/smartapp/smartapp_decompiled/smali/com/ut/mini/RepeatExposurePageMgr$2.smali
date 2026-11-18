.class Lcom/ut/mini/RepeatExposurePageMgr$2;
.super Ljava/lang/Object;
.source "RepeatExposurePageMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/UTClientConfigMgr$IConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/RepeatExposurePageMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/RepeatExposurePageMgr;


# direct methods
.method constructor <init>(Lcom/ut/mini/RepeatExposurePageMgr;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/ut/mini/RepeatExposurePageMgr$2;->this$0:Lcom/ut/mini/RepeatExposurePageMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "repeatExposure"

    return-object v0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr$2;->this$0:Lcom/ut/mini/RepeatExposurePageMgr;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/RepeatExposurePageMgr$2;->this$0:Lcom/ut/mini/RepeatExposurePageMgr;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ut/mini/RepeatExposurePageMgr;->access$002(Lcom/ut/mini/RepeatExposurePageMgr;Z)Z

    const-string v1, "RepeatExposurePageMgr"

    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getConfigFromServer"

    aput-object v5, v3, v4

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/ut/mini/RepeatExposurePageMgr$2;->this$0:Lcom/ut/mini/RepeatExposurePageMgr;

    invoke-static {v1, p1}, Lcom/ut/mini/RepeatExposurePageMgr;->access$200(Lcom/ut/mini/RepeatExposurePageMgr;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/ut/mini/RepeatExposurePageMgr$2;->this$0:Lcom/ut/mini/RepeatExposurePageMgr;

    invoke-static {v1, p1}, Lcom/ut/mini/RepeatExposurePageMgr;->access$300(Lcom/ut/mini/RepeatExposurePageMgr;Ljava/lang/String;)V

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
