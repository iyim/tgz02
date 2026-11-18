.class Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;
.super Ljava/lang/Object;
.source "MemoryGuardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->startMonitor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$interval:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;Landroid/content/Context;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "MemoryGuard.Manager"

    const-string v1, "memory guard is execute"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->access$100(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->access$200(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 114
    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->access$300(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;

    .line 118
    iget v3, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pss:I

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getMaxMemSizeMb()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " pss: "

    const-string v6, " pss limit:  "

    if-lt v3, v4, :cond_2

    .line 119
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kill name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getMaxMemSizeMb()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.alibaba.ailabs.genie.smartapp"

    .line 121
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget v2, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pid:I

    invoke-static {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->access$400(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->killProcessByPackagename(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unkill name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->getMaxMemSizeMb()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/alibaba/ailabs/comm/memory/MemoryGuardBean$PackagesBean;->pss:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->this$0:Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;->access$500(Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/comm/memory/MemoryGuardManager$1;->val$interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
