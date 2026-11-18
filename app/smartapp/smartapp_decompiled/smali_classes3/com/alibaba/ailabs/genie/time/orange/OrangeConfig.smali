.class public Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;
.super Ljava/lang/Object;
.source "OrangeConfig.java"


# static fields
.field private static final KEY_ORANGE:Ljava/lang/String; = "EBc5YFMFCdiP"

.field private static final TAG:Ljava/lang/String; = "OrangeConfig"

.field private static instance:Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;


# instance fields
.field private mExcludeApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeSystemApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReportInterval:I

.field private mVideoAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoTimeReportInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->instance:Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->EXCLUDE_PKG:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeApp:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->EXCLUDE_SYSTEM_APP:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeSystemApp:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/time/constant/ConstantVal;->VIDEO_APP:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoAppList:Ljava/util/List;

    return-void
.end method

.method private getAppList(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 134
    const-class p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;
    .locals 1

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->instance:Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    return-object v0
.end method


# virtual methods
.method public getExcludeApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeApp:Ljava/util/List;

    return-object v0
.end method

.method public getExcludeSystemAppApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeSystemApp:Ljava/util/List;

    return-object v0
.end method

.method public getOrangeConfig()V
    .locals 5

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "EBc5YFMFCdiP"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OrangeConfig"

    if-nez v1, :cond_5

    .line 89
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "excludeApp"

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getAppList(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excludeAppList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->setExcludeApp(Ljava/util/List;)V

    :cond_1
    const-string v1, "excludeSystemApp"

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getAppList(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excludeSystemAppList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->setExcludeSystemApp(Ljava/util/List;)V

    :cond_2
    const-string v1, "videoApp"

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getAppList(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoAppList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->setVideoAppList(Ljava/util/List;)V

    :cond_3
    const-string v1, "usedTimeReportInterval"

    .line 112
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mReportInterval:I

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReportInterval:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mReportInterval:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "videoTimeReportInterval"

    .line 118
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoTimeReportInterval:I

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportVideoTimeInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoTimeReportInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "orangeConfig is empty"

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public getReportInterval()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mReportInterval:I

    return v0
.end method

.method public getReportVideoTimeInterval()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoTimeReportInterval:I

    return v0
.end method

.method public getVideoAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoAppList:Ljava/util/List;

    return-object v0
.end method

.method public setExcludeApp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeApp:Ljava/util/List;

    return-void
.end method

.method public setExcludeSystemApp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mExcludeSystemApp:Ljava/util/List;

    return-void
.end method

.method public setVideoAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->mVideoAppList:Ljava/util/List;

    return-void
.end method
