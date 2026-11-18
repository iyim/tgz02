.class Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;
.super Ljava/lang/Object;
.source "IRpcServiceImpl.java"

# interfaces
.implements Lcom/alipay/vi/android/phone/mrpc/core/Config;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

.field final synthetic val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

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
.method public getAppKey()Ljava/lang/String;
    .locals 1

    const-string v0, "23699722"

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRpcParams()Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    return-object v0
.end method

.method public getTransport()Lcom/alipay/vi/android/phone/mrpc/core/Transport;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->val$rpcParams:Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcParams;->isGzip()Z

    move-result v0

    return v0
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "INPUT"

    const-string v1, ""

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->access$100(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sgMng==null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->access$100(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ssComp==null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 167
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 170
    iput-object p2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 171
    iput-object v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v2, 0x4

    .line 172
    iput v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 173
    invoke-interface {p1, v3, v1}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->access$100(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET Params: appKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "content:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SecureSignatureDefine.OPEN_KEY_SIGN_INPUT:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "SecureSignatureDefine.OPEN_ENUM_SIGN_COMMON_MD5:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object p2

    iget-object p3, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;

    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;->access$100(Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceImpl;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
