.class public Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcherV3;
.super Lcom/taobao/android/dinamicx/DXAbsEventHandler;
.source "DinamicXEventDispatcherV3.java"


# static fields
.field public static final DISPATCHER_TAG:Ljava/lang/String; = "handleDinamicXEvent"

.field private static final TAG:Ljava/lang/String; = "DinamicXEventDispatcherV3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXAbsEventHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 8

    const/4 v0, 0x2

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "handleEvent"

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DinamicXEventDispatcherV3"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 34
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxUserContext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxUserContext()Ljava/lang/Object;

    move-result-object v6

    .line 38
    instance-of v0, v6, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 41
    :cond_1
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    const-string v1, "ViewEngine"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-nez v1, :cond_2

    return-void

    .line 45
    :cond_2
    const-class v2, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "DXEvent"

    .line 50
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    sget v2, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->DINAMICX_3_CUSTOM_INPUT_KEY:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 57
    nop

    nop

    move-object v7, v0

    goto :goto_0

    :cond_4
    move-object v7, p1

    .line 60
    :goto_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, ""

    move-object v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;->onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_5
    :goto_1
    return-void
.end method
