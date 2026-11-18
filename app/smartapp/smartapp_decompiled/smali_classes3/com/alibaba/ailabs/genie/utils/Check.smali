.class public Lcom/alibaba/ailabs/genie/utils/Check;
.super Ljava/lang/Object;
.source "Check.java"


# static fields
.field private static sEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/Check;->sEnable:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/Check;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/Check;->sEnable:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/Check;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Z)V
    .locals 1

    const-string v0, ""

    .line 21
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/Check;->d(ZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(ZLjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_1

    .line 40
    sget-boolean p0, Lcom/alibaba/ailabs/genie/utils/Check;->sEnable:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_1

    .line 29
    sget-boolean p0, Lcom/alibaba/ailabs/genie/utils/Check;->sEnable:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 97
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static r(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/Check;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static r(Z)V
    .locals 1

    const-string v0, ""

    .line 68
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/Check;->r(ZLjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static r(ZLjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_1

    .line 84
    sget-boolean p0, Lcom/alibaba/ailabs/genie/utils/Check;->sEnable:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static r(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
