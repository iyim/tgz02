.class public Lunet/org/chromium/base/EventLog;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static writeEvent(II)V
    .locals 0
    .annotation build Lunet/org/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 18
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
