.class public Lcom/aligenie/ags/analytics/jni/SystemLogReader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LOGGER_ENTRY_MAX_LEN:I = 0x1400

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I


# instance fields
.field public mNativeContext:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;->native_setup(I)V

    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_read([B)I
.end method

.method private final native native_setup(I)V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;->native_finalize()V

    return-void
.end method

.method public read([B)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;->native_read([B)I

    move-result p1

    return p1
.end method
