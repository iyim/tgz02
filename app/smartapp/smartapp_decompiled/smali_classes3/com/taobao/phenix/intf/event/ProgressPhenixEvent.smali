.class public Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;
.super Lcom/taobao/phenix/intf/event/PhenixEvent;
.source "ProgressPhenixEvent.java"


# instance fields
.field private final mProgress:F


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixTicket;F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/taobao/phenix/intf/event/PhenixEvent;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    .line 10
    iput p2, p0, Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;->mProgress:F

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;->mProgress:F

    return v0
.end method
