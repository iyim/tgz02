.class Lcom/taobao/android/ultron/expr/ValueResolverFactory;
.super Ljava/lang/Object;
.source "ValueResolverFactory.java"


# static fields
.field private static valueResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/expr/ValueResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/ultron/expr/MapValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/ultron/expr/MapValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/ultron/expr/ListValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/ultron/expr/ListValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/ultron/expr/ArrayValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/ultron/expr/ArrayValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/ultron/expr/DefaultValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/ultron/expr/DefaultValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/taobao/android/ultron/expr/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/ultron/expr/ValueResolver;

    .line 31
    invoke-interface {v3, p0, v1, p1}, Lcom/taobao/android/ultron/expr/ValueResolver;->canResolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-interface {v3, p0, v1, p1}, Lcom/taobao/android/ultron/expr/ValueResolver;->resolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
