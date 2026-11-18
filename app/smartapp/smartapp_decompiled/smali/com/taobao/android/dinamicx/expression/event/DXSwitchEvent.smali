.class public Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXSwitchEvent.java"


# instance fields
.field protected isOn:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;->isOn:Z

    return v0
.end method

.method public setOn(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXSwitchEvent;->isOn:Z

    return-void
.end method
