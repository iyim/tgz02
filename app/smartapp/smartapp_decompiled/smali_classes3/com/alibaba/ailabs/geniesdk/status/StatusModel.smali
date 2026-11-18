.class public Lcom/alibaba/ailabs/geniesdk/status/StatusModel;
.super Ljava/lang/Object;
.source "StatusModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$MediaStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$AudioPlayerStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$GpsStatus;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$PowerStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SystemStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$BluetoothStatusData;,
        Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;
    }
.end annotation


# static fields
.field public static final BLUE_CONNECTED:I = 0x1

.field public static final BLUE_DISCONNECTED:I = 0x2

.field public static final BLUE_PAIR_FAIL:I = 0x3

.field public static final BLUE_PAIR_START:I = 0x0

.field public static final CONNECT_STATUS:I = 0x0

.field public static final DISCONNECT_STATUS:I = 0x1

.field public static final MEDIA_PLAYBACK_FAILED:I = 0x3

.field public static final MEDIA_PLAYBACK_FINISHED:I = 0x1

.field public static final MEDIA_PLAYBACK_INIT:I = 0xc

.field public static final MEDIA_PLAYBACK_NEARLY_FINISHED:I = 0x2

.field public static final MEDIA_PLAYBACK_PAUSED:I = 0x9

.field public static final MEDIA_PLAYBACK_QUEUE_CLEARED:I = 0xb

.field public static final MEDIA_PLAYBACK_REPROT_DELAY_ELAPSED:I = 0x4

.field public static final MEDIA_PLAYBACK_REPROT_INTERVAL_ELAPSED:I = 0x5

.field public static final MEDIA_PLAYBACK_RESUMED:I = 0xa

.field public static final MEDIA_PLAYBACK_STARTED:I = 0x0

.field public static final MEDIA_PLAYBACK_STOPPED:I = 0x8

.field public static final MEDIA_PLAYBACK_STUTTER_FINISHED:I = 0x7

.field public static final MEDIA_PLAYBACK_STUTTER_STARTED:I = 0x6

.field public static final MEDIA_PLAYBACK_UNINIT:I = 0xd

.field public static final MEDIA_TYPE_MUSIC:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final POWER_BATTERY:I = 0x1

.field public static final POWER_CHAREG:I = 0x0

.field public static final POWER_ELECTRITY:I = 0x2

.field public static final STATUS_UNKNOW:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
