.class public Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;
.super Ljava/lang/Object;
.source "DefaultEventMessage.java"


# instance fields
.field private bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->type:I

    return-void
.end method


# virtual methods
.method public getBean()Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->type:I

    return v0
.end method

.method public setBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/busmessage/DefaultEventMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
