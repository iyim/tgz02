.class public Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;
.super Ljava/lang/Object;
.source "TemplateCandidate.java"


# static fields
.field private static sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->syncCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static instance()Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    invoke-direct {v0}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;-><init>()V

    sput-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    .line 35
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;->sync:Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;

    return-object v0
.end method

.method private syncCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 10

    .line 56
    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_candidate_time"

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/cctemplate/storage/TemplateSetting;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v1, "TemplateCandidate::syncCandidate"

    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ddd\u79bb\u6a21\u677f\u8865\u507f\u65f6\u95f4\u4e0d\u523024h\uff0c\u4e0a\u6b21\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v3, "start"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v3

    const-string v4, "template"

    const-string v5, "TplCandidateCount"

    invoke-virtual {v0, v4, v5, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    .line 68
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getWalletTransport()Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    move-result-object v3

    const/4 v5, 0x0

    .line 70
    invoke-virtual {v0, v5}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/alipay/android/app/cctemplate/api/ITplTransport;->querySyncTpls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    .line 72
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string v0, "templateList is null"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    :try_start_0
    const-class v8, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/android/app/cctemplate/model/Template;

    .line 80
    iget-object v8, v8, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 82
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v8

    const-string v9, "TplCandidateTplsParseEx"

    invoke-virtual {v8, v4, v9, v7}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x1

    .line 88
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "opt_sync_candidate"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Ljava/lang/String;)Ljava/util/Map;

    .line 92
    :cond_3
    invoke-interface {p1}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateSetting;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public syncTplsCandidate(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate$1;-><init>(Lcom/alipay/android/app/cctemplate/sync/TemplateCandidate;Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
