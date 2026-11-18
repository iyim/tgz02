.class final Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;
.super Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;
.source "DXAppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAsyncRender(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$biztype:Ljava/lang/String;

.field final synthetic val$extraParam:Ljava/util/Map;

.field final synthetic val$featureType:Ljava/lang/String;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$biztype:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$featureType:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$serviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$extraParam:Ljava/util/Map;

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 136
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->getFailSampleResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$biztype:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$featureType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$serviceId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$2;->val$extraParam:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    :cond_0
    return-void
.end method
