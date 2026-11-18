.class public Lcom/taobao/android/dinamicx/expression/event/DXCheckBoxEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXCheckBoxEvent.java"


# instance fields
.field protected isChecked:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXCheckBoxEvent;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXCheckBoxEvent;->isChecked:Z

    return-void
.end method
