.class public Lcom/rich/czlylibary/http/request/PostRequest;
.super Lcom/rich/czlylibary/http/request/base/BodyRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rich/czlylibary/http/request/base/BodyRequest<",
        "TT;",
        "Lcom/rich/czlylibary/http/request/PostRequest<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/http/request/base/BodyRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/request/PostRequest;->generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/PostRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/PostRequest;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Lcom/rich/czlylibary/http/model/HttpMethod;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/http/model/HttpMethod;->POST:Lcom/rich/czlylibary/http/model/HttpMethod;

    return-object v0
.end method
