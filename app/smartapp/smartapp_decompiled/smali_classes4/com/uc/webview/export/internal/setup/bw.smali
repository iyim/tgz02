.class public Lcom/uc/webview/export/internal/setup/bw;
.super Lcom/uc/webview/export/internal/setup/l;
.source "U4Source"


# static fields
.field private static final d:Ljava/lang/String; = "bw"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->e:Z

    .line 44
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/bw;)Z
    .locals 1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/bw;)Z
    .locals 1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v7, p0

    .line 51
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CONTEXT"

    .line 53
    invoke-virtual {v7, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const-string v0, "ucmUpdUrl"

    .line 54
    invoke-virtual {v7, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "chkMultiCore"

    .line 55
    invoke-virtual {v7, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Boolean;

    const-string v0, "dlChecker"

    .line 56
    invoke-virtual {v7, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 58
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v2, "i"

    invoke-static {v2, v0}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    .line 63
    iget-boolean v3, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-ne v0, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string v3, "sc_udst"

    .line 65
    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    sget-object v5, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "stileUpdate : "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "csc_usl"

    .line 69
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 72
    :cond_2
    sget-object v3, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stile update task : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "csc_usp"

    .line 74
    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_3
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 85
    new-instance v13, Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {v13}, Lcom/uc/webview/export/internal/setup/bo;-><init>()V

    const-string v0, "updWait"

    .line 86
    invoke-virtual {v7, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-wide/32 v5, 0x6ddd00

    goto :goto_2

    .line 87
    :cond_4
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_5

    nop

    nop

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_5
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    nop

    nop

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    goto :goto_2

    .line 93
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 87
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 94
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v16, v13

    const-wide/32 v12, 0x927c0

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :try_start_0
    const-string v0, "sc_ustwm"

    .line 96
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 98
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 101
    sget-object v5, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v6, "Long.valueOf(String) exceptin."

    invoke-static {v5, v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    move-object v0, v3

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "run:update from ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 106
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "shareCoreWait: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " wait: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v12, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v12}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 109
    monitor-enter v16

    :try_start_1
    const-string v2, "dwnRetryWait"

    .line 1190
    invoke-virtual {v7, v2}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_8

    move-object v2, v13

    goto :goto_5

    .line 1191
    :cond_8
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_9

    nop

    nop

    .line 1194
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_4

    :cond_9
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_a

    nop

    nop

    .line 1196
    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    goto :goto_4

    .line 1197
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1193
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_5
    const-string v3, "dwnRetryMaxWait"

    .line 1199
    invoke-virtual {v7, v3}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    move-object v3, v13

    goto :goto_7

    .line 1200
    :cond_b
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_c

    nop

    nop

    .line 1203
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_6

    :cond_c
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    nop

    nop

    .line 1205
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    goto :goto_6

    .line 1206
    :cond_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1202
    :goto_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1208
    :goto_7
    invoke-static {v8}, Lcom/uc/webview/export/internal/update/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 1209
    new-instance v6, Lcom/uc/webview/export/internal/utility/h$b;

    const-string v15, "ut_cvsv"

    invoke-direct {v6, v15}, Lcom/uc/webview/export/internal/utility/h$b;-><init>(Ljava/lang/String;)V

    .line 1211
    invoke-static {}, Lcom/uc/webview/export/internal/update/b;->a()Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v6

    if-eqz v6, :cond_23

    const-string v15, "ctx"

    .line 1214
    invoke-interface {v6, v15, v8}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v6

    const-string v15, "url"

    .line 1215
    invoke-interface {v6, v15, v1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "rootdir"

    .line 1216
    invoke-interface {v1, v6, v5}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "checkfile"

    const-string v15, "sdk_shell.jar"

    .line 1217
    invoke-interface {v1, v6, v15}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "checklm"

    .line 1218
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v15

    const-string v11, "exact_mod"

    invoke-virtual {v15, v11}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "connto"

    .line 1219
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->c()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "readto"

    .line 1220
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->d()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v6, "retrywait"

    .line 1221
    invoke-interface {v1, v6, v2}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v2, "retrymax"

    .line 1222
    invoke-interface {v1, v2, v3}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    const-string v2, "upcore"

    const/4 v3, 0x1

    .line 1223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v11

    new-instance v6, Lcom/uc/webview/export/internal/setup/bz;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v15, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/uc/webview/export/internal/setup/bz;-><init>(Lcom/uc/webview/export/internal/setup/bw;Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/io/File;Lcom/uc/webview/export/internal/setup/bo;)V

    .line 1224
    invoke-interface {v11, v15}, Lcom/uc/webview/export/cyclone/update/UpdateService;->setCallback(Lcom/uc/webview/export/cyclone/update/UpdateService$EventCallback;)Lcom/uc/webview/export/cyclone/update/UpdateService;

    move-result-object v1

    .line 1366
    invoke-interface {v1}, Lcom/uc/webview/export/cyclone/update/UpdateService;->start()V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v3, v16

    :try_start_2
    invoke-virtual {v3, v1, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(J)Landroid/util/Pair;

    move-result-object v1

    .line 113
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_16

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 1370
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v5, ".shareCoreWaitTimeout"

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    const-string v2, "sc_ldpl"

    .line 1373
    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "sc_lshco"

    .line 1374
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v2, :cond_e

    .line 1376
    :try_start_4
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v5, ".shareCoreWaitTimeout !CDKeys.CD_VALUE_LOAD_POLICY_SHARE_CORE.equals(shareCoreLoadPolicy)."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1441
    :try_start_5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    .line 1442
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    const/16 v17, 0x1

    goto/16 :goto_c

    :cond_e
    :try_start_6
    const-string v2, "shareCoreEvt"

    .line 1379
    invoke-virtual {v7, v2}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v2, :cond_f

    .line 1382
    :try_start_7
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v5, ".shareCoreWaitTimeout dlShareCoreCB == null."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1441
    :try_start_8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    .line 1442
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_8

    .line 1385
    :cond_f
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1387
    :try_start_a
    iget-boolean v5, v7, Lcom/uc/webview/export/internal/setup/bw;->e:Z

    if-nez v5, :cond_10

    iget-boolean v5, v7, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    if-nez v5, :cond_10

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    .line 1389
    :try_start_b
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v5, ".shareCoreWaitTimeout !mHasExcepted && !mHasFailed"

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1441
    :try_start_c
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    .line 1442
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v11, 0x1

    goto :goto_b

    .line 1392
    :cond_10
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1394
    :try_start_e
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 1396
    iget v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-ne v5, v10, :cond_11

    .line 1398
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v5

    const-string v6, "MULTI_CORE_TYPE"

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v5, :cond_12

    .line 1400
    :cond_11
    :try_start_f
    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v5, ".shareCoreWaitTimeout UCCore had initialized."

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1441
    :try_start_10
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_13

    .line 1442
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_8

    .line 1403
    :cond_12
    :try_start_11
    new-instance v5, Lcom/uc/webview/export/internal/setup/ca;

    invoke-direct {v5, v7, v3, v2, v1}, Lcom/uc/webview/export/internal/setup/ca;-><init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;Landroid/webkit/ValueCallback;Landroid/util/Pair;)V

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 117
    :cond_13
    :goto_9
    :try_start_12
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v11, v1, v5

    if-lez v11, :cond_14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    goto :goto_a

    :cond_14
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_a
    invoke-virtual {v3, v1, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(J)Landroid/util/Pair;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_d

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    .line 1392
    :goto_b
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v0

    move/from16 v17, v11

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/16 v17, 0x0

    :goto_c
    if-eqz v17, :cond_15

    .line 1441
    :try_start_15
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_15

    .line 1442
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    :cond_15
    throw v0

    .line 121
    :cond_16
    :goto_d
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 122
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result.first: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    .line 128
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_21

    .line 130
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_20

    .line 135
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    .line 136
    :goto_e
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    if-nez v0, :cond_1a

    if-eqz v1, :cond_19

    goto :goto_10

    :cond_19
    const/4 v15, 0x0

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v15, 0x1

    .line 138
    :goto_11
    invoke-static {v8}, Lcom/uc/webview/export/internal/update/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v0, :cond_1b

    .line 140
    invoke-virtual {v12}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "csc_udetm"

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v15, :cond_1f

    if-nez v0, :cond_1c

    .line 141
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 142
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 143
    :cond_1c
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v3, "new ThinSetupTask."

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gk_upd_exist"

    invoke-virtual {v0, v3, v1}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/uc/webview/export/internal/utility/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    goto :goto_12

    :cond_1d
    new-instance v0, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 148
    :goto_12
    invoke-virtual {v0, v7}, Lcom/uc/webview/export/internal/setup/av;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v7, Lcom/uc/webview/export/internal/setup/bw;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, v7, Lcom/uc/webview/export/internal/setup/bw;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "dexFilePath"

    .line 151
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "soFilePath"

    .line 152
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "resFilePath"

    .line 153
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmCfgFile"

    .line 154
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmLibDir"

    .line 155
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmZipDir"

    .line 156
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmZipFile"

    .line 157
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ucmKrlDir"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 159
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/l;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bo_enable_load_class"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/by;

    invoke-direct {v1, v7}, Lcom/uc/webview/export/internal/setup/by;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    const-string v2, "switch"

    .line 160
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    invoke-direct {v1, v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    const-string v2, "stop"

    .line 170
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 171
    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance v13, Lcom/uc/webview/export/internal/setup/bx;

    invoke-direct {v13, v7}, Lcom/uc/webview/export/internal/setup/bx;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    :goto_13
    const-string v1, "setup"

    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 180
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-void

    .line 182
    :cond_1f
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    const-string v1, "else, need not new ThinSetupTask."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_20
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xfbe

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Thread [%s] waiting timeout for share core task."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 129
    :cond_21
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfb3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 124
    :cond_22
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xfaa

    new-array v2, v10, [Ljava/lang/Object;

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 127
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Thread [%s] waiting for update is up to [%s] milis."

    .line 125
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_23
    move-object/from16 v3, v16

    .line 1212
    :try_start_16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_6
    move-exception v0

    move-object/from16 v3, v16

    .line 121
    :goto_14
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_14

    .line 80
    :cond_24
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ucmUpdUrl"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Option [%s] expected."

    .line 81
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15
.end method
