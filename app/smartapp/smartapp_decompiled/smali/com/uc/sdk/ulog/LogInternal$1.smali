.class final Lcom/uc/sdk/ulog/LogInternal$1;
.super Ljava/lang/Object;
.source "LogInternal.java"

# interfaces
.implements Lcom/uc/sdk/ulog/LogImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/sdk/ulog/LogInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public addExtraInfo2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public appenderClose()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public appenderFlush(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getLogLevel()I
    .locals 1

    .line 62
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result v0

    return v0
.end method

.method public getPeriodLogs(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_0

    .line 32
    invoke-static {p1, p10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    const/4 p3, 0x4

    if-gt p2, p3, :cond_0

    .line 48
    invoke-static {p1, p10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    const/4 p3, 0x5

    if-le p2, p3, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 57
    :cond_0
    invoke-static {p1, p10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    const/4 p3, 0x2

    if-gt p2, p3, :cond_0

    .line 25
    invoke-static {p1, p10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    if-gtz p2, :cond_0

    .line 18
    invoke-static {p1, p10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {}, Lcom/uc/sdk/ulog/LogInternal;->access$000()I

    move-result p2

    const/4 p3, 0x3

    if-gt p2, p3, :cond_0

    .line 40
    invoke-static {p1, p10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setConsoleLogOpen(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/uc/sdk/ulog/LogInternal;->access$002(I)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
