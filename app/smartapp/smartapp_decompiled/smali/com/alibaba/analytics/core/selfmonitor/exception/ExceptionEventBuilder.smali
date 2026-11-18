.class public Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;
.super Ljava/lang/Object;
.source "ExceptionEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;
    }
.end annotation


# static fields
.field private static final AP_MODULE:Ljava/lang/String; = "APPMONITOR"

.field private static final AP_MONITOR_POINT:Ljava/lang/String; = "sdk-exception"

.field private static final UT_COMMON_MONITOR_POINT:Ljava/lang/String; = "ut-common-exception"

.field private static final UT_MONITOR_POINT:Ljava/lang/String; = "ut-exception"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 104
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->UT:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    if-ne v0, p0, :cond_0

    const-string/jumbo p0, "ut-exception"

    return-object p0

    .line 59
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->COMMON:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    if-ne v0, p0, :cond_1

    const-string/jumbo p0, "ut-common-exception"

    return-object p0

    :cond_1
    const-string/jumbo p0, "sdk-exception"

    return-object p0
.end method

.method public static log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v1, Lcom/alibaba/appmonitor/event/UTEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/event/UTEvent;

    .line 37
    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    iput v1, v0, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "meta"

    .line 39
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/SdkMeta;->getSDKMetaData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v3

    const-class v4, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 41
    invoke-static {p0, p1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->simulateDumpAlarmEvent(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    const-string p1, "data"

    .line 42
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object p1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v3, v0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "APPMONITOR"

    .line 45
    iput-object p1, v0, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Lcom/alibaba/appmonitor/util/UTUtil;->sendAppException(Lcom/alibaba/appmonitor/event/UTEvent;)V

    .line 48
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static simulateDumpAlarmEvent(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v1, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 76
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pname"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "page"

    const-string v3, "APPMONITOR"

    .line 80
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "monitorPoint"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "arg"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "successCount"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "failCount"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v3

    const-class v4, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "errorCode"

    .line 89
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "errorCount"

    invoke-virtual {v2, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p0, "errors"

    .line 93
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
