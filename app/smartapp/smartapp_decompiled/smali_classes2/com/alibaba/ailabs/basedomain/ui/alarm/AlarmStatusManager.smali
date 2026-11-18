.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;
.super Ljava/lang/Object;
.source "AlarmStatusManager.java"


# static fields
.field public static final ALARM_FINISH_REASON_NORMAL:Ljava/lang/String; = "normal"

.field public static final ALARM_FINISH_REASON_USER:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static volatile mManager:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mManager:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mManager:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    .line 30
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mManager:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public syncAlarmEnteredForeground(Ljava/lang/String;)V
    .locals 4

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AlarmManager"

    if-eqz v0, :cond_0

    const-string v0, "syncAlarmEnteredForeground with empty alarm id"

    .line 73
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 81
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->AlarmStatusSync(Landroid/content/Context;ILjava/lang/String;)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncAlarmEnteredForeground payload:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "syncAlarmFinished "

    .line 85
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public syncAlarmFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AlarmManager"

    .line 50
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 51
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reason"

    .line 52
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->mContext:Landroid/content/Context;

    const/16 p2, 0x3ed

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->AlarmStatusSync(Landroid/content/Context;ILjava/lang/String;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syncAlarmFinished payload:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "syncAlarmFinished "

    .line 56
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
