.class Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;
.super Ljava/lang/Object;
.source "UTAppStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotInForegroundRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;-><init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$100(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 131
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$200(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$200(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 133
    instance-of v3, v2, Lcom/ut/mini/module/appstatus/UTAppStatusDelayCallbacks;

    if-eqz v3, :cond_0

    .line 134
    check-cast v2, Lcom/ut/mini/module/appstatus/UTAppStatusDelayCallbacks;

    invoke-interface {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusDelayCallbacks;->onSwitchBackgroundDelay()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
