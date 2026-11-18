.class public Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;
.super Ljava/lang/Object;
.source "AndroidInstantRuntime.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 106
    invoke-static {p0, p1}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getFieldByName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0

    .line 110
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static getFieldByName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0, v1}, Lcom/android/alibaba/ip/common/Log$Logging;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getFieldByName:%s in %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 261
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMethodByName(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 280
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 282
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    sget-object v1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v1, v2}, Lcom/android/alibaba/ip/common/Log$Logging;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "getMethodByName:Looking in %s now"

    .line 286
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 86
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 89
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string p0, " static"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p2, v2, p0

    const-string p0, "Exception during%1$s getField %2$s"

    .line 91
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-interface {v0, v1, p0, p1}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static getStaticPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {v0, p0, p1}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeProtectedMethod(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0, v3}, Lcom/android/alibaba/ip/common/Log$Logging;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v1

    aput-object p0, v4, v2

    const-string v5, "protectedMethod:%s on %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getMethodByName(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 140
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1, p3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 148
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_2

    .line 150
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const-string p3, "Exception while invoking %s"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static invokeProtectedStaticMethod([Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0, v3}, Lcom/android/alibaba/ip/common/Log$Logging;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    .line 166
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "protectedStaticMethod:%s on %s"

    .line 165
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-interface {v0, v3, v4}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 169
    :cond_0
    :try_start_0
    invoke-static {p3, p2, p1}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getMethodByName(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p3, 0x0

    .line 180
    invoke-virtual {p1, p3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 173
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 187
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_2

    .line 188
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Exception while invoking %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static newForClass([Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Exception while instantiating %s"

    .line 202
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x1

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 217
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 232
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_0

    .line 233
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 224
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_1

    .line 225
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_2

    .line 207
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "Exception while resolving constructor"

    invoke-interface {p1, p2, v0, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setLogger(Ljava/util/logging/Logger;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime$1;

    invoke-direct {v0, p0}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime$1;-><init>(Ljava/util/logging/Logger;)V

    sput-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setPrivateField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 62
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 64
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz p1, :cond_0

    .line 70
    sget-object p1, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "Exception during setPrivateField %s"

    .line 71
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-interface {p1, p2, p3, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setStaticPrivateField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {v0, p0, p1, p2}, Lcom/android/alibaba/ip/runtime/AndroidInstantRuntime;->setPrivateField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 2

    .line 295
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {v0, v1, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 303
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const-string p0, "%s %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 310
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const-string p0, "%s %s %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 316
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/alibaba/ip/common/Log;->logging:Lcom/android/alibaba/ip/common/Log$Logging;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const-string p0, "%s %s %s %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/alibaba/ip/common/Log$Logging;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
