.class public Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;
.super Ljava/lang/Object;
.source "ProtocolRenderContext.java"


# instance fields
.field mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

.field mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

.field renderDeltaProtocol:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/engine/template/state/RenderState;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->renderDeltaProtocol:Z

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->renderDeltaProtocol:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    return-object v0
.end method

.method public getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    return-object v0
.end method

.method public getUserData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getUserData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public isRenderDeltaProtocol()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->renderDeltaProtocol:Z

    return v0
.end method
