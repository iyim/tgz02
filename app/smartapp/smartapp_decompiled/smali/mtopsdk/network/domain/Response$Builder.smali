.class public Lmtopsdk/network/domain/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lmtopsdk/network/domain/ResponseBody;

.field code:I

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field request:Lmtopsdk/network/domain/Request;

.field stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lmtopsdk/network/domain/Response$Builder;->code:I

    return-void
.end method


# virtual methods
.method public body(Lmtopsdk/network/domain/ResponseBody;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->body:Lmtopsdk/network/domain/ResponseBody;

    return-object p0
.end method

.method public build()Lmtopsdk/network/domain/Response;
    .locals 2

    .line 84
    iget-object v0, p0, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lmtopsdk/network/domain/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/network/domain/Response;-><init>(Lmtopsdk/network/domain/Response$Builder;Lmtopsdk/network/domain/Response$1;)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code(I)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .line 59
    iput p1, p0, Lmtopsdk/network/domain/Response$Builder;->code:I

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmtopsdk/network/domain/Response$Builder;"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public request(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    return-object p0
.end method

.method public stat(Lmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lmtopsdk/network/domain/Response$Builder;->stat:Lmtopsdk/network/domain/NetworkStats;

    return-object p0
.end method
