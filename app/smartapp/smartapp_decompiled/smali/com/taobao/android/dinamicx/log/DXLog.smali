.class public Lcom/taobao/android/dinamicx/log/DXLog;
.super Ljava/lang/Object;
.source "DXLog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DinamicX"

.field public static isOpen:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-static {p2}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs joinString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 70
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 75
    aget-object p0, p0, v1

    return-object p0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static performLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-eqz v0, :cond_2

    .line 100
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DinamicX_perform_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "DinamicX_perform"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "DinamicX"

    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/log/DXLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 17
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    invoke-static {p2}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/taobao/android/dinamicx/log/DXLog;->isOpen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->joinString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
