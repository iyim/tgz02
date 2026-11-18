.class public Lcom/taobao/android/sku/bizevent/SkuRequestHandler;
.super Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;
.source "SkuRequestHandler.java"


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "request"

.field private static final mMtopReservedFields:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$response\\[([a-zA-Z()_\\-0-9]*)\\]\\{(ret\\[0\\]|mtopRetCode|mtopRetMsg)\\}"

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->mMtopReservedFields:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .line 17
    sget-object v0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->mMtopReservedFields:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 3

    .line 31
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p3, "fields"

    .line 35
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    const/4 p4, 0x1

    .line 41
    new-array p4, p4, [Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;

    const/4 p5, 0x0

    new-instance v0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$2;

    const-string v1, "\\$response\\[[a-zA-Z()_\\-0-9]*\\]\\{[a-zA-Z()\\. _\\-\\[\\]0-9]*(?!\\$\\{[a-zA-Z()\\. _\\-\\[\\]0-9]*\\})[a-zA-Z()\\. _\\-\\[\\]0-9]*\\}"

    .line 43
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;

    invoke-direct {v2, p0, p2}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$1;-><init>(Lcom/taobao/android/sku/bizevent/SkuRequestHandler;Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$2;-><init>(Lcom/taobao/android/sku/bizevent/SkuRequestHandler;Ljava/util/regex/Pattern;Ljava/lang/Object;)V

    aput-object v0, p4, p5

    .line 41
    invoke-static {p3, p1, p4}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;[Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;)Ljava/lang/Object;

    .line 97
    new-instance p4, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5, p1, p3}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    .line 98
    invoke-virtual {p2, p4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    :cond_1
    return-object p2
.end method

.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
