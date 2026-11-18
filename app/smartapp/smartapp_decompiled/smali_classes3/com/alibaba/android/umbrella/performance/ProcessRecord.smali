.class public Lcom/alibaba/android/umbrella/performance/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addAbInfo(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 2

    .line 101
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkParamsEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->ab:Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->abBucket:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addAbTest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static checkAndCommit()V
    .locals 4

    .line 130
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    if-nez v3, :cond_1

    .line 137
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v3}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->doCommitPerformance(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static checkConditionEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 148
    invoke-virtual {v1}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v1

    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->isContains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method protected static checkParamsEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v1

    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->isContains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method protected static commitPerformance(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 5

    .line 112
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->remove(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V

    .line 117
    iget-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->pageLoad:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 118
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->doCommitPerformance(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V

    :cond_1
    return-void
.end method

.method protected static doCommitPerformance(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/PerformanceEngine;->commitPerformancePage(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected static recordArgs(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 2

    .line 77
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkParamsEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 85
    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addArgs(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected static recordOtherProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 4

    .line 66
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkParamsEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addOtherProcess(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected static recordProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 4

    .line 20
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkConditionEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addArgs(Ljava/util/Map;)V

    .line 30
    :cond_2
    sget-object v1, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->PAGELOAD:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    iget-wide v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addPageLoad(J)V

    goto :goto_0

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    invoke-virtual {v1}, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addProcess(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method protected static recordSubProcess(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 4

    .line 39
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkConditionEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 42
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addArgs(Ljava/util/Map;)V

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->INIT:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_3

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addInit(Ljava/lang/String;J)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->LIFECYCLE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_4

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addLifeCycle(Ljava/lang/String;J)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->NETWORK:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_5

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addNetwork(Ljava/lang/String;J)V

    goto :goto_0

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->DATAPARSE:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_6

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addDataParse(Ljava/lang/String;J)V

    goto :goto_0

    .line 57
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->SUB_CREATE_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_7

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addCreateView(Ljava/lang/String;J)V

    goto :goto_0

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    sget-object v2, Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;->SUB_BIND_VIEW:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    if-ne v1, v2, :cond_8

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->addBindView(Ljava/lang/String;J)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected static register(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkAndCommit()V

    .line 15
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->uptimeMillis:J

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;-><init>(Ljava/lang/String;J)V

    .line 16
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->add(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V

    return-void
.end method

.method public static setChildBizName(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)V
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/alibaba/android/umbrella/performance/ProcessRecord;->checkParamsEmpty(Lcom/alibaba/android/umbrella/performance/ProcessEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->childBizName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->setChildBizName(Ljava/lang/String;)V

    return-void
.end method
