.class public Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;
.super Ljava/lang/Object;
.source "ChildModelEvent.java"


# instance fields
.field private eventType:I

.field private id:Ljava/lang/Long;

.field private timeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->id:Ljava/lang/Long;

    .line 26
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->timeStamp:Ljava/lang/Long;

    .line 27
    iput p3, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->eventType:I

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->eventType:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->timeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public setEventType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->eventType:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->id:Ljava/lang/Long;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;->timeStamp:Ljava/lang/Long;

    return-void
.end method
