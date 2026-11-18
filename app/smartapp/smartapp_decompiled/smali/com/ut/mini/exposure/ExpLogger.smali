.class Lcom/ut/mini/exposure/ExpLogger;
.super Ljava/lang/Object;
.source "ExpLogger.java"


# static fields
.field static enableLog:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d()V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/ut/mini/exposure/ExpLogger;->enableLog:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/ut/mini/exposure/ExpLogger;->enableLog:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/ut/mini/exposure/ExpLogger;->enableLog:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/ut/mini/exposure/ExpLogger;->enableLog:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 26
    sget-boolean v0, Lcom/ut/mini/exposure/ExpLogger;->enableLog:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
