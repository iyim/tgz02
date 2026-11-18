.class final Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$2;
.super Ljava/lang/Object;
.source "ProgressManager.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->getOkHttpClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 52
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    .line 54
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->access$000()Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-direct {v2, v0, v3, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;-><init>(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;Lokhttp3/ResponseBody;)V

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
