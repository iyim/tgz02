.class public Lcom/rich/czlylibary/http/request/base/a;
.super Lokhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/http/request/base/a$b;,
        Lcom/rich/czlylibary/http/request/base/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lokhttp3/RequestBody;"
    }
.end annotation


# instance fields
.field private a:Lokhttp3/RequestBody;

.field private b:Lcom/rich/czlylibary/http/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/rich/czlylibary/http/request/base/a$b;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lcom/rich/czlylibary/http/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/a;->a:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/rich/czlylibary/http/request/base/a;->b:Lcom/rich/czlylibary/http/b/b;

    return-void
.end method

.method static synthetic a(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/request/base/a$b;
    .locals 0

    iget-object p0, p0, Lcom/rich/czlylibary/http/request/base/a;->c:Lcom/rich/czlylibary/http/request/base/a$b;

    return-object p0
.end method

.method private a(Lcom/rich/czlylibary/http/model/Progress;)V
    .locals 1

    new-instance v0, Lcom/rich/czlylibary/http/request/base/a$1;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/request/base/a$1;-><init>(Lcom/rich/czlylibary/http/request/base/a;Lcom/rich/czlylibary/http/model/Progress;)V

    invoke-static {v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(Lcom/rich/czlylibary/http/request/base/a;Lcom/rich/czlylibary/http/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/model/Progress;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic b(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/b/b;
    .locals 0

    iget-object p0, p0, Lcom/rich/czlylibary/http/request/base/a;->b:Lcom/rich/czlylibary/http/b/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/rich/czlylibary/http/request/base/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/a;->c:Lcom/rich/czlylibary/http/request/base/a$b;

    return-void
.end method

.method public contentLength()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/rich/czlylibary/b/j;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1

    new-instance v0, Lcom/rich/czlylibary/http/request/base/a$a;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/request/base/a$a;-><init>(Lcom/rich/czlylibary/http/request/base/a;Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
