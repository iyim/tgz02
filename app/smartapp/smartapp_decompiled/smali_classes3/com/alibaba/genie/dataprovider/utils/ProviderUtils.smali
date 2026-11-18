.class public Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderUtils"

.field private static instance:Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;


# instance fields
.field private context:Landroid/content/Context;

.field private intUri:Ljava/lang/String;

.field private resolver:Landroid/content/ContentResolver;

.field private serverPkg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->intUri:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->context:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;
    .locals 2

    .line 25
    sget-object v0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->instance:Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->instance:Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->instance:Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->instance:Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7

    const-string v0, "ProviderUtils"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->intUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->resolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 74
    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 75
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const-string v1, "getInt, cursor is null or getCount <= 0"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 85
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception v1

    .line 82
    :try_start_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return p2

    :goto_3
    if-eqz p1, :cond_3

    .line 85
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->intUri:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setServerPackage(Ljava/lang/String;)V
    .locals 1

    .line 40
    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->serverPkg:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->serverPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".data.provider"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/int?key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/dataprovider/utils/ProviderUtils;->intUri:Ljava/lang/String;

    return-void
.end method
