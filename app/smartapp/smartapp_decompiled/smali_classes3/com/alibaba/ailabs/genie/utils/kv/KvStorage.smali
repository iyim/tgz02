.class public Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
.super Ljava/lang/Object;
.source "KvStorage.java"


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 22
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 4

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mInstance:Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mInstance:Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    const-string v3, "tmall_genie"

    invoke-direct {v2, v1, v3}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mInstance:Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mInstance:Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 40
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 75
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
