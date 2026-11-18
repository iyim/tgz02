.class public Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;
.super Ljava/lang/Object;
.source "RecommendMarketModule.java"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private moduleId:I

.field private moduleIndex:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private moduleSubTitle:Ljava/lang/String;

.field private moduleTitle:Ljava/lang/String;

.field private moduleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleId:I

    return v0
.end method

.method public getModuleIndex()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleSubTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleTitle()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleType:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->dataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->description:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleId:I

    return-void
.end method

.method public setModuleIndex(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleIndex:Ljava/lang/String;

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public setModuleSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleSubTitle:Ljava/lang/String;

    return-void
.end method

.method public setModuleTitle(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleTitle:Ljava/lang/String;

    return-void
.end method

.method public setModuleType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->moduleType:Ljava/lang/String;

    return-void
.end method
