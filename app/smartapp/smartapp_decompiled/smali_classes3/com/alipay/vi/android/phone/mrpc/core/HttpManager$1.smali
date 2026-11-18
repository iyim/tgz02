.class Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;
.super Ljava/util/concurrent/FutureTask;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/alipay/vi/android/phone/mrpc/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

.field final synthetic val$httpWorker:Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;


# direct methods
.method constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;Ljava/util/concurrent/Callable;Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->this$0:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    iput-object p3, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 6

    const-string v0, ""

    const-string v1, "HttpManager"

    const-string v2, "done"

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->val$httpWorker:Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;

    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getRequest()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Request;->getCallback()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-nez v3, :cond_0

    .line 136
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void

    :cond_0
    const-string v4, "done 1"

    .line 139
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/vi/android/phone/mrpc/core/Response;

    .line 143
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_6

    .line 150
    invoke-interface {v3, v2, v1}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onPostExecute(Lcom/alipay/vi/android/phone/mrpc/core/Request;Lcom/alipay/vi/android/phone/mrpc/core/Response;)V

    goto :goto_1

    .line 144
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Request;->cancel()V

    .line 145
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager$1;->cancel(Z)Z

    .line 148
    :cond_4
    invoke-interface {v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/vi/android/phone/mrpc/core/Request;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :catch_1
    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/Request;->cancel()V

    .line 168
    invoke-interface {v3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onCancelled(Lcom/alipay/vi/android/phone/mrpc/core/Request;)V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    if-eqz v4, :cond_5

    .line 156
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 157
    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v1, v0}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    return-void

    :cond_5
    const/4 v4, 0x6

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v4, v0}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    return-void

    :catch_3
    move-exception v1

    const/4 v4, 0x7

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v4, v0}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
