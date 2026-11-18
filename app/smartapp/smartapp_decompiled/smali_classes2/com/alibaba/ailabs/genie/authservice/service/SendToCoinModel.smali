.class public Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;
.super Ljava/lang/Object;
.source "SendToCoinModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;
    }
.end annotation


# instance fields
.field private eventIssuedContext:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;

.field private traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEventIssuedContext()Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->eventIssuedContext:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public setEventIssuedContext(Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->eventIssuedContext:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->traceId:Ljava/lang/String;

    return-void
.end method
