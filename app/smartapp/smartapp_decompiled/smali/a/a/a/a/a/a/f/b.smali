.class public La/a/a/a/a/a/f/b;
.super Ljava/lang/Object;
.source "HttpCallbackWrapper.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

.field public final b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 3
    iput-object p2, p0, La/a/a/a/a/a/f/b;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onFailure()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :try_start_0
    iget-object p1, p0, La/a/a/a/a/a/f/b;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, La/a/a/a/a/a/f/b;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    iget-object v0, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    new-instance v1, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    invoke-direct {v1, p2}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ,onFailure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
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

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onResponse()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, La/a/a/a/a/a/f/b;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object p1, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-static {p1, p2}, La/a/a/a/a/a/f/a;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lokhttp3/Response;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    iget-object p2, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    new-instance v0, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    new-instance p2, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    const/16 v0, 0x190

    invoke-direct {p2, v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;-><init>(I)V

    invoke-static {p1, p2}, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;

    move-result-object p1

    .line 22
    :cond_1
    :try_start_1
    iget-object p2, p0, La/a/a/a/a/a/f/b;->b:Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;

    invoke-interface {p2, p1}, Lcom/alibaba/genie/waft/gcs/network/api/NetworkListener;->onResponse(Lcom/alibaba/genie/waft/gcs/network/api/Response;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 24
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, La/a/a/a/a/a/f/b;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ,onResponse: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method
