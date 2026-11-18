.class public Lmtopsdk/network/domain/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field api:Ljava/lang/String;

.field appKey:Ljava/lang/String;

.field authCode:Ljava/lang/String;

.field bizId:I

.field body:Lmtopsdk/network/domain/RequestBody;

.field connectTimeoutMills:I

.field env:I

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field method:Ljava/lang/String;

.field readTimeoutMills:I

.field reqContext:Ljava/lang/Object;

.field retryTimes:I

.field seqNo:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 117
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 118
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    const-string v0, "GET"

    .line 130
    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lmtopsdk/network/domain/Request;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 117
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 118
    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 135
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->url:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->body:Lmtopsdk/network/domain/RequestBody;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    .line 138
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->headers:Ljava/util/Map;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    .line 139
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->seqNo:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    .line 140
    iget v0, p1, Lmtopsdk/network/domain/Request;->connectTimeoutMills:I

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    .line 141
    iget v0, p1, Lmtopsdk/network/domain/Request;->readTimeoutMills:I

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    .line 142
    iget v0, p1, Lmtopsdk/network/domain/Request;->retryTimes:I

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    .line 143
    iget v0, p1, Lmtopsdk/network/domain/Request;->bizId:I

    iput v0, p0, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    .line 144
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->appKey:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->authCode:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->authCode:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lmtopsdk/network/domain/Request;->reqContext:Ljava/lang/Object;

    iput-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->reqContext:Ljava/lang/Object;

    .line 147
    iget-object p1, p1, Lmtopsdk/network/domain/Request;->api:Ljava/lang/String;

    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->api:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Request;Lmtopsdk/network/domain/Request$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Request$Builder;-><init>(Lmtopsdk/network/domain/Request;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public api(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->api:Ljava/lang/String;

    return-object p0
.end method

.method public appKey(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public authCode(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 219
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public bizId(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 209
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->bizId:I

    return-object p0
.end method

.method public build()Lmtopsdk/network/domain/Request;
    .locals 2

    .line 260
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lmtopsdk/network/domain/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Request;-><init>(Lmtopsdk/network/domain/Request$Builder;Lmtopsdk/network/domain/Request$1;)V

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 191
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->connectTimeoutMills:I

    :cond_0
    return-object p0
.end method

.method public env(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 224
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->env:I

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/network/domain/Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 250
    invoke-static {p1}, Lmtopsdk/network/util/NetworkUtils;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 253
    :cond_1
    :goto_0
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->method:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lmtopsdk/network/domain/Request$Builder;->body:Lmtopsdk/network/domain/RequestBody;

    return-object p0

    .line 245
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method == null || method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public post(Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    const-string v0, "POST"

    .line 239
    invoke-virtual {p0, v0, p1}, Lmtopsdk/network/domain/Request$Builder;->method(Ljava/lang/String;Lmtopsdk/network/domain/RequestBody;)Lmtopsdk/network/domain/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readTimeout(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 198
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->readTimeoutMills:I

    :cond_0
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    .line 170
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 229
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->reqContext:Ljava/lang/Object;

    return-object p0
.end method

.method public retryTimes(I)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 204
    iput p1, p0, Lmtopsdk/network/domain/Request$Builder;->retryTimes:I

    return-object p0
.end method

.method public seqNo(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->seqNo:Ljava/lang/String;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lmtopsdk/network/domain/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lmtopsdk/network/domain/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lmtopsdk/network/domain/Request$Builder;->url:Ljava/lang/String;

    return-object p0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
