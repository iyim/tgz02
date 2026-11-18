.class public final Lcom/uc/webview/export/internal/setup/i;
.super Lcom/uc/webview/export/internal/setup/a;
.source "U4Source"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/a;-><init>()V

    const-string v0, "InitCoreEngineJob"

    .line 24
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/i;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x105

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x106

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/i;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .line 1044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1046
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1047
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_e

    .line 1050
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    const-string v6, "ucm_corelib_path"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    const-string v6, "ucm_paks_resource_dir"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v5, :cond_0

    .line 1053
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, "ucm_dex_path"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "ucm_odex_path"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 1060
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v5, "ucm_private_data_dir_suffix"

    .line 1063
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "ucm_disable_critical_memory_pressure"

    .line 1069
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "1"

    const-string v7, "0"

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 1068
    :goto_0
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "webview_multi_process"

    .line 1072
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    move-object v1, v4

    :cond_3
    const-string v5, "webview_multi_process_fallback_timeout"

    .line 1076
    invoke-static {v5}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_4

    move-object v5, v4

    :cond_4
    const-string v8, "webview_multi_process_enable_service_speedup"

    .line 1080
    invoke-static {v8}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-nez v8, :cond_5

    .line 1082
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1085
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "ucm_multi_process"

    .line 1084
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ucm_multi_process_fallback_timeout"

    .line 1086
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ucm_multi_process_enable_service_speedup"

    .line 1088
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ucm_multi_process_enable_seccomp"

    .line 1091
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v6

    goto :goto_1

    :cond_6
    move-object v5, v7

    .line 1090
    :goto_1
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ucm_multi_process_startup_timeout"

    .line 1093
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_7

    move-object v5, v4

    .line 1097
    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1096
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ucm_multi_process_disable_fallback_to_single_process"

    .line 1100
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/l;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    move-object v6, v7

    .line 1099
    :goto_2
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gpu_process_mode"

    .line 1104
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_9

    move-object v1, v4

    .line 1109
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_gpu_process_mode"

    .line 1108
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ucm_gpu_warm_up_time"

    .line 1112
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 1115
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1114
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const-string v4, "-1"

    .line 1117
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v1, "ucm_gpu_proc_init_timeout"

    .line 1121
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    .line 1124
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    :cond_b
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->b:Z

    xor-int/2addr v1, v2

    .line 1128
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_skip_init_setting"

    .line 1127
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 1130
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_is_hardware_ac"

    .line 1129
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_sup"

    .line 1132
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "twd_watch_list"

    .line 1136
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1138
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_twd_watch_list"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v1, "twd_alarm_duration"

    .line 1140
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1142
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_twd_alarm_duration"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v1, "twd_dump_rate"

    .line 1144
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1146
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ucm_twd_dump_rate"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/16 v1, 0x232a

    const/4 v4, 0x2

    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    .line 40
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbbf

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
