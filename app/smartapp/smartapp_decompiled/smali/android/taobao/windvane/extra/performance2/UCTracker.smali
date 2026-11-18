.class public Landroid/taobao/windvane/extra/performance2/UCTracker;
.super Ljava/lang/Object;
.source "UCTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitUCT2(Ljava/lang/String;J)V
    .locals 2

    .line 8
    new-instance v0, Landroid/taobao/windvane/extra/performance/WVAPMManager;

    const-string v1, "WindVane.UCT2"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart()V

    const-string/jumbo v1, "url"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "T2"

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 12
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onEnd()V

    return-void
.end method
