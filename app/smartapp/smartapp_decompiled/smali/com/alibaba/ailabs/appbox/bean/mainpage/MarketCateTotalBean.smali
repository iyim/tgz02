.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;
.super Ljava/lang/Object;
.source "MarketCateTotalBean.java"


# instance fields
.field private menu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

.field private page:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMenu()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->menu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    return-object v0
.end method

.method public getPage()Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->page:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    return-object v0
.end method

.method public setMenu(Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->menu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    return-void
.end method

.method public setPage(Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->page:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketCateTotalBean{page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->page:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCatePageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", menu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTotalBean;->menu:Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
