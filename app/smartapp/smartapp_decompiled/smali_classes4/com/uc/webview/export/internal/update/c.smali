.class final Lcom/uc/webview/export/internal/update/c;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/uc/webview/export/internal/update/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/internal/update/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/webview/export/internal/update/c;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/uc/webview/export/internal/update/c;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/uc/webview/export/internal/update/c;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v0, 0xa

    .line 61
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    const-wide/16 v2, 0xc8

    .line 64
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    if-lez v0, :cond_2

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/update/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/internal/update/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/internal/update/c;->c:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lcom/uc/webview/export/internal/update/c;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/uc/webview/export/internal/update/c;->e:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/webview/export/internal/update/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "UpdateUtils"

    const-string v2, "updateUCCore failed"

    .line 76
    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 70
    :cond_2
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string v1, "Waiting timeout for UCCore initialization finish!"

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
