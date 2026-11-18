.class public Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;
.super Ljava/lang/Object;
.source "MtopApi.java"


# static fields
.field private static final SYNC_HOURS:I = 0xdbba00

.field private static final TAG:Ljava/lang/String; = "MtopApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;)V
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->writeSettings(Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkNeedSyncSetting()V
    .locals 5

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "persist.aicare.sync.time"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "TaskService-AiCare"

    const-string v1, "> 4 hours passed, sync settings"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->syncSetting()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAiCareSettings()V
    .locals 4

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.setting.getSettingStatus"

    .line 54
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "authInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/Object;)V

    .line 61
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi$2;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public static syncSetting()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/LogTag;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi$1;-><init>()V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/NetworkUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.aicare.sync.time"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->getAiCareSettings()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static writeSettings(Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncSettingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtopApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isEnable()Z

    move-result v0

    const-string v1, "persist.aicare.enable"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isPetEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->isHumanEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 93
    :goto_1
    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapFall:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapCry:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    const-string v3, "persist.aicare.snapHuman"

    .line 95
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    const-string v3, "persist.aicare.snapPet"

    .line 96
    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    const-string v0, "persist.aicare.snapFall"

    .line 98
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    const-string v0, "persist.aicare.snapCry"

    .line 99
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->snapFallPush:Z

    const-string v1, "persist.aicare.snapFallPush"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Z)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->startTime:Ljava/lang/String;

    .line 104
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/aicare/net/SettingResponse;->endTime:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v3, "9"

    .line 106
    invoke-static {v0, v2, v1, v3}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->parse(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    const/4 v5, 0x5

    const/4 v6, 0x3

    .line 107
    invoke-static {v0, v6, v5, v4}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->parse(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "21"

    .line 108
    invoke-static {p0, v2, v1, v7}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->parse(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {p0, v6, v5, v4}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->parse(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "persist.aicare.startHours"

    .line 111
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.aicare.startMinutes"

    .line 112
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.aicare.endHours"

    .line 113
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.aicare.endMinutes"

    .line 114
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
