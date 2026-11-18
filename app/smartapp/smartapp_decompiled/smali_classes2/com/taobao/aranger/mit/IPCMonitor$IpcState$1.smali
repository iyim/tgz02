.class Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;
.super Ljava/lang/Object;
.source "IPCMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->commit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$100(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 127
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IpcState"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-virtual {v3}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "IPCMonitor"

    const-string v3, "[commit]"

    invoke-static {v2, v3, v0}, Lcom/taobao/aranger/logs/IPCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v3, "type"

    .line 130
    iget-object v4, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v4}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$200(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v3, "degrade"

    .line 131
    iget-object v4, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v4}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$300(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v3, "result"

    .line 132
    iget-object v4, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v4}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$400(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v3, "serviceName"

    .line 133
    iget-object v4, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v4}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$500(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v3, "methodName"

    .line 134
    iget-object v4, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v4}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$600(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 136
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    const-string v4, "costTime"

    .line 137
    iget-object v5, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v5}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$700(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v4, "invokeTime"

    .line 138
    iget-object v5, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v5}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$800(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v4, "dataSize"

    .line 139
    iget-object v5, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;->this$0:Lcom/taobao/aranger/mit/IPCMonitor$IpcState;

    invoke-static {v5}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->access$900(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v4, "ARanger"

    const-string v5, "ipcState"

    .line 140
    invoke-static {v4, v5, v0, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "[commit][AppMonitor Stat commit]"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
