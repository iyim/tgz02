.class public Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"


# instance fields
.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

.field private newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

.field private oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

.field private tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 30
    new-instance v0, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;-><init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/transport/TemplateManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    return-object p0
.end method

.method private buildBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ori birdParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CdynamicTemplateEngine::buildBirdParams"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{\"isPrerender\":true}"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 115
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "birdParams is null. tplId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", birdParams="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template"

    const-string v1, "TplManagerBirdParamsNull"

    invoke-virtual {p3, v0, v1, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method

.method private checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "-"

    .line 168
    :try_start_0
    iget-object v1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CdynamicTemplateEngine::checkTplStatus_2"

    if-nez v1, :cond_1

    .line 169
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p4

    const-string p5, "serverTpl.data is not empty"

    invoke-virtual {p4, v2, p5}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p4, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 171
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p4

    .line 172
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string v5, ""

    sget-object p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p1, "T"

    goto :goto_0

    :cond_0
    const-string p1, "F"

    :goto_0
    move-object v7, p1

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save serverTpl, result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_1
    invoke-static {p2, p3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string p2, "don\'t need update serverTpl"

    invoke-virtual {p1, v2, p2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 176
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "need update serverTpl"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_2
    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 184
    invoke-static {p2, p3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->comparePublishVersion(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p5, :cond_6

    .line 186
    :cond_5
    sget-object v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    .line 188
    :cond_6
    new-instance p2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    invoke-direct {p2, p1, v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 193
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p2

    const-string p3, "template"

    const-string p4, "TplManagerCheckTpl_2_Ex"

    invoke-virtual {p2, p3, p4, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method private checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CdynamicTemplateEngine::checkTplStatus_1"

    if-nez v1, :cond_1

    .line 138
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p3

    const-string v1, "serverTpl.data is not empty"

    invoke-virtual {p3, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p3, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p3

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-NULL-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    const-string v5, ""

    sget-object p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v6, p1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string p1, "T"

    goto :goto_0

    :cond_0
    const-string p1, "F"

    :goto_0
    move-object v7, p1

    invoke-static {}, Lcom/alipay/android/app/cctemplate/utils/DateUtil;->format()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save serverTpl, result:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 144
    invoke-static {p2, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->whetherNeedUpdate(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    const-string v3, "need update serverTpl"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object p2

    .line 153
    :goto_1
    new-instance v1, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    sget-object v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    invoke-direct {v1, p1, p2, v2}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_3

    .line 155
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string p2, "don\'t need update serverTpl"

    invoke-virtual {p1, v2, p2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 160
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p2

    const-string p3, "template"

    const-string v1, "TplManagerCheckTpl_1_Ex"

    invoke-virtual {p2, p3, v1, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v0
.end method

.method private isDeferDownload(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "opt_defer_download"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 38
    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public birdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"tplVersion\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {}, Lcom/alipay/android/app/cctemplate/api/TemplateService;->getBirdNestVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"platform\":\"android\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildServerTpl(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getTemplateItem(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "birdParams is Illegal. tplId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", birdParams="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "template"

    const-string v2, "TplManagerBirdParamsIllegal"

    invoke-virtual {v1, p2, v2, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    .line 249
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 2

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 266
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p2

    const-string v0, "template"

    const-string v1, "GetTemplate"

    invoke-virtual {p2, v0, v1, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isTplUpdated()Z
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    if-eqz v3, :cond_1

    .line 281
    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->newTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    iget-object v3, v3, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public loadTemplates(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/android/app/cctemplate/api/ITplTransport;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v9, "CdynamicTemplateEngine::handleBirdResponse"

    if-eqz p1, :cond_9

    .line 48
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 53
    :cond_0
    invoke-direct {v6, v7}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->isDeferDownload(Ljava/util/Map;)Z

    move-result v10

    .line 55
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tplId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v11, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tplId is null for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v5, p4

    invoke-direct {v6, v15, v1, v5}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->buildBirdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v6, v15, v1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->buildServerTpl(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v4

    .line 72
    iget-object v1, v6, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v3

    if-nez v3, :cond_2

    .line 76
    invoke-direct {v6, v15, v4, v12}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;)Z

    move-result v1

    move-object/from16 p1, v3

    move-object v14, v4

    goto :goto_1

    .line 78
    :cond_2
    iput-object v3, v6, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->oldTpl:Lcom/alipay/android/app/cctemplate/model/Template;

    .line 79
    invoke-static {v4, v3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->needRollback(Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v4

    move-object/from16 p1, v3

    move-object v14, v4

    move-object v4, v12

    move/from16 v5, v16

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->checkTplStatus(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;Lcom/alipay/android/app/cctemplate/model/Template;Ljava/util/List;Z)Z

    move-result v1

    move/from16 v0, v16

    .line 82
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v11, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverTpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " localTpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 87
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v10, :cond_4

    .line 90
    iget-object v1, v6, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    invoke-virtual {v1, v3, v8, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplateCheckOverTime(Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 92
    :cond_4
    iget-object v1, v6, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v1, v12, v7, v8, v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadTemplate(Ljava/util/List;Ljava/util/Map;Lcom/alipay/android/app/cctemplate/api/ITplTransport;Z)Ljava/util/Map;

    move-result-object v1

    .line 96
    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;

    .line 97
    iget-object v3, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mTplId:Ljava/lang/String;

    .line 98
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v5, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v4, v5, :cond_6

    iget-object v2, v2, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$DownloadItem;->mStatus:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v4, Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/cctemplate/transport/TemplateManager$TemplateStatus;

    if-ne v2, v4, :cond_7

    :cond_6
    const/4 v2, 0x0

    .line 100
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    return-object v11

    .line 49
    :cond_9
    :goto_4
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "response is null or empty"

    invoke-virtual {v0, v9, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->tplMgr:Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->getStorage()Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p1

    return p1
.end method

.method public triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;-><init>(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
