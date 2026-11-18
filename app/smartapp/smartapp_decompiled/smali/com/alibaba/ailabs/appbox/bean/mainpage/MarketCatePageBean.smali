.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;
.super Ljava/lang/Object;
.source "MarketCatePageBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private isDefault:Z

.field moduleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:I

.field private pageTitle:Ljava/lang/String;

.field private pageType:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->moduleList:Ljava/util/List;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageId:I

    return v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->isDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->isDefault:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setModuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->moduleList:Ljava/util/List;

    return-void
.end method

.method public setPageId(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageId:I

    return-void
.end method

.method public setPageTitle(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageTitle:Ljava/lang/String;

    return-void
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageType:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketCatePageBean{picUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDefault="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->isDefault:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pageType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moduleList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->moduleList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pageTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;->pageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
