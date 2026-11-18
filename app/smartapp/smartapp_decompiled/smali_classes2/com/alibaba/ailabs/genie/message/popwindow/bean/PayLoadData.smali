.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;
.super Ljava/lang/Object;
.source "PayLoadData.java"


# instance fields
.field data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;
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
.method public getData()Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    return-object v0
.end method

.method public getMsgShowTimeUnit()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->msgShowTimeUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgShowTimeValue()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->msgShowTimeValue:I

    return v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->data:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;

    return-void
.end method

.method public setMsgShowTimeUnit(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->msgShowTimeUnit:Ljava/lang/String;

    return-void
.end method

.method public setMsgShowTimeValue(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/PayLoadData;->msgShowTimeValue:I

    return-void
.end method
