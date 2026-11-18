.class public Lcom/alibaba/ailabs/systemui/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static DEBUG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/alibaba/ailabs/systemui/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
