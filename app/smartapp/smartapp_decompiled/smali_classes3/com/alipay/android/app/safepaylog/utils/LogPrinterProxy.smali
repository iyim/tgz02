.class public Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;
.super Ljava/lang/Object;
.source "LogPrinterProxy.java"

# interfaces
.implements Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;


# instance fields
.field private mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;->print(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public print(Ljava/lang/Throwable;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->mPrinter:Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;->print(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
