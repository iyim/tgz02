.class public final Lcom/alibaba/ailabs/genie/second/AsrManager;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
.source "AsrManager.java"


# static fields
.field private static mDefaultAsrConfig:Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

.field private static final sLock:Ljava/lang/Object;

.field private static final sOurMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/AsrManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->sLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->sOurMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/AsrManager;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    .line 34
    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/second/AsrManager;->get(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/config/AsrConfig;)Lcom/alibaba/ailabs/genie/second/AsrManager;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/config/AsrConfig;)Lcom/alibaba/ailabs/genie/second/AsrManager;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->sOurMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/second/AsrManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/second/AsrManager;->sOurMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/second/AsrManager;

    if-eqz v1, :cond_1

    .line 47
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/AsrManager;->getDefaultAsrConfig()Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    move-result-object p1

    .line 59
    :cond_2
    new-instance v2, Lcom/alibaba/ailabs/genie/second/AsrManager;

    invoke-direct {v2, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->isBackgroundService()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setBackgroundService(Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->getListenerType()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setASRListenerType(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->getResultMode()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setASRResultMode(I)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 64
    invoke-virtual {v2, p0}, Lcom/alibaba/ailabs/genie/second/AsrManager;->setPackageName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig;->isShowUI()Z

    move-result p1

    invoke-virtual {v2, v1, p1}, Lcom/alibaba/ailabs/genie/second/AsrManager;->init(Landroid/content/Context;Z)V

    .line 68
    sget-object p1, Lcom/alibaba/ailabs/genie/second/AsrManager;->sOurMap:Ljava/util/Map;

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SDKInitController must be initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getDefaultAsrConfig()Lcom/alibaba/ailabs/genie/second/config/AsrConfig;
    .locals 1

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->mDefaultAsrConfig:Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/AsrConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->mDefaultAsrConfig:Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    .line 80
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/second/AsrManager;->mDefaultAsrConfig:Lcom/alibaba/ailabs/genie/second/config/AsrConfig;

    return-object v0
.end method
