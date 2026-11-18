.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;
.super Ljava/lang/Object;
.source "CommonMsgPayLoad.java"


# instance fields
.field data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
    .end annotation
.end field

.field private msgShowTimeUnit:Ljava/lang/String;

.field private msgShowTimeValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;

    return-object v0
.end method

.method public getMsgShowTimeUnit()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->msgShowTimeUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgShowTimeValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->msgShowTimeValue:I

    return v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;

    return-void
.end method

.method public setMsgShowTimeUnit(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->msgShowTimeUnit:Ljava/lang/String;

    return-void
.end method

.method public setMsgShowTimeValue(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgPayLoad;->msgShowTimeValue:I

    return-void
.end method
