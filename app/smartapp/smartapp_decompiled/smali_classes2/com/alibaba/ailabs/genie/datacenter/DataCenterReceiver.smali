.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataCenterReceiver.java"


# static fields
.field public static final ACTION_ALARM_RECEIVER:Ljava/lang/String; = "android.intent.action.DND_MODE_ALARM_RECEIVER"

.field private static final ACTION_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_BURIED_POINT:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.ACTION_BURIED_POINT"

.field private static final ACTION_FETCH_SETTING_MODE_INFO:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.FETCH_MODE_SETTING_INFO"

.field private static final ACTION_FETCH_TTS_INFO:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.FETCH_TTS_INFO"

.field private static final ACTION_UPLOAD_SETTING_MODE_INFO:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.UPLOAD_MODE_SETTING_INFO"

.field private static final ACTION_UPLOAD_TTS_INFO:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.UPLOAD_TTS_INFO"

.field private static final ACTION_UPLOAD_WAKEUP_FEEDBACK_INFO:Ljava/lang/String; = "com.alibaba.ailabs.genie.datacenter.UPLOAD_WAKEUP_FEEDBACK_INFO"

.field private static final ACTION_USER_BIND:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field private static final ACTION_USER_UNBIND:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

.field public static final ALARM_TYPE_FORBIDDEN_TIME_END:I = 0x68

.field public static final ALARM_TYPE_FORBIDDEN_TIME_START:I = 0x67

.field public static final ALARM_TYPE_TCM_END:I = 0x66

.field public static final ALARM_TYPE_TCM_START:I = 0x65

.field public static final EXTRA_ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field private static final HOME_CHILD_PKG:Ljava/lang/String; = "com.alibaba.ailabs.genie.children"

.field private static final HOME_PROP:Ljava/lang/String; = "sys.ali.home.package"

.field public static final REQUEST_CODE_TCM_END:I = 0x186a2

.field public static final REQUEST_CODE_TCM_START:I = 0x186a1

.field private static final TAG:Ljava/lang/String; = "DataCenterReceiver"

.field public static sHasInit:Z


