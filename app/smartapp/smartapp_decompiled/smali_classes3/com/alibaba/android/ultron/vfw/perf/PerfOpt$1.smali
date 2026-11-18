.class Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$1;
.super Ljava/lang/Object;
.source "PerfOpt.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;->purchaseOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/perf/PerfOpt$1;->this$0:Lcom/alibaba/android/ultron/vfw/perf/PerfOpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "PurchaseOpt"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
