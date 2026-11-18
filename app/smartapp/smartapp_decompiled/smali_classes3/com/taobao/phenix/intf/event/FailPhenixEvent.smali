.class public Lcom/taobao/phenix/intf/event/FailPhenixEvent;
.super Lcom/taobao/phenix/intf/event/PhenixEvent;
.source "FailPhenixEvent.java"


# instance fields
.field resultCode:I


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/taobao/phenix/intf/event/PhenixEvent;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->resultCode:I

    return v0
.end method

.method public setResultCode(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->resultCode:I

    return-void
.end method
