.class public final Lcom/uc/webview/export/internal/utility/i;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "lastucm"

.field public static b:Ljava/lang/String; = "SO_DIR_PATH"

.field public static c:Ljava/lang/String; = "RES_DIR_PATH"

.field public static d:Ljava/lang/String; = "DATA_DIR_PATH"

.field public static e:Ljava/lang/String; = "BUILD.TIME"

.field public static f:Ljava/lang/String; = "COREIMPL_FILE_PATH"

.field public static g:Ljava/lang/String; = "COREIMPL_ODEX_DIR_PATH"

.field public static h:Z = true

.field public static i:Ljava/lang/String; = "quickpath"

.field public static j:Ljava/lang/String; = "PKG_NAME"

.field public static k:Z = true

.field public static final l:[I

.field static m:Lcom/uc/webview/export/internal/setup/br;

.field static n:Lcom/uc/webview/export/internal/utility/i$a;

.field static o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 311
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/internal/utility/i;->l:[I

    .line 447
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->a:Lcom/uc/webview/export/internal/utility/i$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/i;->o:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x7e
        0x93
        0x73
        0xf1
        0x65
        0xc6
        0xd7
        0x86
    .end array-data
.end method

.method public static a()Lcom/uc/webview/export/internal/setup/br;
    .locals 1

    .line 451
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 3

    .line 153
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    return-object v0

    .line 156
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->o:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x142

    const/16 v2, 0x143

    .line 159
    :try_start_0
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 160
    sget-object v1, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v1, :cond_1

    .line 161
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 174
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 163
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 165
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->m:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :try_start_3
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 174
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_2
    :try_start_4
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    .line 169
    sput-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez p0, :cond_3

    .line 170
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->e:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    :cond_3
    :try_start_5
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 176
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    return-object p0

    :catchall_0
    move-exception p0

    .line 173
    :try_start_6
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 174
    throw p0

    :catchall_1
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/uc/webview/export/internal/setup/br;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "ucmKrlDir"

    const-string v2, "ucmUpdUrl"

    const-string v3, "ucmLibDir"

    const-string v4, "ucmZipFile"

    const-string v5, "resFilePath"

    const-string v6, "soFilePath"

    const-string v7, "dexFilePath"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const/16 v9, 0x200

    .line 230
    :try_start_0
    invoke-static {v9}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 231
    new-instance v9, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->j:Ljava/lang/String;

    .line 232
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->b:Ljava/lang/String;

    .line 233
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->c:Ljava/lang/String;

    .line 234
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->d:Ljava/lang/String;

    .line 235
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->f:Ljava/lang/String;

    .line 238
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v10, v9

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v21}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :try_start_1
    sget-object v8, Lcom/uc/webview/export/internal/utility/i;->e:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 245
    sget-object v8, Lcom/uc/webview/export/internal/utility/i;->e:Ljava/lang/String;

    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->e:Ljava/lang/String;

    .line 246
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 245
    invoke-virtual {v9, v8, v10}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 249
    :cond_1
    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 251
    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual {v9, v7, v8}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 253
    :cond_2
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 255
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-virtual {v9, v6, v7}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 257
    :cond_3
    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 259
    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-virtual {v9, v5, v6}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 261
    :cond_4
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 263
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v9, v4, v5}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 265
    :cond_5
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 267
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v9, v3, v4}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 269
    :cond_6
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 271
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v9, v2, v3}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 273
    :cond_7
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 275
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v9, v1, v0}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_8
    const/4 v0, 0x1

    .line 277
    iput-boolean v0, v9, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    const/16 v0, 0x203

    .line 278
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v8

    .line 280
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v9
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/io/File;

    const-string v1, "ucmsdk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/uc/webview/export/internal/utility/i;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 388
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/i;->b(Ljava/lang/String;Z)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 391
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/uc/webview/export/internal/setup/br;)Lorg/json/JSONObject;
    .locals 9

    const-string v0, "ucmKrlDir"

    const-string v1, "ucmUpdUrl"

    const-string v2, "ucmLibDir"

    const-string v3, "ucmZipFile"

    const-string v4, "resFilePath"

    const-string v5, "soFilePath"

    const-string v6, "dexFilePath"

    .line 105
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v5}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->e:Ljava/lang/String;

    sget-object v1, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v7, v0, p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v7
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->c:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    return-object v1

    .line 188
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->k:Z

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 190
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->d:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    return-object v1

    :cond_1
    const/16 v0, 0x201

    .line 193
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 194
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/16 v0, 0x202

    .line 195
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x144

    .line 81
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    if-nez p0, :cond_0

    .line 83
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 86
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveInfoToJsonFile path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isFromDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quickpath"

    .line 1039
    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    if-eqz v0, :cond_2

    return-void

    .line 94
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/setup/br;)Lorg/json/JSONObject;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->k:Z

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/16 p0, 0x145

    .line 101
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 44
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_0
    const-string v0, "dexFilePath"

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_1
    const-string v0, "soFilePath"

    .line 52
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_2
    const-string v0, "resFilePath"

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_3
    const-string v0, "ucmZipFile"

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_4
    const-string v0, "ucmLibDir"

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_5
    const-string v0, "ucmUpdUrl"

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_6
    const-string v0, "ucmKrlDir"

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    :cond_7
    return-void
