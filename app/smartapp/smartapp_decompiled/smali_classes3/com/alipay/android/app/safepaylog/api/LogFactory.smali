.class public Lcom/alipay/android/app/safepaylog/api/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;,
        Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;
    }
.end annotation


# static fields
.field private static final mLogItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;",
            "Lcom/alipay/android/app/safepaylog/api/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->QUICKPAY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->VERTIFY:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;->DEFAULT:Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;

    new-instance v2, Lcom/alipay/android/app/safepaylog/api/LogItem;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaylog/api/LogItem;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V
    .locals 2

    .line 107
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 108
    iget-object v1, v1, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static clearLogs(Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    if-eqz p0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 55
    iget-object p0, p0, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTraceInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public static getLogs(Lcom/alipay/android/app/safepaylog/api/LogFactory$LogType;)Lcom/alipay/android/app/safepaylog/api/LogItem;
    .locals 1

    .line 48
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/android/app/safepaylog/api/LogItem;

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->initialize(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static printException(Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 101
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->print(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setPrinter(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;-><init>(Lcom/alipay/android/app/safepaylog/api/LogFactory$ILogPrinter;)V

    sput-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->COUNT:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->EX:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 72
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogMessage;->getStackTraceMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-static {p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static traceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 93
    invoke-static {v0, p0, p1}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mPrinter:Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/app/safepaylog/utils/LogPrinterProxy;->print(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timespan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogFactory::tracePerf"

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;

    sget-object v1, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;->PERF:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;-><init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v0}, Lcom/alipay/android/app/safepaylog/api/LogFactory;->addTraceInfo(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;)V

    return-void
.end method

.method public static traceTemplate(Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 61
    iget-object v1, v1, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static traceTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 66
    sget-object v0, Lcom/alipay/android/app/safepaylog/api/LogFactory;->mLogItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaylog/api/LogItem;

    .line 67
    iget-object v1, v1, Lcom/alipay/android/app/safepaylog/api/LogItem;->mTemplateInfos:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v8, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
