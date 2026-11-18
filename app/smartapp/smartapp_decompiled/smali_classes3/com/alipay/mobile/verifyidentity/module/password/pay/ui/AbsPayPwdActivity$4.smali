.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;
.super Ljava/lang/Object;
.source "AbsPayPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

.field final synthetic val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$pwd:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public run()V
    .locals 7

    const-string v0, "PAYMENT_PASSWORD_PLUS"

    const-string v1, "finally set mIsVerifying false"

    const/4 v2, 0x0

    .line 157
    :try_start_0
    new-instance v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v3}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 158
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$100(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 159
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 160
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$300(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    const-string v4, "VERIFY_PPW"

    .line 161
    iput-object v4, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    .line 162
    new-instance v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;

    invoke-direct {v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;-><init>()V

    .line 163
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v5}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$400(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-boolean v6, v6, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->isSimplePwd:Z

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->setIsSimplePPW(Ljava/lang/String;Z)V

    .line 164
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$pwd:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->encryptPwd:Ljava/lang/String;

    .line 165
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-object v5, v5, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->sourceToPwd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "This pwd check request is from fingerprint module."

    invoke-static {v5, v6}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-object v5, v5, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->predata:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyRequestModel;->predata:Ljava/util/Map;

    .line 168
    iput-object v0, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 173
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$602(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 174
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$602(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$600(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iput-object v5, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->predata:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$600(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$700(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$800(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/Exception;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyError()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 181
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$800(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/Exception;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$900(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 187
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$900(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
