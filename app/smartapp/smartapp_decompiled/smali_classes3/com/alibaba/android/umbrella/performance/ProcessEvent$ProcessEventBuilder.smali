.class public Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
.super Ljava/lang/Object;
.source "ProcessEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/umbrella/performance/ProcessEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessEventBuilder"
.end annotation


# instance fields
.field public ab:Ljava/lang/String;

.field public abBucket:Ljava/lang/String;

.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bizName:Ljava/lang/String;

.field public childBizName:Ljava/lang/String;

.field private costTime:J

.field private eventType:I

.field private point:Ljava/lang/String;

.field public process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field private uptimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->bizName:Ljava/lang/String;

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->uptimeMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->bizName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 54
    iput-wide p2, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->uptimeMillis:J

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->uptimeMillis:J

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->bizName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->uptimeMillis:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->point:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/util/Map;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->args:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime:J

    return-wide v0
.end method


# virtual methods
.method public abBucket(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->abBucket:Ljava/lang/String;

    return-object p0
.end method

.method public abId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->ab:Ljava/lang/String;

    return-object p0
.end method

.method public args(Ljava/util/Map;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->args:Ljava/util/Map;

    return-object p0
.end method

.method public build()Lcom/alibaba/android/umbrella/performance/ProcessEvent;
    .locals 2

    .line 110
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent;-><init>(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;Lcom/alibaba/android/umbrella/performance/ProcessEvent$1;)V

    return-object v0
.end method

.method public childBizName(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->childBizName:Ljava/lang/String;

    return-object p0
.end method

.method public costTime(J)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->costTime:J

    return-object p0
.end method

.method public eventPoint(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->point:Ljava/lang/String;

    return-object p0
.end method

.method public eventType(I)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 71
    iput p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->eventType:I

    return-object p0
.end method

.method public umbrellaProcess(Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;)Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    return-object p0
.end method
