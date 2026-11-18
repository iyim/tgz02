.class public Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXMsgCenterEvent.java"


# instance fields
.field private params:Lcom/alibaba/fastjson/JSONObject;

.field private targetId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getParams()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->params:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->params:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->targetId:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXMsgCenterEvent;->type:Ljava/lang/String;

    return-void
.end method
