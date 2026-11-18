.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;
.super Ljava/lang/Object;
.source "MarketCateTitleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;
    }
.end annotation


# instance fields
.field private menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;"
        }
    .end annotation
.end field

.field private pageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMenuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->menuList:Ljava/util/List;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->pageId:I

    return v0
.end method

.method public setMenuList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean$MarketCateMenu;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->menuList:Ljava/util/List;

    return-void
.end method

.method public setPageId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->pageId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarketCateTitleBean{pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->pageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", menuList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/MarketCateTitleBean;->menuList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
