.class public Lcom/ali/watchmem/util/WatchmemSystemUtils;
.super Ljava/lang/Object;
.source "WatchmemSystemUtils.java"


# static fields
.field private static final CPU_ARCHITECTURE_KEY_64:Ljava/lang/String; = "ro.product.cpu.abilist64"

.field public static final CPU_ARCHITECTURE_TYPE_32:Ljava/lang/String; = "32"

.field public static final CPU_ARCHITECTURE_TYPE_64:Ljava/lang/String; = "64"

.field private static final EI_CLASS:I = 0x4

.field private static final ELFCLASS32:I = 0x1

.field private static final ELFCLASS64:I = 0x2

.field private static LOGENABLE:Z = false

.field private static final PROC_CPU_INFO_PATH:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final SYSTEM_LIB_C_PATH:Ljava/lang/String; = "/system/lib/libc.so"

.field private static final SYSTEM_LIB_C_PATH_64:Ljava/lang/String; = "/system/lib64/libc.so"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkIfCPUx86()Z
    .locals 2

    const-string/jumbo v0, "ro.product.cpu.abi"

    const-string v1, "arm"

    .line 59
    invoke-static {v0, v1}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getArchType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "ro.product.cpu.abilist64"

    const-string v0, ""

    .line 71
    invoke-static {p0, v0}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "64"

    if-lez p0, :cond_1

    .line 72
    sget-boolean p0, Lcom/ali/watchmem/util/WatchmemSystemUtils;->LOGENABLE:Z

    if-eqz p0, :cond_0

    const-string p0, "###############getSystemProperty"

    const-string v1, "CPU arch is 64bit"

    .line 73
    invoke-static {p0, v1}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->isCPUInfo64()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 78
    :cond_2
    invoke-static {}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->isLibc64()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    const-string p0, "###############getArchType()"

    const-string/jumbo v0, "return cpu DEFAULT 32bit!"

    .line 81
    invoke-static {p0, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "32"

    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "getSystemProperty"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 89
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 90
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static isCPUInfo64()Z
    .locals 7

    const-string v0, "###############isCPUInfo64()"

    .line 104
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 109
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x200

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "arch64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/proc/cpuinfo contains is arch64"

    .line 113
    invoke-static {v0, v2}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x1

    .line 123
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0

    :cond_0
    :try_start_5
    const-string v2, "/proc/cpuinfo is not arch64"

    .line 116
    invoke-static {v0, v2}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_8

    :catch_3
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v1

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 119
    :goto_3
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read /proc/cpuinfo error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_1

    .line 123
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v3, :cond_4

    .line 131
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v1, :cond_2

    .line 123
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_6

    :catch_8
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    .line 131
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_7

    :catch_9
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :cond_3
    :goto_7
    throw v0

    :cond_4
    :goto_8
    const/4 v0, 0x0

    return v0
.end method

.method private static isLibc64()Z
    .locals 6

    .line 145
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "###############isLibc64()"

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v1, :cond_0

    .line 147
    invoke-static {v0}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_0

    const-string v0, "/system/lib/libc.so is 64bit"

    .line 149
    invoke-static {v3, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 154
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib64/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {v0}, Lcom/ali/watchmem/util/WatchmemSystemUtils;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_1

    const-string v0, "/system/lib64/libc.so is 64bit"

    .line 158
    invoke-static {v3, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static readELFHeadrIndentArray(Ljava/io/File;)[B
    .locals 5

    const-string/jumbo v0, "readELFHeadrIndentArray"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 171
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x10

    .line 176
    :try_start_1
    new-array v3, p0, [B

    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v3, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, p0, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v3

    .line 181
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: e_indent lenght should be 16, but actual is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ali/watchmem/logger/WatchmemLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v2, v1

    .line 186
    :goto_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ali/watchmem/logger/WatchmemLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 190
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_1
    :goto_3
    throw p0

    :cond_2
    :goto_4
    return-object v1
.end method
