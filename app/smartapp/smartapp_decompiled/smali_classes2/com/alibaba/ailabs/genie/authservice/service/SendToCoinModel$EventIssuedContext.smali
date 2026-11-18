.class public Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;
.super Ljava/lang/Object;
.source "SendToCoinModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventIssuedContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;
    }
.end annotation


# instance fields
.field private coinEventName:Ljava/lang/String;

.field private coinEventNs:Ljava/lang/String;

.field private eventDetail:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCoinEventName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->coinEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoinEventNs()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->coinEventNs:Ljava/lang/String;

    return-object v0
.end method

.method public getEventDetail()Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->eventDetail:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;

    return-object v0
.end method

.method public setCoinEventName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->coinEventName:Ljava/lang/String;

    return-void
.end method

.method public setCoinEventNs(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->coinEventNs:Ljava/lang/String;

    return-void
.end method

.method public setEventDetail(Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->eventDetail:Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;

    return-void
.end method
