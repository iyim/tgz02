.class public Lcom/alibaba/ailabs/geniesdk/protocol/ReturnCode;
.super Ljava/lang/Object;
.source "ReturnCode.java"


# static fields
.field public static final APP_JUMP:I = 0x4

.field public static final CONTINUE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final STOP:I = 0x1

.field public static final STOP_NO_HIDE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static description(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "APP_JUMP"

    return-object p0

    :cond_1
    const-string p0, "PAUSE"

    return-object p0

    :cond_2
    const-string p0, "STOP_NO_HIDE"

    return-object p0

    :cond_3
    const-string p0, "STOP"

    return-object p0

    :cond_4
    const-string p0, "CONTINUE"

    return-object p0
.end method
