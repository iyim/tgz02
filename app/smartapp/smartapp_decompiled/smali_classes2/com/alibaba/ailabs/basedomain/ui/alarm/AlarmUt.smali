.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;
.super Ljava/lang/Object;
.source "AlarmUt.java"


# static fields
.field private static final EVENT_ALARM_TIME_UP:Ljava/lang/String; = "4_alarm_time_up"

.field private static final EVENT_DISAPPEAR_BY_OTHER:Ljava/lang/String; = "disappear_by_other"

.field private static final EVENT_FINISH_REASON:Ljava/lang/String; = "alarm_finish_reason"

.field private static final EVENT_OTHER_MSG:Ljava/lang/String; = "alarm_other_msg"

.field private static final EVENT_PLAY_RING_BEGIN:Ljava/lang/String; = "7_play_ring_begin"

.field private static final EVENT_PLAY_RING_END:Ljava/lang/String; = "9_play_ring_end"

.field private static final EVENT_RECEIVE_ORIGIN_ALARM:Ljava/lang/String; = "1_receive_origin_alarm"

.field private static final EVENT_RECEIVE_ORIGIN_RING_INFO:Ljava/lang/String; = "6_receive_origin_ring_info"

.field private static final EVENT_RECEIVE_OTHER_TTS:Ljava/lang/String; = "receive_other_tts"

.field private static final EVENT_RECEIVE_PARSED_ALARM:Ljava/lang/String; = "2_receive_parsed_alarm"

.field private static final EVENT_SCHEDULE_SYNC_ALL_DATA:Ljava/lang/String; = "schedule_sync_all_alarm_data"

.field private static final EVENT_SENT_DATA_SYNC:Ljava/lang/String; = "5_send_data_sync"

.field private static final EVENT_SET_POWEROFF_ALARM:Ljava/lang/String; = "set_power_off_alarm"

.field private static final EVENT_SET_RTC_ALARM:Ljava/lang/String; = "3_set_rtc_alarm"

.field private static final EVENT_SHOW_ALARM_RING_UI:Ljava/lang/String; = "8_show_alarm_ring_ui"

.field private static final EVENT_SYNC_ALL_DATA:Ljava/lang/String; = "sync_all_alarm_data"

.field private static final EVENT_SYSTEM_BOOT:Ljava/lang/String; = "system_boot"

.field private static final EVENT_USER_BIND:Ljava/lang/String; = "user_bind"

.field private static final EVENT_USER_DELETE_LOCAL_ALARM:Ljava/lang/String; = "user_delete_local_alarm"

.field private static final EVENT_USER_DELETE_ONLINE_ALARM:Ljava/lang/String; = "user_delete_online_alarm"

.field private static final EVENT_USER_ONLINE:Ljava/lang/String; = "user_online"

.field private static final EVENT_USER_PRESS_BUTTON:Ljava/lang/String; = "user_press_button"

.field private static final EVENT_USER_UNBIND:Ljava/lang/String; = "user_unbind"

.field private static final KEY_ALARM_CRON:Ljava/lang/String; = "alarm_cron"

.field private static final KEY_ALARM_FINISH_REASON:Ljava/lang/String; = "alarm_finish_reason"

.field private static final KEY_ALARM_ID:Ljava/lang/String; = "alarm_id"

.field private static final KEY_ALARM_INFO:Ljava/lang/String; = "alarm_info"

.field private static final KEY_ALARM_OTHER_MSG:Ljava/lang/String; = "other_msg"

.field private static final KEY_ALARM_RING_TIME:Ljava/lang/String; = "alarm_ring_time"

.field private static final KEY_DATA_SYNC_ARGS:Ljava/lang/String; = "send_data_sync_args"

.field private static final KEY_DISAPPEAR_REASON:Ljava/lang/String; = "disappear_reason"

.field private static final KEY_NOW:Ljava/lang/String; = "now_time"

.field private static final KEY_ORIGIN_RING_INFO:Ljava/lang/String; = "origin_ring_info"

.field private static final KEY_ORIGIN_SET_ALARM_DATA:Ljava/lang/String; = "origin_set_alarm_data"

.field private static final KEY_RING_STOP_REASON:Ljava/lang/String; = "ring_stop_ring"

.field private static final KEY_SYSTEM_ALARM_ID:Ljava/lang/String; = "system_alarm_id"

.field public static final REASON_STOP_CLOSE_BY_SERVER:Ljava/lang/String; = "server delete clock"

.field private static final TAG:Ljava/lang/String; = "AlarmUt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static SyncData(Z)V
    .locals 2

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_online"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sync_all_alarm_data"

    .line 113
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "alarm_id"

    .line 94
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "alarm_finish_reason"

    .line 95
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static alarmTimeUp(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 4

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "system_alarm_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v1

    const-string v3, "alarm_cron"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_ring_time"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "4_alarm_time_up"

    .line 209
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static deleteOnlineAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "user_delete_online_alarm"

    .line 102
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static disappearByOther(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V
    .locals 3

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "disappear_reason"

    .line 151
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "disappear_by_other"

    .line 152
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static handleReceiveOtherTtsInfo(Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ttsInfo"

    .line 69
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "receive_other_tts"

    .line 70
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static playRingBegin(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 3

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "7_play_ring_begin"

    .line 175
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static playRingEnd(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V
    .locals 3

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ring_stop_ring"

    .line 163
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "9_play_ring_end"

    .line 164
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static receiveOriginAlarm(Ljava/lang/String;I)V
    .locals 2

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sync_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin_set_alarm_data"

    .line 244
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "1_receive_origin_alarm"

    .line 245
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static receiveOriginDataSyncRingInfo(Ljava/lang/String;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "origin_ring_info"

    .line 184
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "6_receive_origin_ring_info"

    .line 185
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reveiveParsedParsedAlarm(Ljava/lang/String;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 3

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 232
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alarm_cron"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "2_receive_parsed_alarm"

    .line 234
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static scheduleSyncData()V
    .locals 2

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "schedule_sync_all_alarm_data"

    .line 107
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendDataSync(Ljava/lang/String;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "send_data_sync_args"

    .line 194
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alarm_id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "5_send_data_sync"

    .line 196
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setPowerOffAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AlarmInfo"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "set_power_off_alarm"

    .line 83
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setRtcAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 4

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alarm_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "system_alarm_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v1

    const-string v3, "alarm_cron"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alarm_ring_time"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "3_set_rtc_alarm"

    .line 222
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static showAlarmRingUI(Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "alarm_id"

    .line 138
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "8_show_alarm_ring_ui"

    .line 139
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static systemBoot()V
    .locals 2

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "system_boot"

    .line 118
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static uploadMsg(Ljava/lang/String;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "other_msg"

    .line 88
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "alarm_other_msg"

    .line 89
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static userBind()V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user_bind"

    .line 133
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static userOnline()V
    .locals 2

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user_online"

    .line 128
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static userPressButton(IZ)V
    .locals 3

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keycode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "byMock"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "user_press_button"

    .line 77
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static userUnbind()V
    .locals 2

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "user_unbind"

    .line 123
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->utAlarm(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static utAlarm(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utAlarm event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " props:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmUt"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "now_time"

    const-string v1, "localTimeMills"

    const-string v2, "pid"

    const-string v3, ""

    if-eqz p1, :cond_0

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_0
    invoke-static {p0, v3, p1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
