.class public Lcom/rich/czlylibary/http/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/czlylibary/http/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/rich/czlylibary/http/c/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/c/b;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
