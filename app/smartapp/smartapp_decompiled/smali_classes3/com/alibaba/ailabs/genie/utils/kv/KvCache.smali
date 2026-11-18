.class public Lcom/alibaba/ailabs/genie/utils/kv/KvCache;
.super Ljava/lang/Object;
.source "KvCache.java"


# static fields
.field private static mCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clear()V
    .locals 1

    .line 109
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 81
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 94
    instance-of p0, p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 57
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 62
    instance-of p0, p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 69
    invoke-static {p0, v0, v1}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 73
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 74
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 53
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object p0, p1

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_2
    nop

    nop

    return-object p0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 101
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvCache;->mCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
