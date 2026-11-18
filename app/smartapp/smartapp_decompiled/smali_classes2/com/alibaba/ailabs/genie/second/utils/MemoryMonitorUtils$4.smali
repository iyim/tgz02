.class final Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;
.super Ljava/lang/Object;
.source "MemoryMonitorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->onTrimMemory(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "process"

    .line 183
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_field_arg1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/ActivityUtils;->getTopActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_field_arg2"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getUsedPercent(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_field_arg3"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;->val$level:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onTrimMemory"

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
