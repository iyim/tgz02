.class public final Lcom/rich/czlylibary/http/model/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;

.field private c:Z

.field private d:Lokhttp3/Call;

.field private e:Lokhttp3/Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/rich/czlylibary/http/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/model/a;

    invoke-direct {v0}, Lcom/rich/czlylibary/http/model/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/http/model/a;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/a;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/rich/czlylibary/http/model/a;->a(Lokhttp3/Call;)V

    invoke-virtual {v0, p3}, Lcom/rich/czlylibary/http/model/a;->a(Lokhttp3/Response;)V

    return-object v0
.end method

.method public static a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/rich/czlylibary/http/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/model/a;

    invoke-direct {v0}, Lcom/rich/czlylibary/http/model/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/http/model/a;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/a;->a(Lokhttp3/Call;)V

    invoke-virtual {v0, p2}, Lcom/rich/czlylibary/http/model/a;->a(Lokhttp3/Response;)V

    invoke-virtual {v0, p3}, Lcom/rich/czlylibary/http/model/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->e:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/http/model/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/model/a;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public a(Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/model/a;->d:Lokhttp3/Call;

    return-void
.end method

.method public a(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/model/a;->e:Lokhttp3/Response;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rich/czlylibary/http/model/a;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->e:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public e()Lokhttp3/Call;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->d:Lokhttp3/Call;

    return-object v0
.end method

.method public f()Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/model/a;->e:Lokhttp3/Response;

    return-object v0
.end method
