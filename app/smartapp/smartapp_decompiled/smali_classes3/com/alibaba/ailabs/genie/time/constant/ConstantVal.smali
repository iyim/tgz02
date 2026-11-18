.class public Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;
.super Ljava/lang/Object;
.source "ConstantVal.java"


# static fields
.field public static final ADULT_LAUNCHER:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher"

.field public static final ADULT_SMART_APP:Ljava/lang/String; = "com.alibaba.ailabs.genie.smartapp"

.field public static final APPLET_PACKAGE:Ljava/lang/String; = "com.alipay.arome.app"

.field public static final CHILDREN_SMART_APP:Ljava/lang/String; = "com.alibaba.ailabs.genie.children"

.field public static final CLOCK_APP:Ljava/lang/String; = "com.alibaba.ailabs.basedomain"

.field public static EVENT_ENTER_CHILD_MODEL:I = 0x1

.field public static EVENT_EXIT_CHILD_MODEL:I = 0x2

.field public static final EXCLUDE_PKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCLUDE_SYSTEM_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CURRENT_APP:Ljava/lang/String; = "currentApp"

.field public static final KEY_ENTER_CHILD_MODEL:Ljava/lang/String; = "enterTime"

.field public static final KEY_LAST_REPORT_TIME:Ljava/lang/String; = "persist.sys.reporttime"

.field public static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final MUSIC_APP:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer"

.field public static final ONE_DAY:I = 0x15180

.field public static final SETTING:Ljava/lang/String; = "com.android.settings"

.field public static final SP_TIME_FILE_NAME:Ljava/lang/String; = "sp_time"

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x0

.field public static final TEST_TAG:Ljava/lang/String; = "TEST_TIME_LOG"

.field public static final TYPE_APP:Ljava/lang/String; = "app"

.field public static final TYPE_APPLET:Ljava/lang/String; = "applets"

.field public static final VIDEO_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com.alibaba.ailabs.genie.children"

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    const-string v2, "com.alibaba.ailabs.genie.launcher"

    const-string v3, "com.alibaba.ailabs.basedomain"

    const-string v4, "com.android.settings"

    const-string v5, "com.ailabs.emode"

    const-string v6, "com.alibaba.ailabs.genie.guide"

    const-string v7, "com.alibaba.ailabs.genie.osupdate"

    const-string v8, "com.mediatek.mtklogger"

    .line 94
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->EXCLUDE_PKG:Ljava/util/List;

    const-string v0, "com.youku.iot"

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->EXCLUDE_SYSTEM_APP:Ljava/util/List;

    const-string v1, "com.changba.sdr"

    const-string v2, "com.changba.sd"

    const-string v3, "com.iptv.liyuanhang_ott"

    const-string v4, "com.hhdd.kadahd"

    const-string v5, "com.mgtv.tv"

    const-string v6, "com.youku.iot"

    const-string v7, "com.ailabs.youku.iot"

    const-string v8, "com.ss.android.ugc.aweme"

    const-string v9, "com.smile.gifmaker"

    const-string v10, "com.tencent.qqlive.audiobox"

    const-string v11, "tv.danmaku.bili"

    const-string v12, "cn.cmvideo.car.play"

    const-string v13, "com.qiyi.video.speaker"

    .line 109
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->VIDEO_APP:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
