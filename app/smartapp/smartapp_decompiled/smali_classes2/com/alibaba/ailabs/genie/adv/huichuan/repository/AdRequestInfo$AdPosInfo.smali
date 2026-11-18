.class public Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;
.super Ljava/lang/Object;
.source "AdRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdPosInfo"
.end annotation


# instance fields
.field private ah:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private req_cnt:Ljava/lang/String;

.field private slot_id:Ljava/lang/String;

.field private slot_type:Ljava/lang/String;

.field private wid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAh()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public getAw()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_cnt()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->req_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getSlot_id()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->slot_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSlot_type()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->slot_type:Ljava/lang/String;

    return-object v0
.end method

.method public getWid()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->wid:Ljava/lang/String;

    return-object v0
.end method

.method public setAh(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->ah:Ljava/lang/String;

    return-void
.end method

.method public setAw(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->aw:Ljava/lang/String;

    return-void
.end method

.method public setReq_cnt(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->req_cnt:Ljava/lang/String;

    return-void
.end method

.method public setSlot_id(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->slot_id:Ljava/lang/String;

    return-void
.end method

.method public setSlot_type(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->slot_type:Ljava/lang/String;

    return-void
.end method

.method public setWid(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/huichuan/repository/AdRequestInfo$AdPosInfo;->wid:Ljava/lang/String;

    return-void
.end method
