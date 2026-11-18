.class public Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;
.super Ljava/lang/Object;
.source "MemoryMonitorUtils.java"


# static fields
.field private static final PAGE_NAME_ON_TRIM_MEMORY:Ljava/lang/String; = "onTrimMemory"

.field private static final PROCESS_NAME:Ljava/lang/String; = "process"

.field private static final TAG:Ljava/lang/String; = "MemoryMonitorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAvailableMemory(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 79
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 83
    :cond_0
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static getPss(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "activity"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 39
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v0, 0x1

    .line 41
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    .line 43
    aget-object p0, p0, v1

    .line 44
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 93
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 97
    :cond_0
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static getUsedPercent(Landroid/content/Context;)I
    .locals 6

    const-string v0, "/proc/meminfo"

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemTotal:"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "\\D+"

    const-string v2, ""

    .line 62
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 63
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v2, v0, v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static onTrimMemory(Landroid/content/Context;I)V
    .locals 1

    .line 178
    new-instance v0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$4;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendImgInfo(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$3;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendMemInfo(Landroid/content/Context;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendMemoryInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 131
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getPss(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 132
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getAvailableMemory(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 133
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "process"

    .line 134
    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_field_arg1"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_field_arg2"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getUsedPercent(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_field_arg3"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " totalPss:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " availMem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " usedPercent:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->getUsedPercent(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MemoryMonitorUtils"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v4}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendUsedMemoryInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
