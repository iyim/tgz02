.class final Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil;->asyncGetJson(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 73
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;->onFailure(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 79
    new-instance v0, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;-><init>(IZ)V

    .line 80
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->setHeaders(Lokhttp3/Headers;)V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/adv/utils/OriginalResponse;->setBody(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
