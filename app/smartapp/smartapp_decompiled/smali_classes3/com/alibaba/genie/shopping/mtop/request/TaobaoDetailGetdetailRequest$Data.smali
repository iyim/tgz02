.class public Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;
.super Ljava/lang/Object;
.source "TaobaoDetailGetdetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private authInfo:Ljava/lang/String;

.field private detail_v:Ljava/lang/String;

.field private exParams:Ljava/lang/String;

.field private itemNumId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->detail_v:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->exParams:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->itemNumId:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail_v()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->detail_v:Ljava/lang/String;

    return-object v0
.end method

.method public getExParams()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->exParams:Ljava/lang/String;

    return-object v0
.end method

.method public getItemNumId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->itemNumId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Ljava/lang/String;)Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->authInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setDetail_v(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->detail_v:Ljava/lang/String;

    return-void
.end method

.method public setExParams(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->exParams:Ljava/lang/String;

    return-void
.end method

.method public setItemNumId(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/TaobaoDetailGetdetailRequest$Data;->itemNumId:Ljava/lang/String;

    return-void
.end method
