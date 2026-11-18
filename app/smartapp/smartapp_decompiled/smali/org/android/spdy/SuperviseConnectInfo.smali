.class public Lorg/android/spdy/SuperviseConnectInfo;
.super Ljava/lang/Object;
.source "SuperviseConnectInfo.java"


# instance fields
.field public connectTime:I

.field public doHandshakeTime:I

.field public handshakeTime:I

.field public keepalive_period_second:I

.field public lossRate:D

.field quicConnectionID:J

.field public retransmissionRate:D

.field public retryTimes:I

.field public reused_counter:I

.field public rtoCount:I

.field public sessionTicketReused:I

.field public timeout:I

.field public tlpCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lorg/android/spdy/SuperviseConnectInfo;->quicConnectionID:J

    return-void
.end method
