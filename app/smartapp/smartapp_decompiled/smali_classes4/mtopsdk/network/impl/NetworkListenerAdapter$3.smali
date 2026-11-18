.class Lmtopsdk/network/impl/NetworkListenerAdapter$3;
.super Lmtopsdk/network/domain/ResponseBody;
.source "NetworkListenerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/network/impl/NetworkListenerAdapter;->onFinishTask(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/network/impl/NetworkListenerAdapter;

.field final synthetic val$byteData:[B


# direct methods
.method constructor <init>(Lmtopsdk/network/impl/NetworkListenerAdapter;[B)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;->this$0:Lmtopsdk/network/impl/NetworkListenerAdapter;

    iput-object p2, p0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;->val$byteData:[B

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

    .line 182
    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;->val$byteData:[B

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

    .line 177
    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;->this$0:Lmtopsdk/network/impl/NetworkListenerAdapter;

    iget-object v0, v0, Lmtopsdk/network/impl/NetworkListenerAdapter;->headers:Ljava/util/Map;

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

    .line 192
    iget-object v0, p0, Lmtopsdk/network/impl/NetworkListenerAdapter$3;->val$byteData:[B

    return-object v0
.end method
