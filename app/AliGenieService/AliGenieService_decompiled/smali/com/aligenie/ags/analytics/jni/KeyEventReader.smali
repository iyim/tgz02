.class public Lcom/aligenie/ags/analytics/jni/KeyEventReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/jni/KeyEventReader$KeyEventListener;
    }
.end annotation


# instance fields
.field public mKeyEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aligenie/ags/analytics/jni/KeyEventReader$KeyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyEventReaderThread:Ljava/lang/Thread;

.field public mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)J
    .locals 2

    iget-wide v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mNativeContext:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)V
    .locals 0

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->native_setup()V

    return-void
.end method

.method public static synthetic access$200(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)I
    .locals 0

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->native_getKeyEventCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventListeners:Ljava/util/List;

    return-object p0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getKeyEventCount()I
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public addListener(Lcom/aligenie/ags/analytics/jni/KeyEventReader$KeyEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->native_finalize()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventReaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;

    invoke-direct {v1, p0}, Lcom/aligenie/ags/analytics/jni/KeyEventReader$1;-><init>(Lcom/aligenie/ags/analytics/jni/KeyEventReader;)V

    const-string v2, "KeyEventReader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventReaderThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aligenie/ags/analytics/jni/KeyEventReader;->mKeyEventReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
