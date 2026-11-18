.class final Lcom/uc/webview/export/business/setup/n;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
        ">;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/business/setup/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/business/setup/a;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 159
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    .line 161
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->j(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "exception"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    .line 164
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->k(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "die_delegate"

    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    .line 167
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->l(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "be_init_success"

    .line 165
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    .line 170
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->m(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "setup"

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/uc/webview/export/business/setup/n;->a:Lcom/uc/webview/export/business/setup/a;

    .line 173
    invoke-static {v0}, Lcom/uc/webview/export/business/setup/a;->n(Lcom/uc/webview/export/business/setup/a;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "be_del_fi"

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/business/setup/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
