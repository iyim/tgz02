.class public Lcom/alibaba/ailabs/genie/smartapp/utils/MemoryUtil;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAvailableMemory()J
    .locals 2

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    const-string v1, "activity"

    .line 188
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 190
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 193
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getTotalPss(Ljava/lang/String;)J
    .locals 4

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 115
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v1, 0x1

    .line 117
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    .line 119
    aget-object p0, p0, v2

    .line 120
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getTotalPss(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 64
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    sget-object v3, Lcom/alibaba/ailabs/genie/smartapp/AppConfig;->PROCESS_NAME_LIST:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v4, 0x1

    .line 70
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 72
    aget-object v3, v3, v5

    .line 73
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 75
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v4, Ljava/lang/Long;

    int-to-long v5, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getUsedPercent()I
    .locals 6

    const-string v0, "/proc/meminfo"

    .line 163
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 165
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemTotal:"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "\\D+"

    const-string v2, ""

    .line 169
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 171
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/MemoryUtil;->getAvailableMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v2, v0, v2

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    return v0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static getUsedPercentValue()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, "/proc/meminfo"

    .line 138
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x800

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 140
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MemTotal:"

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v1, "\\D+"

    .line 144
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 146
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/MemoryUtil;->getAvailableMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    sub-long v3, v1, v3

    long-to-float v3, v3

    long-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static processKillLauncher()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
