.class public Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;
.super Ljava/lang/Object;
.source "RecommendItemTypeBean.java"


# instance fields
.field private description:Ljava/lang/String;

.field private isDefault:Z

.field private moduleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:Ljava/lang/String;

.field private pageSubTitle:Ljava/lang/String;

.field private pageTitle:Ljava/lang/String;

.field private pageType:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->moduleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSubTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->isDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->isDefault:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setModuleList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->moduleList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageId:Ljava/lang/String;

    return-void
.end method

.method public setPageSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageSubTitle:Ljava/lang/String;

    return-void
.end method

.method public setPageTitle(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageTitle:Ljava/lang/String;

    return-void
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->pageType:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->picUrl:Ljava/lang/String;

    return-void
.end method
