.class Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;
.super Ljava/lang/Object;
.source "GCSMtop.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->defaultBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

.field final synthetic val$mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->val$mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 9

    const-string v0, " \u6b21\u91cd\u8bd5\uff01\uff01\uff01"

    const-string v1, " : \u7b2c "

    const-string v2, " "

    const-string v3, "mtop "

    const-string v4, "mtopResponse not success"

    const-string v5, "mtopResponse is null"

    const-string v6, "MtopFinishEvent is null"

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFinished() called with: mtopFinishEvent = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "], o = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v7, "ysj88847"

    invoke-static {v7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;

    move-result-object p2

    const-string v7, "GCSMtop"

    if-nez p2, :cond_0

    const-string p1, "callback is null"

    .line 266
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result p2

    const/4 v8, 0x1

    if-eqz p2, :cond_1

    .line 272
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;

    move-result-object p2

    .line 273
    invoke-static {v6}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 272
    invoke-static {p2, v8, v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->access$400(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    .line 275
    invoke-static {v6}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 276
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->stopTimeCalculate(Ljava/lang/String;Ljava/lang/String;)J

    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p2

    if-nez p2, :cond_2

    .line 285
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;

    move-result-object p2

    .line 286
    invoke-static {v5}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 285
    invoke-static {p2, v8, v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->access$400(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    .line 287
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->stopTimeCalculate(Ljava/lang/String;Ljava/lang/String;)J

    .line 289
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 291
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_2
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    .line 298
    :cond_3
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/NetworkUtils;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "FAIL_SYS_SERVICE_TIMEOUT"

    .line 300
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "ANDROID_SYS_NETWORK_ERROR"

    .line 301
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    .line 312
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->val$mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 313
    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->val$mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 315
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$500(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    .line 321
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$500(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    .line 324
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$500(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$508(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)I

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$000(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 302
    :cond_5
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;

    move-result-object v0

    .line 303
    invoke-static {v5}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 302
    invoke-static {v0, v8, v1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->access$400(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    .line 304
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->stopTimeCalculate(Ljava/lang/String;Ljava/lang/String;)J

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtopResponse not success. errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :catch_0
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->access$200(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 338
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 337
    invoke-static {v0, v1, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->access$400(Landroid/os/IBinder;ILandroid/os/Bundle;)V

    .line 340
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder$1;->this$0:Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop$Builder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "success"

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->stopTimeCalculate(Ljava/lang/String;Ljava/lang/String;)J

    const-string p2, "mtopResponse success"

    .line 342
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtopResponse RemoteException exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printNormal(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 347
    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_2
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printMtopFinishEvent(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 352
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/DLog;->printMtopFinishEventTraceId(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    return-void
.end method
