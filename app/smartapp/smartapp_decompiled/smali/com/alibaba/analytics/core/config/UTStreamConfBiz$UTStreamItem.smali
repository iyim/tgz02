.class Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;
.super Ljava/lang/Object;
.source "UTStreamConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/config/UTStreamConfBiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTStreamItem"
.end annotation


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_STM:Ljava/lang/String; = "stm"


# instance fields
.field private mArg1Stm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStreamName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mArg1Stm:Ljava/util/Map;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mDefaultStreamName:Ljava/lang/String;

    return-void
.end method

.method private _getArg1StmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mArg1Stm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "%"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mArg1Stm:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 143
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mArg1Stm:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;
    .locals 5

    const-string v0, "arg1"

    const-string/jumbo v1, "stm"

    .line 155
    :try_start_0
    new-instance v2, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;

    invoke-direct {v2}, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;-><init>()V

    .line 156
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mDefaultStreamName:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 162
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_1
    iput-object p0, v2, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mArg1Stm:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getStmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->_getArg1StmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTStreamConfBiz$UTStreamItem;->mDefaultStreamName:Ljava/lang/String;

    return-object p1
.end method
