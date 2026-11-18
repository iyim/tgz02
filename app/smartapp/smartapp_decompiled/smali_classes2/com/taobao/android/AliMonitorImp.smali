.class public Lcom/taobao/android/AliMonitorImp;
.super Ljava/lang/Object;
.source "AliMonitorImp.java"

# interfaces
.implements Lcom/taobao/android/AliMonitorInterface;


# static fields
.field private static final sInstance:Lcom/taobao/android/AliMonitorImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/taobao/android/AliMonitorImp;

    invoke-direct {v0}, Lcom/taobao/android/AliMonitorImp;-><init>()V

    sput-object v0, Lcom/taobao/android/AliMonitorImp;->sInstance:Lcom/taobao/android/AliMonitorImp;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/android/AliMonitorImp;
    .locals 1

    .line 29
    sget-object v0, Lcom/taobao/android/AliMonitorImp;->sInstance:Lcom/taobao/android/AliMonitorImp;

    return-object v0
.end method

.method private static toDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorDimension;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static toDimensionSet(Lcom/taobao/android/AliMonitorDimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorDimensionSet;->getDimensions()Ljava/util/List;

    move-result-object p0

    .line 263
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorDimension;

    .line 264
    invoke-static {v1}, Lcom/taobao/android/AliMonitorImp;->toDimension(Lcom/taobao/android/AliMonitorDimension;)Lcom/alibaba/mtl/appmonitor/model/Dimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toDimensionValueSet(Lcom/taobao/android/AliMonitorDimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    throw v0
.end method

.method private static toMeasure(Lcom/taobao/android/AliMonitorMeasure;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getConstantValue()Ljava/lang/Double;

    move-result-object v2

    .line 251
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasure;->getBounds()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;)V

    return-object v0
.end method

.method private static toMeasureSet(Lcom/taobao/android/AliMonitorMeasureSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasureSet;->getMeasures()Ljava/util/List;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/AliMonitorMeasure;

    .line 239
    invoke-static {v1}, Lcom/taobao/android/AliMonitorImp;->toMeasure(Lcom/taobao/android/AliMonitorMeasure;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static toMeasureValue(Lcom/taobao/android/AliMonitorMeasureValue;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 316
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasureValue;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasureValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(DD)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :goto_0
    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    throw v0
.end method

.method private static toMeasureValueSet(Lcom/taobao/android/AliMonitorMeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 297
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/taobao/android/AliMonitorMeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 300
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/AliMonitorMeasureValue;

    invoke-static {v3}, Lcom/taobao/android/AliMonitorImp;->toMeasureValue(Lcom/taobao/android/AliMonitorMeasureValue;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/taobao/android/AliMonitorBalancedPool;->getInstance()Lcom/taobao/android/AliMonitorBalancedPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/android/AliMonitorBalancedPool;->offer(Lcom/taobao/android/AliMonitorReusable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static toTransaction(Lcom/taobao/android/AliMonitorTransaction;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction;

    iget-object v1, p0, Lcom/taobao/android/AliMonitorTransaction;->eventId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/taobao/android/AliMonitorTransaction;->module:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/android/AliMonitorTransaction;->monitorPoint:Ljava/lang/String;

    iget-object p0, p0, Lcom/taobao/android/AliMonitorTransaction;->dimensionValues:Lcom/taobao/android/AliMonitorDimensionValueSet;

    .line 337
    invoke-static {p0}, Lcom/taobao/android/AliMonitorImp;->toDimensionValueSet(Lcom/taobao/android/AliMonitorDimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    return-object v0
.end method


# virtual methods
.method public alarm_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 105
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public alarm_commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public alarm_commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public alarm_setSampling(I)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->setSampling(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public alarm_setStatisticsInterval(I)V
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->setStatisticsInterval(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public counter_commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 88
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public counter_commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 93
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public counter_setSampling(I)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->setSampling(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public counter_setStatisticsInterval(I)V
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->setStatisticsInterval(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public destroy()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->destroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public enableLog(Z)V
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->enableLog(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public offlinecounter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 137
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public offlinecounter_commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 141
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public offlinecounter_setSampling(I)V
    .locals 0

    .line 133
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;->setSampling(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public offlinecounter_setStatisticsInterval(I)V
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$OffLineCounter;->setStatisticsInterval(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorMeasureSet;)V
    .locals 0

    .line 150
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toMeasureSet(Lcom/taobao/android/AliMonitorMeasureSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorMeasureSet;Lcom/taobao/android/AliMonitorDimensionSet;)V
    .locals 0

    .line 160
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toMeasureSet(Lcom/taobao/android/AliMonitorMeasureSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p3

    invoke-static {p4}, Lcom/taobao/android/AliMonitorImp;->toDimensionSet(Lcom/taobao/android/AliMonitorDimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorMeasureSet;Lcom/taobao/android/AliMonitorDimensionSet;Z)V
    .locals 0

    .line 165
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toMeasureSet(Lcom/taobao/android/AliMonitorMeasureSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p3

    invoke-static {p4}, Lcom/taobao/android/AliMonitorImp;->toDimensionSet(Lcom/taobao/android/AliMonitorDimensionSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object p4

    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorMeasureSet;Z)V
    .locals 0

    .line 155
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toMeasureSet(Lcom/taobao/android/AliMonitorMeasureSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setChannel(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setSampling(I)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setSampling(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStatisticsInterval(I)V
    .locals 0

    .line 145
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->setStatisticsInterval(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStatisticsInterval(II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 187
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stat_commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 192
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_commit(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorDimensionValueSet;D)V
    .locals 0

    .line 197
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toDimensionValueSet(Lcom/taobao/android/AliMonitorDimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p3

    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_commit(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/AliMonitorDimensionValueSet;Lcom/taobao/android/AliMonitorMeasureValueSet;)V
    .locals 0

    .line 203
    invoke-static {p3}, Lcom/taobao/android/AliMonitorImp;->toDimensionValueSet(Lcom/taobao/android/AliMonitorDimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p3

    .line 204
    invoke-static {p4}, Lcom/taobao/android/AliMonitorImp;->toMeasureValueSet(Lcom/taobao/android/AliMonitorMeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p4

    .line 203
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_setSampling(I)V
    .locals 0

    .line 183
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->setSampling(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public stat_setStatisticsInterval(I)V
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->setStatisticsInterval(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public transaction_begin(Lcom/taobao/android/AliMonitorTransaction;Ljava/lang/String;)V
    .locals 1

    .line 210
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-static {p1}, Lcom/taobao/android/AliMonitorImp;->toTransaction(Lcom/taobao/android/AliMonitorTransaction;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/analytics/IAnalytics;->transaction_begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public transaction_end(Lcom/taobao/android/AliMonitorTransaction;Ljava/lang/String;)V
    .locals 1

    .line 219
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-static {p1}, Lcom/taobao/android/AliMonitorImp;->toTransaction(Lcom/taobao/android/AliMonitorTransaction;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/alibaba/analytics/IAnalytics;->transaction_end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public triggerUpload()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->triggerUpload()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public turnOffRealTimeDebug()V
    .locals 0

    .line 71
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->turnOffRealTimeDebug()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->turnOnRealTimeDebug(Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0

    .line 228
    invoke-static/range {p1 .. p9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
