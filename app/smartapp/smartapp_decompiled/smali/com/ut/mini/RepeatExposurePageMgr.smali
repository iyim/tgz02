.class Lcom/ut/mini/RepeatExposurePageMgr;
.super Ljava/lang/Object;
.source "RepeatExposurePageMgr.java"


# static fields
.field private static final PAGE_ALL:Ljava/lang/String; = "a"

.field private static final PAGE_BLACK:Ljava/lang/String; = "b"

.field private static final PAGE_WHITE:Ljava/lang/String; = "w"

.field private static final PAGE_WHITE_HTTP_HEAD:Ljava/lang/String; = "http"

.field private static final REPEAT_EXPOSURE_KEY:Ljava/lang/String; = "repeatExposure"

.field private static final SP_REPEAT_EXPOSURE_KEY:Ljava/lang/String; = "repeatExposure"

.field private static final SP_REPEAT_EXPOSURE_NAME:Ljava/lang/String; = "ut_repeatExposure"

.field private static final TAG:Ljava/lang/String; = "RepeatExposurePageMgr"

.field private static mInstance:Lcom/ut/mini/RepeatExposurePageMgr;


# instance fields
.field private mAllBlack:Z

.field private mGetConfigFromServer:Z

.field private mInit:Z

.field private mRepeatExposurePageBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatExposurePageWhiteList:Ljava/util/List;
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
    .locals 1

    .line 33
    new-instance v0, Lcom/ut/mini/RepeatExposurePageMgr;

    invoke-direct {v0}, Lcom/ut/mini/RepeatExposurePageMgr;-><init>()V

    sput-object v0, Lcom/ut/mini/RepeatExposurePageMgr;->mInstance:Lcom/ut/mini/RepeatExposurePageMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z

    .line 37
    iput-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mInit:Z

    .line 38
    iput-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mGetConfigFromServer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ut/mini/RepeatExposurePageMgr;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mGetConfigFromServer:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ut/mini/RepeatExposurePageMgr;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mGetConfigFromServer:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ut/mini/RepeatExposurePageMgr;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ut/mini/RepeatExposurePageMgr;->getConfigFromSp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ut/mini/RepeatExposurePageMgr;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ut/mini/RepeatExposurePageMgr;->changeConfig(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/ut/mini/RepeatExposurePageMgr;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ut/mini/RepeatExposurePageMgr;->putConfigToSp(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeConfig(Ljava/lang/String;)V
    .locals 5

    const-string v0, "b"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/ut/mini/RepeatExposurePageMgr;->reset()V

    .line 89
    const-class v3, Ljava/util/Map;

    .line 90
    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    .line 93
    iget-object v3, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    const-string/jumbo v4, "w"

    .line 99
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageWhiteList:Ljava/util/List;

    const-string v4, "a"

    .line 101
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 103
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z

    goto :goto_1

    .line 106
    :cond_1
    iput-boolean v2, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    .line 110
    :catch_1
    invoke-direct {p0}, Lcom/ut/mini/RepeatExposurePageMgr;->reset()V

    :goto_1
    if-ge v3, v1, :cond_2

    .line 113
    iget-boolean p1, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z

    if-nez p1, :cond_2

    .line 114
    invoke-static {}, Lcom/ut/mini/RepeatExposureQueueMgr;->getInstance()Lcom/ut/mini/RepeatExposureQueueMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/RepeatExposureQueueMgr;->stop()V

    goto :goto_2

    .line 116
    :cond_2
    invoke-static {}, Lcom/ut/mini/RepeatExposureQueueMgr;->getInstance()Lcom/ut/mini/RepeatExposureQueueMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/RepeatExposureQueueMgr;->start()V

    :goto_2
    return-void
.end method

.method private getConfigFromSp()Ljava/lang/String;
    .locals 4

    .line 160
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "ut_repeatExposure"

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "repeatExposure"

    .line 169
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/ut/mini/RepeatExposurePageMgr;
    .locals 1

    .line 136
    sget-object v0, Lcom/ut/mini/RepeatExposurePageMgr;->mInstance:Lcom/ut/mini/RepeatExposurePageMgr;

    return-object v0
.end method

.method private putConfigToSp(Ljava/lang/String;)V
    .locals 3

    .line 178
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "ut_repeatExposure"

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "repeatExposure"

    .line 189
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private reset()V
    .locals 1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageWhiteList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mInit:Z

    .line 49
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/RepeatExposurePageMgr$1;

    invoke-direct {v1, p0}, Lcom/ut/mini/RepeatExposurePageMgr$1;-><init>(Lcom/ut/mini/RepeatExposurePageMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    .line 64
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/UTClientConfigMgr;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/RepeatExposurePageMgr$2;

    invoke-direct {v1, p0}, Lcom/ut/mini/RepeatExposurePageMgr$2;-><init>(Lcom/ut/mini/RepeatExposurePageMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->registerConfigChangeListener(Lcom/alibaba/analytics/core/config/UTClientConfigMgr$IConfigChangeListener;)V

    return-void
.end method

.method public isRepeatExposurePage(Ljava/lang/String;)Z
    .locals 2

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageBlackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageWhiteList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mRepeatExposurePageWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v1

    .line 156
    :cond_2
    iget-boolean p1, p0, Lcom/ut/mini/RepeatExposurePageMgr;->mAllBlack:Z

    return p1

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method
