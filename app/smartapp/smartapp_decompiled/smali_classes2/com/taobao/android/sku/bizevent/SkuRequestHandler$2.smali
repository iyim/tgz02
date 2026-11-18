.class Lcom/taobao/android/sku/bizevent/SkuRequestHandler$2;
.super Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;
.source "SkuRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sku/bizevent/SkuRequestHandler;


# direct methods
.method constructor <init>(Lcom/taobao/android/sku/bizevent/SkuRequestHandler;Ljava/util/regex/Pattern;Ljava/lang/Object;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/taobao/android/sku/bizevent/SkuRequestHandler$2;->this$0:Lcom/taobao/android/sku/bizevent/SkuRequestHandler;

    invoke-direct {p0, p2, p3}, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;-><init>(Ljava/util/regex/Pattern;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 51
    invoke-super {p0, p1, p2}, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "$response"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 59
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_2

    return-object v0

    .line 63
    :cond_2
    nop

    nop

    .line 64
    invoke-static {}, Lcom/taobao/android/sku/bizevent/SkuRequestHandler;->access$000()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const-string v1, ""

    move-object v2, v1

    .line 67
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 69
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "__Mtop__"

    .line 75
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    instance-of p2, p1, Ljava/util/Map;

    if-nez p2, :cond_5

    return-object v0

    .line 80
    :cond_5
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    instance-of p2, p1, Lmtopsdk/mtop/domain/MtopResponse;

    if-nez p2, :cond_6

    return-object v0

    .line 84
    :cond_6
    nop

    nop

    const-string p2, "ret[0]"

    .line 86
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string p2, "mtopRetMsg"

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 89
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string p2, "mtopRetCode"

    .line 90
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 91
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_1
    return-object v0
.end method
