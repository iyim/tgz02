.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;
.super Ljava/lang/Object;
.source "StartupStatsHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = "StartupStatsHelper"

.field public static final TYPE_TOUCH:I = 0x2

.field public static final TYPE_VOICE:I = 0x1

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;


# instance fields
.field private mMusicCreateStart:J

.field private needReportTime:Z

.field private needReportViewTime:Z

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->type:I

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportTime:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportViewTime:Z

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;
    .locals 2

    .line 13
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->sInstance:Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;

    return-object v0
.end method

.method private reportPlayStartTime(J)V
    .locals 3

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 64
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "time"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.alibaba.ailabs.genie.smartapp"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "smartVer"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_play_start:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_play_start:Ljava/lang/String;

    const-string v2, "play_start"

    invoke-direct {p1, p2, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withArg1(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    .line 70
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportStartupStatsEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    .line 71
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music start time = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportShowViewTime(J)V
    .locals 3

    .line 76
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 77
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "time"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.alibaba.ailabs.genie.smartapp"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "smartVer"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->page_music_play_start:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->spm_cnt_play_start:Ljava/lang/String;

    const-string v2, "music_view"

    invoke-direct {p1, p2, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->withArg1(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;

    .line 83
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->reportStartupStatsEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V

    .line 84
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show view time = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setMusicCreateStart(J)V
    .locals 3

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicCreateStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->mMusicCreateStart:J

    return-void
.end method

.method public setMusicShowFragment(J)V
    .locals 3

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicShowFragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportViewTime:Z

    if-eqz v0, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->mMusicCreateStart:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->reportShowViewTime(J)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportViewTime:Z

    :cond_0
    return-void
.end method

.method public setMusicStarted(J)V
    .locals 3

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportTime:Z

    if-eqz v0, :cond_0

    .line 48
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->mMusicCreateStart:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->reportPlayStartTime(J)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportTime:Z

    :cond_0
    return-void
.end method

.method public setMusicType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->type:I

    return-void
.end method

.method public setNeedReport(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportTime:Z

    return-void
.end method

.method public setNeedViewReport(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/utils/StartupStatsHelper;->needReportViewTime:Z

    return-void
.end method
