.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;
.super Ljava/lang/Object;
.source "StaticsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TME-StaticsManager"

.field public static page_music_account:Ljava/lang/String; = "music_account"

.field public static page_music_account_login:Ljava/lang/String; = "music_account_login"

.field public static page_music_app:Ljava/lang/String; = "music_app"

.field public static page_music_play_start:Ljava/lang/String; = "play_start"

.field public static page_music_tme_poplayer:Ljava/lang/String; = "music_tme_poplayer"

.field public static spm_cnt_music_account:Ljava/lang/String; = "a1zu3w.b66808310"

.field public static spm_cnt_music_account_login:Ljava/lang/String; = "a1zu3w.b25038780"

.field public static spm_cnt_music_app:Ljava/lang/String; = "a1zu3w.b24390544"

.field public static spm_cnt_play_start:Ljava/lang/String; = "a1zu3w.b26899138"

.field public static spm_cnt_tme_poplayer:Ljava/lang/String; = "a1zu3w.b24277641"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static genieUTHit(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getSpmCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addSpm(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getSpmCnt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getSpmCnt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getPageName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UtRequest.Method.customPageHit "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getEventName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&params="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TME-StaticsManager"

    .line 42
    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :try_start_0
    const-class p0, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static pageAppear(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V
    .locals 1

    const-string v0, "customPageHit"

    .line 31
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportClickEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "controlHit"

    .line 65
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportExposeEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "manualExposure"

    .line 77
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportStartupStatsEvent(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "customEventId"

    .line 84
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/musicplayer/tme/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
