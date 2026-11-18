.class public Lcom/aliyun/oss/model/PolicyConditions;
.super Ljava/lang/Object;
.source "PolicyConditions.java"


# static fields
.field public static final COND_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final COND_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final COND_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final COND_CONTENT_LENGTH_RANGE:Ljava/lang/String; = "content-length-range"

.field public static final COND_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COND_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final COND_KEY:Ljava/lang/String; = "key"

.field public static final COND_SUCCESS_ACTION_REDIRECT:Ljava/lang/String; = "success_action_redirect"

.field public static final COND_SUCCESS_ACTION_STATUS:Ljava/lang/String; = "success_action_status"

.field public static final COND_X_OSS_META_PREFIX:Ljava/lang/String; = "x-oss-meta-"

.field private static _supportedMatchRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/MatchMode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private _conds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ConditionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v1, Lcom/aliyun/oss/model/MatchMode;->StartWith:Lcom/aliyun/oss/model/MatchMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    sget-object v2, Lcom/aliyun/oss/model/MatchMode;->Range:Lcom/aliyun/oss/model/MatchMode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v2, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v3, "content-length-range"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "Cache-Control"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "Content-Type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "Content-Disposition"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "Expires"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "success_action_redirect"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "success_action_status"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    const-string v2, "x-oss-meta-"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    return-void
.end method

.method private checkMatchModes(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;)V
    .locals 2

    .line 216
    sget-object v0, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Lcom/aliyun/oss/model/PolicyConditions;->_supportedMatchRules:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unsupported match mode for condition item %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addConditionItem(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/PolicyConditions;->checkMatchModes(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    new-instance v1, Lcom/aliyun/oss/model/ConditionItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/aliyun/oss/model/ConditionItem;-><init>(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConditionItem(Ljava/lang/String;JJ)V
    .locals 8

    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    new-instance v7, Lcom/aliyun/oss/model/ConditionItem;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/aliyun/oss/model/ConditionItem;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Invalid range [%d, %d]."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConditionItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    sget-object v0, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    invoke-direct {p0, v0, p1}, Lcom/aliyun/oss/model/PolicyConditions;->checkMatchModes(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    new-instance v1, Lcom/aliyun/oss/model/ConditionItem;

    invoke-direct {v1, p1, p2}, Lcom/aliyun/oss/model/ConditionItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public jsonize()Ljava/lang/String;
    .locals 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"conditions\":["

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/model/ConditionItem;

    .line 227
    invoke-virtual {v2}, Lcom/aliyun/oss/model/ConditionItem;->jsonize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/aliyun/oss/model/PolicyConditions;->_conds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
