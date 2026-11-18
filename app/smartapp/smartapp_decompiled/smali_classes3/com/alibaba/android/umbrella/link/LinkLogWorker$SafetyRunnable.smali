.class abstract Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;
.super Ljava/lang/Object;
.source "LinkLogWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/umbrella/link/LinkLogWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SafetyRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/link/LinkLogWorker$SafetyRunnable;->runSafety()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LinkLogWorker"

    const-string v2, "SafetyRunnable catch exception"

    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method abstract runSafety()V
.end method
