.class public Lcom/alibaba/android/ultron/engine/protocol/Event;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "Event.java"


# instance fields
.field public fields:Lcom/alibaba/fastjson/JSONObject;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getFields()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public setFields(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
