.class public Lcom/aligenie/ags/analytics/jni/LogProducer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aligenie/ags/analytics/jni/LogProducer$InstanceHolder;
    }
.end annotation


# instance fields
.field public mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/LogProducer;->native_setup()V

    return-void
.end method

.method public static getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;
    .locals 1

    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer$InstanceHolder;->access$000()Lcom/aligenie/ags/analytics/jni/LogProducer;

    move-result-object v0

    return-object v0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setNetInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/LogProducer;->native_finalize()V

    return-void
.end method

.method public sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aligenie/ags/analytics/jni/LogProducer;->native_sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/aligenie/ags/analytics/jni/LogProducer;->native_setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNetInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aligenie/ags/analytics/jni/LogProducer;->native_setNetInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
