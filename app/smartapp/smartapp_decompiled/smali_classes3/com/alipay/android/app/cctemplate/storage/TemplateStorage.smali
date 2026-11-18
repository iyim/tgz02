.class public Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    }
.end annotation


# static fields
.field private static final AVG_BYTES_PER_CHAR:I = 0x3

.field private static final cacheSize:I

.field private static final maxMemory:I

.field private static final tplMemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

.field private mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->maxMemory:I

    .line 25
    sget v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->maxMemory:I

    div-int/lit8 v0, v0, 0x28

    sput v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->cacheSize:I

    .line 27
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;

    sget v1, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->cacheSize:I

    invoke-direct {v0, v1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/cctemplate/api/ITplProvider;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    .line 107
    invoke-static {}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->getInstance()Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    return-void
.end method

.method private parseTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 3

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance p1, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {p1}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V

    const-string v1, "tplId"

    .line 132
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    const-string v1, "time"

    .line 133
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    const-string v1, "tag"

    .line 134
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tag:Ljava/lang/String;

    const-string v1, "data"

    .line 135
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    const-string v1, "html"

    .line 136
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->html:Ljava/lang/String;

    const-string v1, "name"

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->name:Ljava/lang/String;

    const-string v1, "tplVersion"

    .line 138
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    const-string v1, "format"

    .line 139
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    const-string v1, "publishVersion"

    .line 140
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 143
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    const-string v1, "template"

    const-string v2, "TplAssetsParseEx"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public deleteTemplate(Ljava/lang/String;)Z
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->removeInMemTpl(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public getTemplate(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Z)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 6

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 231
    :cond_0
    sget-object v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    if-eqz v0, :cond_2

    .line 233
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template hit mem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TemplateStorage::getTemplate"

    invoke-virtual {p2, v2, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance p2, Lcom/alipay/android/app/cctemplate/model/Template;

    invoke-direct {p2}, Lcom/alipay/android/app/cctemplate/model/Template;-><init>()V

    .line 235
    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 236
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    .line 237
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    .line 238
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    .line 239
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->name:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->name:Ljava/lang/String;

    .line 240
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 241
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    const-string v1, "HTML"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->html:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    :goto_0
    return-object p2

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->getTemplate(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v2, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x7b

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    const/4 v4, 0x0

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    const/16 v2, 0x3c

    iget-object v3, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_4

    .line 256
    iget-object v2, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x800

    if-le v2, v3, :cond_3

    iget-object v2, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 257
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 258
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "digest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "template"

    const-string v5, "TplLocalGetIllegal"

    invoke-virtual {v3, v4, v5, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 264
    invoke-static {v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    move-result-object p1

    .line 265
    sget-object p2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    iget-object v1, v0, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_5
    if-nez p2, :cond_6

    return-object v1

    .line 274
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->getTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    return-object p1
.end method

.method public getTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;
    .locals 5

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string v0, "TemplateStorage::getTemplateFromResource"

    const-string v2, "tplId is empty"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->readAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tplId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",templateString="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template"

    const-string v3, "TplAssetsGetNull"

    invoke-virtual {v2, v0, v3, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 121
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->parseTemplateFromResource(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/model/Template;

    move-result-object p1

    return-object p1
.end method

.method public readAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v0}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/cctemplate/storage/TemplateAssetsStorage;->readAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeInMemTpl(Ljava/lang/String;)Z
    .locals 1

    .line 219
    sget-object v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public saveTemplate(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/app/cctemplate/model/Template;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 180
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/cctemplate/model/Template;

    .line 187
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result v2

    .line 188
    iget-object v1, v1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 181
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string v0, "TemplateStorage::saveTemplate(List<Template>)"

    const-string v1, "templates is null or empty"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public saveTemplate(Lcom/alipay/android/app/cctemplate/model/Template;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "TemplateStorage::saveTemplate"

    if-nez p1, :cond_0

    .line 150
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object p1

    const-string v2, "template == null"

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 155
    :cond_0
    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ",tplVersion="

    const-string v4, "tplId="

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    .line 157
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    move-result-object v0

    .line 170
    sget-object v2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->tplMemCache:Landroid/util/LruCache;

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mLocalStorage:Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;->mProvider:Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1}, Lcom/alipay/android/app/cctemplate/storage/TemplateLocalStorage;->saveTemplate(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/cctemplate/model/Template;)Z

    move-result p1

    .line 174
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 158
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplId:Ljava/lang/String;

    .line 159
    iget-object v2, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    .line 160
    iget-object v5, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    if-nez v5, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 161
    :goto_1
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tplDataLen="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "template"

    const-string v2, "TplLocalSaveIllegal"

    invoke-virtual {v5, v1, v2, p1}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
