.class public abstract Lcom/uc/webview/export/internal/setup/av;
.super Lcom/uc/webview/export/internal/setup/l;
.source "U4Source"


# instance fields
.field protected a:Lcom/uc/webview/export/internal/setup/bs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract a(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/bs;
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runQuick ucms:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StandardSetupTask"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_ucm_size"

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/av;->b(Lcom/uc/webview/export/internal/setup/br;)V

    return-void

    .line 35
    :cond_2
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v0, 0xbbc

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UCM packages not found, status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method protected final b(Lcom/uc/webview/export/internal/setup/br;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 42
    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Lcom/uc/webview/export/internal/utility/e;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "gk_quick_init"

    invoke-virtual {v2, v5, v4}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v2, 0x6

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 46
    :try_start_0
    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    const/16 v0, 0x128

    .line 48
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 50
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    const-string v6, "e_in_lp_cb"

    .line 51
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/av;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    invoke-virtual {v1, v0, v6}, Lcom/uc/webview/export/internal/setup/av;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/br;->quickPathReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/av;->a(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/bs;

    move-result-object v0

    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bs;->c()V

    :cond_0
    const/16 v0, 0x129

    .line 58
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v0, 0xff

    .line 1091
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1094
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->d()V

    .line 1098
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 1099
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v7, v7, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v8, v8, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v7, 0x103

    .line 1103
    invoke-static {v7}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1106
    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v7, :cond_3

    .line 1107
    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    sget-object v8, Lcom/uc/webview/export/internal/setup/ae$b;->d:Lcom/uc/webview/export/internal/setup/ae$b;

    .line 2073
    sget-object v9, Lcom/uc/webview/export/internal/setup/bs;->g:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2074
    :try_start_1
    iget-object v10, v7, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    monitor-exit v9

    goto :goto_0

    .line 2075
    :cond_1
    iget-object v7, v7, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2076
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/uc/webview/export/internal/setup/ae;->b(Lcom/uc/webview/export/internal/setup/ae$b;)Ljava/lang/Object;

    .line 2078
    :cond_2
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_3
    :goto_0
    const/16 v7, 0x104

    .line 1109
    invoke-static {v7}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1113
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v7

    const-string v9, "setup"

    .line 1114
    invoke-virtual {v1, v9}, Lcom/uc/webview/export/internal/setup/av;->callback(Ljava/lang/String;)V

    const/16 v9, 0x138

    .line 1117
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v10

    sub-long/2addr v10, v7

    .line 1115
    invoke-static {v9, v10, v11}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/av;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v0, "StandardSetupTask"

    const-string v3, "startQuickSetupTransaction process stopped"

    .line 1120
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    move-object v0, v5

    :cond_5
    const/16 v7, 0x131

    .line 2140
    invoke-static {v7}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2142
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v6

    invoke-static {v3, v7}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    const/16 v0, 0x139

    .line 2146
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2149
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2150
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    sget v3, Lcom/uc/webview/export/internal/setup/ae$d;->a:I

    sget-object v7, Lcom/uc/webview/export/internal/setup/ae$b;->k:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v8, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 2153
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/uc/webview/export/internal/setup/aw;

    invoke-direct {v10, v1}, Lcom/uc/webview/export/internal/setup/aw;-><init>(Lcom/uc/webview/export/internal/setup/av;)V

    invoke-direct {v8, v9, v10, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 2150
    invoke-virtual {v0, v3, v7, v8, v5}, Lcom/uc/webview/export/internal/setup/ae;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/ae$c;

    :cond_6
    const/16 v0, 0x132

    .line 2165
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1129
    new-instance v0, Lcom/uc/webview/export/internal/setup/i;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/i;-><init>()V

    .line 1130
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/i;->run()V

    const/16 v0, 0x107

    .line 2171
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v0, 0x111

    .line 2173
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2176
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v0, :cond_9

    .line 2177
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    .line 3082
    sget-object v3, Lcom/uc/webview/export/internal/setup/bs;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3083
    :try_start_3
    iget-object v7, v0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    monitor-exit v3

    goto :goto_2

    .line 3084
    :cond_7
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/internal/setup/ae$b;

    .line 3085
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/uc/webview/export/internal/setup/ae;->b(Lcom/uc/webview/export/internal/setup/ae$b;)Ljava/lang/Object;

    goto :goto_1

    .line 3087
    :cond_8
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 2179
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/av;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Landroid/content/Context;)V

    const/16 v0, 0x112

    .line 2181
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2184
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->b()V

    .line 3219
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v7

    .line 3221
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v9, v1, Lcom/uc/webview/export/internal/setup/av;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v3, v9}, Lcom/uc/webview/export/internal/setup/g;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v15

    .line 3229
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/av;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    .line 3230
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object v13

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/av;->mUCM:Lcom/uc/webview/export/internal/setup/br;

    iget-object v14, v3, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    sget-object v3, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 3233
    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/j;->a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v17

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v18

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/av;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "scst_flag"

    .line 3234
    invoke-virtual {v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v19

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/av;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "scst_flag"

    .line 3236
    invoke-virtual {v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v3

    .line 3235
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/l;->a(Z)I

    move-result v20

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;-><init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;IZI)V

    .line 3229
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/av;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    const/16 v0, 0x135

    .line 3241
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 3239
    invoke-static {v0, v9, v10}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 2190
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v7
    :try_end_4
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v0, "init"

    .line 2194
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/av;->callback(Ljava/lang/String;)V

    const-string v0, "switch"

    .line 2195
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/av;->callback(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2200
    :try_start_6
    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v9, 0xfb2

    invoke-direct {v3, v9, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/internal/setup/av;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2198
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/av;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    :goto_3
    const/16 v0, 0x133

    .line 2205
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 2203
    invoke-static {v0, v9, v10}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 3247
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    sget v3, Lcom/uc/webview/export/internal/setup/ae$d;->a:I

    sget-object v7, Lcom/uc/webview/export/internal/setup/ae$b;->i:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v8, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 3250
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/uc/webview/export/internal/setup/ax;

    invoke-direct {v10, v1}, Lcom/uc/webview/export/internal/setup/ax;-><init>(Lcom/uc/webview/export/internal/setup/av;)V

    invoke-direct {v8, v9, v10, v5}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 3247
    invoke-virtual {v0, v3, v7, v8, v5}, Lcom/uc/webview/export/internal/setup/ae;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/ae$c;

    .line 2209
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    const/16 v0, 0x108

    .line 2211
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    const/16 v0, 0x100

    .line 1134
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_6
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 69
    :goto_4
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bs;->e()V

    .line 71
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    :cond_a
    move-object v0, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 67
    :try_start_7
    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v6, 0xbbb

    invoke-direct {v3, v6, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 69
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v0, :cond_b

    .line 70
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/bs;->e()V

    .line 71
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    :cond_b
    move-object v0, v3

    goto :goto_6

    .line 69
    :goto_5
    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v2, :cond_c

    .line 70
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/bs;->e()V

    .line 71
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    :cond_c
    throw v0

    :catch_3
    move-exception v0

    .line 69
    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    if-eqz v3, :cond_d

    .line 70
    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/bs;->e()V

    .line 71
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/av;->a:Lcom/uc/webview/export/internal/setup/bs;

    .line 77
    :cond_d
    :goto_6
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->c()I

    move-result v3

    if-eq v3, v4, :cond_f

    .line 78
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->c()I

    move-result v3

    if-eq v3, v2, :cond_f

    if-nez v0, :cond_e

    .line 80
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbbc

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UCM packages not found, status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    .line 82
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/av;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->b(Landroid/content/Context;)V

    .line 83
    throw v0

    :cond_f
    return-void
.end method
