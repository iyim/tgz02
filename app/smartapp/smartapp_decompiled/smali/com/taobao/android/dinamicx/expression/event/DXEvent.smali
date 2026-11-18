.class public Lcom/taobao/android/dinamicx/expression/event/DXEvent;
.super Ljava/lang/Object;
.source "DXEvent.java"


# instance fields
.field protected eventId:J

.field protected isPrepareBind:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->eventId:J

    return-void
.end method


# virtual methods
.method public getEventId()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->eventId:J

    return-wide v0
.end method

.method public isPrepareBind()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->isPrepareBind:Z

    return v0
.end method

.method public setEventId(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->eventId:J

    return-void
.end method

.method public setPrepareBind(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->isPrepareBind:Z

    return-void
.end method
