.class public Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;
.super Ljava/lang/Object;
.source "VideoMtopApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;
    }
.end annotation


# static fields
.field private static final RECOMMEND_NAMESPACE:Ljava/lang/String; = "AliGenie.Video"

.field private static final TAG:Ljava/lang/String; = "VideoMtopApi"

.field private static traceIdString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->parseData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->traceIdString:Ljava/lang/String;

    return-object v0
.end method

.method public static getRecommend(Ljava/lang/String;Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;)V
    .locals 3

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "playUri"

    .line 24
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/TaskService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$1;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$1;-><init>(Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;)V

    const-string p1, "AliGenie.Video"

    const-string v2, "VideoRecommend"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method

.method private static parseData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 50
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string v0, "traceId"

    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->traceIdString:Ljava/lang/String;

    const-string v0, "commands"

    .line 52
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "payload"

    .line 57
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "data"

    .line 59
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
