.class final Lmtopsdk/network/domain/RequestBody$1;
.super Lmtopsdk/network/domain/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/network/domain/RequestBody;->create(Ljava/lang/String;[B)Lmtopsdk/network/domain/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lmtopsdk/network/domain/RequestBody$1;->val$contentType:Ljava/lang/String;

    iput-object p2, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    invoke-direct {p0}, Lmtopsdk/network/domain/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 54
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lmtopsdk/network/domain/RequestBody$1;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
