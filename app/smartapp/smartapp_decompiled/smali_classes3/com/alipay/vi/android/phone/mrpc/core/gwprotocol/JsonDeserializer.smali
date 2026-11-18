.class public Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;
.super Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;
.source "JsonDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 23
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

.method private a(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 6

    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 30
    invoke-direct {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "resultStatus"

    .line 33
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v2, "tips"

    .line 34
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1

    .line 37
    new-instance v3, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    const-string v1, "control"

    .line 39
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/vi/mobile/common/rpc/RpcException;->setControl(Ljava/lang/String;)V

    .line 44
    :cond_0
    throw v3

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "result"

    if-ne v1, v2, :cond_2

    .line 51
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lcom/alipay/vi/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;->mData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, ""

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v2, v0}, Lcom/alipay/vi/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
.end method
