.class public Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;
.super Ljava/lang/Object;
.source "DXExceptionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-object v1, v0

    :catch_3
    :goto_1
    :try_start_4
    const-string p0, "DXExceptionUtil getStackTrace Exception"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    .line 36
    :try_start_5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 42
    :goto_3
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-object p0

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v0, :cond_3

    .line 36
    :try_start_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 42
    :goto_7
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 43
    :cond_4
    :goto_8
    throw p0
.end method

.method public static printStack(Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
