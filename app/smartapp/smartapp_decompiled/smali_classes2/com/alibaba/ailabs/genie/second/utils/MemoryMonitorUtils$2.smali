.class final Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;
.super Ljava/lang/Object;
.source "MemoryMonitorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->sendMemInfo(Landroid/content/Context;)V
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

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->isOverTimeMemInfoUploaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieProcessUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->sendMemoryInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
