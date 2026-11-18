.class final Lcom/alibaba/jsi/standard/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Z = true

.field private static f:Z = false

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .line 39
    sget-object v0, Lcom/alibaba/jsi/standard/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/jsi/standard/b;->h:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/jsi/standard/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app_jsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/jsi/standard/b;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object p0, Lcom/alibaba/jsi/standard/b;->g:Ljava/lang/String;

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/jsi/standard/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/sopaths"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/jsi/standard/b;->d:Ljava/lang/String;

    .line 47
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Make JSI data dir failed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/jsi/standard/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jsi"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 346
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 7

    .line 267
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/jsi/standard/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 272
    :cond_0
    invoke-static {v0}, Lcom/alibaba/jsi/standard/b;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 277
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x2

    const-wide/16 v3, 0x0

    .line 284
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-wide v5, v3

    :goto_0
    cmp-long v1, v5, v3

    if-nez v1, :cond_3

    return v2

    .line 292
    :cond_3
    new-instance v1, Ljava/io/File;

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libjsi.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 295
    aget-object v1, v0, v2

    sput-object v1, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    .line 300
    new-instance v1, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    aget-object v0, v0, v3

    sput-object v0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    .line 303
    sput-boolean v2, Lcom/alibaba/jsi/standard/b;->e:Z

    .line 306
    :cond_4
    sget-object v0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private static a(Ljava/io/File;)Z
    .locals 6

    .line 177
    new-instance v0, Ljava/io/File;

    const-string v1, "uc"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 187
    :cond_1
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 188
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    new-instance v4, Ljava/io/File;

    const-string v5, "so/lib"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-static {v4}, Lcom/alibaba/jsi/standard/b;->c(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 332
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p1, v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 338
    invoke-static {v2}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 335
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    invoke-static {v1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :goto_2
    invoke-static {v1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 65
    sget-boolean v0, Lcom/alibaba/jsi/standard/b;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    sget-object v0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    const-string v2, "libjsi.so"

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    sput-object p1, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-eqz p0, :cond_3

    sput-boolean p1, Lcom/alibaba/jsi/standard/b;->e:Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alibaba/jsi/standard/b;->a()Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    if-nez p0, :cond_4

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    :cond_4
    sget-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-nez p0, :cond_5

    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->g:Ljava/lang/String;

    const-string v2, "libwebviewuc.so"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    :cond_5
    sget-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-nez p0, :cond_8

    :cond_6
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->h:Ljava/lang/String;

    const-string v2, "app_h5container"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->h:Ljava/lang/String;

    const-string v2, "app_ucmsdk"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/alibaba/jsi/standard/b;->b(Ljava/io/File;)Z

    .line 71
    :cond_8
    :goto_0
    sget-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    if-eqz p0, :cond_d

    .line 74
    sget-object v0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 80
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 83
    new-array p0, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    aput-object v0, p0, p1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3, p0}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeCommand(JJ[Ljava/lang/Object;)J

    move-result-wide p0

    cmp-long v0, p0, v2

    if-eqz v0, :cond_a

    cmp-long v0, p0, v4

    if-nez v0, :cond_9

    const-string p0, "jsi"

    const-string p1, "UC linker is disabled, loaded JS engine so by default."

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load JS engine \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' failed, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_a
    :goto_1
    sget-boolean p0, Lcom/alibaba/jsi/standard/b;->e:Z

    if-eqz p0, :cond_b

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    sget-object p1, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/jsi/standard/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 106
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/alibaba/jsi/standard/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :cond_b
    :goto_2
    sput-boolean v1, Lcom/alibaba/jsi/standard/b;->f:Z

    return v1

    .line 75
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not locate JS engine so: libwebviewuc.so"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not locate jsi so: libjsi.so"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 14

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 207
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 214
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 218
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 219
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 224
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 228
    new-instance v10, Ljava/io/File;

    const-string v11, "lib"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    invoke-static {v10}, Lcom/alibaba/jsi/standard/b;->c(Ljava/io/File;)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    return v11

    .line 233
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 235
    array-length v10, v9

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_3

    aget-object v13, v9, v12

    .line 239
    invoke-static {v13}, Lcom/alibaba/jsi/standard/b;->c(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_2

    return v11

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method private static c(Ljava/io/File;)Z
    .locals 3

    .line 250
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "libjsi.so"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    .line 258
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "libwebviewuc.so"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    .line 263
    :cond_2
    sget-object p0, Lcom/alibaba/jsi/standard/b;->b:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/alibaba/jsi/standard/b;->c:Ljava/lang/String;

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static d(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 312
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x400

    .line 313
    :try_start_1
    new-array p0, p0, [B

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 317
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    invoke-static {v1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 320
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    invoke-static {v1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lcom/alibaba/jsi/standard/b;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
