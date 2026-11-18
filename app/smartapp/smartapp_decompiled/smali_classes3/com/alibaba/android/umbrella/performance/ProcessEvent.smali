.class public Lcom/alibaba/android/umbrella/performance/ProcessEvent;
.super Ljava/lang/Object;
.source "ProcessEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;
    }
.end annotation


# static fields
.field public static final ADD_ABTEST:I = 0x6

.field public static final ADD_ARGS:I = 0x2

.field public static final ADD_OTHER_PROCESS:I = 0x8

.field public static final ADD_PROCESS_POINT:I = 0x3

.field public static final ADD_SUB_PROCESS_POINT:I = 0x4

.field public static final COMMIT:I = 0x5

.field public static final REGISTER_PAGE_POINT:I = 0x1

.field public static final SET_CHILD_BIZ:I = 0x7


# instance fields
.field public ab:Ljava/lang/String;

.field public abBucket:Ljava/lang/String;

.field public args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizName:Ljava/lang/String;

.field public childBizName:Ljava/lang/String;

.field public costTime:J

.field public eventPoint:Ljava/lang/String;

.field public eventType:I

.field public process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

.field public uptimeMillis:J


# direct methods
.method private constructor <init>(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$000(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventType:I

    .line 35
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$100(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->bizName:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->childBizName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->childBizName:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->ab:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->ab:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->abBucket:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->abBucket:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$200(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->uptimeMillis:J

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->process:Lcom/alibaba/android/umbrella/performance/UmbrellaProcess;

    .line 41
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$300(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->eventPoint:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$400(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->args:Ljava/util/Map;

    .line 43
    invoke-static {p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;->access$500(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEvent;->costTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;Lcom/alibaba/android/umbrella/performance/ProcessEvent$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/android/umbrella/performance/ProcessEvent;-><init>(Lcom/alibaba/android/umbrella/performance/ProcessEvent$ProcessEventBuilder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
