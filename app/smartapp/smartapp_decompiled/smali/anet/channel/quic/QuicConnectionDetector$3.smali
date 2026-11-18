.class final Lanet/channel/quic/QuicConnectionDetector$3;
.super Ljava/lang/Object;
.source "QuicConnectionDetector.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/quic/QuicConnectionDetector;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 0

    .line 129
    invoke-static {p1}, Lanet/channel/quic/QuicConnectionDetector;->startDetect(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
