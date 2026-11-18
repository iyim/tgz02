.class Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/config/UTSampleConfBiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTSampleItem"
.end annotation


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_CP:Ljava/lang/String; = "cp"

.field private static final s_random:Ljava/util/Random;


# instance fields
.field private mArg1CP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultCP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->s_random:Ljava/util/Random;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mDefaultCP:I

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mArg1CP:Ljava/util/Map;

    return-void
.end method

.method private _isArg1SampleSuccess(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "%"

    if-eqz p1, :cond_4

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mArg1CP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mArg1CP:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->_isSuccess(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :cond_1
    return v4

    .line 205
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mArg1CP:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->_isSuccess(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v5

    :cond_3
    return v4

    .line 217
    :catch_0
    :cond_4
    iget p1, p0, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mDefaultCP:I

    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->_isSuccess(I)Z

    move-result p1

    return p1
.end method

.method private _isSuccess(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 224
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->s_random:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;
    .locals 5

    const-string v0, "arg1"

    const-string v1, "cp"

    .line 234
    :try_start_0
    new-instance v2, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;

    invoke-direct {v2}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;-><init>()V

    .line 235
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mDefaultCP:I

    .line 240
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 241
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_1
    iput-object p0, v2, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->mArg1CP:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isSampleSuccess(Ljava/lang/String;)Z
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz$UTSampleItem;->_isArg1SampleSuccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
