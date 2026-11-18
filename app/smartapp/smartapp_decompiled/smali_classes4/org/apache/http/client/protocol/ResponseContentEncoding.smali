.class public Lorg/apache/http/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFLATE:Lorg/apache/http/client/entity/InputStreamFactory;

.field private static final GZIP:Lorg/apache/http/client/entity/InputStreamFactory;

.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# instance fields
.field private final decoderRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/apache/http/client/protocol/ResponseContentEncoding$1;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseContentEncoding$1;-><init>()V

    sput-object v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->GZIP:Lorg/apache/http/client/entity/InputStreamFactory;

    .line 71
    new-instance v0, Lorg/apache/http/client/protocol/ResponseContentEncoding$2;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseContentEncoding$2;-><init>()V

    sput-object v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->DEFLATE:Lorg/apache/http/client/entity/InputStreamFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lorg/apache/http/client/protocol/ResponseContentEncoding;-><init>(Lorg/apache/http/config/Lookup;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Lookup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/client/entity/InputStreamFactory;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object p1

    sget-object v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->GZIP:Lorg/apache/http/client/entity/InputStreamFactory;

    const-string v1, "gzip"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object p1

    sget-object v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->GZIP:Lorg/apache/http/client/entity/InputStreamFactory;

    const-string v1, "x-gzip"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object p1

    sget-object v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->DEFLATE:Lorg/apache/http/client/entity/InputStreamFactory;

    const-string v1, "deflate"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->decoderRegistry:Lorg/apache/http/config/Lookup;

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 112
    invoke-static {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Lorg/apache/http/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    .line 117
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 119
    invoke-interface {p2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p2

    .line 120
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 121
    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lorg/apache/http/client/protocol/ResponseContentEncoding;->decoderRegistry:Lorg/apache/http/config/Lookup;

    invoke-interface {v4, v3}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/client/entity/InputStreamFactory;

    if-eqz v4, :cond_0

    .line 124
    new-instance v2, Lorg/apache/http/client/entity/DecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/client/entity/InputStreamFactory;)V

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v2, "Content-Length"

    .line 125
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    .line 126
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v2, "Content-MD5"

    .line 127
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "identity"

    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Lorg/apache/http/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Content-Coding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
