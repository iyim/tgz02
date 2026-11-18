.class public Lcom/alibaba/android/ultron/vfw/event/DinamicXEventDispatcher;
.super Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;
.source "DinamicXEventDispatcher.java"


# static fields
.field public static final DISPATCHER_TAG:Ljava/lang/String; = "handleDinamicXEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/android/dinamic/dinamic/AbsDinamicEventHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8

    .line 30
    instance-of v0, p5, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    move-object v0, p5

    check-cast v0, Ljava/util/Map;

    const-string v1, "ViewEngine"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    const-class v1, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 42
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;->onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method
