.class public Lcom/taobao/android/AliNavServiceFetcher;
.super Ljava/lang/Object;
.source "AliNavServiceFetcher.java"


# static fields
.field private static _serviceIMP:Lcom/taobao/android/AliNavServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAliInfrastructureService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/taobao/android/AliNavServiceFetcher;->_serviceIMP:Lcom/taobao/android/AliNavServiceInterface;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/taobao/android/AliNavServiceFetcher;->getDefaultServiceIMP(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/taobao/android/AliNavServiceInterface;

    sput-object v0, Lcom/taobao/android/AliNavServiceFetcher;->_serviceIMP:Lcom/taobao/android/AliNavServiceInterface;

    :cond_1
    return-object p0
.end method

.method private static getDefaultServiceIMP(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interface"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Imp"

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 34
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 44
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0

    :catch_2
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getNavService()Lcom/taobao/android/AliNavServiceInterface;
    .locals 2

    .line 66
    const-class v0, Lcom/taobao/android/AliNavServiceInterface;

    invoke-static {v0}, Lcom/taobao/android/AliNavServiceFetcher;->getAliInfrastructureService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/taobao/android/AliNavServiceInterface;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/taobao/android/AliNavServiceInterface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setNavService(Lcom/taobao/android/AliNavServiceInterface;)V
    .locals 0

    .line 76
    sput-object p0, Lcom/taobao/android/AliNavServiceFetcher;->_serviceIMP:Lcom/taobao/android/AliNavServiceInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
