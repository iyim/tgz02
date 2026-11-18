.class final Lcom/uc/webview/export/internal/update/e;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/uc/webview/export/internal/update/e;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 150
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1153
    iget-object v0, p0, Lcom/uc/webview/export/internal/update/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "progress"

    invoke-static {v0, v1, p1}, Lcom/uc/webview/export/internal/update/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
