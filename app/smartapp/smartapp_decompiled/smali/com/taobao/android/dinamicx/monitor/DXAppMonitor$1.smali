.class final Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;
.super Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;
.source "DXAppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAppMonitorPerform(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$biztype:Ljava/lang/String;

.field final synthetic val$consumingTime:D

.field final synthetic val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

.field final synthetic val$extraParam:Ljava/util/Map;

.field final synthetic val$featureType:Ljava/lang/String;

.field final synthetic val$needTLog:Z

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;DZ)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$extraParam:Ljava/util/Map;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$biztype:Ljava/lang/String;

    iput-wide p6, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$consumingTime:D

    iput-boolean p8, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$needTLog:Z

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 89
    iget-object v1, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-wide v3, v3, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    const-string v4, "Detail_RenderWidget_CreateView_Once"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " templateinfo: "

    const-string v5, "ms"

    const-string v6, ": "

    const-string/jumbo v7, "\u6027\u80fd\u57cb\u70b9: "

    const-string v8, "]\uff1a"

    const-wide v9, 0x412e848000000000L    # 1000000.0

    const-string v11, "["

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    const-string v12, "Detail_RenderWidget_RenderView_Once"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 99
    :cond_2
    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$biztype:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$consumingTime:D

    div-double/2addr v6, v9

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/dinamicx/log/DXLog;->performLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$extraParam:Ljava/util/Map;

    if-eqz v3, :cond_4

    const-string v12, "ViewSimpleName"

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    iget-object v3, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$biztype:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$extraParam:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$consumingTime:D

    div-double/2addr v6, v9

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/dinamicx/log/DXLog;->performLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_4
    :goto_2
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$000()Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 104
    :cond_5
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->getFailSampleResult()Z

    move-result v1

    const-string v3, "DinamicX"

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    iget-object v1, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$biztype:Ljava/lang/String;

    iget-object v4, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$featureType:Ljava/lang/String;

    iget-object v5, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    iget-object v6, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v7, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$extraParam:Ljava/util/Map;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$000()Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Page_Umbrella_Govern"

    invoke-interface {v4, v6, v3, v5}, Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;->alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-wide v4, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$consumingTime:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_6

    .line 108
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$000()Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    move-result-object v11

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    iget-wide v4, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$consumingTime:D

    div-double v15, v4, v9

    const-string v12, "Page_Umbrella_Govern"

    const-string v13, "DinamicX"

    invoke-interface/range {v11 .. v16}, Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;->counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 112
    :cond_6
    iget-boolean v1, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$needTLog:Z

    if-eqz v1, :cond_7

    .line 113
    iget-object v1, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$biztype:Ljava/lang/String;

    iget-object v4, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$serviceId:Ljava/lang/String;

    iget-object v5, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v6, v0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$1;->val$extraParam:Ljava/util/Map;

    invoke-static {v1, v4, v5, v6, v2}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$200(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v3, v3, v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLogi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
