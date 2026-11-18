.class public abstract Lcom/rich/czlylibary/http/b/c;
.super Lcom/rich/czlylibary/http/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rich/czlylibary/http/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/rich/czlylibary/http/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/rich/czlylibary/http/b/a;-><init>()V

    new-instance v0, Lcom/rich/czlylibary/http/c/b;

    invoke-direct {v0}, Lcom/rich/czlylibary/http/c/b;-><init>()V

    iput-object v0, p0, Lcom/rich/czlylibary/http/b/c;->a:Lcom/rich/czlylibary/http/c/b;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/b/c;->a:Lcom/rich/czlylibary/http/c/b;

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/c/b;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method

.method public synthetic b(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/b/c;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
