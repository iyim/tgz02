.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;
.super Ljava/lang/Object;
.source "MarketCatePageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleItem"
.end annotation


# instance fields
.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation
.end field

.field moduleId:I

.field moduleTitle:Ljava/lang/String;

.field moduleType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getModuleId()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleId:I

    return v0
.end method

.method public getModuleTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleType:Ljava/lang/String;

    return-object v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->dataList:Ljava/util/List;

    return-void
.end method

.method public setModuleId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleId:I

    return-void
.end method

.method public setModuleTitle(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleTitle:Ljava/lang/String;

    return-void
.end method

.method public setModuleType(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleItem{moduleTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moduleType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->dataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean$ModuleItem;->moduleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
