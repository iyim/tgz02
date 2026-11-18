.class public Lcom/alibaba/android/ultron/engine/protocol/Global;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "Global.java"


# instance fields
.field public data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/Global;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/protocol/Global;->data:Ljava/lang/Object;

    return-void
.end method
