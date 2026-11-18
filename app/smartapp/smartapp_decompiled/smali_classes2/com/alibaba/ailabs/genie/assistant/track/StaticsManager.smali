.class public Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;
.super Ljava/lang/Object;
.source "StaticsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Settings-StaticsManager"

.field public static page_my_account:Ljava/lang/String; = "Page_my_account"

.field public static spm_cnt_my_account:Ljava/lang/String; = "a2i27.b10491406"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static genieUTHit(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;Ljava/lang/String;)V
    .locals 3

    .line 29
    new-instance v0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getSpmCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addSpm(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getSpmCnt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getSpmCnt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getPageName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UtRequest.Method.customPageHit "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getEventName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&params="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Settings-StaticsManager"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    const-class p0, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {p0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static pageAppear(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;)V
    .locals 1

    const-string v0, "customPageHit"

    .line 25
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportClickEvent(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "controlHit"

    .line 59
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static reportExposeEvent(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const-string v0, "manualExposure"

    .line 71
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/track/StaticsManager;->genieUTHit(Lcom/alibaba/ailabs/genie/assistant/track/StatisticsParam;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
