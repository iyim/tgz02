.class public Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;
.super Ljava/lang/Object;
.source "MtopServiceImplV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$Builder;
    }
.end annotation


# instance fields
.field private mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

.field private final mGenieMtopMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final mServiceMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mServiceMethodCache:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mGenieMtopMethodCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Ljava/lang/reflect/Method;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->loadGenieMtopApiMethod(Ljava/lang/reflect/Method;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p1
.end method

.method private loadGenieMtopApiMethod(Ljava/lang/reflect/Method;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod<",
            "**>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mGenieMtopMethodCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->build()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;->mGenieMtopMethodCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public createGenieMtop(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2$1;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;)V

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
