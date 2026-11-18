.class public Lcom/alibaba/motu/tbrest/rest/RestReqSend;
.super Ljava/lang/Object;
.source "RestReqSend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendLog(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "RestAPI start send log!"

    .line 40
    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 42
    invoke-static/range {p2 .. p9}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->buildRequestData(JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "RestAPI build data succ!"

    .line 44
    invoke-static {p3}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 46
    new-instance p3, Ljava/util/HashMap;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 51
    :try_start_1
    invoke-static {p0, p3}, Lcom/alibaba/motu/tbrest/request/BizRequest;->getPackRequest(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    const-string p0, "packRequest success!"

    .line 57
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {p1, p2}, Lcom/alibaba/motu/tbrest/request/UrlWrapper;->sendRequest(Ljava/lang/String;[B)Lcom/alibaba/motu/tbrest/request/BizResponse;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/motu/tbrest/request/BizResponse;->isSuccess()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "UTRestAPI build data failure!"

    .line 62
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "system error!"

    .line 65
    invoke-static {p1, p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static sendLogByUrl(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sendLogByUrl RestAPI start send log!"

    .line 84
    invoke-static {v1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 87
    invoke-static/range {p0 .. p9}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuilder;->buildMonkeyPostReqDataObj(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "sendLogByUrl RestAPI build data succ!"

    .line 90
    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->getPostReqData()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "sendLogByUrl postReqData is null!"

    .line 94
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/motu/tbrest/rest/RestReqDataBuildResult;->getReqUrl()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "sendLogByUrl reqUrl is null!"

    .line 100
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p2, 0x2

    const/4 p3, 0x1

    .line 104
    invoke-static {p2, p0, p1, p3}, Lcom/alibaba/motu/tbrest/rest/RestHttpUtils;->sendRequest(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_3

    .line 109
    :try_start_1
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_3

    return-object p1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "sendLogByUrl result encoding UTF-8 error!"

    .line 114
    invoke-static {p1, p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string p0, "sendLogByUrl UTRestAPI build data failure!"

    .line 118
    invoke-static {p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "sendLogByUrl system error!"

    .line 121
    invoke-static {p1, p0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v0
.end method
