.class Lcom/ut/mini/RepeatExposureQueueMgr$RepeatExposurePageChangerMonitor;
.super Ljava/lang/Object;
.source "RepeatExposureQueueMgr.java"

# interfaces
.implements Lcom/ut/mini/UTPageHitHelper$PageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/RepeatExposureQueueMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RepeatExposurePageChangerMonitor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onPageAppear(Ljava/lang/Object;)V
    .locals 0

    .line 164
    invoke-static {}, Lcom/ut/mini/RepeatExposureQueueMgr;->getInstance()Lcom/ut/mini/RepeatExposureQueueMgr;

    move-result-object p1

    invoke-static {p1}, Lcom/ut/mini/RepeatExposureQueueMgr;->access$000(Lcom/ut/mini/RepeatExposureQueueMgr;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPageDisAppear(Ljava/lang/Object;)V
    .locals 0

    .line 169
    invoke-static {}, Lcom/ut/mini/RepeatExposureQueueMgr;->getInstance()Lcom/ut/mini/RepeatExposureQueueMgr;

    move-result-object p1

    invoke-static {p1}, Lcom/ut/mini/RepeatExposureQueueMgr;->access$000(Lcom/ut/mini/RepeatExposureQueueMgr;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
