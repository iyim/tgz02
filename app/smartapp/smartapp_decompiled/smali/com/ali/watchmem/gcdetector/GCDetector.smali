.class public Lcom/ali/watchmem/gcdetector/GCDetector;
.super Ljava/lang/Object;
.source "GCDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GCDetector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCDetector"

    invoke-static {v1, v0}, Lcom/ali/watchmem/logger/WatchmemLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/ali/watchmem/gcdetector/GCSignalSender;->sendGCSignal()V

    return-void
.end method
