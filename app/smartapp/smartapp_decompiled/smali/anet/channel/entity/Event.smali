.class public Lanet/channel/entity/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field public final eventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lanet/channel/entity/Event;->eventType:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lanet/channel/entity/Event;->eventType:I

    .line 13
    iput p2, p0, Lanet/channel/entity/Event;->errorCode:I

    .line 14
    iput-object p3, p0, Lanet/channel/entity/Event;->errorDetail:Ljava/lang/String;

    return-void
.end method
