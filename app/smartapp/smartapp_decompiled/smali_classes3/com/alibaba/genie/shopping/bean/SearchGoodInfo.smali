.class public Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;
.super Ljava/lang/Object;
.source "SearchGoodInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public category:Ljava/lang/String;

.field public cornerMark:Ljava/lang/String;

.field public curPrice:D

.field public detailUrl:Ljava/lang/String;

.field public freight:D

.field public img:Ljava/lang/String;

.field public inv:I

.field public isShowEmptyLayout:Z

.field public itemId:Ljava/lang/String;

.field public monthSale:J

.field public origPrice:D

.field public payPrice:D

.field public platformType:I

.field public sellerType:I

.field public shopName:Ljava/lang/String;

.field public skuId:Ljava/lang/String;

.field public spec:Ljava/lang/String;

.field public supportBuyStatus:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public weakup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    move-wide v1, p1

    .line 112
    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->monthSale:J

    move-object v1, p3

    .line 113
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->img:Ljava/lang/String;

    move-wide v1, p4

    .line 114
    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->freight:D

    move-wide v1, p6

    .line 115
    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->origPrice:D

    move-wide v1, p8

    .line 116
    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->curPrice:D

    move-wide v1, p10

    .line 117
    iput-wide v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->payPrice:D

    move v1, p12

    .line 118
    iput v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->platformType:I

    move-object/from16 v1, p13

    .line 119
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->title:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 120
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->spec:Ljava/lang/String;

    move/from16 v1, p15

    .line 121
    iput v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->inv:I

    move-object/from16 v1, p16

    .line 122
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->itemId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 123
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->detailUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 124
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->category:Ljava/lang/String;

    move/from16 v1, p19

    .line 125
    iput v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->sellerType:I

    move-object/from16 v1, p20

    .line 126
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->skuId:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 127
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->shopName:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 128
    iput-object v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->supportBuyStatus:Ljava/lang/String;

    move/from16 v1, p23

    .line 129
    iput-boolean v1, v0, Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;->isShowEmptyLayout:Z

    return-void
.end method
