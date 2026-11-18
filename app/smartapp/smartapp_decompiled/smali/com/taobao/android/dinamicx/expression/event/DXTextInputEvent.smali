.class public Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;
.super Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.source "DXTextInputEvent.java"


# instance fields
.field private text:Landroid/text/Editable;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getText()Landroid/text/Editable;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;->text:Landroid/text/Editable;

    return-object v0
.end method

.method public setText(Landroid/text/Editable;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXTextInputEvent;->text:Landroid/text/Editable;

    return-void
.end method
