.class public Lcom/alibaba/genie/tradepay/manager/NetRequest;
.super Ljava/lang/Object;
.source "NetRequest.java"


# static fields
.field public static volatile ourInstance:Lcom/alibaba/genie/tradepay/manager/NetRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/genie/tradepay/manager/NetRequest;
    .locals 2

    .line 18
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/NetRequest;->ourInstance:Lcom/alibaba/genie/tradepay/manager/NetRequest;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alibaba/genie/tradepay/manager/NetRequest;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/tradepay/manager/NetRequest;->ourInstance:Lcom/alibaba/genie/tradepay/manager/NetRequest;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/genie/tradepay/manager/NetRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/tradepay/manager/NetRequest;-><init>()V

    sput-object v1, Lcom/alibaba/genie/tradepay/manager/NetRequest;->ourInstance:Lcom/alibaba/genie/tradepay/manager/NetRequest;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/NetRequest;->ourInstance:Lcom/alibaba/genie/tradepay/manager/NetRequest;

    return-object v0
.end method


# virtual methods
.method public MtopCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authInfo"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    .line 39
    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setApiName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 41
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedEcode(Z)V

    .line 42
    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setNeedSession(Z)V

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->setData(Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "request = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;

    invoke-direct {p1, v0}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;-><init>(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;)V

    new-instance p3, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/genie/tradepay/manager/NetRequest$1;-><init>(Lcom/alibaba/genie/tradepay/manager/NetRequest;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->callback(Lcom/alibaba/genie/tradepay/mtop/MtopClient$Callback;)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->pickTraceId(Z)Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/mtop/MtopClient$Builder;->build()Lcom/alibaba/genie/tradepay/mtop/MtopClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/mtop/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/genie/tradepay/manager/NetRequest;->MtopCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
