.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;
.super Ljava/lang/Object;
.source "CommonMsgBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;
    }
.end annotation


# instance fields
.field private extData:Ljava/lang/String;

.field private messageType:Ljava/lang/String;

.field private payload:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->payload:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;

    return-object v0
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->extData:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;->payload:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;

    return-void
.end method
