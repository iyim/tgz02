.class public Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;
.super Lcom/taobao/android/dinamicx/DXAbsEventHandler;
.source "DinamicXWithIndexEventDispatcherV3.java"


# static fields
.field public static final DISPATCHER_TAG:Ljava/lang/String; = "handleDinamicXEventWithIndex"

.field private static final TAG:Ljava/lang/String; = "DinamicXWithIndexEventDispatcherV3"

.field public static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;->map:Ljava/util/HashMap;

    .line 23
    sget-object v0, Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;->map:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "indexMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXAbsEventHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;[Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 9

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "handleEvent"

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DinamicXWithIndexEventDispatcherV3"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 28
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxUserContext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxUserContext()Ljava/lang/Object;

    move-result-object v6

    .line 32
    instance-of v0, v6, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 35
    :cond_1
    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    const-string v1, "ViewEngine"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-nez v1, :cond_2

    return-void

    .line 39
    :cond_2
    const-class v2, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v2, "DXEvent"

    .line 44
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    sget v2, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->DINAMICX_3_CUSTOM_INPUT_KEY:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 51
    nop

    nop

    move-object v7, v0

    goto :goto_0

    :cond_4
    move-object v7, p1

    .line 54
    :goto_0
    check-cast v1, Lcom/alibaba/android/ultron/vfw/event/OnDinamicEventListenerExt;

    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v2

    const/4 v5, 0x0

    sget-object v8, Lcom/alibaba/android/ultron/vfw/event/DinamicXWithIndexEventDispatcherV3;->map:Ljava/util/HashMap;

    const-string v3, ""

    move-object v4, p2

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/android/ultron/vfw/event/OnDinamicEventListenerExt;->onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void
.end method
