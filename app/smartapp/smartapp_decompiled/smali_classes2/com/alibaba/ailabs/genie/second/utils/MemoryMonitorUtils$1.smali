.class final Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;
.super Ljava/lang/Object;
.source "MemoryMonitorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->sendUsedMemoryInfo(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getPss(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 109
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    .line 110
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$name:Ljava/lang/String;

    const-string v7, "process"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_field_arg1"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_field_arg2"

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getUsedPercent(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_field_arg3"

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
