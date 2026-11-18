.class public final Lcom/uc/webview/export/internal/utility/c;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/internal/utility/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/uc/webview/export/internal/utility/c;->b:Z

    const/4 v1, 0x1

    const-string v2, "startup_policy"

    .line 24
    invoke-static {v2, v1, v0}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "log_conf"

    .line 25
    invoke-static {v2, v0, v0}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const/4 v2, 0x2

    const-string v3, "twd_watch_list"

    .line 28
    invoke-static {v3, v2, v0}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v3, "twd_alarm_duration"

    .line 29
    invoke-static {v3, v2, v0}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v3, "twd_dump_rate"

    .line 30
    invoke-static {v3, v2, v0}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "ext_img_decoder_on"

    .line 33
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "DisableHiddenApiReflect"

    .line 34
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "GpuProcInitTimeout"

    .line 35
    invoke-static {v2, v1, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "remove_image_from_cache"

    .line 36
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "decode_fail_is_on"

    .line 37
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "send_decode_fail_webview_event"

    .line 38
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "rendering_optimization"

    .line 39
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "enable_media_player_service"

    .line 40
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "enable_webaudio_stats"

    .line 41
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    const-string v2, "gl_error_detail"

    .line 42
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 85
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 67
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/utility/c$a;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/c;->a(Lcom/uc/webview/export/internal/utility/c$a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 71
    sput-boolean v1, Lcom/uc/webview/export/internal/utility/c;->b:Z

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static a(Lcom/uc/webview/export/internal/utility/c$a;)V
    .locals 4

    .line 3146
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/utility/c$a;->d:Z

    if-eqz v0, :cond_1

    .line 4142
    iget-object v0, p0, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2334

    const/4 v1, 0x2

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5138
    iget-object v3, p0, Lcom/uc/webview/export/internal/utility/c$a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 5142
    iget-object p0, p0, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 116
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;IZ)V
    .locals 2

    .line 111
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/uc/webview/export/internal/utility/c$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/uc/webview/export/internal/utility/c$a;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 48
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/utility/c$a;

    if-nez v1, :cond_1

    const-string v1, "DynamicSettings"

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupport update key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    monitor-exit v0

    return-void

    .line 1150
    :cond_1
    iget v2, v1, Lcom/uc/webview/export/internal/utility/c$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const-string p1, "DynamicSettings"

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unsupport value type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/uc/webview/export/internal/utility/c$a;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_2
    iput-object p1, v1, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1158
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "DynamicSettings"

    .line 1160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid int setting value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;

    :goto_0
    const-string p1, "log_conf"

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 57
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/c;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    :cond_5
    const-string p1, "DynamicSettings"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    iget-object p0, v1, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;

    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/c;->b:Z

    if-eqz p0, :cond_6

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/c;->a(Lcom/uc/webview/export/internal/utility/c$a;)V

    .line 63
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 100
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/utility/c$a;

    if-nez v1, :cond_0

    const-string v1, "DynamicSettings"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupport key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 104
    monitor-exit v0

    return-object p0

    .line 3142
    :cond_0
    iget-object p0, v1, Lcom/uc/webview/export/internal/utility/c$a;->b:Ljava/lang/Object;

    .line 106
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
