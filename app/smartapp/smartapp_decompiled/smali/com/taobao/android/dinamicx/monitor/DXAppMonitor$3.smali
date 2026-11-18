.class final Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;
.super Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;
.source "DXAppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerAppMonitorError(Lcom/taobao/android/dinamicx/DXError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dxError:Lcom/taobao/android/dinamicx/DXError;

.field final synthetic val$isSimplePipeline:Z


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$dxError:Lcom/taobao/android/dinamicx/DXError;

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$isSimplePipeline:Z

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 208
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->biztype:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v10, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    .line 210
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    .line 212
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    if-eqz v1, :cond_2

    .line 213
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    .line 217
    :cond_0
    iget-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$dxError:Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/DXError;->getErrorId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-boolean v2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$isSimplePipeline:Z

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimplePipeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor$3;->val$dxError:Lcom/taobao/android/dinamicx/DXError;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v3, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    iget-object v4, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->serviceId:Ljava/lang/String;

    iget-object v5, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->extraParams:Ljava/util/Map;

    iget v6, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->code:I

    iget-object v7, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    iget-wide v8, v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->timeStamp:J

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->access$300(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;J)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
