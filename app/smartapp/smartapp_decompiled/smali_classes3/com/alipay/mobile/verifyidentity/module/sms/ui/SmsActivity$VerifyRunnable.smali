.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 1

    .line 274
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 278
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 279
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    :try_start_2
    new-instance v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v1}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 281
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1600(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1700(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    .line 285
    new-instance v2, Lcom/alipay/mobile/verifyidentity/module/sms/model/VerifyRequestData;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$400(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/ui/VISmsCheckCodeInputBox;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/verifyidentity/module/sms/model/VerifyRequestData;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    move-result-object v2

    if-nez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    new-instance v3, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v3}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1802(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->dismissProgressDialog()V

    .line 296
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    new-instance v3, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable$1;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 312
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 293
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v2

    .line 279
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 306
    :try_start_7
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->dismissProgressDialog()V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 310
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_8
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 312
    monitor-exit v1

    :goto_0
    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catch_1
    move-exception v1

    .line 302
    :try_start_9
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->dismissProgressDialog()V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 310
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v2

    monitor-enter v2

    .line 311
    :try_start_a
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$VerifyRunnable;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v3}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$1000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 312
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method
