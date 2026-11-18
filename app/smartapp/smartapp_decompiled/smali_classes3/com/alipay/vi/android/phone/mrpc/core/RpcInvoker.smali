.class public Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;
.super Ljava/lang/Object;
.source "RpcInvoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:B

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-byte v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->c:B

    .line 70
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
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

.method private a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 200
    new-instance v6, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$3;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p5, v6}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 139
    new-instance v7, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$1;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, p6, v7}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/vi/mobile/common/rpc/RpcException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/vi/mobile/common/rpc/RpcException;",
            ")V"
        }
    .end annotation

    .line 167
    new-instance v8, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$2;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/vi/mobile/common/rpc/RpcException;)V

    move-object v0, p0

    move-object v1, p6

    invoke-direct {p0, p6, v8}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 183
    :cond_0
    throw p7
.end method

.method private a([Ljava/lang/annotation/Annotation;Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;)Z
    .locals 6

    .line 318
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 319
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 320
    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v5, v4}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    invoke-interface {p2, v4, v3}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker$Handle;->handle(Lcom/alipay/vi/android/phone/mrpc/core/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZLjava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p4, p3, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Serializer;

    move-result-object p2

    .line 230
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    .line 234
    :cond_0
    invoke-interface {p2}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Serializer;->packet()[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZLjava/util/Map;)Lcom/alipay/vi/android/phone/mrpc/core/RpcCaller;

    move-result-object p1

    .line 235
    invoke-interface {p1}, Lcom/alipay/vi/android/phone/mrpc/core/RpcCaller;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    nop

    nop

    .line 237
    sget-object p2, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 263
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 266
    :cond_0
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public batchBegin()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    iput-byte v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->c:B

    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    iput-byte v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->c:B

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;
    .locals 1

    .line 313
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Serializer;
    .locals 1

    .line 293
    const-class v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-interface {v0}, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance p3, Lcom/alipay/vi/android/phone/mrpc/core/SimpleRpcJsonSerializer;

    invoke-direct {p3, p1, p2, p4}, Lcom/alipay/vi/android/phone/mrpc/core/SimpleRpcJsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_0
    const-class v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-interface {p3}, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 298
    new-instance p3, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;

    invoke-direct {p3, p1, p2, p4}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 301
    :goto_0
    new-instance p1, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;

    nop

    nop

    iget-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {p2}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {p4}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/vi/android/phone/mrpc/core/Config;

    move-result-object p4

    invoke-direct {p1, p3, p2, p4}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/JsonSerializer;Landroid/content/Context;Lcom/alipay/vi/android/phone/mrpc/core/Config;)V

    return-object p1

    .line 296
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "alipay.client.executerpc.bytes can\'t use in RpcV1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTransport(Ljava/lang/reflect/Method;ILjava/lang/String;[BZLjava/util/Map;)Lcom/alipay/vi/android/phone/mrpc/core/RpcCaller;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/vi/android/phone/mrpc/core/RpcCaller;"
        }
    .end annotation

    .line 279
    new-instance v8, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;

    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->e:Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/vi/android/phone/mrpc/core/Config;

    move-result-object v1

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/HttpCaller;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BZLjava/util/Map;)V

    return-object v8
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p3

    .line 84
    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/RpcThreadParamsHelper;->clearThreadLocalValues()V

    .line 86
    invoke-static {}, Lcom/alipay/vi/android/phone/mrpc/core/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    const-class v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;

    .line 89
    const-class v1, Lcom/alipay/vi/mobile/framework/service/annotation/ResetCookie;

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 90
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 91
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    .line 92
    sget-object v1, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    sget-object v1, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Lcom/alipay/vi/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v13

    .line 100
    iget-object v0, v9, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 107
    :try_start_0
    iget-byte v1, v9, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->c:B

    if-nez v1, :cond_1

    .line 108
    invoke-static/range {p3 .. p4}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static/range {p3 .. p4}, Lcom/alipay/vi/android/phone/mrpc/core/util/RpcInvokerUtil;->getHeadersValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v5, v0

    move v6, v7

    move-object v7, v14

    .line 108
    invoke-direct/range {v1 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;IZLjava/util/Map;)[B

    move-result-object v12

    .line 110
    invoke-virtual {p0, v8, v12}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->getDeserializer(Ljava/lang/reflect/Type;[B)Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/alipay/vi/android/phone/mrpc/core/gwprotocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v0

    .line 112
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v8, v1, :cond_1

    .line 113
    sget-object v1, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/vi/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v3, v12

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 117
    invoke-virtual {v8, v13}, Lcom/alipay/vi/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v11

    .line 118
    invoke-direct/range {v1 .. v8}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/vi/mobile/common/rpc/RpcException;)V

    :goto_1
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v11

    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 123
    sget-object v0, Lcom/alipay/vi/android/phone/mrpc/core/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OperationType must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "can\'t in main thread call rpc ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
