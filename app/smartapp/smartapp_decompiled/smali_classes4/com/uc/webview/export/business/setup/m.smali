.class final Lcom/uc/webview/export/business/setup/m;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 136
    check-cast p1, Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1139
    invoke-static {}, Lcom/uc/webview/export/business/setup/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDeleteFileFinish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    const-string v1, "be_del_fi"

    invoke-static {v0, v1, p1}, Lcom/uc/webview/export/business/setup/a;->a(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;Lcom/uc/webview/export/internal/setup/BaseSetupTask;)V

    .line 1142
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->e(Lcom/uc/webview/export/business/setup/a;)Lcom/uc/webview/export/business/a;

    move-result-object v0

    sget-wide v1, Lcom/uc/webview/export/business/a$d;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 1143
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bit_by_new_zip_file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object p1, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    const-string v0, "bo_dec_r_p"

    .line 1145
    invoke-static {p1, v0}, Lcom/uc/webview/export/business/setup/a;->b(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    const-string v1, "bo_new_ucm_zf"

    .line 1146
    invoke-static {v0, v1}, Lcom/uc/webview/export/business/setup/a;->c(Lcom/uc/webview/export/business/setup/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1144
    invoke-static {p1, v0}, Lcom/uc/webview/export/business/setup/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1147
    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->getInitType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bit_by_old_dex_dir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1148
    iget-object p1, p0, Lcom/uc/webview/export/business/setup/m;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-static {p1}, Lcom/uc/webview/export/business/setup/a;->i(Lcom/uc/webview/export/business/setup/a;)V

    :cond_1
    return-void
.end method
