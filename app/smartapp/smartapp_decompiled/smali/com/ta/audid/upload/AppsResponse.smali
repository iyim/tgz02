.class public Lcom/ta/audid/upload/AppsResponse;
.super Ljava/lang/Object;
.source "AppsResponse.java"


# static fields
.field private static final GET_APPLIST_URL:Ljava/lang/String; = "https://audid-api.taobao.com/v2.0/a/audid/apps?version="

.field private static final TAG_APPS:Ljava/lang/String; = "apps"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final mInstance:Lcom/ta/audid/upload/AppsResponse;


# instance fields
.field private bCollectFinished:Z

.field public mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/ta/audid/upload/AppsResponse;

    invoke-direct {v0}, Lcom/ta/audid/upload/AppsResponse;-><init>()V

    sput-object v0, Lcom/ta/audid/upload/AppsResponse;->mInstance:Lcom/ta/audid/upload/AppsResponse;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    .line 40
    iput-boolean v0, p0, Lcom/ta/audid/upload/AppsResponse;->bCollectFinished:Z

    return-void
.end method

.method private getDeviceAppList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 179
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 180
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 183
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/ta/audid/upload/AppsResponse;
    .locals 1

    .line 48
    sget-object v0, Lcom/ta/audid/upload/AppsResponse;->mInstance:Lcom/ta/audid/upload/AppsResponse;

    return-object v0
.end method

.method private unGzip([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 200
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    :try_start_1
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x400

    .line 202
    :try_start_2
    new-array v2, v2, [B

    .line 204
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :goto_0
    :try_start_3
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 206
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 216
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_8

    :catch_4
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catch_5
    move-exception v2

    move-object p1, v0

    move-object v3, p1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v3, v1

    :goto_3
    move-object v0, p1

    move-object p1, v3

    goto :goto_8

    :catch_6
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    move-object v3, v1

    .line 212
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_1

    .line 216
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_5
    if-eqz p1, :cond_2

    .line 223
    :try_start_9
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_6

    :catch_8
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    .line 230
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 236
    :cond_3
    :goto_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v3, :cond_4

    .line 216
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    .line 218
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_9
    if-eqz p1, :cond_5

    .line 223
    :try_start_c
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_a
    if-eqz v1, :cond_6

    .line 230
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    :cond_6
    :goto_b
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method


# virtual methods
.method public declared-synchronized getAppsList()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 142
    :try_start_0
    iget v0, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    const-string v0, "00000000"

    goto/16 :goto_2

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 149
    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 151
    :goto_0
    new-array v4, v4, [B

    .line 152
    iget v5, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 153
    iget v5, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v5, 0x2

    .line 154
    iget v6, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    .line 155
    iget v6, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    if-lez v0, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/ta/audid/upload/AppsResponse;->getDeviceAppList()Ljava/util/List;

    move-result-object v5

    const-string v6, ""

    .line 158
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    .line 160
    iget-object v7, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 161
    rem-int/lit8 v7, v6, 0x8

    rsub-int/lit8 v7, v7, 0x7

    shl-int v7, v2, v7

    int-to-byte v7, v7

    .line 163
    div-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v3

    aget-byte v9, v4, v8

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 167
    :cond_3
    invoke-static {v4}, Lcom/ta/audid/utils/ByteUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_2
    iget-object v3, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 170
    iput-boolean v2, p0, Lcom/ta/audid/upload/AppsResponse;->bCollectFinished:Z

    const-string v3, ""

    .line 171
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized parseAppFile()V
    .locals 7

    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/audid/upload/AppsResponse;->bCollectFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 108
    :try_start_1
    iput v0, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    .line 109
    iget-object v1, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    invoke-static {}, Lcom/ta/audid/upload/UtdidKeyFile;->readAppsFile()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 113
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    .line 118
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "version"

    .line 119
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    const-string v1, ""

    const/4 v3, 0x1

    .line 120
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "apps"

    .line 121
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "apps"

    .line 122
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 123
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    .line 125
    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/audid/utils/RC4;->rc4([B)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ta/audid/upload/AppsResponse;->unGzip([B)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    .line 126
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 129
    iget-object v5, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ""

    const/4 v4, 0x4

    .line 131
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "size"

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "applist"

    aput-object v0, v4, v2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/ta/audid/upload/AppsResponse;->mAppList:Ljava/util/ArrayList;

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :catch_0
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method parseAppResult(Ljava/lang/String;)V
    .locals 8

    const-string v0, "data"

    const-string v1, "apps"

    const-string/jumbo v2, "version"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 70
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez v0, :cond_0

    .line 78
    invoke-static {v3}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppsFile(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v4

    invoke-static {v3, v6}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 89
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppsFile(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/ta/audid/upload/AppsResponse;->parseAppFile()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v3}, Lcom/ta/audid/upload/UtdidKeyFile;->writeAppsFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 100
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {v3, v0}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestAppList()V
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/ta/audid/upload/AppsResponse;->parseAppFile()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://audid-api.taobao.com/v2.0/a/audid/apps?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ta/audid/upload/AppsResponse;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, ""

    invoke-static {v4, v2}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {v0, v4, v3}, Lcom/ta/audid/upload/HttpUtils;->sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/audid/upload/HttpResponse;

    move-result-object v0

    .line 58
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/ta/audid/upload/HttpResponse;->data:[B

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v4, v1}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 62
    :goto_0
    iget-object v0, v0, Lcom/ta/audid/upload/HttpResponse;->signature:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ta/audid/upload/HttpResponse;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/ta/audid/upload/AppsResponse;->parseAppResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
