.class public Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;
.super Ljava/lang/Object;
.source "RootLowMemoryCalculator.java"

# interfaces
.implements Lcom/ali/watchmem/core/lowmem/ILowMemoryCalculator;


# instance fields
.field private mMinMem:J

.field private mOomMinFree:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mMinMem:J

    .line 17
    invoke-direct {p0}, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mOomMinFree:[I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 28
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mOomMinFree:[I

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mOomMinFree:[I

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mMinMem:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 33
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 37
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    .line 37
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_2
    :goto_4
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public getSystemLowMemoryValue()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/ali/watchmem/core/lowmem/RootLowMemoryCalculator;->mMinMem:J

    return-wide v0
.end method
