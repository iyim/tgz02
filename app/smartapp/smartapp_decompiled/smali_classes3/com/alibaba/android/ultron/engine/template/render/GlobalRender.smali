.class public Lcom/alibaba/android/ultron/engine/template/render/GlobalRender;
.super Ljava/lang/Object;
.source "GlobalRender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Global;
    .locals 1

    .line 11
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/Global;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/protocol/Global;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getUserData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/protocol/Global;->data:Ljava/lang/Object;

    return-object v0
.end method
