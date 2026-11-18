.class public abstract Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;
.super Ljava/lang/Object;
.source "AbstractPatchesLoaderImpl.java"

# interfaces
.implements Lcom/android/alibaba/ip/runtime/PatchesLoader;


# static fields
.field private static final IPCHANGE:Ljava/lang/String; = "$ipChange"

.field private static final IPREPLACE:Ljava/lang/String; = "$ipReplace"

.field private static volatile obsoletedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->obsoletedMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private obsoleted(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 82
    sget-object v0, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->obsoletedMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->obsoletedMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$ipObsolete"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->obsoletedMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private replaceField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->obsoleted(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract getPatchedClasses()[Ljava/lang/String;
.end method

.method public load()Z
    .locals 14

    const-string v0, "\\|"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->getPatchedClasses()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "|"

    .line 38
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 39
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v13, v8

    move-object v8, v6

    move-object v6, v13

    .line 44
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$ipReplace"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 46
    invoke-virtual {v7, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v8, :cond_2

    const/4 v10, 0x1

    .line 48
    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_3

    .line 49
    aget-object v11, v8, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$ipChange$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v8, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 53
    invoke-direct {p0, v7, v11, v9}, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->replaceField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "$ipChange"

    .line 59
    invoke-direct {p0, v7, v8, v9}, Lcom/android/alibaba/ip/runtime/AbstractPatchesLoaderImpl;->replaceField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_3
    sget-object v7, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v7, v8}, Lcom/android/alibaba/ip/common/Log$Logging;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    sget-object v7, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "patched %s"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v6, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return v2

    :catch_0
    move-exception v0

    .line 68
    sget-object v3, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v3, :cond_6

    .line 70
    sget-object v3, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "foo.bar"

    aput-object v5, v2, v1

    const-string v5, "Exception while patching %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2, v0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v1
.end method
