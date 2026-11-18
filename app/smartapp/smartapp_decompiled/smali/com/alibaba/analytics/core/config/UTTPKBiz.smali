.class public Lcom/alibaba/analytics/core/config/UTTPKBiz;
.super Ljava/lang/Object;
.source "UTTPKBiz.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTMCTPKBiz"

.field private static s_instance:Lcom/alibaba/analytics/core/config/UTTPKBiz;


# instance fields
.field private TPK_ONLINECONF_KEY:[Ljava/lang/String;

.field private mTPKCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTPKItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/config/UTTPKItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTPKMD5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "B01N16"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->TPK_ONLINECONF_KEY:[Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKItems:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKMD5:Ljava/lang/String;

    return-void
.end method

.method private _getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "${url|"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-le v0, v3, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    .line 94
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "${ut|"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    const/4 p2, 0x5

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    .line 99
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "${"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    const/4 v0, 0x2

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    .line 105
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_3

    return-object p3

    :cond_3
    if-eqz p2, :cond_4

    .line 111
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    return-object p1
.end method

.method private _onTPKConfArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "kn"

    const/4 v1, 0x5

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "pConfName"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object p1, v1, v3

    const/4 p1, 0x3

    const-string v3, "pConfContent"

    aput-object v3, v1, p1

    const/4 p1, 0x4

    aput-object p2, v1, p1

    const-string p1, "UTMCTPKBiz"

    invoke-static {p1, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 59
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_4

    .line 61
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "a"

    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    new-instance v3, Lcom/alibaba/analytics/core/config/UTTPKItem;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/config/UTTPKItem;-><init>()V

    const-string/jumbo v4, "v"

    .line 71
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "${"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string/jumbo v5, "ty"

    const-string v6, "far"

    .line 75
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {v3, v1}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setKname(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v4}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setKvalue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3, p2}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setType(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKItems:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/analytics/core/config/UTTPKBiz;
    .locals 2

    const-class v0, Lcom/alibaba/analytics/core/config/UTTPKBiz;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/core/config/UTTPKBiz;->s_instance:Lcom/alibaba/analytics/core/config/UTTPKBiz;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/alibaba/analytics/core/config/UTTPKBiz;

    invoke-direct {v1}, Lcom/alibaba/analytics/core/config/UTTPKBiz;-><init>()V

    sput-object v1, Lcom/alibaba/analytics/core/config/UTTPKBiz;->s_instance:Lcom/alibaba/analytics/core/config/UTTPKBiz;

    .line 50
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/core/config/UTTPKBiz;->s_instance:Lcom/alibaba/analytics/core/config/UTTPKBiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTPKCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 34
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/UTClientConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "tpk_md5"

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/UTClientConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTTPKBiz"

    const/4 v2, 0x2

    .line 123
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "tpk_md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKMD5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tpk_string"

    .line 126
    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, v1, v0}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->_onTPKConfArrive(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKMD5:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/analytics/core/config/UTTPKItem;

    .line 135
    invoke-virtual {v2}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getKname()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getType()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v2}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getKvalue()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v3}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 139
    monitor-exit p0

    return-object v1

    .line 141
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 142
    invoke-static {v5}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->_getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v5, "far"

    .line 149
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 152
    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/analytics/core/config/UTTPKBiz;->_getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_5
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    const-string/jumbo p2, "ttid"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 161
    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/ClientVariables;->getOutsideTTID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 162
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    const-string/jumbo p2, "ttid"

    invoke-static {}, Lcom/alibaba/analytics/core/ClientVariables;->getInstance()Lcom/alibaba/analytics/core/ClientVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ClientVariables;->getOutsideTTID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-static {p2}, Lcom/alibaba/analytics/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 169
    :cond_7
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized sessionTimeout()V
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTTPKBiz;->mTPKCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
