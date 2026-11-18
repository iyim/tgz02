.class public Lcom/taobao/phenix/intf/event/PhenixEvent;
.super Ljava/lang/Object;
.source "PhenixEvent.java"


# instance fields
.field protected ticket:Lcom/taobao/phenix/intf/PhenixTicket;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->ticket:Lcom/taobao/phenix/intf/PhenixTicket;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->url:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->ticket:Lcom/taobao/phenix/intf/PhenixTicket;

    return-void
.end method


# virtual methods
.method public getTicket()Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->ticket:Lcom/taobao/phenix/intf/PhenixTicket;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->ticket:Lcom/taobao/phenix/intf/PhenixTicket;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/taobao/phenix/intf/event/PhenixEvent;->url:Ljava/lang/String;

    return-void
.end method
