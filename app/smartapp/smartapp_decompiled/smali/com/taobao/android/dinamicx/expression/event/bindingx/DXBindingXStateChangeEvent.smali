.class public Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXBindingXStateChangeEvent.java"


# static fields
.field public static final DXVIEWWIDGETNODE_ONBINDINGXFINISH:J = -0x48112af35f9df99fL

.field public static final DXVIEWWIDGETNODE_ONBINDINGXSTART:J = -0xe3eb03b410c3df3L

.field public static final DXVIEWWIDGETNODE_ONBINDINGXSTOP:J = 0x5cd5ef47d712a8a4L


# instance fields
.field specName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    .line 40
    iput-object p3, p0, Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;->specName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpecName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;->specName:Ljava/lang/String;

    return-object v0
.end method

.method public setSpecName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;->specName:Ljava/lang/String;

    return-void
.end method
