.class final Lcom/alibaba/android/umbrella/link/LinkLogExtData;
.super Ljava/lang/Object;
.source "LinkLogExtData.java"


# static fields
.field static final EXT_DATA_MSOA:Ljava/lang/String; = "msoaParams"

.field static final EXT_DATA_MTOP_RESPONSE_HEADERS:Ljava/lang/String; = "responseHeaders"

.field static final EXT_DATA_MTOP_RESPONSE_PARAMS:Ljava/lang/String; = "requestParams"

.field static final EXT_DATA_MTOP_RESPONSE_STR:Ljava/lang/String; = "responseString"

.field static final EXT_DATA_UI_ARGS:Ljava/lang/String; = "args"

.field private static final EXT_DATA_USER_DATA:Ljava/lang/String; = "userData"

.field static final EXT_DATA_WEEX_RENDER_DATA:Ljava/lang/String; = "renderData"

.field static final EXT_DATA_WEEX_VIEW_SIZE:Ljava/lang/String; = "viewSize"

.field private static final MAX_EXT_LENGTH:I = 0x6400


# instance fields
.field private final extMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    return-void
.end method

.method static fromUserData(Lcom/alibaba/android/umbrella/link/export/UMUserData;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;
    .locals 2
    .param p0    # Lcom/alibaba/android/umbrella/link/export/UMUserData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    new-instance v0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;-><init>()V

    const-string v1, "userData"

    if-nez p0, :cond_0

    const-string p0, ""

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->toUserData()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    return-object v0
.end method


# virtual methods
.method public getExtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method putAllKV(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/android/umbrella/link/LinkLogExtData;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method putKV(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/LinkLogExtData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method toClipExtMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    const-string v1, "responseString"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x6400

    if-le v2, v3, :cond_0

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->extMap:Ljava/util/Map;

    return-object v0
.end method
