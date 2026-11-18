.class Lmtopsdk/network/AbstractCallImpl$1;
.super Lmtopsdk/network/domain/ResponseBody;
.source "AbstractCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/network/AbstractCallImpl;->buildResponse(Lmtopsdk/network/domain/Request;ILjava/lang/String;Ljava/util/Map;[BLmtopsdk/network/domain/NetworkStats;)Lmtopsdk/network/domain/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/network/AbstractCallImpl;

.field final synthetic val$responseByteData:[B

.field final synthetic val$responseHeaders:Ljava/util/Map;


# direct methods
.method constructor <init>(Lmtopsdk/network/AbstractCallImpl;Ljava/util/Map;[B)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmtopsdk/network/AbstractCallImpl$1;->this$0:Lmtopsdk/network/AbstractCallImpl;

    iput-object p2, p0, Lmtopsdk/network/AbstractCallImpl$1;->val$responseHeaders:Ljava/util/Map;

    iput-object p3, p0, Lmtopsdk/network/AbstractCallImpl$1;->val$responseByteData:[B

    invoke-direct {p0}, Lmtopsdk/network/domain/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lmtopsdk/network/AbstractCallImpl$1;->val$responseByteData:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lmtopsdk/network/AbstractCallImpl$1;->val$responseHeaders:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lmtopsdk/network/AbstractCallImpl$1;->val$responseByteData:[B

    return-object v0
.end method
