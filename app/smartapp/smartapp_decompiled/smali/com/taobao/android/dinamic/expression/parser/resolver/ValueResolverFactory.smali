.class public Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;
.super Ljava/lang/Object;
.source "ValueResolverFactory.java"


# static fields
.field private static valueResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolver;",
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

    sput-object v0, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamic/expression/parser/resolver/MapValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expression/parser/resolver/MapValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamic/expression/parser/resolver/ListValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expression/parser/resolver/ListValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamic/expression/parser/resolver/ArrayValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expression/parser/resolver/ArrayValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamic/expression/parser/resolver/DefaultValueResolver;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expression/parser/resolver/DefaultValueResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
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

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "this"

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 35
    sget-object v2, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolverFactory;->valueResolvers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolver;

    .line 36
    invoke-interface {v3, p0, v1, p1}, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolver;->canResolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-interface {v3, p0, v1, p1}, Lcom/taobao/android/dinamic/expression/parser/resolver/ValueResolver;->resolve(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method
