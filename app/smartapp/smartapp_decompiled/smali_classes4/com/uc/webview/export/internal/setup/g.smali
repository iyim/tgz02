.class public final Lcom/uc/webview/export/internal/setup/g;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final a:I = -0x1

.field private static b:Ljava/lang/Boolean;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/g;->c:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "com.uc.webview.browser.shell.NativeLibraries"

    const/16 v3, 0x23

    .line 185
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 194
    :try_start_0
    invoke-static {v2, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_5

    :try_start_1
    const-string v8, "LIBRARIES"

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    goto :goto_5

    :catch_0
    move-object v7, v4

    .line 207
    :catch_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string v7, "com.uc.webview.browser.shell.Build$Version"

    .line 215
    invoke-static {v7, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v1, "BUILD_SERIAL"

    .line 217
    invoke-virtual {v7, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v8, 0x13

    if-lt v1, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 232
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v7, :cond_2

    const/16 v1, 0xbca

    goto :goto_2

    :cond_2
    const/16 v1, 0xbcb

    :goto_2
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    if-nez v7, :cond_3

    const-string v8, "Class"

    goto :goto_3

    :cond_3
    const-string v8, "Field"

    :goto_3
    aput-object v8, v3, v5

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "com.uc.webview.browser.shell.NativeLibraries.LIBRARIES"

    :goto_4
    aput-object v2, v3, v6

    const-string v2, "%s [%s] missing."

    .line 235
    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_5
    if-eqz v4, :cond_a

    .line 242
    array-length v1, v4

    if-lez v1, :cond_a

    .line 243
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :cond_6
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 251
    :goto_6
    array-length v7, v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_9

    aget-object v9, v4, v8

    .line 252
    aget-object v10, v9, v5

    .line 253
    aget-object v9, v9, v6

    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/l;->d(Ljava/lang/String;)J

    move-result-wide v11

    .line 255
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-nez v10, :cond_8

    .line 265
    sget v10, Lcom/uc/webview/export/internal/setup/g;->a:I

    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v5

    const-string v9, "Check file size ok [%s]."

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Throwable;

    invoke-static {v10, v9, v11}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 257
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ec4\u4ef6\u6821\u9a8c So Size Failed ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnvUtils"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3f0

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v5

    .line 261
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    .line 262
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "So file [%s] with length [%d] mismatch to predefined [%d]."

    .line 259
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v2, :cond_a

    .line 269
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v4, v1}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const/16 v0, 0xdb

    .line 273
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    .line 225
    :catch_2
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbcc

    const-string v2, "Version.BUILD_SERIAL not found."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tryLoadUCCore"

    const/16 v1, 0x1e

    .line 124
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.SdkAuthentication"

    .line 133
    invoke-virtual {p2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v1, 0x3

    .line 138
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/util/HashMap;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 142
    :try_start_1
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 143
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 145
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v4

    aput-object p0, p3, v5

    aput-object v3, p3, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    new-array p3, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, p3, v4

    const-class v1, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v1, p3, v5

    .line 149
    :try_start_2
    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 150
    new-array p3, v6, [Ljava/lang/Object;

    aput-object p1, p3, v4

    aput-object p0, p3, v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    const/4 p0, 0x0

    .line 157
    :try_start_3
    invoke-static {p0, p2, v2, p3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result p0
    :try_end_3
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    xor-int/2addr p0, v5

    if-eqz p0, :cond_0

    const/16 p0, 0xd6

    .line 181
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void

    .line 159
    :cond_0
    :try_start_4
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0xfb1

    const-string p2, "tryLoadUCCore return false."

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "9"

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    add-int/lit8 p3, p2, 0x4

    .line 169
    :try_start_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->c(Ljava/lang/String;)I

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_1
    const/16 p1, 0x2328

    if-lt v4, p1, :cond_2

    .line 175
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {p1, v4, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 177
    :cond_2
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfb0

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 161
    throw p0

    :catch_4
    move-exception p0

    .line 152
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfaf

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    .line 135
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfae

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public static final a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZZ)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p4, :cond_1

    xor-int/lit8 p4, p3, 0x1

    const-string p2, "skip_old_extra_kernel"

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_1
    if-nez p4, :cond_2

    return-void

    .line 52
    :cond_2
    sget p1, Lcom/uc/webview/export/internal/setup/g;->a:I

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Throwable;

    const-string v1, "checkParamSkipOldKernel:true"

    invoke-static {p1, v1, p4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 54
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p4, 0xfa6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    aput-object p0, v1, p3

    aput-object p2, v1, v0

    const-string p0, "UCM [%s] is excluded by param skip_old_extra_kernel value [%s]."

    .line 55
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p4, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 66
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 67
    array-length v0, p4

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 68
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 70
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v1, p4, p3

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    new-instance p2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p3, 0xfad

    const-string p4, "UCM version [%s] is excluded by rules [%s]."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 75
    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfac

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/uc/webview/export/internal/setup/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 1369
    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ucmZipFile"

    .line 1372
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1373
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1374
    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/uc/webview/export/internal/utility/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v1, "ucmUpdUrl"

    .line 1378
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1379
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1381
    invoke-static {p0}, Lcom/uc/webview/export/internal/update/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1382
    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1385
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1386
    iget-object p0, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 359
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    .line 362
    :cond_2
    sget-object p0, Lcom/uc/webview/export/internal/setup/g;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final b(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 12

    const-string v0, "com.uc.webview.browser.shell.PakAssets"

    const/16 v1, 0x1f

    .line 277
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 286
    :try_start_0
    invoke-static {v0, v4, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    :try_start_1
    const-string v5, "ASSETS"

    .line 288
    invoke-virtual {p2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 289
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 290
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v5

    goto :goto_3

    :catch_0
    move-object p2, v2

    .line 298
    :catch_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez p2, :cond_0

    const/16 p1, 0xbd4

    goto :goto_0

    :cond_0
    const/16 p1, 0xbd5

    :goto_0
    sget-object p3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p2, :cond_1

    const-string v2, "Class"

    goto :goto_1

    :cond_1
    const-string v2, "Field"

    :goto_1
    aput-object v2, v1, v3

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "com.uc.webview.browser.shell.PakAssets.ASSETS"

    :goto_2
    aput-object v0, v1, v4

    const-string p2, "%s [%s] missing."

    .line 307
    invoke-static {p3, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    if-eqz v2, :cond_9

    .line 314
    array-length p2, v2

    if-lez p2, :cond_9

    .line 315
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    if-nez p0, :cond_4

    return-void

    .line 319
    :cond_4
    new-instance p2, Ljava/io/File;

    const-string v0, ""

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 320
    new-instance p2, Ljava/io/File;

    const-string v0, "paks"

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :cond_5
    and-int/lit8 p2, p3, 0x40

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    .line 327
    :goto_4
    array-length v0, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_8

    aget-object v6, v2, v5

    .line 328
    aget-object v7, v6, v3

    .line 329
    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/l;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 331
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_7

    .line 341
    sget v7, Lcom/uc/webview/export/internal/setup/g;->a:I

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    const-string v6, "Check file size ok [%s]."

    invoke-static {v8, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Throwable;

    invoke-static {v7, v6, v8}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 333
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u7ec4\u4ef6\u6821\u9a8c Pak Size Failed ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnvUtils"

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0x3f6

    sget-object p2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v6, p3, v3

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v4

    .line 338
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, v1

    const-string v0, "So file [%s] with length [%d] mismatch to predefined [%d]."

    .line 335
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8
    if-eqz p2, :cond_9

    .line 345
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p0, v2, p2}, Lcom/uc/webview/export/internal/setup/h;->b(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    const/16 p0, 0xd7

    .line 348
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 97
    invoke-virtual {p0, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 98
    array-length v2, p4

    if-lez v2, :cond_2

    .line 99
    invoke-static {p2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 101
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object p3, p4, p2

    .line 102
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v0, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 111
    :cond_2
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfbd

    const-string p3, "UCM version [%s] not included by rules [%s]."

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object v0, p4, v1

    const/4 v0, 0x1

    aput-object p0, p4, v0

    .line 112
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 119
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0xfac

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
