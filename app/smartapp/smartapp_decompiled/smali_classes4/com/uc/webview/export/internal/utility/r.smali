.class final Lcom/uc/webview/export/internal/utility/r;
.super Ljava/util/HashMap;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1293
    iput-object p1, p0, Lcom/uc/webview/export/internal/utility/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1295
    iget-object p1, p0, Lcom/uc/webview/export/internal/utility/r;->a:Ljava/lang/String;

    const-string v0, "ucBuildVersion"

    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/internal/utility/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
