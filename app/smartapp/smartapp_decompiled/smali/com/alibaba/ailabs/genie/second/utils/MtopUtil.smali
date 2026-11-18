.class public final Lcom/alibaba/ailabs/genie/second/utils/MtopUtil;
.super Ljava/lang/Object;
.source "MtopUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "KEY_BUNDLE_MTOP_METHOD"

    const-string v1, ""

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)Ljava/lang/String;
    .locals 2

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "EagleEye-TraceId"

    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 40
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "eagleeye-traceid"

    .line 42
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 45
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

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MethodEnum;
    .locals 0

    .line 23
    :try_start_0
    invoke-static {p0}, Lmtopsdk/mtop/domain/MethodEnum;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 25
    :catch_0
    sget-object p0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    return-object p0
.end method
