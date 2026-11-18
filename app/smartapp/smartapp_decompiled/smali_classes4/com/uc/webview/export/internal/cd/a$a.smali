.class final Lcom/uc/webview/export/internal/cd/a$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/cd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "InnerImpl"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    .line 72
    sput-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()V
    .locals 11

    .line 110
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 113
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/uc/webview/export/internal/cd/a$a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 117
    :try_start_1
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser sCD : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cd_pp_co"

    .line 118
    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v4, Lorg/json/JSONObject;

    sget-object v5, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 122
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 124
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    sget-object v8, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ".parser key : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_1
    sput-object v3, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    const-string v3, "cd_pp_su"

    .line 129
    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v1

    .line 138
    :try_start_2
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception java.lang.Throwable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :try_start_3
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v2, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    const-string v1, "cd_pp_fa"

    .line 143
    :goto_1
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v1

    .line 135
    :try_start_4
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception org.json.JSONException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :try_start_5
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v2, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    const-string v1, "cd_pp_fa"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 132
    :try_start_6
    sget-object v3, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".parser cd exception java.lang.ClassCastException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    :try_start_7
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v3, ".parser faulure!!"

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v2, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    const-string v1, "cd_pp_fa"

    goto :goto_1

    :catchall_1
    move-exception v3

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_2

    .line 141
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v4, ".parser faulure!!"

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-boolean v2, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    const-string v1, "cd_pp_fa"

    .line 143
    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    :cond_2
    throw v3

    .line 147
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    :cond_4
    :goto_4
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "JSON_CMD"

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    .line 80
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    const/4 p0, 0x0

    .line 81
    sput-object p0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    const/4 p0, 0x0

    .line 82
    sput-boolean p0, Lcom/uc/webview/export/internal/cd/a$a;->e:Z

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    new-instance p0, Lcom/uc/webview/export/internal/cd/b;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/cd/b;-><init>()V

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 91
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->a:Ljava/lang/String;

    const-string v1, "parser"

    invoke-static {v0, v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 83
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Lcom/uc/webview/export/internal/cd/a$a;->a()V

    .line 98
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/cd/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 103
    sget-object v1, Lcom/uc/webview/export/internal/cd/a$a;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 105
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method
