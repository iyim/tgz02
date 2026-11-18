.class public Lcom/aligenie/ags/analytics/jni/LogProducer$InstanceHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/jni/LogProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static instance:Lcom/aligenie/ags/analytics/jni/LogProducer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aligenie/ags/analytics/jni/LogProducer;

    invoke-direct {v0}, Lcom/aligenie/ags/analytics/jni/LogProducer;-><init>()V

    sput-object v0, Lcom/aligenie/ags/analytics/jni/LogProducer$InstanceHolder;->instance:Lcom/aligenie/ags/analytics/jni/LogProducer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/aligenie/ags/analytics/jni/LogProducer;
    .locals 1

    sget-object v0, Lcom/aligenie/ags/analytics/jni/LogProducer$InstanceHolder;->instance:Lcom/aligenie/ags/analytics/jni/LogProducer;

    return-object v0
.end method