# instance fields
.field private listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mIsConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mIsConnected:Z

    .line 298
    new-instance v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)I
    .locals 2

    .line 41
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handleNetworkStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 283
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DataCenterReceiver"

    const-string v0, "Network is available and has internet connection"

    .line 284
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "retry_info_upload"

    .line 285
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    new-instance p2, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_21

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 81
    :cond_0
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mContext:Landroid/content/Context;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCenterReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "fetch_tts_info"

    if-eqz v3, :cond_1

    const-string v2, "Got BOOT_COMPLETE Broadcast in DataCenterReceiver"

    .line 87
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v1, v6}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    new-instance v2, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$1;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 99
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.alibaba.ailabs.genie.datacenter.FETCH_TTS_INFO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Got ACTION_FETCH_TTS_INFO Broadcast in DataCenterReceiver"

    .line 100
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v1, v6}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 103
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v7, "com.alibaba.ailabs.genie.datacenter.UPLOAD_TTS_INFO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "data"

    if-eqz v3, :cond_3

    const-string v3, "Got ACTION_UPLOAD_TTS_INFO Broadcast in DataCenterReceiver"

    .line 104
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "upload_tts_info"

    .line 107
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "tone_type"

    .line 108
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    .line 110
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v8, "com.alibaba.ailabs.genie.datacenter.UPLOAD_WAKEUP_FEEDBACK_INFO"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, -0x1

    if-eqz v3, :cond_4

    .line 111
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "upload_wakeup_feedback_info"

    .line 112
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "feedback_type"

    .line 113
    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    .line 115
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v9, "android.intent.action.DND_MODE_ALARM_RECEIVER"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "DoNotDisturb"

    if-eqz v3, :cond_f

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_ALARM_RECEIVER\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->sHasInit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-boolean v3, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->sHasInit:Z

    if-nez v3, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "NetWorkAvailable is not available"

    .line 118
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v3, "alarm_type"

    .line 122
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got ACTION_ALARM_RECEIVER Broadcast in DataCenterReceiver, extra="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "alarm"

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 130
    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbModelSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v5

    .line 133
    iget v6, v5, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 134
    iget v7, v5, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 135
    iget v8, v5, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 136
    iget v12, v5, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 137
    iget-boolean v13, v5, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 138
    invoke-static {v6, v7, v8, v12}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v14

    .line 140
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alarm_type="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inTimeCycleModePeriod="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " param="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "ACTION_ALARM_RECEIVER"

    invoke-static {v9, v11, v10, v5}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x65

    const/4 v9, 0x1

    if-ne v2, v5, :cond_a

    const-string v2, "DataCenterReceiverset TCM repeat alarm start time,"

    .line 143
    invoke-static {v6, v7, v9, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    const v10, 0x186a1

    .line 144
    invoke-static {v1, v10, v5}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 145
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v10, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v12, v10, v16

    if-lez v12, :cond_6

    const-string v8, "The next cycle is beyond today\u2019s one day, so set the next cycle to today"

    .line 146
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 147
    invoke-static {v6, v7, v10, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    .line 149
    :goto_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v10, v6, v7, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    const-string v2, "Set repeat start Alarm."

    .line 150
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_7

    const-string v1, "Set repeat start Alarm, current time is not in TCM period, skip other settings."

    .line 154
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz v14, :cond_8

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDndModeClosedByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "Set repeat start Alarm, current time is in TCM period, but user closed DND mode manually, skip other settings."

    .line 159
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v13, :cond_9

    const-string v2, "SCOF:Set screen off time to 1min due to TCM begin"

    .line 163
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xea60

    .line 164
    invoke-static {v1, v2, v9}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    .line 166
    :cond_9
    invoke-static {v1, v9}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->updatePropAndSharePref(Landroid/content/Context;Z)V

    const-string v2, "dnd_mode_enabled_manually"

    const/4 v3, 0x0

    .line 168
    invoke-static {v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_a
    const/16 v5, 0x66

    if-ne v2, v5, :cond_21

    const-string v2, "DataCenterReceiverset TCM repeat alarm end time,"

    .line 170
    invoke-static {v8, v12, v9, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    const v6, 0x186a2

    .line 171
    invoke-static {v1, v6, v5}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v5

    .line 172
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v6, v9

    const-wide/32 v9, 0x5265c00

    cmp-long v11, v6, v9

    if-lez v11, :cond_b

    const-string v2, "The next cycle is beyond today\u2019s one day, so set the next cycle to today"

    .line 173
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DataCenterReceiverset TCM repeat alarm end time,"

    const/4 v6, 0x0

    .line 174
    invoke-static {v8, v12, v6, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    goto :goto_1

    :cond_b
    const/4 v6, 0x0

    .line 176
    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    const-string v2, "Set repeat end Alarm."

    .line 177
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_c

    const-string v2, "Set repeat end Alarm, current time is not in TCM period, skip other settings."

    .line 180
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xea60

    .line 181
    invoke-static {v1, v2, v6}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    return-void

    :cond_c
    const v2, 0xea60

    if-eqz v13, :cond_e

    .line 185
    invoke-static {v2}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v3

    if-le v3, v2, :cond_d

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCOF:Set screen off time to original due to TCM end, time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 188
    invoke-static {v1, v3, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    goto :goto_2

    :cond_d
    const/4 v2, 0x0

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCOF:Invalid original screen off time when TCM end, time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; set to 10min"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0xea60

    .line 191
    invoke-static {v1, v3, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    goto :goto_2

    :cond_e
    const/4 v2, 0x0

    .line 195
    :goto_2
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->updatePropAndSharePref(Landroid/content/Context;Z)V

    .line 196
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDndModeClosedByUser(Landroid/content/Context;Z)V

    goto/16 :goto_6

    .line 199
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "fetch_mode_setting_info"

    if-eqz v3, :cond_10

    const-string v3, "NETWORK_STATE_CHANGED_ACTION"

    .line 200
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.getState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mIsConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->handleNetworkStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v3, "networkInfo"

    .line 204
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.getState():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 207
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    .line 213
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v10, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v2, "User account login, try to get config from server"

    .line 214
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {v1, v6}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 216
    iput v2, v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->mCount:I

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    goto/16 :goto_6

    .line 218
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v1, "User account logout"

    .line 219
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UNBIND_USER--2"

    .line 220
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 223
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v2, "ACTION_POWER_CONNECTED"

    .line 224
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0xea60

    .line 225
    invoke-static {v1, v3}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeout(Landroid/content/Context;I)V

    goto/16 :goto_6

    :cond_13
    const v3, 0xea60

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v2, "ACTION_POWER_DISCONNECTED"

    .line 227
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isCCLite()Z

    move-result v2

    if-nez v2, :cond_21

    .line 230
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_14

    sget v10, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    move v3, v10

    :cond_14
    const/4 v2, 0x0

    .line 231
    invoke-static {v1, v3, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;IZ)V

    const-string v1, "screen_off_timeout"

    const-string v2, "ONE_MINUTE"

    .line 232
    invoke-static {v9, v1, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 234
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v2, "ACTION_TIME_CHANGED android.intent.action.TIME_SET"

    .line 235
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Network is available and sync data"

    .line 237
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ACTION_TIME_CHANGED"

    const-string v3, "uploadDndModeInfo"

    .line 238
    invoke-static {v9, v2, v3}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->uploadDndModeInfo(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 240
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_6

    .line 242
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.alibaba.ailabs.genie.datacenter.FETCH_MODE_SETTING_INFO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v2, "ACTION_FETCH_SETTING_MODE_INFO"

    .line 243
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v1, v8}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startDataCenterService(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 245
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.alibaba.ailabs.genie.datacenter.UPLOAD_MODE_SETTING_INFO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "ACTION_UPLOAD_SETTING_MODE_INFO:com.alibaba.ailabs.genie.datacenter.UPLOAD_MODE_SETTING_INFO"

    .line 246
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "upload_mode_setting_info"

    .line 248
    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "name"

    .line 249
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    .line 251
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.alibaba.ailabs.genie.datacenter.ACTION_BURIED_POINT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "BUNDLE_DATA"

    .line 252
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "REPORT_PAGE_NAME"

    .line 253
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "REPORT_MAIN_KEY"

    .line 254
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "REPORT_STATE"

    .line 255
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCast  ACTION_BURIED_POINT:   \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1a

    const-string v7, "  extra is null "

    goto :goto_3

    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bundle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_5

    .line 261
    :cond_1b
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "STATE"

    .line 263
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v5, "bundle"

    .line 265
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 267
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 268
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1d

    .line 270
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadCast  ACTION_BURIED_POINT:  second bundle data key is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value is "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1e
    const-string v1, "BroadCast  ACTION_BURIED_POINT:  second bundle int extra is null"

    .line 276
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1f
    invoke-static {v3, v2, v6}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_20
    :goto_5
    const-string v1, " BroadCast  ACTION_BURIED_POINT: pageName \u6216 mainKey \u4e3a\u7a7a! "

    .line 258
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_6
    return-void
.end method
