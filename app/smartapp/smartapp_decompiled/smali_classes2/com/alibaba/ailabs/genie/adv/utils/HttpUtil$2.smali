.class Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$2;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil;->asyncGetBytes(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil;Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$2;->this$0:Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;

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

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;->onFailure(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
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

    .line 119
    new-instance p1, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;-><init>()V

    .line 120
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;->setSuccessful(Z)V

    .line 122
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;->setResponseBody(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;->setSuccessful(Z)V

    .line 128
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;->setErrorCode(I)V

    .line 129
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;->setErrorDescription(Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 132
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/adv/utils/HttpUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;->onResponse(Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;)V

    return-void
.end method
