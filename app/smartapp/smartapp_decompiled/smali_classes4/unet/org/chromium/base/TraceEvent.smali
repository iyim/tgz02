.class public Lunet/org/chromium/base/TraceEvent;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lunet/org/chromium/base/TraceEvent$LooperMonitorHolder;,
        Lunet/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;,
        Lunet/org/chromium/base/TraceEvent$BasicLooperMonitor;
    }
.end annotation

.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation

.annotation build Lunet/org/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, v0}, Lunet/org/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 256
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lunet/org/chromium/base/TraceEvent;->nativeInstant(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Z
    .locals 1

    .line 29
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->a:Z

    return v0
.end method

.method static synthetic b()V
    .locals 0

    .line 29
    invoke-static {}, Lunet/org/chromium/base/TraceEvent;->nativeBeginToplevel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1309
    invoke-static {p0}, Lunet/org/chromium/base/EarlyTraceEvent;->b(Ljava/lang/String;)V

    .line 1310
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lunet/org/chromium/base/TraceEvent;->nativeEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 291
    invoke-static {p0}, Lunet/org/chromium/base/EarlyTraceEvent;->a(Ljava/lang/String;)V

    .line 292
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lunet/org/chromium/base/TraceEvent;->nativeBegin(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic c()V
    .locals 0

    .line 29
    invoke-static {}, Lunet/org/chromium/base/TraceEvent;->nativeEndToplevel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static native nativeBegin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeBeginToplevel()V
.end method

.method private static native nativeEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEndToplevel()V
.end method

.method private static native nativeFinishAsync(Ljava/lang/String;J)V
.end method

.method private static native nativeInstant(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRegisterEnabledObserver()V
.end method

.method private static native nativeStartATrace()V
.end method

.method private static native nativeStartAsync(Ljava/lang/String;J)V
.end method

.method private static native nativeStopATrace()V
.end method

.method public static setEnabled(Z)V
    .locals 1
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    if-eqz p0, :cond_0

    .line 187
    invoke-static {}, Lunet/org/chromium/base/EarlyTraceEvent;->a()V

    .line 190
    :cond_0
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->a:Z

    if-eq v0, p0, :cond_3

    .line 191
    sput-boolean p0, Lunet/org/chromium/base/TraceEvent;->a:Z

    .line 194
    sget-boolean v0, Lunet/org/chromium/base/TraceEvent;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 195
    :cond_1
    invoke-static {}, Lunet/org/chromium/base/ThreadUtils;->b()Landroid/os/Looper;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 196
    invoke-static {}, Lunet/org/chromium/base/TraceEvent$LooperMonitorHolder;->a()Lunet/org/chromium/base/TraceEvent$BasicLooperMonitor;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 195
    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :cond_3
    return-void
.end method
