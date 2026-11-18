.class public final Lcom/alibaba/ailabs/genie/second/mock/MockManager;
.super Ljava/lang/Object;
.source "MockManager.java"

# interfaces
.implements Lanetwork/channel/interceptor/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/mock/MockManager$Holder;
    }
.end annotation


# static fields
.field private static final MOCK_REQUEST_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/mock/MockManager;->MOCK_REQUEST_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lanetwork/channel/interceptor/InterceptorManager;->addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/second/mock/MockManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mock/MockManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/second/mock/MockManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/mock/MockManager$Holder;->access$100()Lcom/alibaba/ailabs/genie/second/mock/MockManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;)V
    .locals 1

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/second/mock/MockManager;->MOCK_REQUEST_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public intercept(Lanetwork/channel/interceptor/Interceptor$Chain;)Ljava/util/concurrent/Future;
    .locals 5

    .line 47
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->request()Lanet/channel/request/Request;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lanetwork/channel/interceptor/Interceptor$Chain;->callback()Lanetwork/channel/interceptor/Callback;

    move-result-object p1

    .line 50
    sget-object v1, Lcom/alibaba/ailabs/genie/second/mock/MockManager;->MOCK_REQUEST_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    .line 51
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "200 OK"

    .line 54
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc8

    .line 56
    invoke-interface {p1, v2, v1}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 57
    array-length v1, v0

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1, v0}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 58
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v0, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    return-object v3
.end method

.method public open()V
    .locals 0

    .line 42
    invoke-static {p0}, Lanetwork/channel/interceptor/InterceptorManager;->addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
