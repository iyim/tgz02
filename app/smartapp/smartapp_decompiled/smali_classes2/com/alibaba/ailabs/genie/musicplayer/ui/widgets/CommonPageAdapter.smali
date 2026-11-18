.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CommonPageAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String; = "CommonPageAdapter"


# instance fields
.field private mCreator:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;",
            ">;",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mCreator:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mCreator:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;->createPage(Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Clear()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mCreator:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageCreator;

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeView, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem, position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/PageData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/CommonPageAdapter;->mList:Ljava/util/List;

    :cond_0
    return-void
.end method
