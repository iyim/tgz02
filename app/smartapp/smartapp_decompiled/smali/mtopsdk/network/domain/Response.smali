.class public final Lmtopsdk/network/domain/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/domain/Response$Builder;
    }
.end annotation


# instance fields
.field public final body:Lmtopsdk/network/domain/ResponseBody;

.field public final code:I

.field public final headers:Ljava/util/Map;
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

.field public final message:Ljava/lang/String;

.field public final request:Lmtopsdk/network/domain/Request;

.field public final stat:Lmtopsdk/network/domain/NetworkStats;


# direct methods
.method private constructor <init>(Lmtopsdk/network/domain/Response$Builder;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lmtopsdk/network/domain/Response$Builder;->request:Lmtopsdk/network/domain/Request;

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    .line 21
    iget v0, p1, Lmtopsdk/network/domain/Response$Builder;->code:I

    iput v0, p0, Lmtopsdk/network/domain/Response;->code:I

    .line 22
    iget-object v0, p1, Lmtopsdk/network/domain/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->message:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lmtopsdk/network/domain/Response$Builder;->headers:Ljava/util/Map;

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    .line 24
    iget-object v0, p1, Lmtopsdk/network/domain/Response$Builder;->body:Lmtopsdk/network/domain/ResponseBody;

    iput-object v0, p0, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;

    .line 25
    iget-object p1, p1, Lmtopsdk/network/domain/Response$Builder;->stat:Lmtopsdk/network/domain/NetworkStats;

    iput-object p1, p0, Lmtopsdk/network/domain/Response;->stat:Lmtopsdk/network/domain/NetworkStats;

    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/network/domain/Response$Builder;Lmtopsdk/network/domain/Response$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lmtopsdk/network/domain/Response;-><init>(Lmtopsdk/network/domain/Response$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Response{ code="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/network/domain/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headers"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Response;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Response;->body:Lmtopsdk/network/domain/ResponseBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Response;->request:Lmtopsdk/network/domain/Request;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stat"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/network/domain/Response;->stat:Lmtopsdk/network/domain/NetworkStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
