.class public Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;
.super Ljava/lang/Object;
.source "WebEventCallback.java"

# interfaces
.implements Lcom/taobao/vessel/callback/VesselViewCallback;


# static fields
.field private static final KEY_METHOD:Ljava/lang/String; = "method"


# instance fields
.field private mCurrComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field private mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-void
.end method


# virtual methods
.method public setCurrComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->mCurrComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    return-void
.end method

.method public viewCall(Ljava/util/Map;Lcom/taobao/vessel/base/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/vessel/base/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "method"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->mViewEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getWebBridge(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/web/WebEventCallback;->mCurrComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/ultron/vfw/web/IWebEventBridge;->onEvent(Ljava/util/Map;Lcom/taobao/vessel/base/ResultCallback;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    :cond_2
    return-void
.end method
