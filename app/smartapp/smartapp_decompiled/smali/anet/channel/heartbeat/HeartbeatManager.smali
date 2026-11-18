.class public Lanet/channel/heartbeat/HeartbeatManager;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDefaultHeartbeat()Lanet/channel/heartbeat/IHeartbeat;
    .locals 1

    .line 9
    new-instance v0, Lanet/channel/heartbeat/DefaultHeartbeatImpl;

    invoke-direct {v0}, Lanet/channel/heartbeat/DefaultHeartbeatImpl;-><init>()V

    return-object v0
.end method
