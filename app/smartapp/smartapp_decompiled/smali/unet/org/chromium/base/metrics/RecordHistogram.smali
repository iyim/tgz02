.class public Lunet/org/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static a(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .line 41
    sget-object v0, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()V
    .locals 1

    .line 269
    sget-boolean v0, Lunet/org/chromium/base/metrics/RecordHistogram;->a:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 270
    :cond_0
    invoke-static {}, Lunet/org/chromium/base/metrics/RecordHistogram;->nativeInitialize()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 4

    .line 73
    sget-boolean v0, Lunet/org/chromium/base/metrics/RecordHistogram;->a:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 74
    :cond_0
    invoke-static {p0}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 75
    invoke-static {p0, v0, v1, p1, v2}, Lunet/org/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 76
    sget-object p1, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .line 178
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 1244
    sget-boolean p3, Lunet/org/chromium/base/metrics/RecordHistogram;->a:Z

    if-nez p3, :cond_0

    .line 1245
    invoke-static {p0}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;)J

    move-result-wide v9

    .line 1251
    invoke-static {p1, p2}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(J)I

    move-result v5

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(J)I

    move-result v6

    invoke-static {v0, v1}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(J)I

    move-result v7

    const/16 v8, 0x32

    move-object v2, p0

    move-wide v3, v9

    .line 1250
    invoke-static/range {v2 .. v8}, Lunet/org/chromium/base/metrics/RecordHistogram;->nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J

    move-result-wide p1

    cmp-long p3, p1, v9

    if-eqz p3, :cond_0

    .line 1252
    sget-object p3, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 4

    .line 57
    sget-boolean v0, Lunet/org/chromium/base/metrics/RecordHistogram;->a:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 58
    :cond_0
    invoke-static {p0}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    invoke-static {p0, v0, v1, p1}, Lunet/org/chromium/base/metrics/RecordHistogram;->nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 60
    sget-object p1, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 4

    .line 150
    sget-boolean v0, Lunet/org/chromium/base/metrics/RecordHistogram;->a:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 151
    :cond_0
    invoke-static {p0}, Lunet/org/chromium/base/metrics/RecordHistogram;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x65

    .line 152
    invoke-static {p0, v0, v1, p1, v2}, Lunet/org/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 153
    sget-object p1, Lunet/org/chromium/base/metrics/RecordHistogram;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static native nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J
.end method

.method private static native nativeRecordCustomCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J
.end method

.method private static native nativeRecordLinearCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordSparseHistogram(Ljava/lang/String;JI)J
.end method
