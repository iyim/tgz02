.class public Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;
.super Ljava/lang/Object;
.source "PerfOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final pDwnldTp:Z

.field private final pPreCreat:Z

.field private final pPreLoad:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pPreLoad:Z

    .line 72
    iput-boolean p2, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pPreCreat:Z

    .line 73
    iput-boolean p3, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pDwnldTp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pPreLoad:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pPreCreat:Z

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$Config;->pDwnldTp:Z

    return p0
.end method
