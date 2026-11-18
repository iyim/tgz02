.class public Lcom/uc/crashsdk/JNIBridge;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCachedInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static addDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lc/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    move-result p0

    return p0
.end method

.method public static addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cmd(I)J
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static cmd(ILjava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createCachedInfo(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lc/e/a/b;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static generateCustomLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4}, Lc/e/a/b;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p5}, Lc/e/a/b;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p6}, Lc/e/a/b;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lc/e/a/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatasForClientJavaLog(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$all$"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lc/e/a/b;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lc/e/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    if-eqz v0, :cond_2

    invoke-static {}, Lc/e/a/b;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1, v1}, Lc/e/a/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    if-eqz v0, :cond_4

    invoke-static {}, Lc/e/a/b;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p1}, Lc/e/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    invoke-static {p1}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "1"

    return-object p0

    :cond_6
    const-string p0, "0"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getJavaStackTrace(Ljava/lang/Thread;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const-string p1, "getJavaStackTrace"

    invoke-static {p0, p1}, Lc/e/a/f;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static native nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeAddCallbackInfo(Ljava/lang/String;IJI)I
.end method

.method public static native nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
.end method

.method public static native nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static native nativeClientCloseConnection(J)V
.end method

.method public static native nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public static native nativeClientWriteData(JLjava/lang/String;)I
.end method

.method public static native nativeCloseFile(I)V
.end method

.method public static native nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J
.end method

.method public static native nativeCrash(II)V
.end method

.method public static native nativeCreateCachedInfo(Ljava/lang/String;II)I
.end method

.method public static native nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public static native nativeGenerateUnexpLog(JI)I
.end method

.method public static native nativeGet(IJLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;
.end method

.method public static native nativeIsCrashing()Z
.end method

.method public static native nativeLockFile(IZ)Z
.end method

.method public static native nativeLog(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeOpenFile(Ljava/lang/String;)I
.end method

.method public static native nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J
.end method

.method public static native nativeSetForeground(Z)V
.end method

.method public static onCrashLogGenerated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "jni"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1
    sget-boolean v2, Lc/e/a/f;->Y:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-static {v2}, Lc/e/a/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 3
    invoke-static {v2, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, p1, p2}, Lc/e/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-boolean p0, Lc/e/a/f;->Y:Z

    if-eqz p0, :cond_2

    return-void

    :cond_2
    if-nez p3, :cond_5

    if-nez v0, :cond_3

    .line 6
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p0, p0, Lc/e/a/g/b;->r:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-static {v1}, Lc/e/a/f;->b(Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-static {v3, v3}, Lc/e/a/f;->a(ZZ)Z

    return-void
.end method

.method public static onCrashRestarting()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc/e/a/e;->a(Z)V

    invoke-static {}, Lc/e/a/c;->g()Z

    return-void
.end method

.method public static onKillProcess(Ljava/lang/String;II)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKillProcess. SIG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/e/a/f;->m()Z

    move-result v1

    const-string v2, "crashsdk"

    if-eqz v1, :cond_0

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "onKillProcess"

    invoke-static {v0, v1}, Lc/e/a/f;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lc/e/a/c;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "State in disk: \'%s\'\n"

    .line 4
    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v7

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v3

    .line 5
    sget-boolean p2, Lc/e/a/c;->w:Z

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v8, 0x3

    aput-object p2, v5, v8

    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x4

    aput-object p2, v5, v9

    const-string p2, "SIG: %d, fg: %s, exiting: %s, main process: %s, time: %s\n"

    invoke-static {v1, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v7, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v7

    invoke-static {p1}, Lc/e/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lc/e/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Kill PID: %d (%s) by pid: %d (%s) tid: %d (%s)\n"

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lc/e/a/f;->m()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p2, p0}, Lc/e/a/a/f;->a(Ljava/io/File;[B)Z

    :cond_2
    return-void
.end method

.method public static onNativeEvent(IJ[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance p0, Lc/e/a/a/d;

    const/16 p3, 0x66

    invoke-direct {p0, p3}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v2, 0x1f40

    invoke-static {v1, p0, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    .line 1
    sput-boolean p2, Lc/e/a/f;->M:Z

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result p0

    const/4 p3, 0x3

    if-nez p0, :cond_0

    new-instance p0, Lc/e/a/a/d;

    const/16 v1, 0x1a0

    invoke-direct {p0, v1}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v1, 0x2af8

    invoke-static {p3, p0, v1, v2}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    .line 2
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    sput p2, Lc/e/a/f;->L:I

    .line 4
    new-instance p0, Lc/e/a/a/d;

    const/16 p1, 0x19e

    invoke-direct {p0, p1}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 p1, 0x3e8

    invoke-static {p3, p0, p1, p2}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    goto :goto_3

    .line 5
    :pswitch_1
    sget-object p0, Lc/e/a/a/f;->d:Ljava/lang/String;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    return-object p0

    .line 6
    :pswitch_2
    invoke-static {p1}, Lc/e/a/b;->a(Z)Z

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lc/e/a/f;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    if-eqz p3, :cond_4

    array-length p0, p3

    if-ne p0, v1, :cond_4

    aget-object p0, p3, p2

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    aget-object p0, p3, p1

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    aget-object p0, p3, p2

    check-cast p0, Ljava/lang/String;

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lc/e/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    .line 7
    :pswitch_5
    sget-object p0, Lc/e/a/f;->h:Ljava/lang/String;

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lc/e/a/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/e/a/f;->h:Ljava/lang/String;

    :goto_2
    return-object p0

    .line 8
    :pswitch_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onPreClientCustomLog(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {}, Lc/e/a/i;->j()V

    const/4 v0, 0x0

    invoke-static {v0}, Lc/e/a/f;->a(Z)V

    invoke-static {p0, p1, p2}, Lc/e/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0, p1, v0, p2}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static registerCurrentThread(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p0}, Lc/e/a/b;->a(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static registerInfoCallback(Ljava/lang/String;IJI)I
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lc/e/a/b;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I

    move-result p0

    return p0
.end method

.method public static set(IJ)J
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static set(ILjava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static set(IZ)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-static {p0, v0, v1, p1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
