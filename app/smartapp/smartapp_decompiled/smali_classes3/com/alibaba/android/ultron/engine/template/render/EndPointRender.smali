.class public Lcom/alibaba/android/ultron/engine/template/render/EndPointRender;
.super Ljava/lang/Object;
.source "EndPointRender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static render()Lcom/alibaba/android/ultron/engine/protocol/EndPoint;
    .locals 2

    .line 12
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/EndPoint;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/protocol/EndPoint;-><init>()V

    const-string v1, "3.0"

    .line 13
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/protocol/EndPoint;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method
