.class public Lunet/org/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation runtime Lunet/org/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lunet/org/chromium/base/metrics/RecordUserAction;->nativeRecordUserAction(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static native nativeRecordUserAction(Ljava/lang/String;)V
.end method
