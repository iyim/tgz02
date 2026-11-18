.class public final Lmtopsdk/network/domain/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/domain/Request$Builder;,
        Lmtopsdk/network/domain/Request$Environment;
    }
.end annotation


# instance fields
.field public final api:Ljava/lang/String;

.field public final appKey:Ljava/lang/String;

.field public final authCode:Ljava/lang/String;

.field public final bizId:I

.field public final body:Lmtopsdk/network/domain/RequestBody;

.field public final connectTimeoutMills:I

.field public final env:I

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final method:Ljava/lang/String;

.field public final readTimeoutMills:I

.field public final reqContext:Ljava/lang/Object;

.field public final retryTimes:I

.field public final seqNo:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmtopsdk/network/domain/Request$Builder;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    .line 54
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    .line 55
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    .line 56
    iget v0, p1, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    iput v0, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    .line 57
    iget v0, p1, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    iput v0, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    .line 58
    iget v0, p1, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    iput v0, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    .line 59
    iget v0, p1, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    iput v0, p0, Lmtopsdk/network/domain/Request;->bizId:I

    .line 60
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->appKey:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->authCode:Ljava/lang/String;

    .line 62
    iget v0, p1, Lmtopsdk/network/domain/Request$Builder;->env:I

    iput v0, p0, Lmtopsdk/network/domain/Request;->env:I

    .line 63
    iget-object v0, p1, Lmtopsdk/network/domain/Request$Builder;->reqContext:Ljava/lang/Object;

    iput-object v0, p0, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    .line 64
    iget-object p1, p1, Lmtopsdk/network/domain/Request$Builder;->api:Ljava/lang/String;

    iput-object p1, p0, Lmtopsdk/network/domain/Request;->api:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Request$Builder;Lmtopsdk/network/domain/Request$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Request;-><init>(Lmtopsdk/network/domain/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isHttps()Z
    .locals 2

    .line 82
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "https"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public newBuilder()Lmtopsdk/network/domain/Request$Builder;
    .locals 2

    .line 68
    new-instance v0, Lmtopsdk/network/domain/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Request$Builder;-><init>(Lmtopsdk/network/domain/Request;Lmtopsdk/network/domain/Request$1;)V

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Request{ url="

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appKey="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authCode="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seqNo="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeoutMills="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeoutMills="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTimes="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Request;->retryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bizId="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Request;->bizId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", env="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Request;->env:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqContext="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", api="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Request;->api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
