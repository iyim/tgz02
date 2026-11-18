.class public Lcom/alibaba/ailabs/genie/config/MtopApi;
.super Ljava/lang/Object;
.source "MtopApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/config/MtopApi$RequestData;
    }
.end annotation


# static fields
.field public static final API_NAME:Ljava/lang/String; = "mtop.alibaba.aicloud.t.device.isSampleDevice"

.field public static final API_VER:Ljava/lang/String; = "1.0"

.field private static final IS_DEMO:Ljava/lang/String; = "1"

.field private static final IS_NOT_DEMO:Ljava/lang/String; = "0"

.field public static final TAG:Ljava/lang/String; = "MtopApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/config/MtopApi;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/config/MtopApi;->writeProperties(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getAuthInfo()Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;
    .locals 2

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;-><init>()V

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;->setUserId(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;->setUuid(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/config/ConfigApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;->setToken(Ljava/lang/String;)V

    return-object v0
.end method

.method private writeProperties(Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/alibaba/ailabs/genie/config/MtopApi$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/config/MtopApi$2;-><init>(Lcom/alibaba/ailabs/genie/config/MtopApi;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDeviceFlag()V
    .locals 3

    .line 50
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v1, "mtop.alibaba.aicloud.t.device.isSampleDevice"

    .line 51
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/alibaba/ailabs/genie/config/MtopApi$RequestData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/config/MtopApi$RequestData;-><init>()V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/config/MtopApi;->getAuthInfo()Lcom/alibaba/ailabs/genie/config/data/JsonInputAuthInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/config/MtopApi$RequestData;->authInfo:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/genie/config/MtopApi$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/config/MtopApi$1;-><init>(Lcom/alibaba/ailabs/genie/config/MtopApi;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->checkResult(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method
