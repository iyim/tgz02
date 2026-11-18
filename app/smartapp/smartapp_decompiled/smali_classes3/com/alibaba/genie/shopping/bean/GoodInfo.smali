.class public Lcom/alibaba/genie/shopping/bean/GoodInfo;
.super Ljava/lang/Object;
.source "GoodInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;
    }
.end annotation


# instance fields
.field public activityId:J

.field public category:Ljava/lang/String;

.field public cornerMark:Ljava/lang/String;

.field public curPrice:D

.field public detailUrl:Ljava/lang/String;

.field public discMoney:D

.field public endTime:J

.field public freePost:Z

.field public freight:Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;

.field public img:Ljava/lang/String;

.field public inv:I

.field public isShowEmptyLayout:Z

.field public itemId:Ljava/lang/String;

.field public limitNum:I

.field public monthSale:J

.field public operationFlag:Z

.field public origPrice:D

.field public payPrice:D

.field public platformType:Ljava/lang/String;

.field public recommend:Ljava/lang/String;

.field public relPromotion:Ljava/lang/String;

.field public replyTts:Ljava/lang/String;

.field public sellerType:Ljava/lang/String;

.field public shopName:Ljava/lang/String;

.field public skuId:Ljava/lang/String;

.field public spec:Ljava/lang/String;

.field public startTime:J

.field public status:I

.field public supportBuyStatus:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public voiceText:Ljava/lang/String;

.field public voiceTitle:Ljava/lang/String;

.field public weakup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->isShowEmptyLayout:Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->isShowEmptyLayout:Z

    .line 150
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->itemId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->skuId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->spec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->spec:Ljava/lang/String;

    .line 155
    iget-boolean v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->freePost:Z

    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->freePost:Z

    .line 156
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->startTime:J

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->startTime:J

    .line 157
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->endTime:J

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->endTime:J

    .line 158
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->weakup:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->recommend:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->replyTts:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->replyTts:Ljava/lang/String;

    .line 161
    iget v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->limitNum:I

    iput v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->limitNum:I

    .line 162
    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->cornerMark:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->cornerMark:Ljava/lang/String;

    .line 163
    iget v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->status:I

    iput v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->status:I

    .line 164
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->activityId:J

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->activityId:J

    .line 165
    iget-boolean v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->operationFlag:Z

    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->operationFlag:Z

    .line 166
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->monthSale:J

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->monthSale:J

    .line 167
    new-instance v0, Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;-><init>()V

    .line 168
    iget-wide v1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->postfee:D

    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;->_value:D

    .line 169
    iput-object v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->freight:Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;

    .line 170
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->origPrice:D

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->origPrice:D

    .line 171
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->curPrice:D

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->curPrice:D

    .line 173
    iget-wide v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->payPrice:D

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->payPrice:D

    .line 175
    iget p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;->inv:I

    iput p1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->inv:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoodInfo{itemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", skuId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shopName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->shopName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", voiceTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->voiceTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", img=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", monthSale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->monthSale:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cornerMark=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->cornerMark:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recommend=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->recommend:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spec=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", freight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->freight:Lcom/alibaba/genie/shopping/bean/GoodInfo$Freight;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", origPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->origPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", curPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->curPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", discMoney="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->discMoney:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", payPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->payPrice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", voiceText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->voiceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", inv="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->inv:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", operationFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->operationFlag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", relPromotion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->relPromotion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platformType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->platformType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sellerType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->sellerType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->detailUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", supportBuyStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->supportBuyStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", freePost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->freePost:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", endTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", weakup=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->weakup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", replyTts=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->replyTts:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", limitNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->limitNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->activityId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isShowEmptyLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->isShowEmptyLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