.end method

.method private static a(Lcom/uc/webview/export/internal/utility/i$a;)V
    .locals 3

    .line 511
    sput-object p0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    .line 512
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statQuickPathStatus st="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3039
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x1f5

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/utility/i$a;->ordinal()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ucmUpdUrl"

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return v1

    .line 463
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 467
    :cond_1
    sget-object v2, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/i$a;->l:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/i$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/i$a;->a:Lcom/uc/webview/export/internal/utility/i$a;

    .line 468
    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/i$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 472
    :cond_2
    sget-object v2, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v2, :cond_3

    .line 474
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    .line 476
    :cond_3
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez p0, :cond_4

    return v1

    .line 480
    :cond_4
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 481
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    :cond_5
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 487
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 375
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveStringToFile str="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2039
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 380
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/i;->a([BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a([BLjava/lang/String;Z)Z
    .locals 3

    .line 402
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 407
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 410
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 413
    sget-object p1, Lcom/uc/webview/export/internal/utility/i;->l:[I

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/i;->a([B[I)[B

    move-result-object p0

    .line 415
    :cond_2
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 416
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static a([B[I)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 314
    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    array-length v1, p0

    add-int/lit8 v2, v1, 0x2

    .line 325
    :try_start_0
    new-array v0, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 331
    aget-byte v5, p0, v3

    .line 332
    rem-int/lit8 v6, v3, 0x8

    aget v6, p1, v6

    xor-int/2addr v6, v5

    int-to-byte v6, v6

    .line 333
    aput-byte v6, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_1
    aget p0, p1, v2

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    add-int/2addr v1, p0

    .line 338
    aget p0, p1, p0

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 287
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 294
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 302
    throw p0

    :catch_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static b()Z
    .locals 1

    .line 455
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 519
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    const-string v1, "willReuseOldCore false. rz="

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 520
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->b:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    .line 521
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz p0, :cond_0

    .line 522
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->b:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4039
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    .line 526
    :cond_1
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz p0, :cond_2

    .line 528
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    const-string p1, "willReuseOldCore false. no lastwebview flag"

    .line 5039
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_2
    sget-object p0, Lcom/uc/webview/export/internal/utility/i$a;->o:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    return v2

    .line 534
    :cond_3
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/i$a;->l:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz p0, :cond_4

    .line 536
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    const-string p1, "willReuseOldCore true. rz=okincache"

    .line 6039
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 539
    :cond_5
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/i$a;->l:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/i$a;->a:Lcom/uc/webview/export/internal/utility/i$a;

    .line 540
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 541
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz p0, :cond_6

    .line 542
    sget-object p0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->n:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7039
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v2

    .line 546
    :cond_7
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/i;->c(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p0

    .line 547
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "gk_quick_path"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return p0
.end method

.method private static b(Ljava/lang/String;Z)[B
    .locals 5

    const/4 v0, 0x0

    .line 427
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 430
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array p0, p0, [B

    .line 432
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 433
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-eqz p1, :cond_1

    .line 436
    sget-object p1, Lcom/uc/webview/export/internal/utility/i;->l:[I

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/i;->b([B[I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 440
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 442
    :goto_0
    throw p0
.end method

.method private static b([B[I)[B
    .locals 8

    .line 344
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v1

    .line 355
    :try_start_0
    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 361
    aget-byte v6, p0, v4

    .line 362
    rem-int/lit8 v7, v4, 0x8

    aget v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 363
    aput-byte v6, v1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_1
    aget-byte v4, p0, v0

    aget v3, p1, v3

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    aget-byte p0, p0, v0

    aget p1, p1, v3

    xor-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_2

    return-object v1

    :catch_0
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ucmKrlDir"

    const-string v3, "ucmLibDir"

    const-string v4, "resFilePath"

    const-string v5, "soFilePath"

    const-string v6, "dexFilePath"

    const-string v7, "ucmZipFile"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 558
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v9

    if-nez v9, :cond_1

    .line 559
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->b:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    return v8

    .line 563
    :cond_1
    sget-object v9, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v9, :cond_2

    .line 565
    invoke-static/range {p0 .. p0}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 564
    invoke-static {v0, v9}, Lcom/uc/webview/export/internal/utility/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    .line 568
    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v0, :cond_4

    .line 569
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz v0, :cond_3

    .line 570
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    const-string v1, "willReuseOldCoreInternal false. null"

    .line 8039
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v8

    .line 575
    :cond_4
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v0, v7}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    sget-object v9, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v9, v6}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 577
    sget-object v10, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v10, v5}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 578
    sget-object v11, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v11, v4}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 579
    sget-object v12, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v12, v3}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 580
    sget-object v13, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v13, v2}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 581
    sget-object v14, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    sget-object v15, Lcom/uc/webview/export/internal/utility/i;->e:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 583
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 584
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 585
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 586
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 587
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    sget-boolean v2, Lcom/uc/webview/export/internal/utility/i;->h:Z

    if-eqz v2, :cond_5

    .line 591
    sget-object v2, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "buildtime="

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",lasttime="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9039
    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v2, Lcom/uc/webview/export/internal/utility/i;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "zipFilePath="

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",last="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 10039
    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v14, :cond_12

    .line 595
    sget-object v2, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_4

    :cond_6
    if-eqz v7, :cond_7

    .line 600
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 601
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->f:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_7
    if-eqz v6, :cond_8

    .line 605
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 606
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->g:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_8
    if-eqz v5, :cond_9

    .line 610
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 611
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->g:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_9
    if-eqz v4, :cond_a

    .line 615
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 616
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->g:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_a
    if-eqz v3, :cond_b

    .line 620
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 621
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->h:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_b
    if-eqz v1, :cond_c

    .line 625
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 626
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->i:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1

    :cond_c
    const/4 v8, 0x1

    if-nez v0, :cond_e

    if-nez v9, :cond_e

    if-nez v10, :cond_e

    if-nez v11, :cond_e

    if-nez v12, :cond_e

    if-eqz v13, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_10

    .line 635
    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    if-nez v0, :cond_10

    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    if-nez v0, :cond_10

    sget-object v0, Lcom/uc/webview/export/internal/utility/i;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_2
    if-nez v8, :cond_11

    .line 639
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->j:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    goto :goto_3

    .line 641
    :cond_11
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->l:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    :goto_3
    return v8

    .line 596
    :cond_12
    :goto_4
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->n:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 646
    sget-object v0, Lcom/uc/webview/export/internal/utility/i$a;->k:Lcom/uc/webview/export/internal/utility/i$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Lcom/uc/webview/export/internal/utility/i$a;)V

    const/4 v1, 0x0

    return v1
.end method
