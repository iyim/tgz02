.class Lanet/channel/session/HttpSession$2$1;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Lanet/channel/RequestCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/HttpSession$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanet/channel/session/HttpSession$2;


# direct methods
.method constructor <init>(Lanet/channel/session/HttpSession$2;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$cb:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 5

    if-gtz p1, :cond_0

    const/16 v0, -0xcc

    if-eq p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->this$0:Lanet/channel/session/HttpSession;

    new-instance v1, Lanet/channel/entity/Event;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Http connect fail"

    invoke-direct {v1, v3, v2, v4}, Lanet/channel/entity/Event;-><init>(IILjava/lang/String;)V

    invoke-static {v0, v3, v1}, Lanet/channel/session/HttpSession;->access$400(Lanet/channel/session/HttpSession;ILanet/channel/entity/Event;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$cb:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2, p3}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$req:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "httpStatusCode"

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, ""

    const-string v6, "awcn.HttpSession"

    invoke-static {v6, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$req:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "response headers"

    aput-object v2, v1, v3

    aput-object p2, v1, v5

    invoke-static {v6, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$cb:Lanet/channel/RequestCb;

    invoke-interface {v0, p1, p2}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 179
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {p2}, Lanet/channel/util/HttpHelper;->parseServerRT(Ljava/util/Map;)J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 180
    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->this$0:Lanet/channel/session/HttpSession;

    iget-object v1, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v1, v1, Lanet/channel/session/HttpSession$2;->val$req:Lanet/channel/request/Request;

    invoke-static {v0, v1, p1}, Lanet/channel/session/HttpSession;->access$200(Lanet/channel/session/HttpSession;Lanet/channel/request/Request;I)V

    .line 181
    iget-object p1, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object p1, p1, Lanet/channel/session/HttpSession$2;->this$0:Lanet/channel/session/HttpSession;

    iget-object v0, p0, Lanet/channel/session/HttpSession$2$1;->this$1:Lanet/channel/session/HttpSession$2;

    iget-object v0, v0, Lanet/channel/session/HttpSession$2;->val$req:Lanet/channel/request/Request;

    invoke-static {p1, v0, p2}, Lanet/channel/session/HttpSession;->access$300(Lanet/channel/session/HttpSession;Lanet/channel/request/Request;Ljava/util/Map;)V

    return-void
.end method
