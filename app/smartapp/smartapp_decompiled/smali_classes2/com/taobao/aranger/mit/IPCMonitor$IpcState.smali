.class public Lcom/taobao/aranger/mit/IPCMonitor$IpcState;
.super Ljava/lang/Object;
.source "IPCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/mit/IPCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpcState"
.end annotation


# static fields
.field private static final DIMENSION_DEGRADE:Ljava/lang/String; = "degrade"

.field private static final DIMENSION_METHOD_NAME:Ljava/lang/String; = "methodName"

.field private static final DIMENSION_RESULT:Ljava/lang/String; = "result"

.field private static final DIMENSION_SERVICE_NAME:Ljava/lang/String; = "serviceName"

.field private static final DIMENSION_TYPE:Ljava/lang/String; = "type"

.field private static final MEASURE_COST_TIME:Ljava/lang/String; = "costTime"

.field private static final MEASURE_DATA_SIZE:Ljava/lang/String; = "dataSize"

.field private static final MEASURE_INVOKE_TIME:Ljava/lang/String; = "invokeTime"

.field private static final MONITOR_POINT:Ljava/lang/String; = "ipcState"

.field private static isRegistered:Z = false


# instance fields
.field private costTime:J

.field private dataSize:J

.field private degrade:I

.field private invokeTime:J

.field private methodName:Ljava/lang/String;

.field private result:I

.field private serviceName:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->type:I

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->register()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->type:I

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->degrade:I

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->result:I

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->costTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->invokeTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->dataSize:J

    return-wide v0
.end method

.method private register()Z
    .locals 6

    .line 90
    invoke-static {}, Lcom/taobao/aranger/mit/IPCMonitor;->access$000()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    sget-boolean v0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->isRegistered:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 98
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v3, "type"

    .line 99
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "degrade"

    .line 100
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "result"

    .line 101
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "serviceName"

    .line 102
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "methodName"

    .line 103
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 104
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    const-string v4, "costTime"

    .line 105
    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v4, "invokeTime"

    .line 106
    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v4, "dataSize"

    .line 107
    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v4, "ARanger"

    const-string v5, "ipcState"

    .line 108
    invoke-static {v4, v5, v3, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 109
    sput-boolean v2, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->isRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "IPCMonitor"

    const-string v3, "[register][AppMonitor register]"

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    sget-boolean v0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->isRegistered:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 114
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public commit()V
    .locals 2

    .line 118
    invoke-static {}, Lcom/taobao/aranger/mit/IPCMonitor;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x0

    .line 121
    new-instance v1, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;

    invoke-direct {v1, p0}, Lcom/taobao/aranger/mit/IPCMonitor$IpcState$1;-><init>(Lcom/taobao/aranger/mit/IPCMonitor$IpcState;)V

    invoke-static {v0, v1}, Lcom/taobao/aranger/utils/IPCThreadCaller;->post(ZLjava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCostTime(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->costTime:J

    return-void
.end method

.method public setDataSize(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->dataSize:J

    return-void
.end method

.method public setDegrade(Z)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->degrade:I

    return-void
.end method

.method public setInvokeTime(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->invokeTime:J

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->methodName:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->result:I

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcState{serviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", methodName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", degrade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->degrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", costTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->costTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invokeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->invokeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/aranger/mit/IPCMonitor$IpcState;->dataSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
