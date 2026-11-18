.class public Lorg/android/netutil/PingResult;
.super Ljava/lang/Object;
.source "PingResult.java"


# instance fields
.field public hop:I

.field public rtt:D

.field public seq:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lorg/android/netutil/PingResult;->rtt:D

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/android/netutil/PingResult;->seq:I

    .line 17
    iput v0, p0, Lorg/android/netutil/PingResult;->hop:I

    return-void
.end method


# virtual methods
.method onPingEntry(IID)V
    .locals 0

    .line 10
    iput p1, p0, Lorg/android/netutil/PingResult;->seq:I

    .line 11
    iput p2, p0, Lorg/android/netutil/PingResult;->hop:I

    .line 12
    iput-wide p3, p0, Lorg/android/netutil/PingResult;->rtt:D

    return-void
.end method
