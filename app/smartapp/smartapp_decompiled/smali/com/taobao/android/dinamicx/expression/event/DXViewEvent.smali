.class public Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXViewEvent.java"


# instance fields
.field private itemIndex:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getItemIndex()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->itemIndex:I

    return v0
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->itemIndex:I

    return-void
.end method
