.class public Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;
.super Ljava/lang/Object;
.source "UltronDebugFetcher.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static sDebugManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/inter/UltronDebugInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->sDebugManagerMap:Ljava/util/Map;

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

.method private static createDebugInstance(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;
    .locals 7

    const-string v0, "com.alibaba.android.ultron.impl.UltronDebugImpl"

    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    :catch_1
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;
    .locals 2

    .line 45
    sget-object v0, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->sDebugManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->sDebugManagerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    return-object p0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->createDebugInstance(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/alibaba/android/ultron/inter/UltronDebugDefault;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugDefault;-><init>()V

    .line 52
    :cond_1
    sget-object v1, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->sDebugManagerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
