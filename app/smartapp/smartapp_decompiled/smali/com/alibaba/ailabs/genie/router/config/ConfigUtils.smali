.class public Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field private static volatile instance:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;


# instance fields
.field private isInit:Z

.field private volatile isRegisterCallback:Z

.field private mLocalFileRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

.field private mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

.field private mRouterOrangeCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->isInit:Z

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->isRegisterCallback:Z

    .line 125
    new-instance v0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;-><init>(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterOrangeCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;Lcom/alibaba/ailabs/genie/router/bean/RouterBean;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;
    .locals 2

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->instance:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->instance:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->instance:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->instance:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    return-object v0
.end method


# virtual methods
.method public getAssestsConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 166
    new-array p2, p2, [B

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 168
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 169
    new-instance p1, Ljava/lang/String;

    const-string/jumbo v0, "utf-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getLocalFile(Landroid/content/Context;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mLocalFileRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    if-nez v0, :cond_2

    const-string v0, "GenieAIRouter"

    const-string v1, "getLocalFileConfig; mLocalFileRouterBean is null, get from asset file"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "localconfig.json"

    .line 149
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getAssestsConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalFileConfig; mLocalFileRouterBean is null, get from asset file, jsondata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "null"

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    :try_start_0
    const-class v1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mLocalFileRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalFileConfig; mLocalFileRouterBean is null, get from asset file, parseObject="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mLocalFileRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getLocalFileRouterBean()Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mLocalFileRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    return-object v0
.end method

.method public getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->isRegisterCallback:Z

    const-string v1, "GenieAIRouter"

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterOrangeCallback:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;

    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->regsiterOrangeCallback(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;)V

    const-string v0, "getOrangeConfig; regsiterOrangeCallback"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->isRegisterCallback:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    const-string v2, "null"

    if-eqz v0, :cond_2

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOrangeConfig; mRouterBean is not null, mRouterBean="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    if-eqz p2, :cond_1

    const-string v2, "not null"

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    return-object p1

    :cond_2
    :try_start_0
    const-string v0, "getOrangeConfig; mRouterBean is null, get from orange"

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOrangeConfig; mRouterBean is null, get from orange, orangeConfig="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 115
    const-class p2, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOrangeConfig; mRouterBean is null, get from orange, parseObject="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->mRouterBean:Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    return-object p1
.end method

.method public maybeInit(Landroid/content/Context;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;-><init>(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    const-string p1, "TimeLine"

    const-string v0, "maybeInit done!"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
