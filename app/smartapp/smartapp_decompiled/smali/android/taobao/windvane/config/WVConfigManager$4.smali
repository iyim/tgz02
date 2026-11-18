.class Landroid/taobao/windvane/config/WVConfigManager$4;
.super Ljava/lang/Object;
.source "WVConfigManager.java"

# interfaces
.implements Landroid/taobao/windvane/config/WVConfigUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVConfigManager;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/config/WVConfigManager;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field final synthetic val$handler:Landroid/taobao/windvane/config/WVConfigHandler;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/String;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigHandler;Ljava/lang/String;Ljava/lang/String;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 419
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$handler:Landroid/taobao/windvane/config/WVConfigHandler;

    iput-object p3, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    iput-object p4, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$newValue:Ljava/lang/String;

    iput-wide p5, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$startTime:J

    iput-object p7, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 464
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    .locals 8

    .line 423
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$handler:Landroid/taobao/windvane/config/WVConfigHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/config/WVConfigHandler;->setUpdateStatus(Z)V

    .line 424
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v0}, Landroid/taobao/windvane/config/WVConfigManager;->access$404(Landroid/taobao/windvane/config/WVConfigManager;)I

    .line 426
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v0}, Landroid/taobao/windvane/config/WVConfigManager;->access$400(Landroid/taobao/windvane/config/WVConfigManager;)I

    move-result v0

    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v2}, Landroid/taobao/windvane/config/WVConfigManager;->access$100(Landroid/taobao/windvane/config/WVConfigManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 427
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/WVConfigManager;->access$402(Landroid/taobao/windvane/config/WVConfigManager;I)I

    .line 428
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    const-string v1, "domain"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    const-string v1, "monitor"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v1, "3"

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    :cond_1
    sget-object v0, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 435
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v0

    if-eqz v6, :cond_2

    .line 438
    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$newValue:Ljava/lang/String;

    const-string/jumbo v3, "wv_main_config"

    invoke-static {v3, v1, v2}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 440
    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 443
    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$newValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$startTime:J

    sub-long v4, v0, v2

    .line 450
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getConfigMonitor()Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->ordinal()I

    move-result v3

    move v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/taobao/windvane/monitor/WVConfigMonitorInterface;->didUpdateConfig(Ljava/lang/String;IJII)V

    .line 453
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUpdateSuccess "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$4;->val$key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVConfigManager"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
