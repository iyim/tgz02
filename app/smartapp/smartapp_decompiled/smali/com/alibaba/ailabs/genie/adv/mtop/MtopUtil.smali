.class public Lcom/alibaba/ailabs/genie/adv/mtop/MtopUtil;
.super Ljava/lang/Object;
.source "MtopUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;
    .locals 2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "EagleEye-TraceId"

    .line 20
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 21
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "eagleeye-traceid"

    .line 23
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 25
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 26
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getTraceId(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/lang/String;
    .locals 2

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "EagleEye-TraceId"

    .line 38
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "eagleeye-traceid"

    .line 41
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 44
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method
