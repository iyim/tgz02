.class public final Lcom/uc/webview/export/internal/setup/f;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask<",
        "Lcom/uc/webview/export/internal/setup/f;",
        "Lcom/uc/webview/export/internal/setup/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "bo_init_type"

    const-string v3, ", "

    :try_start_0
    const-string v0, "CONTEXT"

    .line 28
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    .line 29
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    .line 33
    iget v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    return-void

    :cond_0
    const-string v0, "process_private_data_dir_suffix"

    .line 38
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_f

    :cond_1
    const-string v0, "del_dec_fil"

    .line 43
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v0, "del_upd_fil"

    .line 44
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7

    .line 47
    :try_start_1
    sget-boolean v0, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v0, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const-string v0, "i"

    const-string v12, "DeleteFileTask"

    invoke-static {v0, v12}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    move-object v12, v0

    .line 49
    :goto_2
    :try_start_2
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->deleteUnusedFiles(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 51
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 56
    :goto_3
    :try_start_4
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/l;->b(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v13, v0

    .line 58
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 63
    :goto_4
    :try_start_6
    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v13, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v13, v13, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v12, :cond_7

    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "loadedOdexDirFile "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v8, [Ljava/lang/Throwable;

    invoke-virtual {v12, v13, v14}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_7
    const-string v13, "odexs"

    .line 72
    invoke-static {v4, v13}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v7, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 74
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :goto_7
    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/io/File;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    if-eqz v12, :cond_9

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "loadedDataDirFile "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v13, v8, [Ljava/lang/Throwable;

    invoke-virtual {v12, v0, v13}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_9
    :try_start_8
    const-string v0, "decompresses2"

    .line 87
    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 89
    array-length v14, v13

    if-lez v14, :cond_c

    .line 90
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    array-length v13, v13

    if-ge v13, v6, :cond_a

    if-eqz v5, :cond_c

    .line 91
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 92
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 94
    array-length v14, v13

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v14, :cond_c

    aget-object v11, v13, v15

    if-eqz v12, :cond_b

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "decompress delete files "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Throwable;

    invoke-virtual {v12, v6, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 98
    :cond_b
    invoke-static {v4, v11, v5}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_9

    :cond_c
    const-string v6, "bo_dex_old_dex_dir"

    .line 104
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/l;->a(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "bit_by_new_dex_dir"

    .line 105
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "bit_by_new_zip_file"

    .line 106
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 107
    :cond_d
    new-instance v2, Ljava/io/File;

    const-string v6, "bo_old_dex_dp"

    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 109
    new-instance v0, Ljava/io/File;

    const-string v6, "bo_dec_root_dir"

    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/f;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_a

    :cond_e
    move-object v0, v2

    .line 115
    :goto_a
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 116
    array-length v6, v2

    if-lez v6, :cond_11

    .line 117
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    array-length v2, v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_f

    if-eqz v5, :cond_11

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 119
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 121
    array-length v2, v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v2, :cond_11

    aget-object v7, v0, v6

    if-eqz v12, :cond_10

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "prehead init delete files "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v8, [Ljava/lang/Throwable;

    invoke-virtual {v12, v9, v11}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 125
    :cond_10
    invoke-static {v4, v7, v5}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_3
    move-exception v0

    .line 133
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_11
    :try_start_a
    const-string v0, "repairs"

    .line 138
    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v5, :cond_12

    const/4 v2, 0x1

    const/4 v11, 0x0

    goto :goto_c

    .line 140
    :cond_12
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    const/4 v2, 0x1

    .line 138
    :goto_c
    invoke-static {v0, v2, v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 142
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    :goto_d
    :try_start_c
    const-string v0, "updates"

    .line 147
    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 149
    array-length v6, v2

    if-lez v6, :cond_15

    .line 150
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_13

    array-length v2, v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_13

    if-eqz v5, :cond_15

    .line 151
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 152
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 154
    array-length v2, v0

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v2, :cond_15

    aget-object v7, v0, v6

    if-eqz v12, :cond_14

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "update delete files "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Throwable;

    invoke-virtual {v12, v9, v10}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 158
    :cond_14
    invoke-static {v4, v7, v5}, Lcom/uc/webview/export/internal/utility/l;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    return-void

    :catch_5
    move-exception v0

    .line 164
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 173
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    :cond_16
    :goto_f
    return-void

    :catch_7
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
