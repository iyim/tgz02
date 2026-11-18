.class public final Lcom/uc/webview/export/internal/update/a;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static volatile a:Ljava/lang/String; = null

.field private static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 151
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "libu3player.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-static {p0, v1}, Lcom/uc/webview/export/cyclone/update/UpdateFlagMarker;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    :cond_2
    move-object p1, p0

    .line 162
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 164
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    invoke-static {v2, p1}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .line 53
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "ucPlayer"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    sget-boolean v0, Lcom/uc/webview/export/internal/update/a;->b:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 56
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 57
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 59
    :cond_2
    invoke-static {p0}, Lcom/uc/webview/export/internal/update/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setupUCPlayer ucPlayerDir:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCPlayer"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 65
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "crsp_mpplgs"

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "so_dir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v4, ".lock"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    .line 72
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "2.6.0.167"

    .line 73
    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_1

    :catch_0
    move-object v0, p0

    .line 77
    :catch_1
    :cond_4
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0

    .line 80
    :goto_2
    sput-object v2, Lcom/uc/webview/export/internal/update/a;->a:Ljava/lang/String;

    const/4 p0, 0x1

    .line 81
    sput-boolean p0, Lcom/uc/webview/export/internal/update/a;->b:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 83
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupForUCPlayer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-static {v0, p0, p0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    const-string v1, "ucPlayerRoot"

    const-string v2, "ucPlayer"

    if-eqz p0, :cond_2

    .line 39
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 44
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "setUCPlayerOptions use:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", soDir:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UCPlayer"

    .line 48
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 32
    sget-object v0, Lcom/uc/webview/export/internal/update/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/uc/webview/export/internal/update/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    const-string v0, "UCPlayer"

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/update/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "rep_apollo"

    .line 126
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 127
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lnkUCPlayerLibs libDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ucPlayerDir:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "libffmpeg.so"

    .line 132
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "libu3player.so"

    .line 133
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "librotate.so"

    .line 134
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "libinitHelper.so"

    .line 135
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/update/a;->a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "getUCPlayerDir"

    .line 142
    invoke-static {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
