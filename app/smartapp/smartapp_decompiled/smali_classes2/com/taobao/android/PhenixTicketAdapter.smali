.class public Lcom/taobao/android/PhenixTicketAdapter;
.super Ljava/lang/Object;
.source "PhenixTicketAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageTicketInterface;


# instance fields
.field private final mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/PhenixTicket;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixTicket;->cancel()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixTicket;->isDone()Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/PhenixTicket;->isDownloading()Z

    move-result v0

    return v0
.end method

.method public setDone(Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixTicket;->setDone(Z)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixTicket;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public theSame(Ljava/lang/String;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/taobao/android/PhenixTicketAdapter;->mPhenixTicket:Lcom/taobao/phenix/intf/PhenixTicket;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/intf/PhenixTicket;->theSame(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
