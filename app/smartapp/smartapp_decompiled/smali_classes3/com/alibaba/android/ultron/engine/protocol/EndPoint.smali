.class public Lcom/alibaba/android/ultron/engine/protocol/EndPoint;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "EndPoint.java"


# instance fields
.field public protocolVersion:Ljava/lang/String;

.field public ultronage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    const/4 v0, 0x1

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/EndPoint;->ultronage:Ljava/lang/Boolean;

    return-void
.end method
