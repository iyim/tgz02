.class public Lmtopsdk/common/util/TBSdkLog;
.super Ljava/lang/Object;
.source "TBSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/common/util/TBSdkLog$LogEnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TBSdkLog"

.field private static logEnabaleMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmtopsdk/common/util/TBSdkLog$LogEnable;",
            ">;"
        }
    .end annotation
.end field

.field private static logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable; = null

.field private static mLogAdapter:Lmtopsdk/common/log/LogAdapter; = null

.field private static printLog:Z = true

.field private static tLogEnabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    sput-object v0, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    .line 34
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->values()[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    sget-object v4, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    invoke-virtual {v3}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->getLogEnable()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "[seq:"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 215
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_2

    .line 216
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_1

    const-string v1, ","

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 90
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    .line 93
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v3, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 96
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 102
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 105
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v1, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 181
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/16 v3, 0x10

    .line 184
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v3, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 187
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 197
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/16 v3, 0x10

    .line 200
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p0, p1, p3}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 203
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 120
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    .line 123
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v3, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 126
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 132
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 135
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v1, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z
    .locals 3

    .line 226
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_0

    .line 228
    sget-object v1, Lmtopsdk/common/util/TBSdkLog;->logEnabaleMap:Ljava/util/Map;

    invoke-interface {v0}, Lmtopsdk/common/log/LogAdapter;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    if-eqz v0, :cond_0

    .line 229
    sget-object v1, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v1}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 230
    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result p0

    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v0}, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrintLog()Z
    .locals 1

    .line 60
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    return v0
.end method

.method public static logTraceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 240
    :try_start_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    invoke-interface {v0, p0, p1}, Lmtopsdk/common/log/LogAdapter;->traceLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "mtopsdk.TBSdkLog"

    const-string p1, "[logTraceId] call LogAdapter.traceLog error"

    .line 244
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setLogAdapter(Lmtopsdk/common/log/LogAdapter;)V
    .locals 2

    .line 45
    sput-object p0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLogAdapter] logAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.TBSdkLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 80
    sput-object p0, Lmtopsdk/common/util/TBSdkLog;->logEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLogEnable] logEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.TBSdkLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 2

    .line 55
    sput-boolean p0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setPrintLog] printLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.TBSdkLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setTLogEnabled(Z)V
    .locals 2

    .line 69
    sput-boolean p0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setTLogEnabled] tLogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mtopsdk.TBSdkLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 149
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    .line 152
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, v3, p0, p1, p2}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 155
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 165
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->tLogEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lmtopsdk/common/util/TBSdkLog;->mLogAdapter:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    .line 168
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p0, p1, p3}, Lmtopsdk/common/log/LogAdapter;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_1

    .line 171
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0, p1, p2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
