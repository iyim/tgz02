.class final Lcom/alibaba/jsi/standard/JSEngine$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/jsi/standard/JSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/jsi/standard/JSEngine;

.field private final b:I

.field private final c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/jsi/standard/JSEngine;I)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p2, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->b:I

    const/4 p1, 0x0

    .line 503
    iput-object p1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->c:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/jsi/standard/JSEngine;[Ljava/lang/Object;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 507
    iput p1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->b:I

    .line 508
    iput-object p2, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 513
    iget v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->b:I

    const/4 v1, 0x1

    const-string v2, "jsi"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown JSI task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-static {v0}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/JSEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeOnLowMemory(J)V

    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-static {v0}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/JSEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeOnLoop(J)V

    return-void

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-static {v0}, Lcom/alibaba/jsi/standard/JSEngine;->b(Lcom/alibaba/jsi/standard/JSEngine;)V

    return-void

    :cond_3
    const-string v0, "Stopping trace"

    .line 526
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-static {v0}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/JSEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeStopTrace(J)V

    return-void

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    .line 516
    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "Starting trace"

    .line 517
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSEngine$a;->a:Lcom/alibaba/jsi/standard/JSEngine;

    .line 519
    invoke-static {v1}, Lcom/alibaba/jsi/standard/JSEngine;->a(Lcom/alibaba/jsi/standard/JSEngine;)J

    move-result-wide v4

    .line 518
    invoke-static {v4, v5, v3, v0}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeStartTrace(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Start trace failed!"

    .line 520
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
