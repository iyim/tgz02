.class public Lcom/alipay/android/app/safepaybase/log/LogTracer;
.super Ljava/lang/Object;
.source "LogTracer.java"


# static fields
.field private static mInstance:Lcom/alipay/android/app/safepaybase/log/LogTracer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;
    .locals 1

    .line 18
    sget-object v0, Lcom/alipay/android/app/safepaybase/log/LogTracer;->mInstance:Lcom/alipay/android/app/safepaybase/log/LogTracer;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alipay/android/app/safepaybase/log/LogTracer;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/log/LogTracer;->mInstance:Lcom/alipay/android/app/safepaybase/log/LogTracer;

    .line 21
    :cond_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/log/LogTracer;->mInstance:Lcom/alipay/android/app/safepaybase/log/LogTracer;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->initialize(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public printExceptionStackTrace(Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->printException(Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
